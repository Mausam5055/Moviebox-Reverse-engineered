package com.transsion.wrapperad.install.ui;

import androidx.appcompat.app.AppCompatActivity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.wrapperad.install.ui.StreamerIconAdView$startCountDownIfNeeded$1", f = "StreamerIconAdView.kt", l = {162}, m = "invokeSuspend")
@SourceDebugExtension
final class StreamerIconAdView$startCountDownIfNeeded$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    int label;
    final /* synthetic */ StreamerIconAdView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StreamerIconAdView$startCountDownIfNeeded$1(StreamerIconAdView streamerIconAdView, AppCompatActivity appCompatActivity, Continuation<? super StreamerIconAdView$startCountDownIfNeeded$1> continuation) {
        super(2, continuation);
        this.this$0 = streamerIconAdView;
        this.$activity = appCompatActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StreamerIconAdView$startCountDownIfNeeded$1(this.this$0, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StreamerIconAdView$startCountDownIfNeeded$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            long countDownSeconds = ((long) this.this$0.getCountDownSeconds()) * 1000;
            this.label = 1;
            if (u0.a(countDownSeconds, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        if (this.this$0.getVisibility() != 0) {
            return Unit.f67061a;
        }
        lg.a.C0828a.f(lg.a.f68839a, "StreamerIcon", this.this$0.getClassTag() + " --> countDown finished --> 倒计时结束，自动关闭广告", false, 4, null);
        this.this$0.f(this.$activity, true);
        return Unit.f67061a;
    }
}
