package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f27333c = {"name", "length", "last_touch_timestamp"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f9.a f27334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f27335b;

    public d(f9.a aVar) {
        this.f27334a = aVar;
    }

    private static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    private Cursor c() {
        com.google.android.exoplayer2.util.a.e(this.f27335b);
        return this.f27334a.getReadableDatabase().query(this.f27335b, f27333c, null, null, null, null, null);
    }

    private static String d(String str) {
        return "ExoPlayerCacheFileMetadata" + str;
    }

    public Map b() throws DatabaseIOException {
        try {
            Cursor cursorC = c();
            try {
                HashMap map = new HashMap(cursorC.getCount());
                while (cursorC.moveToNext()) {
                    map.put((String) com.google.android.exoplayer2.util.a.e(cursorC.getString(0)), new c(cursorC.getLong(1), cursorC.getLong(2)));
                }
                cursorC.close();
                return map;
            } catch (Throwable th2) {
                if (cursorC != null) {
                    try {
                        cursorC.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public void e(long j11) throws DatabaseIOException {
        try {
            String hexString = Long.toHexString(j11);
            this.f27335b = d(hexString);
            if (f9.c.b(this.f27334a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.f27334a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    f9.c.d(writableDatabase, 2, hexString, 1);
                    a(writableDatabase, this.f27335b);
                    writableDatabase.execSQL("CREATE TABLE " + this.f27335b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public void f(String str) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.e(this.f27335b);
        try {
            this.f27334a.getWritableDatabase().delete(this.f27335b, "name = ?", new String[]{str});
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public void g(Set set) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.e(this.f27335b);
        try {
            SQLiteDatabase writableDatabase = this.f27334a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.f27335b, "name = ?", new String[]{(String) it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public void h(String str, long j11, long j12) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.e(this.f27335b);
        try {
            SQLiteDatabase writableDatabase = this.f27334a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j11));
            contentValues.put("last_touch_timestamp", Long.valueOf(j12));
            writableDatabase.replaceOrThrow(this.f27335b, null, contentValues);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }
}
