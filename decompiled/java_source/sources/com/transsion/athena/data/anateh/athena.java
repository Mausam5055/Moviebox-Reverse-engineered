package com.transsion.athena.data.anateh;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.config.utils.CommonUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.athena.config.data.model.ehanat;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class athena extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f42677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f42678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f42679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f42680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f42681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f42682f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f42683g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f42684h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f42685i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final File f42686j;

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CREATE TABLE ");
        anehat.athena athenaVar = anehat.athena.f42672a;
        sb2.append(athenaVar.a());
        sb2.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
        sb2.append("tid");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append(NotificationCompat.CATEGORY_EVENT);
        sb2.append(" TEXT NOT NULL,");
        sb2.append("et");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append("pi");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append("created_at");
        sb2.append(" INTEGER NOT NULL,");
        sb2.append(CommonUtils.PARAM_UID);
        sb2.append(" TEXT,");
        sb2.append("ext");
        sb2.append(" TEXT,");
        sb2.append("er_ts");
        sb2.append(" INTEGER DEFAULT 0,");
        sb2.append("boot_id");
        sb2.append(" TEXT)");
        f42677a = sb2.toString();
        f42678b = "CREATE TABLE " + anehat.athena.f42674c.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER NOT NULL UNIQUE,ev TEXT,pt INTEGER DEFAULT 0,cf TEXT,ext TEXT)";
        f42679c = "CREATE TABLE " + anehat.athena.f42675d.a() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT, " + SafeStringUtils.SP_APPID + " INTEGER NOT NULL UNIQUE,base TEXT,cfg TEXT," + CommonUtils.PARAM_UID + " TEXT,try INTEGER DEFAULT 0,date TEXT,cnt INTEGER DEFAULT 0,ext TEXT)";
        StringBuilder sb3 = new StringBuilder();
        sb3.append("ALTER TABLE ");
        sb3.append(athenaVar.a());
        sb3.append(" ADD COLUMN ");
        sb3.append(CommonUtils.PARAM_UID);
        sb3.append(" TEXT");
        f42680d = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append("ALTER TABLE ");
        sb4.append(athenaVar.a());
        sb4.append(" ADD COLUMN ");
        sb4.append("ext");
        sb4.append(" TEXT");
        f42681e = sb4.toString();
        f42682f = "ALTER TABLE " + athenaVar.a() + " ADD COLUMN er_ts INTEGER";
        f42683g = "ALTER TABLE " + athenaVar.a() + " ADD COLUMN boot_id TEXT";
        f42684h = "CREATE INDEX IF NOT EXISTS t_idx ON " + athenaVar.a() + " (tid,created_at)";
        StringBuilder sb5 = new StringBuilder();
        sb5.append("DROP TABLE ");
        sb5.append(athenaVar.a());
        f42685i = sb5.toString();
    }

    athena(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 6);
        this.f42686j = context.getDatabasePath(str);
    }

    public void a() {
        close();
        if (this.f42686j.delete()) {
            com.transsion.athena.taaneh.aethna.a("mDatabaseFile deleted");
        }
    }

    public boolean b() {
        return this.f42686j.exists() && this.f42686j.length() > ((long) ehanat.k());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        super.onConfigure(sQLiteDatabase);
        sQLiteDatabase.enableWriteAheadLogging();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA mmap_size=0;", null);
            cursorRawQuery.moveToFirst();
            cursorRawQuery.close();
        } catch (Throwable th2) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        com.transsion.athena.taaneh.aethna.a("Creating a new Athena DB");
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.execSQL(f42677a);
                sQLiteDatabase.execSQL(f42684h);
                sQLiteDatabase.execSQL(f42678b);
                sQLiteDatabase.execSQL(f42679c);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e11) {
                com.transsion.athena.taaneh.aethna.a(Log.getStackTraceString(e11));
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0037 A[Catch: all -> 0x0025, Exception -> 0x0027, SQLiteException -> 0x0032, TryCatch #1 {Exception -> 0x0027, blocks: (B:3:0x0014, B:5:0x001a, B:13:0x002c, B:18:0x0037, B:21:0x003f, B:24:0x005b, B:23:0x004a), top: B:31:0x0014, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x003f A[Catch: all -> 0x0025, Exception -> 0x0027, SQLiteException -> 0x0032, TRY_LEAVE, TryCatch #1 {Exception -> 0x0027, blocks: (B:3:0x0014, B:5:0x001a, B:13:0x002c, B:18:0x0037, B:21:0x003f, B:24:0x005b, B:23:0x004a), top: B:31:0x0014, outer: #0 }] */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        com.transsion.athena.taaneh.aethna.a("Upgrading app, replacing Athena DB oldVersion = " + i11);
        try {
            try {
                sQLiteDatabase.beginTransaction();
                if (i11 < 4) {
                    sQLiteDatabase.execSQL(f42678b);
                    sQLiteDatabase.execSQL(f42679c);
                }
                if (i11 < 3) {
                    try {
                        sQLiteDatabase.execSQL(f42680d);
                        if (i11 < 5) {
                            sQLiteDatabase.execSQL(f42681e);
                        }
                        if (i11 < 6) {
                            sQLiteDatabase.execSQL(f42682f);
                            sQLiteDatabase.execSQL(f42683g);
                        }
                    } catch (SQLiteException e11) {
                        com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
                        sQLiteDatabase.execSQL(f42685i);
                        sQLiteDatabase.execSQL(f42677a);
                    }
                } else {
                    if (i11 < 5) {
                        sQLiteDatabase.execSQL(f42681e);
                    }
                    if (i11 < 6) {
                        sQLiteDatabase.execSQL(f42682f);
                        sQLiteDatabase.execSQL(f42683g);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e12) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e12));
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
