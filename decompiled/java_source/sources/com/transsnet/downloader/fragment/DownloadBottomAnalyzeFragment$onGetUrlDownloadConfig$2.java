package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleBean;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.List;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2", f = "DownloadBottomAnalyzeFragment.kt", l = {383}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ DownloadItem $item;
    final /* synthetic */ Ref.IntRef $totalEpisode;
    final /* synthetic */ DownloadUrlBean $urlBean;
    int label;
    final /* synthetic */ DownloadBottomAnalyzeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2(DownloadItem downloadItem, DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment, Ref.IntRef intRef, DownloadUrlBean downloadUrlBean, Continuation<? super DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2> continuation) {
        super(2, continuation);
        this.$item = downloadItem;
        this.this$0 = downloadBottomAnalyzeFragment;
        this.$totalEpisode = intRef;
        this.$urlBean = downloadUrlBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d() {
        uh.b.f76753a.d(R$string.already_in_downloads);
        return Unit.f67061a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2(this.$item, this.this$0, this.$totalEpisode, this.$urlBean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String url;
        Object objP;
        List<SubtitleBean> subtitleList;
        List<SubtitleItem> extSubtitle;
        String name;
        Integer resolution;
        Integer epse;
        String sourceUrl;
        String uploadBy;
        Cover cover;
        String name2;
        String resourceId;
        String url2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            DownloadItem downloadItem = this.$item;
            if (downloadItem == null || (url = downloadItem.getResourceId()) == null) {
                DownloadItem downloadItem2 = this.$item;
                url = downloadItem2 != null ? downloadItem2.getUrl() : null;
                if (url == null) {
                    url = "";
                }
            }
            this.label = 1;
            objP = downloadEsHelperA.p(url, this);
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
        if (((DownloadBean) objP) != null) {
            lg.a.C0828a.f(lg.a.f68839a, "downloadAna", "url start download, is downloading", false, 4, null);
            this.this$0.Q0(new Function0() { // from class: com.transsnet.downloader.fragment.w
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2.d();
                }
            });
            Unit unit = Unit.f67061a;
        } else {
            DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment = this.this$0;
            DownloadItem downloadItem3 = this.$item;
            String str = (downloadItem3 == null || (url2 = downloadItem3.getUrl()) == null) ? "" : url2;
            DownloadItem downloadItem4 = this.$item;
            String str2 = (downloadItem4 == null || (resourceId = downloadItem4.getResourceId()) == null) ? "" : resourceId;
            DownloadItem downloadItem5 = this.$item;
            String str3 = (downloadItem5 == null || (name2 = downloadItem5.getName()) == null) ? "" : name2;
            Subject subject = this.this$0.subject;
            String url3 = (subject == null || (cover = subject.getCover()) == null) ? null : cover.getUrl();
            DownloadItem downloadItem6 = this.$item;
            downloadBottomAnalyzeFragment.downloadBean = new DownloadBean(str, str2, str3, url3, downloadItem6 != null ? downloadItem6.getSize() : null, null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -32, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            DownloadBean downloadBean = this.this$0.downloadBean;
            if (downloadBean != null) {
                DownloadItem downloadItem7 = this.$item;
                if (downloadItem7 == null || (uploadBy = downloadItem7.getUploadBy()) == null) {
                    uploadBy = "";
                }
                downloadBean.setUploadBy(uploadBy);
                Unit unit2 = Unit.f67061a;
            }
            DownloadBean downloadBean2 = this.this$0.downloadBean;
            if (downloadBean2 != null) {
                DownloadItem downloadItem8 = this.$item;
                if (downloadItem8 == null || (sourceUrl = downloadItem8.getSourceUrl()) == null) {
                    sourceUrl = "";
                }
                downloadBean2.setSourceUrl(sourceUrl);
                Unit unit3 = Unit.f67061a;
            }
            DownloadBean downloadBean3 = this.this$0.downloadBean;
            if (downloadBean3 != null) {
                DownloadItem downloadItem9 = this.$item;
                downloadBean3.setPostId(downloadItem9 != null ? downloadItem9.getPostId() : null);
                Unit unit4 = Unit.f67061a;
            }
            DownloadBean downloadBean4 = this.this$0.downloadBean;
            if (downloadBean4 != null) {
                DownloadItem downloadItem10 = this.$item;
                downloadBean4.setEpse((downloadItem10 == null || (epse = downloadItem10.getEpse()) == null) ? 0 : epse.intValue());
                Unit unit5 = Unit.f67061a;
            }
            DownloadBean downloadBean5 = this.this$0.downloadBean;
            if (downloadBean5 != null) {
                DownloadItem downloadItem11 = this.$item;
                downloadBean5.setEp(downloadItem11 != null ? downloadItem11.getEp() : 0);
                Unit unit6 = Unit.f67061a;
            }
            DownloadBean downloadBean6 = this.this$0.downloadBean;
            if (downloadBean6 != null) {
                DownloadItem downloadItem12 = this.$item;
                downloadBean6.setSe(downloadItem12 != null ? downloadItem12.getSe() : 0);
                Unit unit7 = Unit.f67061a;
            }
            DownloadBean downloadBean7 = this.this$0.downloadBean;
            if (downloadBean7 != null) {
                DownloadItem downloadItem13 = this.$item;
                downloadBean7.setResolution((downloadItem13 == null || (resolution = downloadItem13.getResolution()) == null) ? 0 : resolution.intValue());
                Unit unit8 = Unit.f67061a;
            }
            DownloadBean downloadBean8 = this.this$0.downloadBean;
            if (downloadBean8 != null) {
                Subject subject2 = this.this$0.subject;
                downloadBean8.setSubjectId(subject2 != null ? subject2.getSubjectId() : null);
                Unit unit9 = Unit.f67061a;
            }
            DownloadBean downloadBean9 = this.this$0.downloadBean;
            if (downloadBean9 != null) {
                DownloadBean.Companion companion = DownloadBean.INSTANCE;
                Subject subject3 = this.this$0.subject;
                downloadBean9.setType(companion.c(subject3 != null ? subject3.getSubjectType() : null));
                Unit unit10 = Unit.f67061a;
            }
            DownloadBean downloadBean10 = this.this$0.downloadBean;
            if (downloadBean10 != null) {
                downloadBean10.setTotalEpisode(this.$totalEpisode.element);
                Unit unit11 = Unit.f67061a;
            }
            DownloadBean downloadBean11 = this.this$0.downloadBean;
            if (downloadBean11 != null) {
                downloadBean11.setCreateAt(System.currentTimeMillis());
                Unit unit12 = Unit.f67061a;
            }
            DownloadBean downloadBean12 = this.this$0.downloadBean;
            if (downloadBean12 != null) {
                downloadBean12.setUpdateTimeStamp(Boxing.e(System.currentTimeMillis()));
                Unit unit13 = Unit.f67061a;
            }
            DownloadBean downloadBean13 = this.this$0.downloadBean;
            if (downloadBean13 != null) {
                Subject subject4 = this.this$0.subject;
                String title = subject4 != null ? subject4.getTitle() : null;
                if (title == null || title.length() == 0) {
                    name = this.$urlBean.getName();
                } else {
                    Subject subject5 = this.this$0.subject;
                    name = subject5 != null ? subject5.getTitle() : null;
                }
                downloadBean13.setSubjectName(name);
                Unit unit14 = Unit.f67061a;
            }
            ArrayList arrayList = new ArrayList();
            DownloadItem downloadItem14 = this.$item;
            if (downloadItem14 != null && (extSubtitle = downloadItem14.getExtSubtitle()) != null) {
                DownloadItem downloadItem15 = this.$item;
                for (SubtitleItem subtitleItem : extSubtitle) {
                    SubtitleItem.Companion companion2 = SubtitleItem.INSTANCE;
                    String postId = downloadItem15.getPostId();
                    arrayList.add(companion2.a(subtitleItem, (28 & 2) != 0 ? "" : (postId == null && (postId = downloadItem15.getResourceId()) == null) ? "" : postId, (28 & 4) != 0 ? "" : null, (28 & 8) != 0 ? 0 : 0, (28 & 16) != 0 ? 0 : 0));
                }
                Unit unit15 = Unit.f67061a;
            }
            DownloadBean downloadBean14 = this.this$0.downloadBean;
            if (downloadBean14 != null && (subtitleList = downloadBean14.getSubtitleList()) != null) {
                Boxing.a(subtitleList.addAll(arrayList));
            }
            DownloadBean downloadBean15 = this.this$0.downloadBean;
            if (downloadBean15 != null) {
                downloadBean15.setPageFrom(this.this$0.pageFrom);
                Unit unit16 = Unit.f67061a;
            }
            DownloadBean downloadBean16 = this.this$0.downloadBean;
            if (downloadBean16 != null) {
                downloadBean16.setLastPageFrom(this.this$0.lastPageFrom);
                Unit unit17 = Unit.f67061a;
            }
            DownloadBean downloadBean17 = this.this$0.downloadBean;
            if (downloadBean17 != null) {
                this.this$0.U0(downloadBean17);
                Unit unit18 = Unit.f67061a;
            }
            DownloadBean downloadBean18 = this.this$0.downloadBean;
            if (downloadBean18 != null) {
                downloadBean18.setOps(this.this$0.ops);
                Unit unit19 = Unit.f67061a;
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            DownloadItem downloadItem16 = this.$item;
            lg.a.C0828a.f(c0828a, "downloadAna", "url start download, name = " + (downloadItem16 != null ? downloadItem16.getName() : null), false, 4, null);
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            DownloadBean downloadBean19 = this.this$0.downloadBean;
            if (downloadBean19 != null) {
                downloadBean19.setTaskId(string);
                Unit unit20 = Unit.f67061a;
            }
            DownloadBean downloadBean20 = this.this$0.downloadBean;
            if (downloadBean20 != null) {
                Subject subject6 = this.this$0.subject;
                downloadBean20.setDuration(subject6 != null ? Boxing.e(subject6.getResourceAboutDuration()) : null);
                Unit unit21 = Unit.f67061a;
            }
            DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment2 = this.this$0;
            String str4 = downloadBottomAnalyzeFragment2.pageFrom;
            String str5 = this.this$0.lastPageFrom;
            Subject subject7 = this.this$0.subject;
            String subjectId = subject7 != null ? subject7.getSubjectId() : null;
            DownloadItem downloadItem17 = this.$item;
            String postId2 = downloadItem17 != null ? downloadItem17.getPostId() : null;
            String str6 = this.this$0.ops;
            DownloadItem downloadItem18 = this.$item;
            downloadBottomAnalyzeFragment2.J0(str4, str5, subjectId, postId2, str6, downloadItem18 != null ? downloadItem18.getResourceId() : null, string);
            com.transsnet.downloader.manager.g gVarK0 = this.this$0.K0();
            DownloadBean downloadBean21 = this.this$0.downloadBean;
            Intrinsics.e(downloadBean21);
            gVarK0.p(downloadBean21);
            DownloadBean downloadBean22 = this.this$0.downloadBean;
            if (downloadBean22 != null) {
                this.this$0.L0().f(CollectionsKt.h(downloadBean22));
                Unit unit22 = Unit.f67061a;
            }
        }
        return Unit.f67061a;
    }
}
