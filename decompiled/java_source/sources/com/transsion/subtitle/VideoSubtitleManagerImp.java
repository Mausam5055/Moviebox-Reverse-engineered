package com.transsion.subtitle;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle.helper.SubtitleSearchHelper;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsnet.downloader.manager.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lj.v0;

/* JADX INFO: loaded from: classes.dex */
public final class VideoSubtitleManagerImp implements h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f54731g = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f54732b = LazyKt.b(new Function0() { // from class: com.transsion.subtitle.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return VideoSubtitleManagerImp.D();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f54733c = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f54734d = VideoSubtitleManagerImp.class.getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n0 f54735e = o0.a(y0.c());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final VideoSubtitleManagerImp$resDownloadListener$1 f54736f = new VideoSubtitleManagerImp$resDownloadListener$1(this);

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final v0 A() {
        return (v0) this.f54732b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String B() {
        return com.transsion.baselib.report.launch.b.f43370a.b().getString("k_language_short_name", null);
    }

    private final void C() {
        if (!com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("subtitle_old_db_move", false)) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new VideoSubtitleManagerImp$initOldSubtitleMoveDB$1(this, null), 3, null);
            return;
        }
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " 转移数据库, 已转移过，不再处理", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final v0 D() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).z1();
    }

    private final void s(DownloadBean downloadBean, Function1 function1) {
        if (!downloadBean.isVideo() || downloadBean.isMusic()) {
            return;
        }
        if (nh.m.f70474a.e()) {
            if (downloadBean.isUGCVideo()) {
                y(downloadBean, function1);
                return;
            } else if (downloadBean.getIsStream()) {
                w(downloadBean, function1);
                return;
            } else {
                u(downloadBean, function1);
                return;
            }
        }
        lg.a.f68839a.x(com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkDownloadSubtitle ,无网络不做检测", true);
    }

    static /* synthetic */ void t(VideoSubtitleManagerImp videoSubtitleManagerImp, DownloadBean downloadBean, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        videoSubtitleManagerImp.s(downloadBean, function1);
    }

    private final void u(final DownloadBean downloadBean, final Function1 function1) {
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkDownloadSubtitleNormal fail， has no resourceId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId2 = downloadBean.getResourceId();
        if ((resourceId2 != null ? StringsKt.x(resourceId2) : null) == null) {
            lg.a.C0828a.z(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkDownloadSubtitleNormal ,resourceId is abnormal", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkDownloadSubtitleNormal, name = " + downloadBean.getName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId() + " resourceId:" + downloadBean.getResourceId(), true);
        if (downloadBean.isOutside()) {
            downloadBean.getPostIdNotNull();
        } else if (downloadBean.getPostId() == null) {
            downloadBean.getResourceId();
        }
        SubtitleDownloadManager.f54998a.e(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), downloadBean.getResourceId(), null, downloadBean.getSubjectName(), 1, downloadBean.getEpse(), downloadBean.getEp(), downloadBean.getSe(), downloadBean.getOps(), new Function1() { // from class: com.transsion.subtitle.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoSubtitleManagerImp.v(this.f54938a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(VideoSubtitleManagerImp videoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        kotlinx.coroutines.k.d(videoSubtitleManagerImp.f54735e, null, null, new VideoSubtitleManagerImp$checkDownloadSubtitleNormal$1$1(function1, z10, videoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f67061a;
    }

    private final void w(final DownloadBean downloadBean, final Function1 function1) {
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkStreamSubtitle fail， has no resourceId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId2 = downloadBean.getResourceId();
        if ((resourceId2 != null ? StringsKt.x(resourceId2) : null) == null) {
            lg.a.C0828a.z(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkStreamSubtitle ,resourceId is abnormal", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkStreamSubtitle, name = " + downloadBean.getName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId() + " resourceId:" + downloadBean.getResourceId(), true);
        SubtitleDownloadManager.f54998a.e(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), downloadBean.getResourceId(), null, downloadBean.getSubjectName(), 2, downloadBean.getEpse(), downloadBean.getEp(), downloadBean.getSe(), downloadBean.getOps(), new Function1() { // from class: com.transsion.subtitle.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoSubtitleManagerImp.x(this.f54941a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(VideoSubtitleManagerImp videoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        kotlinx.coroutines.k.d(videoSubtitleManagerImp.f54735e, null, null, new VideoSubtitleManagerImp$checkStreamSubtitle$1$1(function1, z10, videoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f67061a;
    }

    private final void y(final DownloadBean downloadBean, final Function1 function1) {
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkUGCVideoSubtitle fail，UGC视频缺少ugcVideoId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkUGCVideoSubtitle fail，UGC视频缺少resourceId（videoResourceId）", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String subtitleIdType = downloadBean.getSubtitleIdType();
        if (subtitleIdType == null) {
            subtitleIdType = downloadBean.getIsStream() ? "StreamId" : "ResourceId";
        }
        String str = subtitleIdType;
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " checkUGCVideoSubtitle, name = " + downloadBean.getName() + " ugcVideoId:" + downloadBean.getUgcVideoId() + " collectionId:" + downloadBean.getUgcVideoCollectionId() + " videoResourceId:" + resourceId + " idType:" + str, true);
        SubtitleDownloadManager.f54998a.f(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), resourceId, downloadBean.getUgcVideoId(), downloadBean.getUgcVideoCollectionId(), downloadBean.getOps(), str, new Function1() { // from class: com.transsion.subtitle.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoSubtitleManagerImp.z(this.f54935a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z(VideoSubtitleManagerImp videoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        kotlinx.coroutines.k.d(videoSubtitleManagerImp.f54735e, null, null, new VideoSubtitleManagerImp$checkUGCVideoSubtitle$1$1(function1, z10, videoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.subtitle.h
    public Object a(String str, Continuation continuation) throws Throwable {
        VideoSubtitleManagerImp$getSubtitleList$1 videoSubtitleManagerImp$getSubtitleList$1;
        List list;
        if (continuation instanceof VideoSubtitleManagerImp$getSubtitleList$1) {
            videoSubtitleManagerImp$getSubtitleList$1 = (VideoSubtitleManagerImp$getSubtitleList$1) continuation;
            int i11 = videoSubtitleManagerImp$getSubtitleList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                videoSubtitleManagerImp$getSubtitleList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                videoSubtitleManagerImp$getSubtitleList$1 = new VideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
            }
        } else {
            videoSubtitleManagerImp$getSubtitleList$1 = new VideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
        }
        Object obj = videoSubtitleManagerImp$getSubtitleList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = videoSubtitleManagerImp$getSubtitleList$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f54998a;
            videoSubtitleManagerImp$getSubtitleList$1.L$0 = arrayList;
            videoSubtitleManagerImp$getSubtitleList$1.label = 1;
            Object objJ = subtitleDownloadManager.j(str, videoSubtitleManagerImp$getSubtitleList$1);
            if (objJ == objF) {
                return objF;
            }
            obj = objJ;
            list = arrayList;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) videoSubtitleManagerImp$getSubtitleList$1.L$0;
            ResultKt.b(obj);
        }
        List list2 = (List) obj;
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                list.add(new eu.a((SubtitleDownloadTable) it.next()));
            }
        }
        return list;
    }

    @Override // com.transsion.subtitle.h
    public void b(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f54998a.b(listener);
    }

    @Override // com.transsion.subtitle.h
    public void c(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f54998a.s(listener);
    }

    @Override // com.transsion.subtitle.h
    public void d(hu.c listener) {
        Intrinsics.h(listener, "listener");
        this.f54733c.add(listener);
    }

    @Override // com.transsion.subtitle.h
    public void destroy() {
    }

    @Override // com.transsion.subtitle.h
    public void e(DownloadBean bean, Function1 function1) {
        Intrinsics.h(bean, "bean");
        s(bean, function1);
    }

    @Override // com.transsion.subtitle.h
    public void f(hu.c listener) {
        Intrinsics.h(listener, "listener");
        this.f54733c.remove(listener);
    }

    @Override // com.transsion.subtitle.h
    public void g(eu.a bean) {
        Intrinsics.h(bean, "bean");
        Iterator it = this.f54733c.iterator();
        while (it.hasNext()) {
            ((hu.c) it.next()).g(bean);
        }
    }

    @Override // com.transsion.subtitle.h
    public void h(eu.a bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f54998a.d(bean.b());
    }

    @Override // com.transsion.subtitle.h
    public void i(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), this.f54734d + " 打开字幕弹窗检测字幕，subjectId:" + bean.getSubjectId() + " subtitleResId:" + bean.getSubtitleResId(), true);
        t(this, bean, null, 2, null);
    }

    @Override // com.transsion.subtitle.h
    public void init() {
        SubtitleSearchHelper.f54890c.a().j();
        SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f54998a;
        subtitleDownloadManager.l(new Function0() { // from class: com.transsion.subtitle.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoSubtitleManagerImp.B();
            }
        });
        subtitleDownloadManager.k(SubtitleAppType.MB);
        p.f59500a.a(Utils.a()).F(this.f54736f);
        C();
    }

    @Override // com.transsion.subtitle.h
    public void j(eu.a bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f54998a.d(bean.b());
    }

    @Override // com.transsion.subtitle.h
    public void reset() {
    }
}
