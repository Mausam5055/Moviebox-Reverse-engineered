package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"R", "Lkotlinx/coroutines/flow/c;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1", f = "Emitters.kt", l = {36}, m = "invokeSuspend")
public final class FlowKt__EmittersKt$transform$1 extends SuspendLambda implements Function2<c, Continuation<? super Unit>, Object> {
    final /* synthetic */ b $this_transform;
    final /* synthetic */ Function3<c, Object, Continuation<? super Unit>, Object> $transform;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1$1, reason: invalid class name */
    public static final class AnonymousClass1 implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function3 f67724a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f67725b;

        public AnonymousClass1(Function3 function3, c cVar) {
            this.f67724a = function3;
            this.f67725b = cVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.c
        public final Object emit(Object obj, Continuation continuation) throws Throwable {
            FlowKt__EmittersKt$transform$1$1$emit$1 flowKt__EmittersKt$transform$1$1$emit$1;
            if (continuation instanceof FlowKt__EmittersKt$transform$1$1$emit$1) {
                flowKt__EmittersKt$transform$1$1$emit$1 = (FlowKt__EmittersKt$transform$1$1$emit$1) continuation;
                int i11 = flowKt__EmittersKt$transform$1$1$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    flowKt__EmittersKt$transform$1$1$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    flowKt__EmittersKt$transform$1$1$emit$1 = new FlowKt__EmittersKt$transform$1$1$emit$1(this, continuation);
                }
            } else {
                flowKt__EmittersKt$transform$1$1$emit$1 = new FlowKt__EmittersKt$transform$1$1$emit$1(this, continuation);
            }
            Object obj2 = flowKt__EmittersKt$transform$1$1$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = flowKt__EmittersKt$transform$1$1$emit$1.label;
            if (i12 == 0) {
                ResultKt.b(obj2);
                Function3 function3 = this.f67724a;
                c cVar = this.f67725b;
                flowKt__EmittersKt$transform$1$1$emit$1.label = 1;
                if (function3.invoke(cVar, obj, flowKt__EmittersKt$transform$1$1$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj2);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__EmittersKt$transform$1(b bVar, Function3<? super c, Object, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super FlowKt__EmittersKt$transform$1> continuation) {
        super(2, continuation);
        this.$this_transform = bVar;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__EmittersKt$transform$1 flowKt__EmittersKt$transform$1 = new FlowKt__EmittersKt$transform$1(this.$this_transform, this.$transform, continuation);
        flowKt__EmittersKt$transform$1.L$0 = obj;
        return flowKt__EmittersKt$transform$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c cVar, Continuation<? super Unit> continuation) {
        return ((FlowKt__EmittersKt$transform$1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            c cVar = (c) this.L$0;
            b bVar = this.$this_transform;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, cVar);
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

    public final Object invokeSuspend$$forInline(Object obj) {
        c cVar = (c) this.L$0;
        b bVar = this.$this_transform;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, cVar);
        InlineMarker.c(0);
        bVar.a(anonymousClass1, this);
        InlineMarker.c(1);
        return Unit.f67061a;
    }
}
