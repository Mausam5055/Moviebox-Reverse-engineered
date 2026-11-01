package com.transsion.shorttv.db;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.q;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/transsion/shorttv/db/ShortTvDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lcom/transsion/shorttv/db/ShortTvFavoriteDao;", "k0", "()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;", "Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;", "j0", "()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;", TtmlNode.TAG_P, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class ShortTvDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final y3.c f53008q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static volatile ShortTvDatabase f53009r;

    public static final class a extends y3.c {
        a() {
            super(1, 2);
        }

        @Override // y3.c
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
            db2.E("CREATE TABLE IF NOT EXISTS `short_tv_ad_unlock_state` (`subjectId` TEXT NOT NULL, `unlockedEps` TEXT NOT NULL, PRIMARY KEY(`subjectId`))");
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv.db.ShortTvDatabase$b, reason: from kotlin metadata */
    public static final class Companion {

        /* JADX INFO: renamed from: com.transsion.shorttv.db.ShortTvDatabase$b$a */
        public static final class a extends RoomDatabase.b {
            a() {
            }

            @Override // androidx.room.RoomDatabase.b
            public void a(a4.d db2) {
                Intrinsics.h(db2, "db");
                super.a(db2);
            }

            @Override // androidx.room.RoomDatabase.b
            public void e(a4.d db2) {
                Intrinsics.h(db2, "db");
                super.e(db2);
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final ShortTvDatabase a(Context context) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            return (ShortTvDatabase) q.a(applicationContext, ShortTvDatabase.class, "or-short-tv-db").c().b(c()).a(new a()).d();
        }

        public final ShortTvDatabase b(Context context) {
            Intrinsics.h(context, "context");
            ShortTvDatabase shortTvDatabase = ShortTvDatabase.f53009r;
            if (shortTvDatabase == null) {
                synchronized (this) {
                    shortTvDatabase = ShortTvDatabase.f53009r;
                    if (shortTvDatabase == null) {
                        ShortTvDatabase shortTvDatabaseA = ShortTvDatabase.INSTANCE.a(context);
                        ShortTvDatabase.f53009r = shortTvDatabaseA;
                        shortTvDatabase = shortTvDatabaseA;
                    }
                }
            }
            return shortTvDatabase;
        }

        public final y3.c c() {
            return ShortTvDatabase.f53008q;
        }
    }

    public abstract ShortTvAdUnlockDao j0();

    public abstract ShortTvFavoriteDao k0();
}
