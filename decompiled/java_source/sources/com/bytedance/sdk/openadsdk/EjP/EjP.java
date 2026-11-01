package com.bytedance.sdk.openadsdk.EjP;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    public static String Sj() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0 , channel INTEGER default 0)").toString();
    }

    public static String sP() {
        return "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0";
    }
}
