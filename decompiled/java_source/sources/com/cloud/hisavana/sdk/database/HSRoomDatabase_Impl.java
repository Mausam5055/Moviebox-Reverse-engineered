package com.cloud.hisavana.sdk.database;

import a4.d;
import a4.e;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.c;
import androidx.room.f0;
import androidx.room.util.b;
import androidx.room.util.o;
import com.cloud.hisavana.sdk.a2;
import com.cloud.hisavana.sdk.c2;
import com.cloud.hisavana.sdk.c6;
import com.cloud.hisavana.sdk.d2;
import com.cloud.hisavana.sdk.f5;
import com.cloud.hisavana.sdk.g5;
import com.cloud.hisavana.sdk.m1;
import com.cloud.hisavana.sdk.n1;
import com.cloud.hisavana.sdk.v0;
import com.cloud.hisavana.sdk.v3;
import com.cloud.hisavana.sdk.w0;
import com.cloud.hisavana.sdk.w3;
import com.cloud.hisavana.sdk.y1;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class HSRoomDatabase_Impl extends HSRoomDatabase {
    private volatile f5 A;
    private volatile c6 B;
    private volatile m1 C;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private volatile v0 f22389x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private volatile v3 f22390y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private volatile c2 f22391z;

    class a extends f0.b {
        a(int i11) {
            super(i11);
        }

        @Override // androidx.room.f0.b
        public void a(d dVar) {
            dVar.E("CREATE TABLE IF NOT EXISTS `cloudList_room` (`codeSeatId` TEXT NOT NULL, `code_seat_bean` TEXT, PRIMARY KEY(`codeSeatId`))");
            dVar.E("CREATE TABLE IF NOT EXISTS `adList_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_creative_id` TEXT, `codeSeatId` TEXT, `file_path` TEXT, `price` REAL, `is_offline_ad` INTEGER, `ad_request_ver` INTEGER, `ad_bean` TEXT)");
            dVar.E("CREATE TABLE IF NOT EXISTS `attr_click_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ac_type` INTEGER NOT NULL, `pkg` TEXT NOT NULL, `dl_type` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `click_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)");
            dVar.E("CREATE TABLE IF NOT EXISTS `attr_impression_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `pkg` TEXT NOT NULL, `imp_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)");
            dVar.E("CREATE TABLE IF NOT EXISTS `retry_tracking_table_room` (`uuid` TEXT NOT NULL, `create_time` INTEGER, `retry_times` INTEGER, `tracking_data` TEXT, `md5` TEXT, PRIMARY KEY(`uuid`))");
            dVar.E("CREATE TABLE IF NOT EXISTS `default_ad_room` (`ad_creative_id` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `ad_type` INTEGER NOT NULL, `price` REAL, `ad_request_ver` INTEGER NOT NULL, `displayed_times` INTEGER NOT NULL, `displayed_date` TEXT, `start_date` TEXT, `end_date` TEXT, `display_max_times` INTEGER NOT NULL, `file_path` TEXT, `default_country_white` TEXT, `default_country_black` TEXT, `default_brand_white` TEXT, `default_brand_black` TEXT, `ad_bean` TEXT, PRIMARY KEY(`ad_creative_id`, `codeSeatId`))");
            dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            dVar.E("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '45caaee56032168186f6d5e50f533e4c')");
        }

        @Override // androidx.room.f0.b
        public void b(d dVar) {
            dVar.E("DROP TABLE IF EXISTS `cloudList_room`");
            dVar.E("DROP TABLE IF EXISTS `adList_room`");
            dVar.E("DROP TABLE IF EXISTS `attr_click_room`");
            dVar.E("DROP TABLE IF EXISTS `attr_impression_room`");
            dVar.E("DROP TABLE IF EXISTS `retry_tracking_table_room`");
            dVar.E("DROP TABLE IF EXISTS `default_ad_room`");
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).f14499j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).c(dVar);
                }
            }
        }

        @Override // androidx.room.f0.b
        public void c(d dVar) {
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).f14499j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).a(dVar);
                }
            }
        }

        @Override // androidx.room.f0.b
        public void d(d dVar) {
            ((RoomDatabase) HSRoomDatabase_Impl.this).f14490a = dVar;
            HSRoomDatabase_Impl.this.P(dVar);
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).f14499j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).e(dVar);
                }
            }
        }

        @Override // androidx.room.f0.b
        public void e(d dVar) {
        }

        @Override // androidx.room.f0.b
        public void f(d dVar) {
            b.a(dVar);
        }

        @Override // androidx.room.f0.b
        public f0.c g(d dVar) {
            HashMap map = new HashMap(2);
            map.put("codeSeatId", new o.a("codeSeatId", "TEXT", true, 1, null, 1));
            map.put("code_seat_bean", new o.a("code_seat_bean", "TEXT", false, 0, null, 1));
            o oVar = new o("cloudList_room", map, new HashSet(0), new HashSet(0));
            o oVarA = o.a(dVar, "cloudList_room");
            if (!oVar.equals(oVarA)) {
                return new f0.c(false, "cloudList_room(com.cloud.hisavana.sdk.database.entities.CloudConfigEntity).\n Expected:\n" + oVar + "\n Found:\n" + oVarA);
            }
            HashMap map2 = new HashMap(8);
            map2.put("_id", new o.a("_id", "INTEGER", true, 1, null, 1));
            map2.put("ad_creative_id", new o.a("ad_creative_id", "TEXT", false, 0, null, 1));
            map2.put("codeSeatId", new o.a("codeSeatId", "TEXT", false, 0, null, 1));
            map2.put("file_path", new o.a("file_path", "TEXT", false, 0, null, 1));
            map2.put(BidResponsed.KEY_PRICE, new o.a(BidResponsed.KEY_PRICE, "REAL", false, 0, null, 1));
            map2.put(TrackingKey.IS_OFFLINE_AD, new o.a(TrackingKey.IS_OFFLINE_AD, "INTEGER", false, 0, null, 1));
            map2.put("ad_request_ver", new o.a("ad_request_ver", "INTEGER", false, 0, null, 1));
            map2.put("ad_bean", new o.a("ad_bean", "TEXT", false, 0, null, 1));
            o oVar2 = new o("adList_room", map2, new HashSet(0), new HashSet(0));
            o oVarA2 = o.a(dVar, "adList_room");
            if (!oVar2.equals(oVarA2)) {
                return new f0.c(false, "adList_room(com.cloud.hisavana.sdk.database.entities.AdListEntity).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarA2);
            }
            HashMap map3 = new HashMap(7);
            map3.put("_id", new o.a("_id", "INTEGER", true, 1, null, 1));
            map3.put("ac_type", new o.a("ac_type", "INTEGER", true, 0, null, 1));
            map3.put(PushConstants.PROVIDER_FIELD_PKG, new o.a(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 0, null, 1));
            map3.put("dl_type", new o.a("dl_type", "TEXT", true, 0, null, 1));
            map3.put("codeSeatId", new o.a("codeSeatId", "TEXT", true, 0, null, 1));
            map3.put(TrackingKey.CLICK_TS, new o.a(TrackingKey.CLICK_TS, "INTEGER", true, 0, null, 1));
            map3.put("ad_creative_id", new o.a("ad_creative_id", "TEXT", true, 0, null, 1));
            o oVar3 = new o("attr_click_room", map3, new HashSet(0), new HashSet(0));
            o oVarA3 = o.a(dVar, "attr_click_room");
            if (!oVar3.equals(oVarA3)) {
                return new f0.c(false, "attr_click_room(com.cloud.hisavana.sdk.database.entities.AttrClickEntity).\n Expected:\n" + oVar3 + "\n Found:\n" + oVarA3);
            }
            HashMap map4 = new HashMap(4);
            map4.put("_id", new o.a("_id", "INTEGER", true, 1, null, 1));
            map4.put(PushConstants.PROVIDER_FIELD_PKG, new o.a(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 0, null, 1));
            map4.put("imp_ts", new o.a("imp_ts", "INTEGER", true, 0, null, 1));
            map4.put("ad_creative_id", new o.a("ad_creative_id", "TEXT", true, 0, null, 1));
            o oVar4 = new o("attr_impression_room", map4, new HashSet(0), new HashSet(0));
            o oVarA4 = o.a(dVar, "attr_impression_room");
            if (!oVar4.equals(oVarA4)) {
                return new f0.c(false, "attr_impression_room(com.cloud.hisavana.sdk.database.entities.AttrImpressionEntity).\n Expected:\n" + oVar4 + "\n Found:\n" + oVarA4);
            }
            HashMap map5 = new HashMap(5);
            map5.put("uuid", new o.a("uuid", "TEXT", true, 1, null, 1));
            map5.put("create_time", new o.a("create_time", "INTEGER", false, 0, null, 1));
            map5.put("retry_times", new o.a("retry_times", "INTEGER", false, 0, null, 1));
            map5.put("tracking_data", new o.a("tracking_data", "TEXT", false, 0, null, 1));
            map5.put("md5", new o.a("md5", "TEXT", false, 0, null, 1));
            o oVar5 = new o("retry_tracking_table_room", map5, new HashSet(0), new HashSet(0));
            o oVarA5 = o.a(dVar, "retry_tracking_table_room");
            if (!oVar5.equals(oVarA5)) {
                return new f0.c(false, "retry_tracking_table_room(com.cloud.hisavana.sdk.database.entities.RetryTrackingEntity).\n Expected:\n" + oVar5 + "\n Found:\n" + oVarA5);
            }
            HashMap map6 = new HashMap(16);
            map6.put("ad_creative_id", new o.a("ad_creative_id", "TEXT", true, 1, null, 1));
            map6.put("codeSeatId", new o.a("codeSeatId", "TEXT", true, 2, null, 1));
            map6.put("ad_type", new o.a("ad_type", "INTEGER", true, 0, null, 1));
            map6.put(BidResponsed.KEY_PRICE, new o.a(BidResponsed.KEY_PRICE, "REAL", false, 0, null, 1));
            map6.put("ad_request_ver", new o.a("ad_request_ver", "INTEGER", true, 0, null, 1));
            map6.put("displayed_times", new o.a("displayed_times", "INTEGER", true, 0, null, 1));
            map6.put("displayed_date", new o.a("displayed_date", "TEXT", false, 0, null, 1));
            map6.put("start_date", new o.a("start_date", "TEXT", false, 0, null, 1));
            map6.put("end_date", new o.a("end_date", "TEXT", false, 0, null, 1));
            map6.put("display_max_times", new o.a("display_max_times", "INTEGER", true, 0, null, 1));
            map6.put("file_path", new o.a("file_path", "TEXT", false, 0, null, 1));
            map6.put("default_country_white", new o.a("default_country_white", "TEXT", false, 0, null, 1));
            map6.put("default_country_black", new o.a("default_country_black", "TEXT", false, 0, null, 1));
            map6.put("default_brand_white", new o.a("default_brand_white", "TEXT", false, 0, null, 1));
            map6.put("default_brand_black", new o.a("default_brand_black", "TEXT", false, 0, null, 1));
            map6.put("ad_bean", new o.a("ad_bean", "TEXT", false, 0, null, 1));
            o oVar6 = new o("default_ad_room", map6, new HashSet(0), new HashSet(0));
            o oVarA6 = o.a(dVar, "default_ad_room");
            if (oVar6.equals(oVarA6)) {
                return new f0.c(true, null);
            }
            return new f0.c(false, "default_ad_room(com.cloud.hisavana.sdk.database.entities.DefaultAdEntity).\n Expected:\n" + oVar6 + "\n Found:\n" + oVarA6);
        }
    }

    @Override // androidx.room.RoomDatabase
    public Set C() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map F() {
        HashMap map = new HashMap();
        map.put(v0.class, w0.d());
        map.put(v3.class, w3.e());
        map.put(c2.class, d2.c());
        map.put(f5.class, g5.c());
        map.put(c6.class, com.cloud.hisavana.sdk.a.c());
        map.put(m1.class, n1.e());
        map.put(y1.class, a2.a());
        return map;
    }

    @Override // com.cloud.hisavana.sdk.database.HSRoomDatabase
    public v3 h0() {
        v3 v3Var;
        if (this.f22390y != null) {
            return this.f22390y;
        }
        synchronized (this) {
            try {
                if (this.f22390y == null) {
                    this.f22390y = new w3(this);
                }
                v3Var = this.f22390y;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return v3Var;
    }

    @Override // com.cloud.hisavana.sdk.database.HSRoomDatabase
    public f5 k0() {
        f5 f5Var;
        if (this.A != null) {
            return this.A;
        }
        synchronized (this) {
            try {
                if (this.A == null) {
                    this.A = new g5(this);
                }
                f5Var = this.A;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f5Var;
    }

    @Override // com.cloud.hisavana.sdk.database.HSRoomDatabase
    public c6 n0() {
        c6 c6Var;
        if (this.B != null) {
            return this.B;
        }
        synchronized (this) {
            try {
                if (this.B == null) {
                    this.B = new com.cloud.hisavana.sdk.a(this);
                }
                c6Var = this.B;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c6Var;
    }

    @Override // com.cloud.hisavana.sdk.database.HSRoomDatabase
    public v0 p0() {
        v0 v0Var;
        if (this.f22389x != null) {
            return this.f22389x;
        }
        synchronized (this) {
            try {
                if (this.f22389x == null) {
                    this.f22389x = new w0(this);
                }
                v0Var = this.f22389x;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return v0Var;
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "cloudList_room", "adList_room", "attr_click_room", "attr_impression_room", "retry_tracking_table_room", "default_ad_room");
    }

    @Override // androidx.room.RoomDatabase
    protected e s(c cVar) {
        return cVar.f14572c.a(e.b.a(cVar.f14570a).d(cVar.f14571b).c(new f0(cVar, new a(3400), "45caaee56032168186f6d5e50f533e4c", "15505439a33f76665084a50b0e709cb5")).b());
    }

    @Override // com.cloud.hisavana.sdk.database.HSRoomDatabase
    public c2 t0() {
        c2 c2Var;
        if (this.f22391z != null) {
            return this.f22391z;
        }
        synchronized (this) {
            try {
                if (this.f22391z == null) {
                    this.f22391z = new d2(this);
                }
                c2Var = this.f22391z;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c2Var;
    }

    @Override // androidx.room.RoomDatabase
    public List v(Map map) {
        return new ArrayList();
    }

    @Override // com.cloud.hisavana.sdk.database.HSRoomDatabase
    public m1 x0() {
        m1 m1Var;
        if (this.C != null) {
            return this.C;
        }
        synchronized (this) {
            try {
                if (this.C == null) {
                    this.C = new n1(this);
                }
                m1Var = this.C;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return m1Var;
    }
}
