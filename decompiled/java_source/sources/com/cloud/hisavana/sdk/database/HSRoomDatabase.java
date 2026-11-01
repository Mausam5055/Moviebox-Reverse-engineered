package com.cloud.hisavana.sdk.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;
import android.widget.Toast;
import androidx.room.RoomDatabase;
import androidx.room.q;
import com.cloud.hisavana.sdk.c2;
import com.cloud.hisavana.sdk.c6;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.f5;
import com.cloud.hisavana.sdk.m1;
import com.cloud.hisavana.sdk.v0;
import com.cloud.hisavana.sdk.v3;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HSRoomDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static volatile HSRoomDatabase f22381p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final y3.c f22382q = new a(2, 3400);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final y3.c f22383r = new b(2600, 3400);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final y3.c f22384s = new c(2700, 3400);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final y3.c f22385t = new d(2900, 3400);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final y3.c f22386u = new e(2910, 3400);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final y3.c f22387v = new f(3070, 3400);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final y3.c f22388w = new g(3140, 3400);

    class a extends y3.c {
        a(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.B0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class b extends y3.c {
        b(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.B0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class c extends y3.c {
        c(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.B0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class d extends y3.c {
        d(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class e extends y3.c {
        e(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class f extends y3.c {
        f(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            HSRoomDatabase.q0(dVar);
            HSRoomDatabase.C0(dVar);
        }
    }

    class g extends y3.c {
        g(int i11, int i12) {
            super(i11, i12);
        }

        @Override // y3.c
        public void a(a4.d dVar) throws Throwable {
            try {
                HSRoomDatabase.q0(dVar);
                HSRoomDatabase.m0(dVar, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
            } catch (Exception unused) {
            }
        }
    }

    private static void A0(a4.d dVar) {
        Cursor cursorI0 = null;
        try {
            try {
                dVar.A();
                cursorI0 = dVar.i0("SELECT * FROM retry_tracking_table");
                while (cursorI0.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("uuid", cursorI0.getString(g0(cursorI0, "uuid")));
                    contentValues.put("create_time", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "create_time"))));
                    contentValues.put("retry_times", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "retry_times"))));
                    contentValues.put("tracking_data", cursorI0.getString(g0(cursorI0, "tracking_data")));
                    contentValues.put("md5", cursorI0.getString(g0(cursorI0, "md5")));
                    dVar.j0("retry_tracking_table_room", 5, contentValues);
                }
                cursorI0.close();
                dVar.E("DROP TABLE IF EXISTS retry_tracking_table");
            } catch (Exception e11) {
                e4.b().e("HSRoomDatabase", "migrateTable_retry_tracking_table failed:" + Log.getStackTraceString(e11));
                if (cursorI0 != null) {
                    cursorI0.close();
                }
                dVar.E("DROP TABLE IF EXISTS retry_tracking_table");
            } finally {
                if (cursorI0 != null) {
                    try {
                        cursorI0.close();
                    } catch (Exception unused) {
                        dVar.I();
                        dVar.L();
                    }
                }
                dVar.E("DROP TABLE IF EXISTS retry_tracking_table");
                dVar.I();
                dVar.L();
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void B0(a4.d dVar) throws Throwable {
        j7.a.e().s("requestConfigTime");
        j7.a.e().s("hisavanaCurrentCloudControlVersion");
        m0(dVar, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void C0(a4.d dVar) throws Throwable {
        m0(dVar, new String[]{"adList_room", "default_ad_room", "attr_impression_room", "attr_click_room", "cloudList_room", "retry_tracking_table_room"});
    }

    private static int g0(Cursor cursor, String str) {
        return Math.max(cursor.getColumnIndex(str), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m0(a4.d dVar, String[] strArr) throws Throwable {
        for (String str : strArr) {
            str.hashCode();
            switch (str) {
                case "default_ad_room":
                    z0(dVar);
                    break;
                case "attr_impression_room":
                    w0(dVar);
                    break;
                case "retry_tracking_table_room":
                    A0(dVar);
                    break;
                case "cloudList_room":
                    y0(dVar);
                    break;
                case "attr_click_room":
                    u0(dVar);
                    break;
                case "adList_room":
                    s0(dVar);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q0(a4.d dVar) {
        dVar.E("CREATE TABLE IF NOT EXISTS cloudList_room(codeSeatId TEXT PRIMARY KEY NOT NULL, code_seat_bean TEXT);");
        dVar.E("CREATE TABLE IF NOT EXISTS adList_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ad_creative_id TEXT, codeSeatId TEXT,file_path TEXT,price DOUBLE,is_offline_ad INTEGER,ad_request_ver INTEGER,ad_bean TEXT);");
        dVar.E("CREATE TABLE IF NOT EXISTS retry_tracking_table_room(uuid TEXT NOT NULL, create_time INTEGER,retry_times INTEGER,tracking_data TEXT,md5 TEXT,PRIMARY KEY (uuid))");
        dVar.E("CREATE TABLE IF NOT EXISTS default_ad_room(ad_creative_id TEXT NOT NULL,codeSeatId TEXT NOT NULL,ad_type INTEGER NOT NULL,price DOUBLE DEFAULT 0.0,ad_request_ver INTEGER NOT NULL DEFAULT 0,displayed_times INTEGER NOT NULL  DEFAULT 0,displayed_date TEXT,start_date TEXT,end_date TEXT,display_max_times INTEGER NOT NULL DEFAULT 0,file_path TEXT,default_country_white TEXT,default_country_black TEXT,default_brand_white TEXT,default_brand_black TEXT,ad_bean TEXT, PRIMARY KEY (ad_creative_id,codeSeatId));");
        dVar.E("CREATE TABLE IF NOT EXISTS attr_impression_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,pkg TEXT NOT NULL,imp_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);");
        dVar.E("CREATE TABLE IF NOT EXISTS attr_click_room(_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,ac_type INTEGER NOT NULL,pkg TEXT NOT NULL,dl_type TEXT NOT NULL,codeSeatId TEXT NOT NULL,click_ts INTEGER NOT NULL DEFAULT 0,ad_creative_id TEXT NOT NULL);");
    }

    private static HSRoomDatabase r0() {
        return (HSRoomDatabase) q.a(com.cloud.sdk.commonutil.util.e.a(), HSRoomDatabase.class, "hisavana.db").b(f22382q, f22383r, f22384s, f22385t, f22386u, f22387v, f22388w).g().e().d();
    }

    private static void s0(a4.d dVar) {
        Cursor cursorI0 = null;
        try {
            try {
                dVar.A();
                cursorI0 = dVar.i0("SELECT * FROM adList");
                while (cursorI0.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "_id"))));
                    contentValues.put(TrackingKey.IS_OFFLINE_AD, Integer.valueOf(cursorI0.getInt(g0(cursorI0, TrackingKey.IS_OFFLINE_AD))));
                    contentValues.put("ad_bean", cursorI0.getString(g0(cursorI0, "ad_bean")));
                    contentValues.put("codeSeatId", cursorI0.getString(g0(cursorI0, "codeSeatId")));
                    contentValues.put(BidResponsed.KEY_PRICE, Double.valueOf(cursorI0.getDouble(g0(cursorI0, BidResponsed.KEY_PRICE))));
                    contentValues.put("ad_creative_id", cursorI0.getString(g0(cursorI0, "ad_creative_id")));
                    contentValues.put("ad_request_ver", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "ad_request_ver"))));
                    contentValues.put("file_path", cursorI0.getString(g0(cursorI0, "file_path")));
                    dVar.j0("adList_room", 5, contentValues);
                }
                cursorI0.close();
                dVar.E("DROP TABLE IF EXISTS adList");
            } catch (Exception e11) {
                e4.b().e("HSRoomDatabase", "migrateTable_adList failed:" + Log.getStackTraceString(e11));
                if (cursorI0 != null) {
                    cursorI0.close();
                }
                dVar.E("DROP TABLE IF EXISTS adList");
            } finally {
                if (cursorI0 != null) {
                    try {
                        cursorI0.close();
                    } catch (Exception unused) {
                        dVar.I();
                        dVar.L();
                    }
                }
                dVar.E("DROP TABLE IF EXISTS adList");
                dVar.I();
                dVar.L();
            }
        } catch (Exception unused2) {
        }
    }

    private static void u0(a4.d dVar) {
        Cursor cursorI0 = null;
        try {
            try {
                dVar.A();
                cursorI0 = dVar.i0("SELECT * FROM attr_click");
                while (cursorI0.moveToNext()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "_id"))));
                    contentValues.put("ac_type", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "ac_type"))));
                    contentValues.put(PushConstants.PROVIDER_FIELD_PKG, cursorI0.getString(g0(cursorI0, PushConstants.PROVIDER_FIELD_PKG)));
                    contentValues.put("dl_type", cursorI0.getString(g0(cursorI0, "dl_type")));
                    contentValues.put("codeSeatId", cursorI0.getString(g0(cursorI0, "codeSeatId")));
                    contentValues.put(TrackingKey.CLICK_TS, Integer.valueOf(cursorI0.getInt(g0(cursorI0, TrackingKey.CLICK_TS))));
                    contentValues.put("ad_creative_id", cursorI0.getString(g0(cursorI0, "ad_creative_id")));
                    dVar.j0("attr_click_room", 5, contentValues);
                }
                cursorI0.close();
                dVar.E("DROP TABLE IF EXISTS attr_click");
            } catch (Exception e11) {
                e4.b().e("HSRoomDatabase", "migrateTable_attr_click failed:" + Log.getStackTraceString(e11));
                if (cursorI0 != null) {
                    cursorI0.close();
                }
                dVar.E("DROP TABLE IF EXISTS attr_click");
            } finally {
                if (cursorI0 != null) {
                    try {
                        cursorI0.close();
                    } catch (Exception unused) {
                        dVar.I();
                        dVar.L();
                    }
                }
                dVar.E("DROP TABLE IF EXISTS attr_click");
                dVar.I();
                dVar.L();
            }
        } catch (Exception unused2) {
        }
    }

    public static HSRoomDatabase v0() {
        if (f22381p == null) {
            synchronized (HSRoomDatabase.class) {
                if (f22381p == null) {
                    try {
                        f22381p = r0();
                        if (a7.c.p()) {
                            e4.b().e("HSRoomDatabase", "current database version is:" + f22381p.z().getReadableDatabase().getVersion());
                        }
                    } catch (Exception e11) {
                        if (a7.c.p()) {
                            Toast.makeText(com.cloud.sdk.commonutil.util.e.a(), "create room database failed:" + Log.getStackTraceString(e11), 1).show();
                        }
                        com.cloud.sdk.commonutil.util.e.a().deleteDatabase("hisavana.db");
                        f22381p = r0();
                    }
                }
            }
        }
        return f22381p;
    }

    private static void w0(a4.d dVar) {
        Cursor cursorI0 = null;
        try {
            try {
                try {
                    dVar.A();
                    cursorI0 = dVar.i0("SELECT * FROM attr_impression");
                    while (cursorI0.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("_id", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "_id"))));
                        contentValues.put(PushConstants.PROVIDER_FIELD_PKG, cursorI0.getString(g0(cursorI0, PushConstants.PROVIDER_FIELD_PKG)));
                        contentValues.put("imp_ts", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "imp_ts"))));
                        contentValues.put("ad_creative_id", cursorI0.getString(g0(cursorI0, "ad_creative_id")));
                        dVar.j0("attr_impression_room", 5, contentValues);
                    }
                    cursorI0.close();
                    dVar.E("DROP TABLE IF EXISTS attr_impression");
                } catch (Exception e11) {
                    e4.b().e("HSRoomDatabase", "migrateTable_attr_impression failed:" + Log.getStackTraceString(e11));
                    if (cursorI0 != null) {
                        cursorI0.close();
                    }
                    dVar.E("DROP TABLE IF EXISTS attr_impression");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorI0 != null) {
                try {
                    cursorI0.close();
                } catch (Exception unused2) {
                    dVar.I();
                    dVar.L();
                }
            }
            dVar.E("DROP TABLE IF EXISTS attr_impression");
            dVar.I();
            dVar.L();
        }
    }

    private static void y0(a4.d dVar) {
        Cursor cursorI0 = null;
        try {
            try {
                try {
                    dVar.A();
                    cursorI0 = dVar.i0("SELECT * FROM cloudList");
                    while (cursorI0.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("codeSeatId", cursorI0.getString(g0(cursorI0, "codeSeatId")));
                        contentValues.put("code_seat_bean", cursorI0.getString(g0(cursorI0, "code_seat_bean")));
                        dVar.j0("cloudList_room", 5, contentValues);
                    }
                    cursorI0.close();
                    dVar.E("DROP TABLE IF EXISTS cloudList");
                } catch (Exception e11) {
                    e4.b().e("HSRoomDatabase", "migrateTable_cloudList failed:" + Log.getStackTraceString(e11));
                    if (cursorI0 != null) {
                        cursorI0.close();
                    }
                    dVar.E("DROP TABLE IF EXISTS cloudList");
                }
            } catch (Exception unused) {
            }
        } finally {
            if (cursorI0 != null) {
                try {
                    cursorI0.close();
                } catch (Exception unused2) {
                    dVar.I();
                    dVar.L();
                }
            }
            dVar.E("DROP TABLE IF EXISTS cloudList");
            dVar.I();
            dVar.L();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0185 A[Catch: Exception -> 0x018b, TRY_ENTER, TryCatch #0 {Exception -> 0x018b, blocks: (B:39:0x0185, B:40:0x0188, B:23:0x0141), top: B:51:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0195 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static void z0(a4.d dVar) throws Throwable {
        a4.d dVar2;
        String str;
        a4.d dVar3 = dVar;
        String str2 = "default_brand_white";
        String str3 = "default_country_black";
        String str4 = "ad_bean";
        String str5 = "ad_creative_id";
        String str6 = "default_brand_black";
        Cursor cursor = null;
        try {
            try {
                dVar.A();
                try {
                    Cursor cursorI0 = dVar3.i0("SELECT * FROM default_ad");
                    while (cursorI0.moveToNext()) {
                        try {
                            try {
                                ContentValues contentValues = new ContentValues();
                                String str7 = str2;
                                contentValues.put(str5, cursorI0.getString(g0(cursorI0, str5)));
                                contentValues.put("codeSeatId", cursorI0.getString(g0(cursorI0, "codeSeatId")));
                                contentValues.put("ad_type", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "ad_type"))));
                                contentValues.put(BidResponsed.KEY_PRICE, Double.valueOf(cursorI0.getDouble(g0(cursorI0, BidResponsed.KEY_PRICE))));
                                contentValues.put("ad_request_ver", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "ad_request_ver"))));
                                contentValues.put("displayed_times", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "displayed_times"))));
                                contentValues.put("displayed_date", cursorI0.getString(g0(cursorI0, "displayed_date")));
                                contentValues.put("start_date", cursorI0.getString(g0(cursorI0, "start_date")));
                                contentValues.put("end_date", cursorI0.getString(g0(cursorI0, "end_date")));
                                contentValues.put("display_max_times", Integer.valueOf(cursorI0.getInt(g0(cursorI0, "display_max_times"))));
                                contentValues.put("file_path", cursorI0.getString(g0(cursorI0, "file_path")));
                                contentValues.put("default_country_white", cursorI0.getString(g0(cursorI0, "default_country_white")));
                                contentValues.put(str3, cursorI0.getString(g0(cursorI0, str3)));
                                String str8 = str5;
                                contentValues.put(str7, cursorI0.getString(g0(cursorI0, str7)));
                                String str9 = str6;
                                contentValues.put(str9, cursorI0.getString(g0(cursorI0, str9)));
                                String str10 = str4;
                                contentValues.put(str10, cursorI0.getString(g0(cursorI0, str10)));
                                String str11 = str3;
                                dVar2 = dVar;
                                try {
                                    dVar2.j0("default_ad_room", 5, contentValues);
                                    dVar3 = dVar2;
                                    str2 = str7;
                                    str5 = str8;
                                    str3 = str11;
                                    str6 = str9;
                                    str4 = str10;
                                } catch (Exception e11) {
                                    e = e11;
                                    cursor = cursorI0;
                                    str = "DROP TABLE IF EXISTS default_ad";
                                    try {
                                        e4.b().e("HSRoomDatabase", "migrateTable_default_ad failed:" + Log.getStackTraceString(e));
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        dVar2.E(str);
                                        dVar.I();
                                        dVar.L();
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (Exception unused) {
                                                dVar.I();
                                                dVar.L();
                                                throw th;
                                            }
                                        }
                                        dVar2.E(str);
                                        dVar.I();
                                        dVar.L();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    cursor = cursorI0;
                                    str = "DROP TABLE IF EXISTS default_ad";
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    dVar2.E(str);
                                    dVar.I();
                                    dVar.L();
                                    throw th;
                                }
                            } catch (Exception e12) {
                                e = e12;
                                dVar2 = dVar;
                            } catch (Throwable th4) {
                                th = th4;
                                dVar2 = dVar;
                            }
                        } catch (Exception e13) {
                            e = e13;
                            dVar2 = dVar3;
                            str = "DROP TABLE IF EXISTS default_ad";
                            cursor = cursorI0;
                            e4.b().e("HSRoomDatabase", "migrateTable_default_ad failed:" + Log.getStackTraceString(e));
                            if (cursor != null) {
                                cursor.close();
                            }
                            dVar2.E(str);
                        } catch (Throwable th5) {
                            th = th5;
                            dVar2 = dVar3;
                            str = "DROP TABLE IF EXISTS default_ad";
                            cursor = cursorI0;
                            if (cursor != null) {
                                cursor.close();
                            }
                            dVar2.E(str);
                            dVar.I();
                            dVar.L();
                            throw th;
                        }
                    }
                    a4.d dVar4 = dVar3;
                    cursorI0.close();
                    dVar4.E("DROP TABLE IF EXISTS default_ad");
                } catch (Exception e14) {
                    e = e14;
                    dVar2 = dVar3;
                } catch (Throwable th6) {
                    th = th6;
                    dVar2 = dVar3;
                }
            } catch (Exception unused2) {
            }
        } catch (Exception e15) {
            e = e15;
            dVar2 = dVar3;
            str = "DROP TABLE IF EXISTS default_ad";
        } catch (Throwable th7) {
            th = th7;
            dVar2 = dVar3;
            str = "DROP TABLE IF EXISTS default_ad";
        }
        dVar.I();
        dVar.L();
    }

    public abstract v3 h0();

    public abstract f5 k0();

    public abstract c6 n0();

    public abstract v0 p0();

    public abstract c2 t0();

    public abstract m1 x0();
}
