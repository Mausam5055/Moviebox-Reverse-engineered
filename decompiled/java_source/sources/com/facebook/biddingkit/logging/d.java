package com.facebook.biddingkit.logging;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes3.dex */
class d extends SQLiteOpenHelper {
    public d(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i11) {
        super(context, str, cursorFactory, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table EVENT_LOGS( ID integer primary key autoincrement,auction_id  text,exception  text,bidder_data  text); ");
        } catch (Exception e11) {
            b.d("DataBaseHelper", "Failed database create", e11);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS EVENT_LOGS");
        onCreate(sQLiteDatabase);
    }
}
