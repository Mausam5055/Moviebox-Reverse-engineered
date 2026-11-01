package com.bytedance.sdk.openadsdk.dNu.Sj;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.bytedance.sdk.component.utils.sU;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends SQLiteOpenHelper {
    private static volatile Sj sP;
    final Context Sj;

    private Sj(Context context) {
        super(context, "pag_monitor.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.Sj = context;
    }

    public static SQLiteDatabase Sj() {
        try {
            Sj sjTKC = TKC();
            if (sjTKC == null) {
                return null;
            }
            SQLiteDatabase writableDatabase = sjTKC.getWritableDatabase();
            if (writableDatabase.isOpen()) {
                return writableDatabase;
            }
            return null;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    private void Sj(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayListSP = sP(sQLiteDatabase);
        if (arrayListSP == null || arrayListSP.size() <= 0) {
            return;
        }
        Iterator<String> it = arrayListSP.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
        }
    }

    private static Sj TKC() {
        if (sP == null) {
            synchronized (Sj.class) {
                try {
                    if (sP == null) {
                        sP = new Sj(com.bytedance.sdk.openadsdk.dNu.Sj.Sj());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public static SQLiteDatabase sP() {
        try {
            Sj sjTKC = TKC();
            if (sjTKC == null) {
                return null;
            }
            SQLiteDatabase readableDatabase = sjTKC.getReadableDatabase();
            if (readableDatabase.isOpen()) {
                return readableDatabase;
            }
            return null;
        } catch (Throwable th2) {
            th2.getMessage();
            return null;
        }
    }

    private ArrayList<String> sP(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                cursorRawQuery.close();
            }
        } catch (Exception e11) {
            sU.sP("MonitorSQLiteOpenHelper", e11.getMessage());
        }
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL(new StringBuilder("CREATE TABLE IF NOT EXISTS monitor_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,sdk_version TEXT ,scene TEXT ,start_count INTEGER default 0 , success_count INTEGER default 0  , fail_count INTEGER default 0  , rit TEXT  , tag TEXT  , label TEXT  , timestamp INTEGER default 0 ,mediation TEXT  , is_init INTEGER , extra TEXT )").toString());
        } catch (Throwable th2) {
            Log.e("MonitorSQLiteOpenHelper", th2.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        try {
            if (i11 <= i12) {
                onCreate(sQLiteDatabase);
            } else {
                Sj(sQLiteDatabase);
                onCreate(sQLiteDatabase);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
    }
}
