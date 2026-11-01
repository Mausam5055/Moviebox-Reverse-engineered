package com.transsion.videofloat.manager;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videofloat.manager.VideoPipManagerImp$closePip$1$1", f = "VideoPipManagerImp.kt", l = {}, m = "invokeSuspend")
final class VideoPipManagerImp$closePip$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $addCache;
    int label;
    final /* synthetic */ VideoPipManagerImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoPipManagerImp$closePip$1$1(VideoPipManagerImp videoPipManagerImp, boolean z10, Continuation<? super VideoPipManagerImp$closePip$1$1> continuation) {
        super(2, continuation);
        this.this$0 = videoPipManagerImp;
        this.$addCache = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoPipManagerImp$closePip$1$1(this.this$0, this.$addCache, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoPipManagerImp$closePip$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        px.a aVar = this.this$0.f57910d;
        if (aVar != null) {
            VideoPipManagerImp videoPipManagerImp = this.this$0;
            boolean z10 = this.$addCache;
            lg.a.f68839a.u("VideoFloat-pip", videoPipManagerImp.f57908b + " 手动打开播放页，closePip--- " + aVar.k() + "， activity:" + videoPipManagerImp.f57909c, true);
            if (z10) {
                a0.f57933a.a(aVar.k(), aVar.f());
            }
        }
        ox.e.b.b(this.this$0, null, 1, null);
        this.this$0.G();
        this.this$0.f57920n = false;
        this.this$0.f57912f = null;
        this.this$0.f57913g = null;
        this.this$0.f57914h = null;
        this.this$0.f57915i = null;
        this.this$0.f57916j = null;
        this.this$0.f57910d = null;
        return Unit.f67061a;
    }
}
