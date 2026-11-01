package com.transsnet.flow.event;

import androidx.annotation.Keep;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.d1;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ5\u0010\u0011\u001a\u00020\u000f\"\b\b\u0000\u0010\f*\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012JS\u0010\u001a\u001a\u00020\u0019\"\b\b\u0000\u0010\f*\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u001a\u0010\u001bJ>\u0010\u001c\u001a\u00020\u000f\"\b\b\u0000\u0010\f*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eH\u0086@¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010 \u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b$\u0010#J\u0015\u0010&\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b&\u0010'R<\u0010*\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0(j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R<\u0010,\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0(j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010+¨\u0006-"}, d2 = {"Lcom/transsnet/flow/event/FlowEventBus;", "Landroidx/lifecycle/t0;", "<init>", "()V", "", EventConstants.KEY_EVENT_NAME, "", "isSticky", "Lkotlinx/coroutines/flow/x0;", "", "getEventFlow", "(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/x0;", "T", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lkotlin/Function1;", "", "onReceived", "invokeReceived", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "Landroidx/lifecycle/u;", "lifecycleOwner", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Lkotlinx/coroutines/i0;", "dispatcher", "Lkotlinx/coroutines/t1;", "observeEvent", "(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;", "observeWithoutLifecycle", "(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "timeMillis", "postEvent", "(Ljava/lang/String;Ljava/lang/Object;J)V", "removeStickEvent", "(Ljava/lang/String;)V", "clearStickEvent", "", "getEventObserverCount", "(Ljava/lang/String;)I", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "eventFlows", "Ljava/util/HashMap;", "stickyEventFlows", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FlowEventBus extends t0 {
    private final HashMap<String, x0> eventFlows = new HashMap<>();
    private final HashMap<String, x0> stickyEventFlows = new HashMap<>();

    /* JADX INFO: loaded from: classes7.dex */
    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function1 f60249b;

        a(Function1 function1) {
            this.f60249b = function1;
        }

        @Override // kotlinx.coroutines.flow.c
        public final Object emit(Object obj, Continuation continuation) {
            FlowEventBus.this.invokeReceived(obj, this.f60249b);
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsnet.flow.event.FlowEventBus$observeEvent$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/Void;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.flow.event.FlowEventBus$observeEvent$1", f = "FlowEventBus.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<?>, Object> {
        final /* synthetic */ i0 $dispatcher;
        final /* synthetic */ String $eventName;
        final /* synthetic */ boolean $isSticky;
        final /* synthetic */ Function1<T, Unit> $onReceived;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(String str, boolean z10, i0 i0Var, Function1<? super T, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$eventName = str;
            this.$isSticky = z10;
            this.$dispatcher = i0Var;
            this.$onReceived = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = FlowEventBus.this.new AnonymousClass1(this.$eventName, this.$isSticky, this.$dispatcher, this.$onReceived, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<?> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                final n0 n0Var = (n0) this.L$0;
                x0 eventFlow = FlowEventBus.this.getEventFlow(this.$eventName, this.$isSticky);
                final i0 i0Var = this.$dispatcher;
                final FlowEventBus flowEventBus = FlowEventBus.this;
                final Function1<T, Unit> function1 = this.$onReceived;
                kotlinx.coroutines.flow.c cVar = new kotlinx.coroutines.flow.c() { // from class: com.transsnet.flow.event.FlowEventBus.observeEvent.1.1

                    /* JADX INFO: renamed from: com.transsnet.flow.event.FlowEventBus$observeEvent$1$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                    @DebugMetadata(c = "com.transsnet.flow.event.FlowEventBus$observeEvent$1$1$1", f = "FlowEventBus.kt", l = {}, m = "invokeSuspend")
                    static final class C06971 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                        final /* synthetic */ Function1<Object, Unit> $onReceived;
                        final /* synthetic */ Object $value;
                        int label;
                        final /* synthetic */ FlowEventBus this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C06971(FlowEventBus flowEventBus, Object obj, Function1<Object, Unit> function1, Continuation<? super C06971> continuation) {
                            super(2, continuation);
                            this.this$0 = flowEventBus;
                            this.$value = obj;
                            this.$onReceived = function1;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C06971(this.this$0, this.$value, this.$onReceived, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                            return ((C06971) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            IntrinsicsKt.f();
                            if (this.label != 0) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj);
                            this.this$0.invokeReceived(this.$value, this.$onReceived);
                            return Unit.f67061a;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.c
                    public final Object emit(Object obj2, Continuation continuation) {
                        k.d(n0Var, i0Var, null, new C06971(flowEventBus, obj2, function1, null), 2, null);
                        return Unit.f67061a;
                    }
                };
                this.label = 1;
                if (eventFlow.a(cVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: renamed from: com.transsnet.flow.event.FlowEventBus$observeWithoutLifecycle$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsnet.flow.event.FlowEventBus", f = "FlowEventBus.kt", l = {64}, m = "observeWithoutLifecycle")
    static final class C10761<T> extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C10761(Continuation<? super C10761> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowEventBus.this.observeWithoutLifecycle(null, false, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final x0 getEventFlow(String eventName, boolean isSticky) {
        x0 x0VarB = isSticky ? this.stickyEventFlows.get(eventName) : this.eventFlows.get(eventName);
        if (x0VarB == null) {
            x0VarB = d1.b(isSticky ? 1 : 0, Integer.MAX_VALUE, null, 4, null);
            if (isSticky) {
                this.stickyEventFlows.put(eventName, x0VarB);
            } else {
                this.eventFlows.put(eventName, x0VarB);
            }
        }
        return x0VarB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> void invokeReceived(Object value, Function1<? super T, Unit> onReceived) {
        c cVarB;
        c cVarB2;
        try {
            Intrinsics.f(value, "null cannot be cast to non-null type T of com.transsnet.flow.event.FlowEventBus.invokeReceived");
            onReceived.invoke(value);
        } catch (ClassCastException e11) {
            String message = e11.getMessage();
            if (message == null || (cVarB2 = b.f60254a.b()) == null) {
                return;
            }
            cVarB2.log("class cast error on message received: " + value, message);
        } catch (Exception e12) {
            String message2 = e12.getMessage();
            if (message2 == null || (cVarB = b.f60254a.b()) == null) {
                return;
            }
            cVarB.log("error on message received: " + value, message2);
        }
    }

    public final void clearStickEvent(String eventName) {
        Intrinsics.h(eventName, "eventName");
        x0 x0Var = this.stickyEventFlows.get(eventName);
        if (x0Var != null) {
            x0Var.f();
        }
    }

    public final int getEventObserverCount(String eventName) {
        i1 i1VarC;
        i1 i1VarC2;
        Intrinsics.h(eventName, "eventName");
        x0 x0Var = this.stickyEventFlows.get(eventName);
        int iIntValue = 0;
        int iIntValue2 = (x0Var == null || (i1VarC2 = x0Var.c()) == null) ? 0 : ((Number) i1VarC2.getValue()).intValue();
        x0 x0Var2 = this.eventFlows.get(eventName);
        if (x0Var2 != null && (i1VarC = x0Var2.c()) != null) {
            iIntValue = ((Number) i1VarC.getValue()).intValue();
        }
        return iIntValue2 + iIntValue;
    }

    public final <T> t1 observeEvent(u lifecycleOwner, String eventName, Lifecycle.State minState, i0 dispatcher, boolean isSticky, Function1<? super T, Unit> onReceived) {
        Intrinsics.h(lifecycleOwner, "lifecycleOwner");
        Intrinsics.h(eventName, "eventName");
        Intrinsics.h(minState, "minState");
        Intrinsics.h(dispatcher, "dispatcher");
        Intrinsics.h(onReceived, "onReceived");
        return EventUtilsKt.launchWhenStateAtLeast(lifecycleOwner, minState, new AnonymousClass1(eventName, isSticky, dispatcher, onReceived, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <T> Object observeWithoutLifecycle(String str, boolean z10, Function1<? super T, Unit> function1, Continuation<? super Unit> continuation) throws Throwable {
        C10761 c10761;
        if (continuation instanceof C10761) {
            c10761 = (C10761) continuation;
            int i11 = c10761.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c10761.label = i11 - Integer.MIN_VALUE;
            } else {
                c10761 = new C10761(continuation);
            }
        } else {
            c10761 = new C10761(continuation);
        }
        Object obj = c10761.result;
        Object objF = IntrinsicsKt.f();
        int i12 = c10761.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            x0 eventFlow = getEventFlow(str, z10);
            a aVar = new a(function1);
            c10761.label = 1;
            if (eventFlow.a(aVar, c10761) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    public final void postEvent(String eventName, Object value, long timeMillis) {
        Intrinsics.h(eventName, "eventName");
        Intrinsics.h(value, "value");
        c cVarB = b.f60254a.b();
        if (cVarB != null) {
            cVarB.log("post Event:" + eventName);
        }
        Iterator it = CollectionsKt.p(getEventFlow(eventName, false), getEventFlow(eventName, true)).iterator();
        while (it.hasNext()) {
            k.d(u0.a(this), null, null, new FlowEventBus$postEvent$1$1(timeMillis, (x0) it.next(), value, null), 3, null);
        }
    }

    public final void removeStickEvent(String eventName) {
        Intrinsics.h(eventName, "eventName");
        this.stickyEventFlows.remove(eventName);
    }
}
