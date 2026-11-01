package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f10814c = {"name", "length", "last_touch_timestamp"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v1.a f10815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f10816b;

    public d(v1.a aVar) {
        this.f10815a = aVar;
    }

    private static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    private Cursor c() {
        androidx.media3.common.util.a.e(this.f10816b);
        return this.f10815a.getReadableDatabase().query(this.f10816b, f10814c, null, null, null, null, null);
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
                    map.put((String) androidx.media3.common.util.a.e(cursorC.getString(0)), new c(cursorC.getLong(1), cursorC.getLong(2)));
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
            this.f10816b = d(hexString);
            if (v1.c.b(this.f10815a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.f10815a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    v1.c.d(writableDatabase, 2, hexString, 1);
                    a(writableDatabase, this.f10816b);
                    writableDatabase.execSQL("CREATE TABLE " + this.f10816b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
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
        androidx.media3.common.util.a.e(this.f10816b);
        try {
            this.f10815a.getWritableDatabase().delete(this.f10816b, "name = ?", new String[]{str});
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public void g(Set set) throws DatabaseIOException {
        androidx.media3.common.util.a.e(this.f10816b);
        try {
            SQLiteDatabase writableDatabase = this.f10815a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.f10816b, "name = ?", new String[]{(String) it.next()});
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
        androidx.media3.common.util.a.e(this.f10816b);
        try {
            SQLiteDatabase writableDatabase = this.f10815a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j11));
            contentValues.put("last_touch_timestamp", Long.valueOf(j12));
            writableDatabase.replaceOrThrow(this.f10816b, null, contentValues);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }
}
