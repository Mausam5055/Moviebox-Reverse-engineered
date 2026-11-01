package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Campaign;

/* JADX INFO: loaded from: classes5.dex */
public class h extends a<Campaign> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f35096a = "com.mbridge.msdk.foundation.db.h";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f35097b;

    private h(f fVar) {
        super(fVar);
    }

    public static h a(f fVar) {
        if (f35097b == null) {
            synchronized (h.class) {
                try {
                    if (f35097b == null) {
                        f35097b = new h(fVar);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35097b;
    }

    private synchronized void c(String str) {
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("first_insert_timestamp", (Integer) 0);
            contentValues.put("play_time", (Integer) 0);
            getWritableDatabase().update("dailyplaycap", contentValues, "unit_id = ?", new String[]{str});
        } catch (Throwable unused) {
            o0.c(f35096a, "resetTimeAndTimestamp error");
        }
    }

    public synchronized boolean a(String str) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT play_time FROM dailyplaycap WHERE unit_id= ?", new String[]{str});
            if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
                return true;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006e A[DONT_GENERATE, EXC_TOP_SPLITTER, PHI: r0 r1
  0x006e: PHI (r0v2 android.database.Cursor) = (r0v1 android.database.Cursor), (r0v3 android.database.Cursor) binds: [B:24:0x006c, B:21:0x0053] A[DONT_GENERATE, DONT_INLINE]
  0x006e: PHI (r1v1 boolean) = (r1v0 boolean), (r1v3 boolean) binds: [B:24:0x006c, B:21:0x0053] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public boolean a(String str, int i11) {
        Cursor cursorRawQuery = null;
        boolean z10 = false;
        try {
            cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM dailyplaycap where unit_id = ?", new String[]{str});
            if (cursorRawQuery != null && cursorRawQuery.getCount() > 0 && cursorRawQuery.moveToFirst()) {
                long j11 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("first_insert_timestamp"));
                long j12 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("play_time"));
                if (j11 != 0) {
                    if (System.currentTimeMillis() - 86400000 > j11) {
                        c(str);
                    } else if (i11 > 0 && j12 >= i11) {
                        z10 = true;
                    }
                }
            }
            if (cursorRawQuery != null) {
            }
        } catch (Throwable th2) {
            try {
                o0.c(f35096a, "isOverCap is error" + th2);
            } finally {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return z10;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b0 A[EXC_TOP_SPLITTER, PHI: r1
  0x00b0: PHI (r1v1 android.database.Cursor) = (r1v0 android.database.Cursor), (r1v2 android.database.Cursor) binds: [B:30:0x00ae, B:27:0x00a8] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public synchronized void b(String str) {
        long j11;
        long j12;
        Cursor cursorRawQuery = null;
        try {
            try {
                if (getWritableDatabase() == null) {
                    return;
                }
                ContentValues contentValues = new ContentValues();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (a(str)) {
                    cursorRawQuery = getReadableDatabase().rawQuery("SELECT * FROM dailyplaycap where unit_id = ?", new String[]{str});
                    if (cursorRawQuery == null || cursorRawQuery.getCount() <= 0) {
                        j11 = 0;
                        j12 = 0;
                    } else {
                        cursorRawQuery.moveToFirst();
                        j11 = cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("first_insert_timestamp"));
                        j12 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("play_time"));
                        if (jCurrentTimeMillis - 86400000 > j11) {
                            c(str);
                            j12 = 0;
                        }
                    }
                    if (j11 == 0) {
                        contentValues.put("first_insert_timestamp", Long.valueOf(jCurrentTimeMillis));
                    }
                    contentValues.put("play_time", Long.valueOf(j12 + 1));
                    getWritableDatabase().update("dailyplaycap", contentValues, "unit_id = ?", new String[]{str});
                } else {
                    contentValues.put("first_insert_timestamp", Long.valueOf(jCurrentTimeMillis));
                    contentValues.put("play_time", (Long) 1L);
                    contentValues.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                    getWritableDatabase().insert("dailyplaycap", null, contentValues);
                }
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable unused) {
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                if (0 != 0) {
                    cursorRawQuery.close();
                }
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    cursorRawQuery.close();
                } catch (Throwable unused2) {
                }
            }
            try {
                throw th2;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
