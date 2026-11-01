package f9;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c {
    static {
        m1.a("goog.exo.database");
    }

    private static String[] a(int i11, String str) {
        return new String[]{Integer.toString(i11), str};
    }

    public static int b(SQLiteDatabase sQLiteDatabase, int i11, String str) throws DatabaseIOException {
        try {
            if (!p0.X0(sQLiteDatabase, "ExoPlayerVersions")) {
                return -1;
            }
            Cursor cursorQuery = sQLiteDatabase.query("ExoPlayerVersions", new String[]{"version"}, "feature = ? AND instance_uid = ?", a(i11, str), null, null, null);
            try {
                if (cursorQuery.getCount() == 0) {
                    cursorQuery.close();
                    return -1;
                }
                cursorQuery.moveToNext();
                int i12 = cursorQuery.getInt(0);
                cursorQuery.close();
                return i12;
            } catch (Throwable th2) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
            throw new DatabaseIOException(e);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, int i11, String str) throws DatabaseIOException {
        try {
            if (p0.X0(sQLiteDatabase, "ExoPlayerVersions")) {
                sQLiteDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", a(i11, str));
            }
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }

    public static void d(SQLiteDatabase sQLiteDatabase, int i11, String str, int i12) throws DatabaseIOException {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i11));
            contentValues.put("instance_uid", str);
            contentValues.put("version", Integer.valueOf(i12));
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e11) {
            throw new DatabaseIOException(e11);
        }
    }
}
