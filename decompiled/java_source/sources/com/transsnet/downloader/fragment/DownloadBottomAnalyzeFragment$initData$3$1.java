package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$initData$3$1", f = "DownloadBottomAnalyzeFragment.kt", l = {226}, m = "invokeSuspend")
final class DownloadBottomAnalyzeFragment$initData$3$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Subject $it;
    int label;
    final /* synthetic */ DownloadBottomAnalyzeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadBottomAnalyzeFragment$initData$3$1(Subject subject, DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment, Continuation<? super DownloadBottomAnalyzeFragment$initData$3$1> continuation) {
        super(2, continuation);
        this.$it = subject;
        this.this$0 = downloadBottomAnalyzeFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadBottomAnalyzeFragment$initData$3$1(this.$it, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadBottomAnalyzeFragment$initData$3$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String downloadUrl;
        Object objP;
        String resourceLink;
        String resourceId;
        String downloadUrl2;
        HashMap mapG;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        String str = "";
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            ResourceDetectors resourceDetector = this.$it.getResourceDetector();
            if (resourceDetector == null || (downloadUrl = resourceDetector.getResourceId()) == null) {
                ResourceDetectors resourceDetector2 = this.$it.getResourceDetector();
                downloadUrl = resourceDetector2 != null ? resourceDetector2.getDownloadUrl() : null;
                if (downloadUrl == null) {
                    downloadUrl = "";
                }
            }
            this.label = 1;
            objP = downloadEsHelperA.p(downloadUrl, this);
            if (objP == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            objP = obj;
        }
        DownloadBean downloadBean = (DownloadBean) objP;
        if (downloadBean != null) {
            lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "single， get download bean from database", false, 4, null);
            this.this$0.downloadBean = downloadBean;
        } else {
            DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment = this.this$0;
            ResourceDetectors resourceDetector3 = this.$it.getResourceDetector();
            String str2 = (resourceDetector3 == null || (downloadUrl2 = resourceDetector3.getDownloadUrl()) == null) ? "" : downloadUrl2;
            ResourceDetectors resourceDetector4 = this.$it.getResourceDetector();
            String str3 = (resourceDetector4 == null || (resourceId = resourceDetector4.getResourceId()) == null) ? "" : resourceId;
            String title = this.$it.getTitle();
            String str4 = title == null ? "" : title;
            Cover cover = this.$it.getCover();
            String url = cover != null ? cover.getUrl() : null;
            ResourceDetectors resourceDetector5 = this.$it.getResourceDetector();
            downloadBottomAnalyzeFragment.downloadBean = new DownloadBean(str2, str3, str4, url, resourceDetector5 != null ? resourceDetector5.getTotalSize() : null, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            DownloadBean downloadBean2 = this.this$0.downloadBean;
            if (downloadBean2 != null) {
                ResourceDetectors resourceDetector6 = this.$it.getResourceDetector();
                downloadBean2.setPostId(resourceDetector6 != null ? resourceDetector6.getPostId() : null);
            }
            DownloadBean downloadBean3 = this.this$0.downloadBean;
            if (downloadBean3 != null) {
                downloadBean3.setSubjectId(this.$it.getSubjectId());
            }
            DownloadBean downloadBean4 = this.this$0.downloadBean;
            if (downloadBean4 != null) {
                downloadBean4.setGroupId(this.this$0.groupId);
            }
            DownloadBean downloadBean5 = this.this$0.downloadBean;
            if (downloadBean5 != null) {
                downloadBean5.setSubjectName(this.$it.getTitle());
            }
            DownloadBean downloadBean6 = this.this$0.downloadBean;
            if (downloadBean6 != null) {
                downloadBean6.setType(DownloadBean.INSTANCE.c(this.$it.getSubjectType()));
            }
            DownloadBean downloadBean7 = this.this$0.downloadBean;
            if (downloadBean7 != null) {
                ResourceDetectors resourceDetector7 = this.$it.getResourceDetector();
                downloadBean7.setUploadBy(resourceDetector7 != null ? resourceDetector7.getUploadBy() : null);
            }
            DownloadBean downloadBean8 = this.this$0.downloadBean;
            if (downloadBean8 != null) {
                ResourceDetectors resourceDetector8 = this.$it.getResourceDetector();
                if (resourceDetector8 != null && (resourceLink = resourceDetector8.getResourceLink()) != null) {
                    str = resourceLink;
                }
                downloadBean8.setSourceUrl(str);
            }
        }
        DownloadBean downloadBean9 = this.this$0.downloadBean;
        if (downloadBean9 != null) {
            DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment2 = this.this$0;
            Subject subject = this.$it;
            lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "single， add download task， " + downloadBean9, false, 4, null);
            downloadBottomAnalyzeFragment2.U0(downloadBean9);
            downloadBean9.setCreateAt(System.currentTimeMillis());
            downloadBean9.setUpdateTimeStamp(Boxing.e(System.currentTimeMillis()));
            downloadBean9.setPageFrom(downloadBottomAnalyzeFragment2.pageFrom);
            downloadBean9.setLastPageFrom(downloadBottomAnalyzeFragment2.lastPageFrom);
            downloadBean9.setOps(downloadBottomAnalyzeFragment2.ops);
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            downloadBean9.setTaskId(string);
            downloadBean9.setDuration(Boxing.e(subject.getResourceAboutDuration()));
            String str5 = downloadBottomAnalyzeFragment2.pageFrom;
            String str6 = downloadBottomAnalyzeFragment2.lastPageFrom;
            String subjectId = subject.getSubjectId();
            String postId = downloadBean9.getPostId();
            String str7 = downloadBottomAnalyzeFragment2.ops;
            ResourceDetectors resourceDetector9 = subject.getResourceDetector();
            downloadBottomAnalyzeFragment2.J0(str5, str6, subjectId, postId, str7, resourceDetector9 != null ? resourceDetector9.getResourceId() : null, string);
            downloadBottomAnalyzeFragment2.K0().p(downloadBean9);
            downloadBottomAnalyzeFragment2.L0().f(CollectionsKt.h(downloadBean9));
        }
        hj.b logViewConfig = this.this$0.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("subject_id", this.$it.getSubjectId());
        }
        return Unit.f67061a;
    }
}
