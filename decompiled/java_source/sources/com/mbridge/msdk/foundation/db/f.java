package com.mbridge.msdk.foundation.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f35093a;

    private class a extends SQLiteOpenHelper {
        public a(Context context, String str, int i11) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i11);
            if (MBridgeConstans.DEBUG) {
                o0.a("DatabaseOpenHelper", "数据库： name :" + str + "  " + i11);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            if (MBridgeConstans.DEBUG) {
                o0.a("DatabaseOpenHelper", "数据库创建了");
            }
            f.this.a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
            f.this.a(sQLiteDatabase, i11, i12);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
            if (MBridgeConstans.DEBUG) {
                o0.a("DatabaseOpenHelper", "数据库升级了");
            }
            f.this.b(sQLiteDatabase, i11, i12);
        }
    }

    public f(Context context) {
        this.f35093a = new a(context, a(), b());
    }

    protected abstract String a();

    protected abstract void a(SQLiteDatabase sQLiteDatabase);

    protected abstract void a(SQLiteDatabase sQLiteDatabase, int i11, int i12);

    protected abstract int b();

    protected abstract void b(SQLiteDatabase sQLiteDatabase, int i11, int i12);

    public SQLiteDatabase c() {
        return this.f35093a.getReadableDatabase();
    }

    public synchronized SQLiteDatabase d() {
        SQLiteDatabase writableDatabase;
        try {
            writableDatabase = this.f35093a.getWritableDatabase();
        } catch (Exception unused) {
            writableDatabase = null;
        }
        return writableDatabase;
    }
}
