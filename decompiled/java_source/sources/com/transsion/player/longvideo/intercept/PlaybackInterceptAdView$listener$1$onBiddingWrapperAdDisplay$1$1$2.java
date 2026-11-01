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
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2", f = "PlaybackInterceptAdView.kt", l = {194}, m = "invokeSuspend")
final class PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<PlaybackRecordTable> $playbackRecord;
    int label;
    final /* synthetic */ PlaybackInterceptAdView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2(Ref.ObjectRef<PlaybackRecordTable> objectRef, PlaybackInterceptAdView playbackInterceptAdView, Continuation<? super PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2> continuation) {
        super(2, continuation);
        this.$playbackRecord = objectRef;
        this.this$0 = playbackInterceptAdView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2(this.$playbackRecord, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlaybackInterceptAdView$listener$1$onBiddingWrapperAdDisplay$1$1$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            PlaybackRecordTable playbackRecordTable = this.$playbackRecord.element;
            PlaybackInterceptAdView playbackInterceptAdView = this.this$0;
            PlaybackRecordTable playbackRecordTable2 = playbackRecordTable;
            playbackRecordTable2.setLastAdEndTimeStamp(System.currentTimeMillis());
            PlaybackRecordDao playbackRecordDao = playbackInterceptAdView.getPlaybackRecordDao();
            this.label = 1;
            if (playbackRecordDao.b(playbackRecordTable2, this) == objF) {
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
