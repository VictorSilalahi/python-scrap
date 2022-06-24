import sys

import pymysql
pymysql.install_as_MySQLdb

import sqlalchemy as db
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy.exc import SQLAlchemyError

import json
import datetime

from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

import pysolr

cdPath = "C:\Program Files (x86)\chromedriver.exe"
solrPath = "http://localhost:8983/solr/ "

class objDB:
    engine = None
    Session = None
    Base = None

def newConn():
    oDB = objDB()
    oDB.engine = create_engine(('mysql+pymysql://root:@127.0.0.1/prog_test'), echo=False)
    oDB.Session = sessionmaker(bind=oDB.engine)
    oDB.Base = declarative_base()
    return oDB

def makeDB():
    # membuat database terlebih dahulu
    # lokasi database
    engine = create_engine(('mysql+pymysql://root:@127.0.0.1'), echo=True)
    engine.execute("CREATE DATABASE prog_test")
    engine.execute("USE prog_test")
    metadata = db.MetaData()
    # membuat tabel
    news_article = db.Table(
        'news_article',                                        
        metadata,                                    
        db.Column('id', db.Integer, primary_key=True),  
        db.Column('title', db.String(255)),                    
        db.Column('url', db.String(255)),
        db.Column('content', db.Text),
        db.Column('summary', db.Text),
        db.Column('article_ts', db.BigInteger),
        db.Column('publish_date', db.Date),
        db.Column('inserted', db.TIMESTAMP),
        db.Column('updated', db.TIMESTAMP)
    )
    metadata.create_all(engine)


class Main:
    def __init__(self):
        pass

    def readSource(self, src, chromeDriverPath):
        # membaca file JSON
        self.src = []
        f = open(src)
        sourceLink = json.load(f)
        for i in sourceLink["source_link"]:
            # simpan dalam List
            self.src.append(i)
        f.close()
        self.ambilData(chromeDriverPath)

    def ambilData(self, cdP):
        if len(self.src)==0:
            print("Sumber Link tidak ada!")
            return
        # penelusuran xpath
        s = Service(cdP)
        self.driver = webdriver.Chrome(service=s)
        self.driver.minimize_window()
        for s in self.src:
            # buka halaman web
            # dan cari informasi dgn xpath
            self.driver.get(s)
            subjudul = self.driver.find_element(By.XPATH, "/html/body/div[3]/div/div/div[1]/h4").text
            judul = self.driver.find_element(By.XPATH, "/html/body/div[3]/div/div/div[1]/h1").text
            penulisdanwaktu = self.driver.find_element(By.XPATH, "/html/body/div[3]/div/div/div[1]/div[1]").text
            isi = self.driver.find_element(By.XPATH, "/html/body/div[3]/div/div/div[1]/div[3]/div/div/div[1]").text
            m2 = penulisdanwaktu.split("\n")
            # penulis
            penulis = m2[0]
            m3 = m2[1].split(" ")
            # tanggal
            tanggal = m3[1]
            # pukul 
            pukul = m3[2]

            title = subjudul + " | " + judul
            url = s
            content = isi
            summary = isi
            publish_date = datetime.datetime.strptime(tanggal, "%d/%m/%Y").strftime('%Y-%m-%d')
            pd = datetime.datetime.strptime(publish_date, "%Y-%m-%d")
            article_ts = datetime.datetime.timestamp(pd)
            inserted = updated = datetime.datetime.strptime(publish_date+ " "+pukul,'%Y-%m-%d %H:%M')

            # input ke mysql
            self.nConn = newConn()
            try:
                query="INSERT INTO  news_article (title, url, content, summary, article_ts, publish_date, inserted, updated)  VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
                my_data=(title, url, content, summary, article_ts, publish_date, inserted, updated)
                id=self.nConn.engine.execute(query,my_data)
                print("Rows Added  = ",id.lastrowid)
            except SQLAlchemyError as e:
                error = str(e.__dict__['orig'])
                print(error)
            self.nConn.engine.dispose()

            # input ke solr
            solr = pysolr.Solr("http://127.0.0.1:8983/solr/my_core")
            solr.add({
                        'article_id_l':id.lastrowid,
                        'url_s':url,
                        'title_s':title,
                        'content_t':content,
                        'clean_content_t':content,
                        'summary_t':summary,
                        'publish_date_dt': publish_date,
                        'publish_ts_l':article_ts
                    })
            solr.commit()
            
        self.driver.quit()


             


if __name__=="__main__":
    # membuat database dan tabel di MySQL, setelah berhasil maka baris di bawah ini harus disable
    # makeDB()
    m = Main()
    # membaca link-link berita yg telah disimpan pada file JSON
    m.readSource('data\\source.json',cdPath)
    sys.exit()