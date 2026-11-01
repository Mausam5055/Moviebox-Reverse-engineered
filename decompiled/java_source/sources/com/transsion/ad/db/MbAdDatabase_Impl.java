package com.transsion.ad.db;

import androidx.room.InvalidationTracker;
import androidx.room.d0;
import androidx.room.util.o;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.ad.db.scene.AdSceneLimitDao;
import com.transsion.ad.db.scene.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import ki.f;
import li.b;
import li.m;
import mi.l;
import mi.t;

/* JADX INFO: loaded from: classes5.dex */
public final class MbAdDatabase_Impl extends MbAdDatabase {
    private volatile b E;
    private volatile ki.a F;
    private volatile l G;
    private volatile com.transsion.ad.db.pslink.a H;
    private volatile mi.a I;
    private volatile AdSceneLimitDao J;

    class a extends d0 {
        a(int i11, String str, String str2) {
            super(i11, str, str2);
        }

        @Override // androidx.room.d0
        public void a(z3.b bVar) throws Exception {
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `mb_ad_db_plans` (`id` TEXT NOT NULL, `version` TEXT, `name` TEXT, `startTime` TEXT, `endTime` TEXT, `extraConfig` TEXT, `displayTimes` INTEGER, `showedTimes` INTEGER, `showDate` TEXT, `advertiserName` TEXT, `advertiserAvatar` TEXT, `advertiserAvatarPath` TEXT, `brand` TEXT, `denyBrand` TEXT, `model` TEXT, `denyModel` TEXT, `country` TEXT, `scenes` TEXT, `adSource` TEXT, `extAdSlot` TEXT, `adMaterialList` TEXT, `adPlanUpdateTime` TEXT, `sort` INTEGER, `adShowLevel` TEXT, `filterClientVersion` TEXT, `adPlanCreateTime` TEXT, `appStarDesc` TEXT, `appSizeDesc` TEXT, `ctxEnableExpr` TEXT, `ctxDisableExpr` TEXT, `ctxAttributeConfig` TEXT, `dispatchTimeStart` TEXT, `dispatchTimeEnd` TEXT, `extImage` TEXT, `bidEcpmCent` REAL, `ecpmCent` INTEGER, `isValid` INTEGER NOT NULL, `h5LinkPreload` INTEGER NOT NULL, `h5LinkOpenByCct` INTEGER NOT NULL, `countryCode` TEXT, PRIMARY KEY(`id`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `local_mcc` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ps_link_ad` (`id` INTEGER NOT NULL, `nonId` TEXT NOT NULL, `adSource` TEXT NOT NULL, `extAdSlot` TEXT NOT NULL, `rank` INTEGER NOT NULL, `psPlanId` TEXT, `psLinkAdInfoStr` TEXT, `psInfoJson` TEXT, `updateTimestamp` INTEGER, `showMax` INTEGER, `clickMax` INTEGER, `showHours` TEXT, `showedTimes` INTEGER NOT NULL, `clickedTimes` INTEGER NOT NULL, `showDate` TEXT, `isOffer` INTEGER NOT NULL, PRIMARY KEY(`id`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `attribution_points` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `psId` TEXT NOT NULL, `failCount` INTEGER NOT NULL, `reportUrl` TEXT NOT NULL, `type` TEXT NOT NULL, `updateTimestamp` INTEGER NOT NULL)");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `app_installed` (`packageName` TEXT NOT NULL, `source` TEXT, `appName` TEXT, `versionName` TEXT, `versionCode` TEXT, `horizontalImageUrl` TEXT, `eCPM` REAL, `installTime` INTEGER, `lastOpenTime` INTEGER, PRIMARY KEY(`packageName`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ad_scene_limit_table` (`sceneId` TEXT NOT NULL, `lastDisplayAdDate` TEXT NOT NULL, `lastDisplayAdTimestamp` INTEGER NOT NULL, `displayTimes` INTEGER NOT NULL, PRIMARY KEY(`sceneId`))");
            z3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8bd1fb447b0980bb898227f31dc746b7')");
        }

        @Override // androidx.room.d0
        public void b(z3.b bVar) throws Exception {
            z3.a.a(bVar, "DROP TABLE IF EXISTS `mb_ad_db_plans`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `local_mcc`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `ps_link_ad`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `attribution_points`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `app_installed`");
            z3.a.a(bVar, "DROP TABLE IF EXISTS `ad_scene_limit_table`");
        }

        @Override // androidx.room.d0
        public void f(z3.b bVar) {
        }

        @Override // androidx.room.d0
        public void g(z3.b bVar) {
            MbAdDatabase_Impl.this.Q(bVar);
        }

        @Override // androidx.room.d0
        public void h(z3.b bVar) {
        }

        @Override // androidx.room.d0
        public void i(z3.b bVar) {
            androidx.room.util.b.b(bVar);
        }

        @Override // androidx.room.d0
        public d0.a j(z3.b bVar) {
            HashMap map = new HashMap(40);
            map.put("id", new o.a("id", "TEXT", true, 1, null, 1));
            map.put("version", new o.a("version", "TEXT", false, 0, null, 1));
            map.put("name", new o.a("name", "TEXT", false, 0, null, 1));
            map.put("startTime", new o.a("startTime", "TEXT", false, 0, null, 1));
            map.put("endTime", new o.a("endTime", "TEXT", false, 0, null, 1));
            map.put("extraConfig", new o.a("extraConfig", "TEXT", false, 0, null, 1));
            map.put("displayTimes", new o.a("displayTimes", "INTEGER", false, 0, null, 1));
            map.put("showedTimes", new o.a("showedTimes", "INTEGER", false, 0, null, 1));
            map.put("showDate", new o.a("showDate", "TEXT", false, 0, null, 1));
            map.put("advertiserName", new o.a("advertiserName", "TEXT", false, 0, null, 1));
            map.put("advertiserAvatar", new o.a("advertiserAvatar", "TEXT", false, 0, null, 1));
            map.put("advertiserAvatarPath", new o.a("advertiserAvatarPath", "TEXT", false, 0, null, 1));
            map.put("brand", new o.a("brand", "TEXT", false, 0, null, 1));
            map.put("denyBrand", new o.a("denyBrand", "TEXT", false, 0, null, 1));
            map.put("model", new o.a("model", "TEXT", false, 0, null, 1));
            map.put("denyModel", new o.a("denyModel", "TEXT", false, 0, null, 1));
            map.put(PlaceTypes.COUNTRY, new o.a(PlaceTypes.COUNTRY, "TEXT", false, 0, null, 1));
            map.put("scenes", new o.a("scenes", "TEXT", false, 0, null, 1));
            map.put("adSource", new o.a("adSource", "TEXT", false, 0, null, 1));
            map.put("extAdSlot", new o.a("extAdSlot", "TEXT", false, 0, null, 1));
            map.put("adMaterialList", new o.a("adMaterialList", "TEXT", false, 0, null, 1));
            map.put("adPlanUpdateTime", new o.a("adPlanUpdateTime", "TEXT", false, 0, null, 1));
            map.put("sort", new o.a("sort", "INTEGER", false, 0, null, 1));
            map.put("adShowLevel", new o.a("adShowLevel", "TEXT", false, 0, null, 1));
            map.put("filterClientVersion", new o.a("filterClientVersion", "TEXT", false, 0, null, 1));
            map.put("adPlanCreateTime", new o.a("adPlanCreateTime", "TEXT", false, 0, null, 1));
            map.put("appStarDesc", new o.a("appStarDesc", "TEXT", false, 0, null, 1));
            map.put("appSizeDesc", new o.a("appSizeDesc", "TEXT", false, 0, null, 1));
            map.put("ctxEnableExpr", new o.a("ctxEnableExpr", "TEXT", false, 0, null, 1));
            map.put("ctxDisableExpr", new o.a("ctxDisableExpr", "TEXT", false, 0, null, 1));
            map.put("ctxAttributeConfig", new o.a("ctxAttributeConfig", "TEXT", false, 0, null, 1));
            map.put("dispatchTimeStart", new o.a("dispatchTimeStart", "TEXT", false, 0, null, 1));
            map.put("dispatchTimeEnd", new o.a("dispatchTimeEnd", "TEXT", false, 0, null, 1));
            map.put("extImage", new o.a("extImage", "TEXT", false, 0, null, 1));
            map.put("bidEcpmCent", new o.a("bidEcpmCent", "REAL", false, 0, null, 1));
            map.put("ecpmCent", new o.a("ecpmCent", "INTEGER", false, 0, null, 1));
            map.put("isValid", new o.a("isValid", "INTEGER", true, 0, null, 1));
            map.put("h5LinkPreload", new o.a("h5LinkPreload", "INTEGER", true, 0, null, 1));
            map.put("h5LinkOpenByCct", new o.a("h5LinkOpenByCct", "INTEGER", true, 0, null, 1));
            map.put("countryCode", new o.a("countryCode", "TEXT", false, 0, null, 1));
            o oVar = new o("mb_ad_db_plans", map, new HashSet(0), new HashSet(0));
            o oVarB = o.b(bVar, "mb_ad_db_plans");
            if (!oVar.equals(oVarB)) {
                return new d0.a(false, "mb_ad_db_plans(com.transsion.ad.db.plan.MbAdDbPlans).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
            }
            HashMap map2 = new HashMap(5);
            map2.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map2.put("Country", new o.a("Country", "TEXT", true, 0, null, 1));
            map2.put("Mcc", new o.a("Mcc", "TEXT", true, 0, null, 1));
            map2.put("Iso", new o.a("Iso", "TEXT", true, 0, null, 1));
            map2.put("CountryCode", new o.a("CountryCode", "TEXT", true, 0, null, 1));
            o oVar2 = new o("local_mcc", map2, new HashSet(0), new HashSet(0));
            o oVarB2 = o.b(bVar, "local_mcc");
            if (!oVar2.equals(oVarB2)) {
                return new d0.a(false, "local_mcc(com.transsion.ad.db.mcc.LocalMcc).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarB2);
            }
            HashMap map3 = new HashMap(16);
            map3.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map3.put("nonId", new o.a("nonId", "TEXT", true, 0, null, 1));
            map3.put("adSource", new o.a("adSource", "TEXT", true, 0, null, 1));
            map3.put("extAdSlot", new o.a("extAdSlot", "TEXT", true, 0, null, 1));
            map3.put("rank", new o.a("rank", "INTEGER", true, 0, null, 1));
            map3.put("psPlanId", new o.a("psPlanId", "TEXT", false, 0, null, 1));
            map3.put("psLinkAdInfoStr", new o.a("psLinkAdInfoStr", "TEXT", false, 0, null, 1));
            map3.put("psInfoJson", new o.a("psInfoJson", "TEXT", false, 0, null, 1));
            map3.put("updateTimestamp", new o.a("updateTimestamp", "INTEGER", false, 0, null, 1));
            map3.put("showMax", new o.a("showMax", "INTEGER", false, 0, null, 1));
            map3.put("clickMax", new o.a("clickMax", "INTEGER", false, 0, null, 1));
            map3.put("showHours", new o.a("showHours", "TEXT", false, 0, null, 1));
            map3.put("showedTimes", new o.a("showedTimes", "INTEGER", true, 0, null, 1));
            map3.put("clickedTimes", new o.a("clickedTimes", "INTEGER", true, 0, null, 1));
            map3.put("showDate", new o.a("showDate", "TEXT", false, 0, null, 1));
            map3.put("isOffer", new o.a("isOffer", "INTEGER", true, 0, null, 1));
            o oVar3 = new o("ps_link_ad", map3, new HashSet(0), new HashSet(0));
            o oVarB3 = o.b(bVar, "ps_link_ad");
            if (!oVar3.equals(oVarB3)) {
                return new d0.a(false, "ps_link_ad(com.transsion.ad.db.pslink.PsLinkAdPlan).\n Expected:\n" + oVar3 + "\n Found:\n" + oVarB3);
            }
            HashMap map4 = new HashMap(6);
            map4.put("id", new o.a("id", "INTEGER", true, 1, null, 1));
            map4.put("psId", new o.a("psId", "TEXT", true, 0, null, 1));
            map4.put("failCount", new o.a("failCount", "INTEGER", true, 0, null, 1));
            map4.put("reportUrl", new o.a("reportUrl", "TEXT", true, 0, null, 1));
            map4.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new o.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "TEXT", true, 0, null, 1));
            map4.put("updateTimestamp", new o.a("updateTimestamp", "INTEGER", true, 0, null, 1));
            o oVar4 = new o("attribution_points", map4, new HashSet(0), new HashSet(0));
            o oVarB4 = o.b(bVar, "attribution_points");
            if (!oVar4.equals(oVarB4)) {
                return new d0.a(false, "attribution_points(com.transsion.ad.db.pslink.AttributionPoint).\n Expected:\n" + oVar4 + "\n Found:\n" + oVarB4);
            }
            HashMap map5 = new HashMap(9);
            map5.put("packageName", new o.a("packageName", "TEXT", true, 1, null, 1));
            map5.put(EventConstants.KEY_SOURCE, new o.a(EventConstants.KEY_SOURCE, "TEXT", false, 0, null, 1));
            map5.put(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, new o.a(MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "TEXT", false, 0, null, 1));
            map5.put("versionName", new o.a("versionName", "TEXT", false, 0, null, 1));
            map5.put("versionCode", new o.a("versionCode", "TEXT", false, 0, null, 1));
            map5.put("horizontalImageUrl", new o.a("horizontalImageUrl", "TEXT", false, 0, null, 1));
            map5.put("eCPM", new o.a("eCPM", "REAL", false, 0, null, 1));
            map5.put("installTime", new o.a("installTime", "INTEGER", false, 0, null, 1));
            map5.put("lastOpenTime", new o.a("lastOpenTime", "INTEGER", false, 0, null, 1));
            o oVar5 = new o("app_installed", map5, new HashSet(0), new HashSet(0));
            o oVarB5 = o.b(bVar, "app_installed");
            if (!oVar5.equals(oVarB5)) {
                return new d0.a(false, "app_installed(com.transsion.ad.db.pslink.AppInstalledBean).\n Expected:\n" + oVar5 + "\n Found:\n" + oVarB5);
            }
            HashMap map6 = new HashMap(4);
            map6.put("sceneId", new o.a("sceneId", "TEXT", true, 1, null, 1));
            map6.put("lastDisplayAdDate", new o.a("lastDisplayAdDate", "TEXT", true, 0, null, 1));
            map6.put("lastDisplayAdTimestamp", new o.a("lastDisplayAdTimestamp", "INTEGER", true, 0, null, 1));
            map6.put("displayTimes", new o.a("displayTimes", "INTEGER", true, 0, null, 1));
            o oVar6 = new o("ad_scene_limit_table", map6, new HashSet(0), new HashSet(0));
            o oVarB6 = o.b(bVar, "ad_scene_limit_table");
            if (oVar6.equals(oVarB6)) {
                return new d0.a(true, null);
            }
            return new d0.a(false, "ad_scene_limit_table(com.transsion.ad.db.scene.AdSceneLimit).\n Expected:\n" + oVar6 + "\n Found:\n" + oVarB6);
        }
    }

    @Override // com.transsion.ad.db.MbAdDatabase
    public l A0() {
        l lVar;
        if (this.G != null) {
            return this.G;
        }
        synchronized (this) {
            try {
                if (this.G == null) {
                    this.G = new t(this);
                }
                lVar = this.G;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return lVar;
    }

    @Override // androidx.room.RoomDatabase
    public Set C() {
        return new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: C0, reason: merged with bridge method [inline-methods] */
    public d0 r() {
        return new a(14, "8bd1fb447b0980bb898227f31dc746b7", "3310799171ae6d06dd3b1d881846e92d");
    }

    @Override // androidx.room.RoomDatabase
    protected Map F() {
        HashMap map = new HashMap();
        map.put(b.class, m.v());
        map.put(ki.a.class, f.i());
        map.put(l.class, t.o());
        map.put(com.transsion.ad.db.pslink.a.class, com.transsion.ad.db.pslink.b.l());
        map.put(mi.a.class, mi.f.i());
        map.put(AdSceneLimitDao.class, g.m());
        return map;
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "mb_ad_db_plans", "local_mcc", "ps_link_ad", "attribution_points", "app_installed", "ad_scene_limit_table");
    }

    @Override // androidx.room.RoomDatabase
    public List v(Map map) {
        return new ArrayList();
    }

    @Override // com.transsion.ad.db.MbAdDatabase
    public AdSceneLimitDao v0() {
        AdSceneLimitDao adSceneLimitDao;
        if (this.J != null) {
            return this.J;
        }
        synchronized (this) {
            try {
                if (this.J == null) {
                    this.J = new g(this);
                }
                adSceneLimitDao = this.J;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return adSceneLimitDao;
    }

    @Override // com.transsion.ad.db.MbAdDatabase
    public mi.a w0() {
        mi.a aVar;
        if (this.I != null) {
            return this.I;
        }
        synchronized (this) {
            try {
                if (this.I == null) {
                    this.I = new mi.f(this);
                }
                aVar = this.I;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.ad.db.MbAdDatabase
    public com.transsion.ad.db.pslink.a x0() {
        com.transsion.ad.db.pslink.a aVar;
        if (this.H != null) {
            return this.H;
        }
        synchronized (this) {
            try {
                if (this.H == null) {
                    this.H = new com.transsion.ad.db.pslink.b(this);
                }
                aVar = this.H;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.ad.db.MbAdDatabase
    public ki.a y0() {
        ki.a aVar;
        if (this.F != null) {
            return this.F;
        }
        synchronized (this) {
            try {
                if (this.F == null) {
                    this.F = new f(this);
                }
                aVar = this.F;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override // com.transsion.ad.db.MbAdDatabase
    public b z0() {
        b bVar;
        if (this.E != null) {
            return this.E;
        }
        synchronized (this) {
            try {
                if (this.E == null) {
                    this.E = new m(this);
                }
                bVar = this.E;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }
}
