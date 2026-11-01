package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsnet.downloader.util.UGCHistoricalPlayRecordOpenHelper;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment$onItemClick$2", f = "AllHistoricalPlayRecordFragment.kt", l = {342}, m = "invokeSuspend")
final class AllHistoricalPlayRecordFragment$onItemClick$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ VideoDetailPlayBean $streamVideo;
    final /* synthetic */ UGCVideoDetailPlayBean $ugcVideo;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AllHistoricalPlayRecordFragment$onItemClick$2(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, VideoDetailPlayBean videoDetailPlayBean, Continuation<? super AllHistoricalPlayRecordFragment$onItemClick$2> continuation) {
        super(2, continuation);
        this.$ugcVideo = uGCVideoDetailPlayBean;
        this.$streamVideo = videoDetailPlayBean;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AllHistoricalPlayRecordFragment$onItemClick$2(this.$ugcVideo, this.$streamVideo, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AllHistoricalPlayRecordFragment$onItemClick$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            UGCHistoricalPlayRecordOpenHelper uGCHistoricalPlayRecordOpenHelper = UGCHistoricalPlayRecordOpenHelper.f59906a;
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = this.$ugcVideo;
            VideoDetailPlayBean videoDetailPlayBean = this.$streamVideo;
            this.label = 1;
            if (uGCHistoricalPlayRecordOpenHelper.d(uGCVideoDetailPlayBean, videoDetailPlayBean, "AllHistoricalPlayRecordFragment", this) == objF) {
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
