package com.transsion.ad.db;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.q;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.db.scene.AdSceneLimitDao;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u00162\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/transsion/ad/db/MbAdDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lli/b;", "z0", "()Lli/b;", "Lki/a;", "y0", "()Lki/a;", "Lmi/l;", "A0", "()Lmi/l;", "Lcom/transsion/ad/db/pslink/a;", "x0", "()Lcom/transsion/ad/db/pslink/a;", "Lmi/a;", "w0", "()Lmi/a;", "Lcom/transsion/ad/db/scene/AdSceneLimitDao;", "v0", "()Lcom/transsion/ad/db/scene/AdSceneLimitDao;", TtmlNode.TAG_P, "n", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class MbAdDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static volatile MbAdDatabase f42071q;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final e f42072r = new e();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final f f42073s = new f();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final g f42074t = new g();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final h f42075u = new h();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final i f42076v = new i();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final j f42077w = new j();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final k f42078x = new k();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final l f42079y = new l();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final m f42080z = new m();
    private static final a A = new a();
    private static final b B = new b();
    private static final c C = new c();
    private static final d D = new d();

    public static final class a extends y3.c {
        a() {
            super(10, 11);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE mb_ad_db_plans ADD COLUMN countryCode TEXT");
        }
    }

    public static final class b extends y3.c {
        b() {
            super(11, 12);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("CREATE TABLE IF NOT EXISTS app_installed (\n    packageName TEXT PRIMARY KEY NOT NULL,\n    source TEXT,\n    appName TEXT,\n    versionName TEXT,\n    versionCode TEXT,\n    horizontalImageUrl TEXT,\n    eCPM REAL,\n    installTime INTEGER,\n    lastOpenTime INTEGER\n)");
        }
    }

    public static final class c extends y3.c {
        c() {
            super(12, 13);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("CREATE TABLE IF NOT EXISTS ad_scene_limit_table (\n    sceneId TEXT NOT NULL PRIMARY KEY,\n    lastDisplayAdDate TEXT NOT NULL,\n    lastDisplayAdTimestamp INTEGER NOT NULL DEFAULT 0,\n    displayTimes INTEGER NOT NULL DEFAULT 0\n)");
        }
    }

    public static final class d extends y3.c {
        d() {
            super(13, 14);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN isOffer INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class e extends y3.c {
        e() {
            super(1, 2);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE MB_AD_DB_PLANS ADD COLUMN dispatchTimeStart TEXT");
            db2.E("ALTER TABLE MB_AD_DB_PLANS ADD COLUMN dispatchTimeEnd TEXT");
        }
    }

    public static final class f extends y3.c {
        f() {
            super(2, 3);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("CREATE TABLE IF NOT EXISTS LOCAL_MCC (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)");
        }
    }

    public static final class g extends y3.c {
        g() {
            super(3, 4);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE MB_AD_DB_PLANS ADD COLUMN adSource TEXT");
            db2.E("ALTER TABLE MB_AD_DB_PLANS ADD COLUMN extAdSlot TEXT");
            db2.E("CREATE TABLE IF NOT EXISTS ps_link_ad (`id` INTEGER NOT NULL,`nonId` TEXT NOT NULL, `adSource` TEXT NOT NULL, `extAdSlot` TEXT NOT NULL, `rank` INTEGER NOT NULL, `psPlanId` TEXT, `psLinkAdInfoStr` TEXT, `psInfoJson` TEXT, PRIMARY KEY(`id`))");
            db2.E("ALTER TABLE MB_AD_DB_PLANS ADD COLUMN extImage TEXT");
        }
    }

    public static final class h extends y3.c {
        h() {
            super(4, 5);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE mb_ad_db_plans ADD COLUMN bidEcpmCent REAL");
            db2.E("ALTER TABLE mb_ad_db_plans ADD COLUMN ecpmCent INTEGER");
        }
    }

    public static final class i extends y3.c {
        i() {
            super(5, 6);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN updateTimestamp INTEGER");
            db2.E("CREATE TABLE IF NOT EXISTS `attribution_points` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `psId` TEXT NOT NULL, `failCount` INTEGER NOT NULL, `reportUrl` TEXT NOT NULL, `type` TEXT NOT NULL, `updateTimestamp` INTEGER NOT NULL)");
        }
    }

    public static final class j extends y3.c {
        j() {
            super(6, 7);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE mb_ad_db_plans ADD COLUMN isValid INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class k extends y3.c {
        k() {
            super(7, 8);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN showMax INTEGER");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN clickMax INTEGER");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN showHours TEXT");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN showedTimes INTEGER NOT NULL DEFAULT 0");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN clickedTimes INTEGER NOT NULL DEFAULT 0");
            db2.E("ALTER TABLE ps_link_ad ADD COLUMN showDate TEXT");
        }
    }

    public static final class l extends y3.c {
        l() {
            super(8, 9);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE mb_ad_db_plans ADD COLUMN h5LinkPreload INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class m extends y3.c {
        m() {
            super(9, 10);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("ALTER TABLE mb_ad_db_plans ADD COLUMN h5LinkOpenByCct INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.db.MbAdDatabase$n, reason: from kotlin metadata */
    public static final class Companion {

        /* JADX INFO: renamed from: com.transsion.ad.db.MbAdDatabase$n$a */
        public static final class a extends RoomDatabase.b {
            a() {
            }

            @Override // androidx.room.RoomDatabase.b
            public void a(a4.d db2) {
                Intrinsics.h(db2, "db");
                super.a(db2);
                oi.a.c(oi.a.f71022a, Reflection.b(MbAdDatabase.class).g() + " --> getInstance() --> buildDatabase() --> onCreate() --> db.path = " + db2.getPath(), 0, false, 6, null);
            }

            @Override // androidx.room.RoomDatabase.b
            public void e(a4.d db2) {
                Intrinsics.h(db2, "db");
                super.e(db2);
                oi.a.c(oi.a.f71022a, Reflection.b(MbAdDatabase.class).g() + " --> getInstance() --> buildDatabase() --> onOpen()", 0, false, 6, null);
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final MbAdDatabase a(Context context) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            return (MbAdDatabase) q.a(applicationContext, MbAdDatabase.class, "mb-ad-plans-db").b(MbAdDatabase.f42072r, MbAdDatabase.f42073s, MbAdDatabase.f42074t, MbAdDatabase.f42075u, MbAdDatabase.f42076v, MbAdDatabase.f42077w, MbAdDatabase.f42078x, MbAdDatabase.f42079y, MbAdDatabase.f42080z, MbAdDatabase.A, MbAdDatabase.B, MbAdDatabase.C, MbAdDatabase.D).a(new a()).d();
        }

        public final MbAdDatabase b(Context context) {
            Intrinsics.h(context, "context");
            MbAdDatabase mbAdDatabase = MbAdDatabase.f42071q;
            if (mbAdDatabase == null) {
                synchronized (this) {
                    mbAdDatabase = MbAdDatabase.f42071q;
                    if (mbAdDatabase == null) {
                        MbAdDatabase mbAdDatabaseA = MbAdDatabase.INSTANCE.a(context);
                        MbAdDatabase.f42071q = mbAdDatabaseA;
                        mbAdDatabase = mbAdDatabaseA;
                    }
                }
            }
            return mbAdDatabase;
        }
    }

    public abstract mi.l A0();

    public abstract AdSceneLimitDao v0();

    public abstract mi.a w0();

    public abstract com.transsion.ad.db.pslink.a x0();

    public abstract ki.a y0();

    public abstract li.b z0();
}
