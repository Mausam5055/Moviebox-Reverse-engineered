package com.transsnet.downloader.util;

import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4", f = "UGCHistoricalPlayRecordOpenHelper.kt", l = {Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE}, m = "invokeSuspend")
final class UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $logTag;
    final /* synthetic */ VideoDetailPlayBean $streamVideo;
    final /* synthetic */ UGCVideoDetailPlayBean $ugcVideo;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, VideoDetailPlayBean videoDetailPlayBean, String str, Continuation<? super UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4> continuation) {
        super(2, continuation);
        this.$ugcVideo = uGCVideoDetailPlayBean;
        this.$streamVideo = videoDetailPlayBean;
        this.$logTag = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4(this.$ugcVideo, this.$streamVideo, this.$logTag, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        UGCHistoricalPlayRecordOpenHelper.a aVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = this.$ugcVideo;
            if (uGCVideoDetailPlayBean != null) {
                aVar = new UGCHistoricalPlayRecordOpenHelper.a(null, null, this.$ugcVideo.getUgcVideoId(), this.$ugcVideo.getUgcVideoId(), StringsKt.W(uGCVideoDetailPlayBean.getCollectionId(), UGCVideoDetailPlayBean.SINGLE_VIDEO_PREFIX, false, 2, null) ? null : this.$ugcVideo.getCollectionId(), this.$ugcVideo.getType(), this.$ugcVideo.getOps(), this.$ugcVideo.getVideoStyle());
            } else {
                VideoDetailPlayBean videoDetailPlayBean = this.$streamVideo;
                if (videoDetailPlayBean == null) {
                    return Unit.f67061a;
                }
                aVar = new UGCHistoricalPlayRecordOpenHelper.a(videoDetailPlayBean.getSubjectId(), this.$streamVideo.getSubjectType(), this.$streamVideo.getId(), null, null, null, this.$streamVideo.getOps(), null);
            }
            String strA = aVar.a();
            Integer numB = aVar.b();
            String strC = aVar.c();
            String strD = aVar.d();
            String strE = aVar.e();
            String strF = aVar.f();
            String strG = aVar.g();
            String strH = aVar.h();
            UGCHistoricalPlayRecordOpenHelper uGCHistoricalPlayRecordOpenHelper = UGCHistoricalPlayRecordOpenHelper.f59906a;
            String str = this.$logTag;
            this.label = 1;
            if (uGCHistoricalPlayRecordOpenHelper.f(strA, numB, strC, strD, strE, strF, strG, strH, str, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
