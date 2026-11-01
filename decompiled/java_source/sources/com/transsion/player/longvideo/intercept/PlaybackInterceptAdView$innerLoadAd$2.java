package com.transsion.player.longvideo.intercept;

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
@DebugMetadata(c = "com.transsion.player.longvideo.intercept.PlaybackInterceptAdView$innerLoadAd$2", f = "PlaybackInterceptAdView.kt", l = {}, m = "invokeSuspend")
final class PlaybackInterceptAdView$innerLoadAd$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ d $callback;
    final /* synthetic */ PlaybackRecordTable $playbackRecord;
    final /* synthetic */ String $sceneId;
    int label;
    final /* synthetic */ PlaybackInterceptAdView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PlaybackInterceptAdView$innerLoadAd$2(PlaybackInterceptAdView playbackInterceptAdView, PlaybackRecordTable playbackRecordTable, String str, d dVar, Continuation<? super PlaybackInterceptAdView$innerLoadAd$2> continuation) {
        super(2, continuation);
        this.this$0 = playbackInterceptAdView;
        this.$playbackRecord = playbackRecordTable;
        this.$sceneId = str;
        this.$callback = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(d dVar) {
        if (dVar != null) {
            dVar.onComplete();
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PlaybackInterceptAdView$innerLoadAd$2(this.this$0, this.$playbackRecord, this.$sceneId, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PlaybackInterceptAdView$innerLoadAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        PlaybackInterceptAdView playbackInterceptAdView = this.this$0;
        int endAdConfigT = playbackInterceptAdView.getEndAdConfigT();
        PlaybackRecordTable playbackRecordTable = this.$playbackRecord;
        if (playbackInterceptAdView.l(endAdConfigT, playbackRecordTable != null ? playbackRecordTable.getLastAdEndTimeStamp() : 0L)) {
            return Unit.f67061a;
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", this.this$0.getClassTag() + " --> loadNativeAd() --> 当前不符合展示条件 --> sceneId = " + this.$sceneId, false, 4, null);
        PlaybackInterceptAdView playbackInterceptAdView2 = this.this$0;
        final d dVar = this.$callback;
        playbackInterceptAdView2.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.k
            @Override // java.lang.Runnable
            public final void run() {
                PlaybackInterceptAdView$innerLoadAd$2.d(dVar);
            }
        }, 200L);
        return Unit.f67061a;
    }
}
