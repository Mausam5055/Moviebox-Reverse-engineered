package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", l = {23}, m = "invokeSuspend")
final class ChannelFlowTransformLatest$flowCollect$3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ kotlinx.coroutines.flow.c $collector;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ChannelFlowTransformLatest this$0;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1, reason: invalid class name */
    static final class AnonymousClass1 implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f67792a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f67793b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ChannelFlowTransformLatest f67794c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.c f67795d;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {30}, m = "invokeSuspend")
        static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ kotlinx.coroutines.flow.c $collector;
            final /* synthetic */ Object $value;
            int label;
            final /* synthetic */ ChannelFlowTransformLatest this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(ChannelFlowTransformLatest channelFlowTransformLatest, kotlinx.coroutines.flow.c cVar, Object obj, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = channelFlowTransformLatest;
                this.$collector = cVar;
                this.$value = obj;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, this.$collector, this.$value, continuation);
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
                    Function3 function3 = this.this$0.f67791e;
                    kotlinx.coroutines.flow.c cVar = this.$collector;
                    Object obj2 = this.$value;
                    this.label = 1;
                    if (function3.invoke(cVar, obj2, this) == objF) {
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

        AnonymousClass1(Ref.ObjectRef objectRef, n0 n0Var, ChannelFlowTransformLatest channelFlowTransformLatest, kotlinx.coroutines.flow.c cVar) {
            this.f67792a = objectRef;
            this.f67793b = n0Var;
            this.f67794c = channelFlowTransformLatest;
            this.f67795d = cVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r8v2, types: [T, kotlinx.coroutines.t1] */
        @Override // kotlinx.coroutines.flow.c
        public final Object emit(Object obj, Continuation continuation) throws Throwable {
            ChannelFlowTransformLatest$flowCollect$3$1$emit$1 channelFlowTransformLatest$flowCollect$3$1$emit$1;
            AnonymousClass1 anonymousClass1;
            if (continuation instanceof ChannelFlowTransformLatest$flowCollect$3$1$emit$1) {
                channelFlowTransformLatest$flowCollect$3$1$emit$1 = (ChannelFlowTransformLatest$flowCollect$3$1$emit$1) continuation;
                int i11 = channelFlowTransformLatest$flowCollect$3$1$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    channelFlowTransformLatest$flowCollect$3$1$emit$1 = new ChannelFlowTransformLatest$flowCollect$3$1$emit$1(this, continuation);
                }
            } else {
                channelFlowTransformLatest$flowCollect$3$1$emit$1 = new ChannelFlowTransformLatest$flowCollect$3$1$emit$1(this, continuation);
            }
            Object obj2 = channelFlowTransformLatest$flowCollect$3$1$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = channelFlowTransformLatest$flowCollect$3$1$emit$1.label;
            if (i12 == 0) {
                ResultKt.b(obj2);
                t1 t1Var = (t1) this.f67792a.element;
                if (t1Var != null) {
                    t1Var.cancel(new ChildCancelledException());
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.L$0 = this;
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.L$1 = obj;
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.L$2 = t1Var;
                    channelFlowTransformLatest$flowCollect$3$1$emit$1.label = 1;
                    if (t1Var.join(channelFlowTransformLatest$flowCollect$3$1$emit$1) == objF) {
                        return objF;
                    }
                }
                anonymousClass1 = this;
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj = channelFlowTransformLatest$flowCollect$3$1$emit$1.L$1;
                anonymousClass1 = (AnonymousClass1) channelFlowTransformLatest$flowCollect$3$1$emit$1.L$0;
                ResultKt.b(obj2);
            }
            anonymousClass1.f67792a.element = kotlinx.coroutines.k.d(anonymousClass1.f67793b, null, CoroutineStart.UNDISPATCHED, new AnonymousClass2(anonymousClass1.f67794c, anonymousClass1.f67795d, obj, null), 1, null);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChannelFlowTransformLatest$flowCollect$3(ChannelFlowTransformLatest channelFlowTransformLatest, kotlinx.coroutines.flow.c cVar, Continuation<? super ChannelFlowTransformLatest$flowCollect$3> continuation) {
        super(2, continuation);
        this.this$0 = channelFlowTransformLatest;
        this.$collector = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelFlowTransformLatest$flowCollect$3 channelFlowTransformLatest$flowCollect$3 = new ChannelFlowTransformLatest$flowCollect$3(this.this$0, this.$collector, continuation);
        channelFlowTransformLatest$flowCollect$3.L$0 = obj;
        return channelFlowTransformLatest$flowCollect$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ChannelFlowTransformLatest$flowCollect$3) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ChannelFlowTransformLatest channelFlowTransformLatest = this.this$0;
            kotlinx.coroutines.flow.b bVar = channelFlowTransformLatest.f67790d;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(objectRef, n0Var, channelFlowTransformLatest, this.$collector);
            this.label = 1;
            if (bVar.a(anonymousClass1, this) == objF) {
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
