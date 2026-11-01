package com.mbridge.msdk.tracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f38498a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f38499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f38500c = new Object();

    public c(b bVar, String str) {
        this.f38498a = bVar;
        this.f38499b = str;
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.beginTransaction();
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "beginTransaction: ", e11);
            }
        }
    }

    private static void b(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase) || !sQLiteDatabase.inTransaction()) {
            return;
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "endTransaction: ", e11);
            }
        }
    }

    private static boolean c(SQLiteDatabase sQLiteDatabase) {
        return sQLiteDatabase == null || !sQLiteDatabase.isOpen() || sQLiteDatabase.isReadOnly();
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception e11) {
            if (a.f38496a) {
                Log.e("TrackManager", "transactionSuccess: ", e11);
            }
        }
    }

    public int a() {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            int iDelete = -1;
            if (y.b(this.f38498a)) {
                return -1;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "deleteInvalidEvents getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return -1;
            }
            try {
                try {
                    a(writableDatabase);
                    iDelete = writableDatabase.delete(this.f38499b, "state = ? OR state = ?", new String[]{String.valueOf(-1), String.valueOf(2)});
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e12) {
                    if (a.f38496a) {
                        Log.e("TrackManager", "deleteInvalidEvents: " + e12.getMessage());
                    }
                    b(writableDatabase);
                }
                return iDelete;
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public long a(i iVar) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            long jInsert = -1;
            if (y.b(this.f38498a)) {
                return -1L;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "insert getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return -1L;
            }
            try {
                try {
                    a(writableDatabase);
                    ContentValues contentValues = new ContentValues(16);
                    e eVarA = iVar.a();
                    contentValues.put("name", eVarA.b());
                    contentValues.put(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(eVarA.h()));
                    contentValues.put("time_stamp", Long.valueOf(eVarA.g()));
                    contentValues.put("properties", eVarA.d().toString());
                    contentValues.put(TrackingKey.PRIORITY, Integer.valueOf(eVarA.c()));
                    contentValues.put("state", Integer.valueOf(iVar.e()));
                    contentValues.put("report_count", Integer.valueOf(iVar.c()));
                    contentValues.put("uuid", eVarA.i());
                    contentValues.put("ignore_max_timeout", Integer.valueOf(!eVarA.k() ? 1 : 0));
                    contentValues.put("ignore_max_retry_times", Integer.valueOf(!eVarA.j() ? 1 : 0));
                    contentValues.put("invalid_time", Long.valueOf(iVar.b()));
                    jInsert = writableDatabase.insert(this.f38499b, null, contentValues);
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e12) {
                    if (a.f38496a) {
                        Log.e("TrackManager", "insert: " + e12.getMessage());
                    }
                    b(writableDatabase);
                }
                return jInsert;
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public List<i> a(int i11) {
        SQLiteDatabase writableDatabase;
        Throwable th2;
        Cursor cursorQuery;
        List<i> list;
        synchronized (this.f38500c) {
            Cursor cursor = null;
            List<i> listB = null;
            cursor = null;
            if (y.b(this.f38498a)) {
                return null;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "getAvailable getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return null;
            }
            try {
                try {
                    a(writableDatabase);
                    cursorQuery = writableDatabase.query(this.f38499b, null, "state = ? OR state = ?", new String[]{String.valueOf(0), String.valueOf(3)}, null, null, "priority DESC", String.valueOf(i11));
                    try {
                        listB = y.b(cursorQuery);
                        d(writableDatabase);
                        b(writableDatabase);
                        y.a(cursorQuery);
                    } catch (Exception e12) {
                        e = e12;
                        List<i> list2 = listB;
                        cursor = cursorQuery;
                        list = list2;
                        if (a.f38496a) {
                            Log.e("TrackManager", "getAvailable: " + e.getMessage());
                        }
                        b(writableDatabase);
                        y.a(cursor);
                        listB = list;
                    } catch (Throwable th3) {
                        th2 = th3;
                        b(writableDatabase);
                        y.a(cursorQuery);
                        throw th2;
                    }
                } catch (Exception e13) {
                    e = e13;
                    list = null;
                }
                return listB;
            } catch (Throwable th4) {
                Cursor cursor2 = cursor;
                th2 = th4;
                cursorQuery = cursor2;
            }
        }
    }

    public void a(List<i> list) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            if (y.b(this.f38498a) || y.b((List<?>) list)) {
                return;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "updateReportStateFailed getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    for (i iVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("state", Integer.valueOf(iVar.e()));
                        contentValues.put("report_count", Integer.valueOf(iVar.c()));
                        String strD = iVar.d();
                        if (!TextUtils.isEmpty(strD)) {
                            contentValues.put("report_error_message", strD);
                        }
                        writableDatabase.update(this.f38499b, contentValues, "uuid = ?", new String[]{iVar.f()});
                    }
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e12) {
                    if (a.f38496a) {
                        Log.e("TrackManager", "updateReportStateFailed: " + e12.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public int b() {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            int iMax = 0;
            if (y.b(this.f38498a)) {
                return 0;
            }
            Cursor cursorQuery = null;
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "getAvailableCount getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            try {
                if (c(writableDatabase)) {
                    return 0;
                }
                a(writableDatabase);
                cursorQuery = writableDatabase.query(this.f38499b, null, "state = ? OR state = ?", new String[]{String.valueOf(3), String.valueOf(0)}, null, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToNext()) {
                    iMax = Math.max(cursorQuery.getCount(), 0);
                }
                d(writableDatabase);
                return iMax;
            } catch (Exception e12) {
                if (a.f38496a) {
                    Log.e("TrackManager", "getAvailableCount: " + e12.getMessage());
                }
            } finally {
                b(writableDatabase);
                y.a(cursorQuery);
            }
        }
    }

    public void b(List<i> list) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            if (y.b(this.f38498a) || y.b((List<?>) list)) {
                return;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "updateReportStateReporting getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    for (i iVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("state", (Integer) 1);
                        writableDatabase.update(this.f38499b, contentValues, "uuid = ?", new String[]{iVar.f()});
                    }
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e12) {
                    if (a.f38496a) {
                        Log.e("TrackManager", "updateReportStateReporting: " + e12.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public void c() {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            if (y.b(this.f38498a)) {
                return;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "updateReportStateForReporting getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 3);
                    contentValues.put("report_error_message", "update from reporting");
                    writableDatabase.update(this.f38499b, contentValues, "state = ?", new String[]{String.valueOf(1)});
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e12) {
                    if (a.f38496a) {
                        Log.e("TrackManager", "updateReportStateForReporting: " + e12.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }

    public void c(List<i> list) {
        SQLiteDatabase writableDatabase;
        synchronized (this.f38500c) {
            if (y.b(this.f38498a) || y.b((List<?>) list)) {
                return;
            }
            try {
                writableDatabase = this.f38498a.getWritableDatabase();
            } catch (Exception e11) {
                if (a.f38496a) {
                    Log.e("TrackManager", "updateReportStateSuccess getWritableDatabase: " + e11.getMessage());
                }
                writableDatabase = null;
            }
            if (c(writableDatabase)) {
                return;
            }
            try {
                try {
                    a(writableDatabase);
                    for (i iVar : list) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("state", (Integer) 2);
                        writableDatabase.update(this.f38499b, contentValues, "uuid = ?", new String[]{iVar.f()});
                    }
                    d(writableDatabase);
                    b(writableDatabase);
                } catch (Exception e12) {
                    if (a.f38496a) {
                        Log.e("TrackManager", "updateReportStateSuccess: " + e12.getMessage());
                    }
                    b(writableDatabase);
                }
            } catch (Throwable th2) {
                b(writableDatabase);
                throw th2;
            }
        }
    }
}
