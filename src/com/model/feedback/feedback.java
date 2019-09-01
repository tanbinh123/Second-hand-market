package com.model.feedback;

import com.model.index.Db;

import java.util.Date;

public class feedback{
    public void Add(String author, String title, String content, String date) {
                Db db = new Db ();
                String [] key = {"author","title","content","date"};
                String [] val =  {author,title,content, String.valueOf (date)};
                db.Insert ("feedback",key,val);
    }
}
