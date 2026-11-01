package com.transsion.player.longvideo.intercept;

import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1", f = "VideoResolutionRatioInterceptView.kt", l = {85, 96}, m = "invokeSuspend")
final class VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ PlaybackRecordTable $playBean;
    int label;
    final /* synthetic */ VideoResolutionRatioInterceptView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1(VideoResolutionRatioInterceptView videoResolutionRatioInterceptView, PlaybackRecordTable playbackRecordTable, Continuation<? super VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1> continuation) {
        super(2, continuation);
        this.this$0 = videoResolutionRatioInterceptView;
        this.$playBean = playbackRecordTable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1(this.this$0, this.$playBean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objA;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                ResultKt.b(obj);
                objA = obj;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        PlaybackRecordDao playbackRecordDao = this.this$0.getPlaybackRecordDao();
        String subjectId = this.$playBean.getSubjectId();
        int se2 = this.$playBean.getSe();
        int ep2 = this.$playBean.getEp();
        this.label = 1;
        objA = playbackRecordDao.a(subjectId, se2, ep2, this);
        if (objA == objF) {
            return objF;
        }
        PlaybackRecordTable playbackRecordTable = (PlaybackRecordTable) objA;
        if (playbackRecordTable == null) {
            playbackRecordTable = new PlaybackRecordTable(this.$playBean.getSubjectId(), this.$playBean.getSe(), this.$playBean.getEp(), 0L, 0L, false, 56, null);
        }
        playbackRecordTable.setRewardUnlock(true);
        PlaybackRecordDao playbackRecordDao2 = this.this$0.getPlaybackRecordDao();
        this.label = 2;
        if (playbackRecordDao2.b(playbackRecordTable, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
