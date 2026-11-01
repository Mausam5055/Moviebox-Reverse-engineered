package com.transsion.subtitle_download.db;

import a4.d;
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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u00072\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "Lmu/a;", "l0", "()Lmu/a;", TtmlNode.TAG_P, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "SubtitleDownload_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class SubtitleDownloadDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static volatile SubtitleDownloadDatabase f55004q;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final a f55005r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final b f55006s = new b();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final c f55007t = new c();

    public static final class a extends y3.c {
        a() {
            super(1, 2);
        }

        @Override // y3.c
        public void a(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN failCount INTEGER NOT NULL DEFAULT 0");
        }
    }

    public static final class b extends y3.c {
        b() {
            super(2, 3);
        }

        @Override // y3.c
        public void a(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ugcVideoId TEXT");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionId TEXT");
        }
    }

    public static final class c extends y3.c {
        c() {
            super(3, 4);
        }

        @Override // y3.c
        public void a(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE ST_DOWNLOAD_TABLE ADD COLUMN ops TEXT");
        }
    }

    /* JADX INFO: renamed from: com.transsion.subtitle_download.db.SubtitleDownloadDatabase$d, reason: from kotlin metadata */
    public static final class Companion {

        /* JADX INFO: renamed from: com.transsion.subtitle_download.db.SubtitleDownloadDatabase$d$a */
        public static final class a extends RoomDatabase.b {
            a() {
            }

            @Override // androidx.room.RoomDatabase.b
            public void a(d db2) {
                Intrinsics.h(db2, "db");
                super.a(db2);
                com.transsion.subtitle_download.utils.b.f55044a.b("SubtitleDownloadDataBase --> getInstance() --> buildDatabase() --> onCreate() --> db_name is = " + db2.getPath());
            }

            @Override // androidx.room.RoomDatabase.b
            public void e(d db2) {
                Intrinsics.h(db2, "db");
                super.e(db2);
                com.transsion.subtitle_download.utils.b.f55044a.b("SubtitleDownloadDataBase --> getInstance() --> buildDatabase() --> onOpen()");
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final SubtitleDownloadDatabase a(Context context) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            return (SubtitleDownloadDatabase) q.a(applicationContext, SubtitleDownloadDatabase.class, "oneroom-subtitle-db").c().b(SubtitleDownloadDatabase.f55005r, SubtitleDownloadDatabase.f55006s, SubtitleDownloadDatabase.f55007t).a(new a()).d();
        }

        public final SubtitleDownloadDatabase b(Context context) {
            Intrinsics.h(context, "context");
            SubtitleDownloadDatabase subtitleDownloadDatabase = SubtitleDownloadDatabase.f55004q;
            if (subtitleDownloadDatabase == null) {
                synchronized (this) {
                    subtitleDownloadDatabase = SubtitleDownloadDatabase.f55004q;
                    if (subtitleDownloadDatabase == null) {
                        SubtitleDownloadDatabase subtitleDownloadDatabaseA = SubtitleDownloadDatabase.INSTANCE.a(context);
                        SubtitleDownloadDatabase.f55004q = subtitleDownloadDatabaseA;
                        subtitleDownloadDatabase = subtitleDownloadDatabaseA;
                    }
                }
            }
            return subtitleDownloadDatabase;
        }
    }

    public abstract mu.a l0();
}
