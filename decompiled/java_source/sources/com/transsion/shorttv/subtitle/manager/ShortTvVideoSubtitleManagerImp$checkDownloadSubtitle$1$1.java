package com.transsion.shorttv.subtitle.manager;

import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.subtitle.manager.ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1", f = "ShortTvVideoSubtitleManagerImp.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $hasSubtitle;
    final /* synthetic */ Function1<Boolean, Unit> $resultCallback;
    int label;
    final /* synthetic */ ShortTvVideoSubtitleManagerImp this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1(Function1<? super Boolean, Unit> function1, boolean z10, ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp, Continuation<? super ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1> continuation) {
        super(2, continuation);
        this.$resultCallback = function1;
        this.$hasSubtitle = z10;
        this.this$0 = shortTvVideoSubtitleManagerImp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1(this.$resultCallback, this.$hasSubtitle, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvVideoSubtitleManagerImp$checkDownloadSubtitle$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        Function1<Boolean, Unit> function1 = this.$resultCallback;
        if (function1 != null) {
            function1.invoke(Boxing.a(this.$hasSubtitle));
        }
        Set set = this.this$0.f53084b;
        boolean z10 = this.$hasSubtitle;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((vs.a) it.next()).g(z10);
        }
        return Unit.f67061a;
    }
}
