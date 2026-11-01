package com.transsion.lib_web.zip.db;

import a4.d;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import y3.c;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/transsion/lib_web/zip/db/WebResDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", TtmlNode.TAG_P, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "lib_web_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class WebResDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final a f46192q = new a();

    public static final class a extends c {
        a() {
            super(1, 2);
        }

        @Override // y3.c
        public void a(d database) {
            Intrinsics.h(database, "database");
            database.E("ALTER TABLE DOWNLOAD_TABLE ADD COLUMN postId TEXT");
            database.E("ALTER TABLE AUDIO ADD COLUMN ops TEXT");
        }
    }
}
