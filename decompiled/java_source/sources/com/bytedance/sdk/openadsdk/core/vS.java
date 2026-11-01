package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public class vS {
    private static final Object TKC = new Object();
    private TKC Sj;
    private Context sP;

    private class Sj extends SQLiteOpenHelper {
        final Context Sj;

        public Sj(Context context) {
            super(context, "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 11);
            this.Sj = context;
        }

        private ArrayList<String> EjP(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> arrayList = new ArrayList<>();
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
                if (cursorRawQuery != null) {
                    while (cursorRawQuery.moveToNext()) {
                        String string = cursorRawQuery.getString(0);
                        if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                            arrayList.add(string);
                        }
                    }
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } catch (Exception unused) {
                if (cursorRawQuery != null) {
                }
            } catch (Throwable th2) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th2;
            }
            return arrayList;
        }

        private void Sj(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.EjP.sP());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.uA.EjP());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.sef.sP());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.Fmk.sP());
        }

        private void Sj(SQLiteDatabase sQLiteDatabase, Context context) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.EjP.Sj());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.uA.TKC());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.sef.Sj());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.Fmk.Sj());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.kF.sP.Sj());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.uvD.TKC());
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.Sj.sP.sP.TKC());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.TEQ.Sj.TKC.TKC());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.Zq.Sj());
        }

        private void TKC(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> arrayListEjP = EjP(sQLiteDatabase);
            if (arrayListEjP == null || arrayListEjP.size() <= 0) {
                return;
            }
            Iterator<String> it = arrayListEjP.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
            }
        }

        private void sP(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.TEQ.Sj.TKC.EjP());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                Sj(sQLiteDatabase, this.Sj);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("DBHelper", th2.getMessage());
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
            if (i11 > i12) {
                try {
                    TKC(sQLiteDatabase);
                    Sj(sQLiteDatabase, vS.this.sP);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:10:0x002c A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0002, B:4:0x0005, B:5:0x000e, B:7:0x0012, B:8:0x0016, B:9:0x0021, B:10:0x002c, B:11:0x0037, B:12:0x0040), top: B:21:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:11:0x0037 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0002, B:4:0x0005, B:5:0x000e, B:7:0x0012, B:8:0x0016, B:9:0x0021, B:10:0x002c, B:11:0x0037, B:12:0x0040), top: B:21:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:12:0x0040 A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0002, B:4:0x0005, B:5:0x000e, B:7:0x0012, B:8:0x0016, B:9:0x0021, B:10:0x002c, B:11:0x0037, B:12:0x0040), top: B:21:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:6:0x0011 A[DONT_GENERATE] */
        /* JADX WARN: Code duplicated, block: B:7:0x0012 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0002, B:4:0x0005, B:5:0x000e, B:7:0x0012, B:8:0x0016, B:9:0x0021, B:10:0x002c, B:11:0x0037, B:12:0x0040), top: B:21:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:8:0x0016 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0002, B:4:0x0005, B:5:0x000e, B:7:0x0012, B:8:0x0016, B:9:0x0021, B:10:0x002c, B:11:0x0037, B:12:0x0040), top: B:21:0x0002 }] */
        /* JADX WARN: Code duplicated, block: B:9:0x0021 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:3:0x0002, B:4:0x0005, B:5:0x000e, B:7:0x0012, B:8:0x0016, B:9:0x0021, B:10:0x002c, B:11:0x0037, B:12:0x0040), top: B:21:0x0002 }] */
        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
            if (i11 <= i12) {
                Sj(sQLiteDatabase, vS.this.sP);
                switch (i11) {
                    case 1:
                        Sj(sQLiteDatabase);
                        break;
                    case 2:
                        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                        Sj(sQLiteDatabase);
                        break;
                    case 3:
                        sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.sef.Sj());
                        Sj(sQLiteDatabase);
                        break;
                    case 4:
                        sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.Sj.sP.sP.TKC());
                        Sj(sQLiteDatabase);
                        break;
                    case 5:
                        sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.Fmk.Sj());
                        Sj(sQLiteDatabase);
                        break;
                    case 6:
                        Sj(sQLiteDatabase);
                        break;
                }
            } else {
                try {
                    TKC(sQLiteDatabase);
                    Sj(sQLiteDatabase, vS.this.sP);
                    switch (i11) {
                        case 1:
                            Sj(sQLiteDatabase);
                            break;
                        case 2:
                            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                            Sj(sQLiteDatabase);
                            break;
                        case 3:
                            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.sef.Sj());
                            Sj(sQLiteDatabase);
                            break;
                        case 4:
                            sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.Sj.sP.sP.TKC());
                            Sj(sQLiteDatabase);
                            break;
                        case 5:
                            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.EjP.Fmk.Sj());
                            Sj(sQLiteDatabase);
                            break;
                        case 6:
                            Sj(sQLiteDatabase);
                            break;
                    }
                } catch (Throwable unused) {
                }
            }
            if (i11 < 11) {
                try {
                    sP(sQLiteDatabase);
                    com.bytedance.sdk.openadsdk.kF.sP.Sj(sQLiteDatabase);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("DBHelper", th2.getMessage());
                }
            }
        }
    }

    public class TKC {
        private SQLiteDatabase sP = null;

        public TKC() {
        }

        private synchronized void HiB() {
            try {
                synchronized (vS.TKC) {
                    try {
                        SQLiteDatabase sQLiteDatabase = this.sP;
                        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                            vS vSVar = vS.this;
                            SQLiteDatabase writableDatabase = vSVar.new Sj(vSVar.TKC()).getWritableDatabase();
                            this.sP = writableDatabase;
                            writableDatabase.setLockingEnabled(false);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                com.bytedance.sdk.component.utils.sU.sP("DBHelper", th3.getMessage());
                if (vS()) {
                    throw th3;
                }
            }
        }

        private synchronized boolean vS() {
            SQLiteDatabase sQLiteDatabase = this.sP;
            return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
        }

        public synchronized void EjP() {
            HiB();
            SQLiteDatabase sQLiteDatabase = this.sP;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        }

        public synchronized int Sj(String str, ContentValues contentValues, String str2, String[] strArr) {
            int iUpdate;
            try {
                HiB();
                iUpdate = this.sP.update(str, contentValues, str2, strArr);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.sP("DBHelper", e11.getMessage());
                if (vS()) {
                    throw e11;
                }
                iUpdate = 0;
            }
            return iUpdate;
        }

        public synchronized int Sj(String str, String str2, String[] strArr) {
            int iDelete;
            try {
                HiB();
                iDelete = this.sP.delete(str, str2, strArr);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.sP("DBHelper", e11.getMessage());
                if (vS()) {
                    throw e11;
                }
                iDelete = 0;
            }
            return iDelete;
        }

        public synchronized long Sj(String str, String str2, ContentValues contentValues) {
            long jReplace;
            try {
                HiB();
                jReplace = this.sP.replace(str, str2, contentValues);
            } catch (Exception e11) {
                com.bytedance.sdk.component.utils.sU.sP("DBHelper", e11.getMessage());
                if (vS()) {
                    throw e11;
                }
                jReplace = -1;
            }
            return jReplace;
        }

        public synchronized Cursor Sj(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursorQuery;
            try {
                HiB();
                cursorQuery = this.sP.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("DBHelper", th2.getMessage());
                sP sPVar = new sP();
                if (vS()) {
                    throw th2;
                }
                cursorQuery = sPVar;
            }
            return cursorQuery;
        }

        public SQLiteDatabase Sj() {
            HiB();
            return this.sP;
        }

        public synchronized void Sj(String str) throws SQLException {
            try {
                HiB();
                this.sP.execSQL(str);
            } catch (Throwable th2) {
                if (vS()) {
                    throw th2;
                }
            }
        }

        public synchronized void TKC() {
            HiB();
            SQLiteDatabase sQLiteDatabase = this.sP;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.setTransactionSuccessful();
        }

        public synchronized void sP() {
            HiB();
            SQLiteDatabase sQLiteDatabase = this.sP;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.beginTransaction();
        }
    }

    private class sP extends AbstractCursor {
        private sP() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i11) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i11) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i11) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i11) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i11) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i11) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i11) {
            return true;
        }
    }

    vS(Context context) {
        try {
            this.sP = context == null ? dNu.Sj() : context.getApplicationContext();
            if (this.Sj == null) {
                this.Sj = new TKC();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context TKC() {
        Context context = this.sP;
        return context == null ? dNu.Sj() : context;
    }

    public TKC Sj() {
        return this.Sj;
    }
}
