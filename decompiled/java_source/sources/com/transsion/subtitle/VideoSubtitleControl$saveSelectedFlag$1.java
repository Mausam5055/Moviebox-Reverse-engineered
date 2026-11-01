package com.transsion.subtitle;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle.VideoSubtitleControl$saveSelectedFlag$1", f = "VideoSubtitleControl.kt", l = {848, 853}, m = "invokeSuspend")
final class VideoSubtitleControl$saveSelectedFlag$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ eu.a $bean;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ VideoSubtitleControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoSubtitleControl$saveSelectedFlag$1(VideoSubtitleControl videoSubtitleControl, eu.a aVar, Continuation<? super VideoSubtitleControl$saveSelectedFlag$1> continuation) {
        super(2, continuation);
        this.this$0 = videoSubtitleControl;
        this.$bean = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        VideoSubtitleControl$saveSelectedFlag$1 videoSubtitleControl$saveSelectedFlag$1 = new VideoSubtitleControl$saveSelectedFlag$1(this.this$0, this.$bean, continuation);
        videoSubtitleControl$saveSelectedFlag$1.L$0 = obj;
        return videoSubtitleControl$saveSelectedFlag$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoSubtitleControl$saveSelectedFlag$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        String resourceId;
        SubtitleDownloadTable subtitleDownloadTableB;
        String id2;
        String subjectId;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String id3;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            DownloadBean downloadBean = this.this$0.f54716p;
            String str = "";
            if (downloadBean == null || !downloadBean.getIsStreamVideoDetail()) {
                a.f54738a.a(n0Var.getClass().getSimpleName() + " --> saveSelectedFlag() --> saveSelectedFlag -- download");
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
                DownloadBean downloadBean2 = this.this$0.f54716p;
                if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
                    resourceId = "";
                }
                eu.a aVar = this.$bean;
                if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null && (id2 = subtitleDownloadTableB.getId()) != null) {
                    str = id2;
                }
                this.label = 2;
                if (downloadEsHelperA.h0(resourceId, str, this) == objF) {
                    return objF;
                }
            } else {
                a.f54738a.a(n0Var.getClass().getSimpleName() + " --> saveSelectedFlag() --> saveSelectedFlag -- dash");
                VideoDetailPlayDao videoDetailPlayDaoH = this.this$0.H();
                DownloadBean downloadBean3 = this.this$0.f54716p;
                if (downloadBean3 == null || (subjectId = downloadBean3.getSubjectId()) == null) {
                    subjectId = "";
                }
                eu.a aVar2 = this.$bean;
                if (aVar2 != null && (subtitleDownloadTableB2 = aVar2.b()) != null && (id3 = subtitleDownloadTableB2.getId()) != null) {
                    str = id3;
                }
                this.label = 1;
                if (videoDetailPlayDaoH.b(subjectId, str, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i11 != 1 && i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
