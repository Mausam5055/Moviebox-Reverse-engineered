package com.transsion.postdetail.util;

import com.transsion.baselib.db.video.ShortTVPlayDao;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.util.ShortTVFloatManager$saveHistoryInner$1", f = "ShortTVFloatManager.kt", l = {62, 63}, m = "invokeSuspend")
final class ShortTVFloatManager$saveHistoryInner$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $callback;
    final /* synthetic */ px.a $floatBean;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVFloatManager$saveHistoryInner$1(px.a aVar, Function0<Unit> function0, Continuation<? super ShortTVFloatManager$saveHistoryInner$1> continuation) {
        super(2, continuation);
        this.$floatBean = aVar;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVFloatManager$saveHistoryInner$1(this.$floatBean, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTVFloatManager$saveHistoryInner$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0089 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Function0<Unit> function0;
        a2 a2VarC;
        ShortTVFloatManager$saveHistoryInner$1$1$1 shortTVFloatManager$saveHistoryInner$1$1$1;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            px.a aVar = this.$floatBean;
            if (aVar != null) {
                function0 = this.$callback;
                lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "shorttv-----saveHistory, ep:" + aVar.c() + ", progress:" + aVar.n(), false, 4, null);
                ShortTVPlayDao shortTVPlayDaoL = ShortTVFloatManager.f50149b.l();
                String strR = aVar.r();
                int iC = aVar.c();
                long jN = aVar.n();
                this.L$0 = function0;
                this.label = 1;
                if (shortTVPlayDaoL.h(strR, iC, jN, this) == objF) {
                    return objF;
                }
                a2VarC = y0.c();
                shortTVFloatManager$saveHistoryInner$1$1$1 = new ShortTVFloatManager$saveHistoryInner$1$1$1(function0, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, shortTVFloatManager$saveHistoryInner$1$1$1, this) == objF) {
                    return objF;
                }
            }
        } else if (i11 == 1) {
            function0 = (Function0) this.L$0;
            ResultKt.b(obj);
            a2VarC = y0.c();
            shortTVFloatManager$saveHistoryInner$1$1$1 = new ShortTVFloatManager$saveHistoryInner$1$1$1(function0, null);
            this.L$0 = null;
            this.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, shortTVFloatManager$saveHistoryInner$1$1$1, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
