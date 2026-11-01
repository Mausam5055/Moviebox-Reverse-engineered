package com.transsion.lib_web.zip.db;

import androidx.room.InvalidationTracker;
import androidx.room.d0;
import androidx.room.util.o;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.lib_web.zip.db.WebResDatabase_Impl;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import z3.b;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tJ)\u0010\r\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\f0\nH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u000b0\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\f2\u001a\u0010\u0013\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u000b\u0012\u0004\u0012\u00020\u00100\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;", "Lcom/transsion/lib_web/zip/db/WebResDatabase;", "<init>", "()V", "Landroidx/room/d0;", "j0", "()Landroidx/room/d0;", "Landroidx/room/InvalidationTracker;", CampaignEx.JSON_KEY_AD_Q, "()Landroidx/room/InvalidationTracker;", "", "Lkotlin/reflect/KClass;", "", "D", "()Ljava/util/Map;", "", "Ly3/b;", "B", "()Ljava/util/Set;", "autoMigrationSpecs", "Ly3/c;", "n", "(Ljava/util/Map;)Ljava/util/List;", "Lkotlin/Lazy;", "Lpm/a;", CampaignEx.JSON_KEY_AD_R, "Lkotlin/Lazy;", "_webResDao", "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WebResDatabase_Impl extends WebResDatabase {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Lazy _webResDao = LazyKt.b(new Function0() { // from class: pm.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WebResDatabase_Impl.h0(this.f72477a);
        }
    });

    public static final class a extends d0 {
        a() {
            super(1, "8fb9548e62ef8b007d7fa7c9d6d00479", "a675d4e34806d9830871c01a4db0b4d7");
        }

        @Override // androidx.room.d0
        public void a(b connection) throws Exception {
            Intrinsics.h(connection, "connection");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `mb_web_res_db` (`scene` TEXT NOT NULL, `htmlUrl` TEXT NOT NULL, `zipUrl` TEXT NOT NULL, `zipMd5` TEXT NOT NULL, `sourceType` INTEGER NOT NULL, `updateTime` TEXT, PRIMARY KEY(`scene`))");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8fb9548e62ef8b007d7fa7c9d6d00479')");
        }

        @Override // androidx.room.d0
        public void b(b connection) throws Exception {
            Intrinsics.h(connection, "connection");
            z3.a.a(connection, "DROP TABLE IF EXISTS `mb_web_res_db`");
        }

        @Override // androidx.room.d0
        public void f(b connection) {
            Intrinsics.h(connection, "connection");
        }

        @Override // androidx.room.d0
        public void g(b connection) {
            Intrinsics.h(connection, "connection");
            WebResDatabase_Impl.this.Q(connection);
        }

        @Override // androidx.room.d0
        public void h(b connection) {
            Intrinsics.h(connection, "connection");
        }

        @Override // androidx.room.d0
        public void i(b connection) {
            Intrinsics.h(connection, "connection");
            androidx.room.util.b.b(connection);
        }

        @Override // androidx.room.d0
        public d0.a j(b connection) {
            Intrinsics.h(connection, "connection");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, new o.a(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "TEXT", true, 1, null, 1));
            linkedHashMap.put("htmlUrl", new o.a("htmlUrl", "TEXT", true, 0, null, 1));
            linkedHashMap.put("zipUrl", new o.a("zipUrl", "TEXT", true, 0, null, 1));
            linkedHashMap.put("zipMd5", new o.a("zipMd5", "TEXT", true, 0, null, 1));
            linkedHashMap.put("sourceType", new o.a("sourceType", "INTEGER", true, 0, null, 1));
            linkedHashMap.put("updateTime", new o.a("updateTime", "TEXT", false, 0, null, 1));
            o oVar = new o("mb_web_res_db", linkedHashMap, new LinkedHashSet(), new LinkedHashSet());
            o oVarB = o.f14796e.b(connection, "mb_web_res_db");
            if (oVar.equals(oVarB)) {
                return new d0.a(true, null);
            }
            return new d0.a(false, "mb_web_res_db(com.transsion.lib_web.zip.db.WebViewCacheConfigData).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.lib_web.zip.db.a h0(WebResDatabase_Impl webResDatabase_Impl) {
        return new com.transsion.lib_web.zip.db.a(webResDatabase_Impl);
    }

    @Override // androidx.room.RoomDatabase
    public Set B() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map D() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Reflection.b(pm.a.class), com.transsion.lib_web.zip.db.a.f46195e.a());
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public d0 r() {
        return new a();
    }

    @Override // androidx.room.RoomDatabase
    public List n(Map autoMigrationSpecs) {
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        return new ArrayList();
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "mb_web_res_db");
    }
}
