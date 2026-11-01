package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.component.vS.Sj.Dq;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends SQLiteOpenHelper {
    final Context Sj;

    public EjP(Context context) {
        super(context, "ttadlog.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.Sj = context;
    }

    private void Sj(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Sj.sP(Dq.Jcg().EjP().sP()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.EjP.TKC(Dq.Jcg().EjP().Sj()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.Jcg.TKC(Dq.Jcg().EjP().EjP()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.vS.Sj.Sj.Sj.Sj.vS.Sj(Dq.Jcg().EjP().HiB()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.vS.Sj.vS.vS.sP());
    }

    private ArrayList<String> TKC(SQLiteDatabase sQLiteDatabase) {
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
        } catch (Exception unused) {
        }
        return arrayList;
    }

    private void sP(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayListTKC = TKC(sQLiteDatabase);
        if (arrayListTKC == null || arrayListTKC.size() <= 0) {
            return;
        }
        Iterator<String> it = arrayListTKC.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            Sj(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        try {
            if (i11 <= i12) {
                Sj(sQLiteDatabase);
            } else {
                sP(sQLiteDatabase);
                Sj(sQLiteDatabase);
            }
        } catch (Throwable unused) {
        }
    }
}
