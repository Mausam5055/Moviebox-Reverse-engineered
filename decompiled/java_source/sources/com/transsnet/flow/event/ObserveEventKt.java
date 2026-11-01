package com.transsnet.flow.event;

import androidx.annotation.Keep;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.y0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0014\b\b\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"T", "Landroidx/lifecycle/u;", "Lkotlin/Function1;", "", "onReceived", "Lkotlinx/coroutines/t1;", "observeEvent", "(Landroidx/lifecycle/u;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;", "FlowEvent_release"}, k = 2, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ObserveEventKt {

    /* JADX INFO: renamed from: com.transsnet.flow.event.ObserveEventKt$observeEvent$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.flow.event.ObserveEventKt$observeEvent$1", f = "ObserveEvent.kt", l = {106}, m = "invokeSuspend")
    public final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isSticky;
        final /* synthetic */ Function1<Object, Unit> $onReceived;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z10, Function1<Object, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$isSticky = z10;
            this.$onReceived = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$isSticky, this.$onReceived, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                Intrinsics.n(4, "T");
                String name = Object.class.getName();
                Intrinsics.g(name, "getName(...)");
                boolean z10 = this.$isSticky;
                Function1<Object, Unit> function1 = this.$onReceived;
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

    /* JADX INFO: renamed from: com.transsnet.flow.event.ObserveEventKt$observeEvent$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.flow.event.ObserveEventKt$observeEvent$2", f = "ObserveEvent.kt", l = {Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE}, m = "invokeSuspend")
    public final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isSticky;
        final /* synthetic */ Function1<Object, Unit> $onReceived;
        final /* synthetic */ y0 $scope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(y0 y0Var, boolean z10, Function1<Object, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$scope = y0Var;
            this.$isSticky = z10;
            this.$onReceived = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$scope, this.$isSticky, this.$onReceived, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                FlowEventBus flowEventBus = (FlowEventBus) new v0(this.$scope).a(FlowEventBus.class);
                Intrinsics.n(4, "T");
                String name = Object.class.getName();
                Intrinsics.g(name, "getName(...)");
                boolean z10 = this.$isSticky;
                Function1<Object, Unit> function1 = this.$onReceived;
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

    @Keep
    public static final /* synthetic */ <T> t1 observeEvent(u uVar, Function1<? super T, Unit> onReceived) {
        Intrinsics.h(uVar, "<this>");
        Intrinsics.h(onReceived, "onReceived");
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        Intrinsics.n(4, "T");
        String name = Object.class.getName();
        Intrinsics.g(name, "getName(...)");
        return flowEventBus.observeEvent(uVar, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, onReceived);
    }
}
