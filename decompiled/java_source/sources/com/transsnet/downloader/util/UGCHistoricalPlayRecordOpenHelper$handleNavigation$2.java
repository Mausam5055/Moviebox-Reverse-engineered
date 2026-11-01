package com.transsnet.downloader.util;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper$handleNavigation$2", f = "UGCHistoricalPlayRecordOpenHelper.kt", l = {}, m = "invokeSuspend")
final class UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $collectionId;
    final /* synthetic */ DownloadBean $downloadBean;
    final /* synthetic */ boolean $isDownloaded;
    final /* synthetic */ boolean $isShortTV;
    final /* synthetic */ String $ops;
    final /* synthetic */ String $queryVideoId;
    final /* synthetic */ String $subjectId;
    final /* synthetic */ String $ugcVideoId;
    final /* synthetic */ String $ugcVideoType;
    final /* synthetic */ String $videoStyle;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(String str, boolean z10, DownloadBean downloadBean, String str2, String str3, String str4, String str5, String str6, String str7, boolean z11, Continuation<? super UGCHistoricalPlayRecordOpenHelper$handleNavigation$2> continuation) {
        super(2, continuation);
        this.$videoStyle = str;
        this.$isDownloaded = z10;
        this.$downloadBean = downloadBean;
        this.$ugcVideoId = str2;
        this.$queryVideoId = str3;
        this.$subjectId = str4;
        this.$collectionId = str5;
        this.$ops = str6;
        this.$ugcVideoType = str7;
        this.$isShortTV = z11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(this.$videoStyle, this.$isDownloaded, this.$downloadBean, this.$ugcVideoId, this.$queryVideoId, this.$subjectId, this.$collectionId, this.$ops, this.$ugcVideoType, this.$isShortTV, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCHistoricalPlayRecordOpenHelper$handleNavigation$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        boolean zC = Intrinsics.c(this.$videoStyle, UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
        if (!this.$isDownloaded) {
            String str = this.$ugcVideoId;
            if (str == null) {
                str = this.$queryVideoId;
            }
            UGCHistoricalPlayRecordOpenHelper.f59906a.h(this.$subjectId, str, this.$collectionId, this.$ops, this.$ugcVideoType, this.$videoStyle);
            return Unit.f67061a;
        }
        DownloadBean downloadBean = this.$downloadBean;
        if (downloadBean == null) {
            return null;
        }
        String ugcVideoId = this.$ugcVideoId;
        boolean z10 = this.$isShortTV;
        String str2 = this.$subjectId;
        String str3 = this.$collectionId;
        String str4 = this.$ops;
        String str5 = this.$ugcVideoType;
        String str6 = this.$videoStyle;
        if (ugcVideoId == null) {
            ugcVideoId = downloadBean.getUgcVideoId();
        }
        String str7 = ugcVideoId;
        if (z10 || zC) {
            UGCHistoricalPlayRecordOpenHelper.f59906a.h(str2, str7, str3, str4, str5, str6);
        } else {
            UGCHistoricalPlayRecordOpenHelper.f59906a.g(str7, str3, str4, downloadBean);
        }
        return Unit.f67061a;
    }
}
