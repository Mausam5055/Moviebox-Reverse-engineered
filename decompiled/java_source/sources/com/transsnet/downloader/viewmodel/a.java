package com.transsnet.downloader.viewmodel;

import android.text.TextUtils;
import androidx.p009lifecycle.t0;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.SubjectType;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
public class a extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f60084a = new CopyOnWriteArrayList();

    public final DownloadBean b(j0 video) {
        Intrinsics.h(video, "video");
        a0 a0Var = a0.f60085a;
        String strJ = a0Var.j(video);
        if (TextUtils.isEmpty(strJ)) {
            this.f60084a.add(video);
        }
        String strE = video.e();
        String str = strE == null ? "" : strE;
        String strE2 = video.e();
        String strD = video.d();
        String strE3 = video.e();
        if (strE3 == null) {
            strE3 = "";
        }
        long jF = a0Var.f(strE3);
        String strE4 = video.e();
        Long lA = video.a();
        String strE5 = video.e();
        return new DownloadBean(str, strE2, strD, strJ, Long.valueOf(jF), null, null, strE4, lA, Long.valueOf(a0Var.e(strE5 != null ? strE5 : "")), 0L, 0, 0, 2, 0L, 0L, 1, 0, 0, 0, 0, 0, 0, video.f(), video.b(), 0, 0, null, null, null, null, 0L, 2, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, SubjectType.OUTSIDE_FILE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, 108789760, -65538, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
    }

    public final HistoricalPlayRecordBean c(DownloadBean createDownload) {
        Intrinsics.h(createDownload, "createDownload");
        Long updateTimeStamp = createDownload.getUpdateTimeStamp();
        Long updateTimeStamp2 = createDownload.getUpdateTimeStamp();
        String strM = TimeUtilKt.m(updateTimeStamp2 != null ? updateTimeStamp2.longValue() : 0L);
        a0 a0Var = a0.f60085a;
        Long updateTimeStamp3 = createDownload.getUpdateTimeStamp();
        return new HistoricalPlayRecordBean(2, updateTimeStamp, strM, a0Var.z(updateTimeStamp3 != null ? updateTimeStamp3.longValue() : 0L), null, createDownload, null, null, null, 448, null);
    }

    public final CopyOnWriteArrayList d() {
        return this.f60084a;
    }
}
