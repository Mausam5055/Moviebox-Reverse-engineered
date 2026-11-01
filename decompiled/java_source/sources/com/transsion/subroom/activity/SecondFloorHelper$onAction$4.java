package com.transsion.subroom.activity;

import com.transsion.wrapperad.view.secondfloor.SecondFloorArcCoverView;
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
import kotlinx.coroutines.u0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.activity.SecondFloorHelper$onAction$4", f = "SecondFloorHelper.kt", l = {250}, m = "invokeSuspend")
final class SecondFloorHelper$onAction$4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SecondFloorHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SecondFloorHelper$onAction$4(SecondFloorHelper secondFloorHelper, Continuation<? super SecondFloorHelper$onAction$4> continuation) {
        super(2, continuation);
        this.this$0 = secondFloorHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SecondFloorHelper$onAction$4(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SecondFloorHelper$onAction$4) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(500L, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        SecondFloorArcCoverView arcCover = this.this$0.f54587a.f16127b;
        Intrinsics.g(arcCover, "arcCover");
        jg.c.g(arcCover);
        SecondFloorHelper.H(this.this$0, false, 1, null);
        return Unit.f67061a;
    }
}
