package com.bytedance.sdk.openadsdk.EjP;

/* JADX INFO: loaded from: classes2.dex */
public class sef {
    public static String Sj() {
        return "CREATE TABLE IF NOT EXISTS logstats (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , encrypt INTEGER default 0 , retry INTEGER default 0)";
    }

    public static String sP() {
        return "ALTER TABLE logstats ADD COLUMN encrypt INTEGER default 0";
    }
}
