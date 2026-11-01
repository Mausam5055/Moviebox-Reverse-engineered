package com.transsion.videodetail;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
public final class VideoDetailViewModel extends androidx.p009lifecycle.t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57640a = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57641b = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57642c = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57643d = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57644e = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57645f = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap f57646g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f57647h = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f57648i = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.b1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return VideoDetailViewModel.F();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f57649j = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.c1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return VideoDetailViewModel.E();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f57650k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private t1 f57651l;

    /* JADX INFO: Access modifiers changed from: private */
    public final b A() {
        return (b) this.f57649j.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao B() {
        return (VideoDetailPlayDao) this.f57648i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b E() {
        return (b) zg.c.f79414e.a().h(b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao F() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String o(Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (1 > iIntValue || iIntValue >= 10) {
            return String.valueOf(iIntValue);
        }
        return "0" + iIntValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(String str, List list) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$fetchEpisodeMediaList$1(this, list, str, null), 3, null);
    }

    public final void C(VideoDetailMediaSource videoDetailMediaSource) {
        if (Intrinsics.c(videoDetailMediaSource, this.f57645f.f())) {
            return;
        }
        this.f57645f.q(videoDetailMediaSource);
    }

    public final void D() {
        this.f57641b.q(null);
        this.f57642c.q(null);
        this.f57643d.q(new ArrayList());
        this.f57644e.q(new LinkedHashMap());
        this.f57645f.q(null);
    }

    public final void n() {
        this.f57647h.q(null);
    }

    public final void q(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$fetchHistory$1(this, subjectId, null), 3, null);
    }

    public final void r(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        if (this.f57641b.f() == null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$fetchSeason$1(subjectId, this, null), 3, null);
        }
    }

    public final LiveData s() {
        return this.f57643d;
    }

    public final LiveData t() {
        return this.f57644e;
    }

    public final LiveData u() {
        return this.f57647h;
    }

    public final void v(VideoDetailMediaSource videoDetailMediaSource) {
        String string;
        String string2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.v(c0828a, "VideoDetailEpisode", "--------getPlayInfo:" + videoDetailMediaSource, false, 4, null);
        if (videoDetailMediaSource == null) {
            return;
        }
        String subjectId = videoDetailMediaSource.getSubjectId();
        int se2 = videoDetailMediaSource.getSe();
        int ep2 = videoDetailMediaSource.getEp();
        String str = subjectId + "-" + se2 + "-" + ep2;
        t1 t1Var = this.f57651l;
        if (t1Var != null && t1Var.isActive()) {
            if (Intrinsics.c(this.f57650k, str)) {
                lg.a.C0828a.f(c0828a, "CommonInfo", "正在请求中 key：" + str, false, 4, null);
                return;
            }
            t1 t1Var2 = this.f57651l;
            if (t1Var2 != null) {
                t1.a.b(t1Var2, null, 1, null);
            }
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) this.f57646g.get(str);
        if (videoDetailStreamList != null) {
            this.f57642c.q(videoDetailStreamList);
            return;
        }
        DownloadBean downloadBean = videoDetailMediaSource.getDownloadBean();
        if (downloadBean == null) {
            this.f57650k = str;
            this.f57651l = kotlinx.coroutines.k.d(androidx.p009lifecycle.u0.a(this), null, null, new VideoDetailViewModel$getPlayInfo$2(this, subjectId, se2, ep2, videoDetailMediaSource, str, null), 3, null);
            return;
        }
        String resourceId = downloadBean.getResourceId();
        String str2 = resourceId == null ? "" : resourceId;
        String path = downloadBean.getPath();
        String str3 = path == null ? "" : path;
        String strValueOf = String.valueOf(downloadBean.getResolution());
        Long size = downloadBean.getSize();
        String str4 = (size == null || (string2 = size.toString()) == null) ? "0" : string2;
        Long duration = downloadBean.getDuration();
        String str5 = (duration == null || (string = duration.toString()) == null) ? "0" : string;
        List listEmptyList = Collections.emptyList();
        Intrinsics.g(listEmptyList, "emptyList(...)");
        VideoDetailStream videoDetailStream = new VideoDetailStream("DEFAULT", str2, str3, strValueOf, str4, str5, "", listEmptyList);
        androidx.p009lifecycle.b0 b0Var = this.f57642c;
        VideoDetailStreamList videoDetailStreamList2 = new VideoDetailStreamList(CollectionsKt.h(videoDetailStream), 0, 0, null, 14, null);
        videoDetailStreamList2.setEp(ep2);
        videoDetailStreamList2.setSe(se2);
        b0Var.q(videoDetailStreamList2);
    }

    public final LiveData w() {
        return this.f57642c;
    }

    public final LiveData x() {
        return this.f57645f;
    }

    public final androidx.p009lifecycle.b0 y() {
        return this.f57640a;
    }

    public final LiveData z() {
        return this.f57641b;
    }
}
