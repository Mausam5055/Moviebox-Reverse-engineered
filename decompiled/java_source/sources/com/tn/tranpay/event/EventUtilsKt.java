package com.tn.tranpay.event;

import androidx.annotation.Keep;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.PausingDispatcherKt;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aM\u0010\u000b\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004¢\u0006\u0002\b\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"T", "Landroidx/lifecycle/u;", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Lkotlin/Function2;", "Lkotlinx/coroutines/n0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/t1;", "launchWhenStateAtLeast", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;", "lib_release"}, k = 2, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EventUtilsKt {

    /* JADX INFO: renamed from: com.tn.tranpay.event.EventUtilsKt$launchWhenStateAtLeast$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.tn.tranpay.event.EventUtilsKt$launchWhenStateAtLeast$1", f = "EventUtils.kt", l = {50}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<n0, Continuation<? super T>, Object> $block;
        final /* synthetic */ Lifecycle.State $minState;
        final /* synthetic */ u $this_launchWhenStateAtLeast;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(u uVar, Lifecycle.State state, Function2<? super n0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_launchWhenStateAtLeast = uVar;
            this.$minState = state;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_launchWhenStateAtLeast, this.$minState, this.$block, continuation);
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
                Lifecycle lifecycle = this.$this_launchWhenStateAtLeast.getLifecycle();
                Lifecycle.State state = this.$minState;
                Function2<n0, Continuation<? super T>, Object> function2 = this.$block;
                this.label = 1;
                if (PausingDispatcherKt.b(lifecycle, state, function2, this) == objF) {
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
    public static final <T> t1 launchWhenStateAtLeast(u uVar, Lifecycle.State minState, Function2<? super n0, ? super Continuation<? super T>, ? extends Object> block) {
        Intrinsics.h(uVar, "<this>");
        Intrinsics.h(minState, "minState");
        Intrinsics.h(block, "block");
        return k.d(v.a(uVar), null, null, new AnonymousClass1(uVar, minState, block, null), 3, null);
    }
}
