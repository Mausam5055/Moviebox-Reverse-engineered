package com.transsion.moviedetail.viewmodel;

import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.PublishEvent;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V", "com/transsnet/flow/event/ObserveEventKt$observeEvent$1"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.flow.event.ObserveEventKt$observeEvent$1", f = "ObserveEvent.kt", l = {106}, m = "invokeSuspend")
public final class HotViewModel$onCreate$$inlined$observeEvent$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isSticky;
    final /* synthetic */ Function1 $onReceived;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HotViewModel$onCreate$$inlined$observeEvent$1(boolean z10, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$isSticky = z10;
        this.$onReceived = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HotViewModel$onCreate$$inlined$observeEvent$1(this.$isSticky, this.$onReceived, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HotViewModel$onCreate$$inlined$observeEvent$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            boolean z10 = this.$isSticky;
            Function1 function1 = this.$onReceived;
            this.label = 1;
            if (flowEventBus.observeWithoutLifecycle(name, z10, function1, this) == objF) {
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
