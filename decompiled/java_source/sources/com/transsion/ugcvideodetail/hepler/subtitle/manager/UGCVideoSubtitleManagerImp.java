package com.transsion.ugcvideodetail.hepler.subtitle.manager;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCVideoSubtitleManagerImp implements b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f56396f = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set f56397b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f56398c = UGCVideoSubtitleManagerImp.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n0 f56399d = o0.a(y0.c());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final UGCVideoSubtitleManagerImp$resDownloadListener$1 f56400e = new UGCVideoSubtitleManagerImp$resDownloadListener$1(this);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void k(final DownloadBean downloadBean, final Function1 function1) {
        if (!downloadBean.isVideo() || downloadBean.isMusic()) {
            lg.a.C0828a.f(lg.a.f68839a, b.f56402a.c(), this.f56398c + " checkDownloadSubtitle fail， has no shorTvId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        if (!m.f70474a.e()) {
            lg.a.f68839a.x(b.f56402a.c(), this.f56398c + " checkDownloadSubtitle ,无网络不做检测", true);
            return;
        }
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f56398c + " checkUGCVideoSubtitle fail，UGC视频缺少ugcVideoId", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, com.transsion.baselib.report.a.f43340a.a(), this.f56398c + " checkUGCVideoSubtitle fail，UGC视频缺少resourceId（videoResourceId）", false, 4, null);
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
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), this.f56398c + " checkUGCVideoSubtitle, name = " + downloadBean.getName() + " ugcVideoId:" + downloadBean.getUgcVideoId() + " collectionId:" + downloadBean.getUgcVideoCollectionId() + " videoResourceId:" + resourceId + " idType:" + str, true);
        SubtitleDownloadManager.f54998a.f(downloadBean.getSubjectId(), downloadBean.getSubtitleResId(), resourceId, downloadBean.getUgcVideoId(), downloadBean.getUgcVideoCollectionId(), downloadBean.getOps(), str, new Function1() { // from class: com.transsion.ugcvideodetail.hepler.subtitle.manager.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoSubtitleManagerImp.m(this.f56406a, function1, downloadBean, ((Boolean) obj).booleanValue());
            }
        });
    }

    static /* synthetic */ void l(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp, DownloadBean downloadBean, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        uGCVideoSubtitleManagerImp.k(downloadBean, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(UGCVideoSubtitleManagerImp uGCVideoSubtitleManagerImp, Function1 function1, DownloadBean downloadBean, boolean z10) {
        k.d(uGCVideoSubtitleManagerImp.f56399d, null, null, new UGCVideoSubtitleManagerImp$checkDownloadSubtitle$1$1(function1, z10, uGCVideoSubtitleManagerImp, downloadBean, null), 3, null);
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public Object a(String str, Continuation continuation) throws Throwable {
        UGCVideoSubtitleManagerImp$getSubtitleList$1 uGCVideoSubtitleManagerImp$getSubtitleList$1;
        List list;
        if (continuation instanceof UGCVideoSubtitleManagerImp$getSubtitleList$1) {
            uGCVideoSubtitleManagerImp$getSubtitleList$1 = (UGCVideoSubtitleManagerImp$getSubtitleList$1) continuation;
            int i11 = uGCVideoSubtitleManagerImp$getSubtitleList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                uGCVideoSubtitleManagerImp$getSubtitleList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                uGCVideoSubtitleManagerImp$getSubtitleList$1 = new UGCVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
            }
        } else {
            uGCVideoSubtitleManagerImp$getSubtitleList$1 = new UGCVideoSubtitleManagerImp$getSubtitleList$1(this, continuation);
        }
        Object obj = uGCVideoSubtitleManagerImp$getSubtitleList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = uGCVideoSubtitleManagerImp$getSubtitleList$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            SubtitleDownloadManager subtitleDownloadManager = SubtitleDownloadManager.f54998a;
            uGCVideoSubtitleManagerImp$getSubtitleList$1.L$0 = arrayList;
            uGCVideoSubtitleManagerImp$getSubtitleList$1.label = 1;
            Object objJ = subtitleDownloadManager.j(str, uGCVideoSubtitleManagerImp$getSubtitleList$1);
            if (objJ == objF) {
                return objF;
            }
            obj = objJ;
            list = arrayList;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) uGCVideoSubtitleManagerImp$getSubtitleList$1.L$0;
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

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public void b(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f54998a.b(listener);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public void c(com.transsion.subtitle_download.a listener) {
        Intrinsics.h(listener, "listener");
        SubtitleDownloadManager.f54998a.s(listener);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public void d(hu.c listener) {
        Intrinsics.h(listener, "listener");
        this.f56397b.add(listener);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public void e(DownloadBean bean, Function1 function1) {
        Intrinsics.h(bean, "bean");
        l(this, bean, null, 2, null);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public void f(hu.c listener) {
        Intrinsics.h(listener, "listener");
        this.f56397b.remove(listener);
    }

    @Override // com.transsion.ugcvideodetail.hepler.subtitle.manager.b
    public void h(eu.a bean) {
        Intrinsics.h(bean, "bean");
        SubtitleDownloadManager.f54998a.d(bean.b());
    }
}
