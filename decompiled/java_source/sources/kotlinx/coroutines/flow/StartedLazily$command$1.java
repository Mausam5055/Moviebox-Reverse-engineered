package kotlinx.coroutines.flow;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", l = {151}, m = "invokeSuspend")
final class StartedLazily$command$1 extends SuspendLambda implements Function2<c, Continuation<? super Unit>, Object> {
    final /* synthetic */ i1 $subscriptionCount;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.StartedLazily$command$1$1, reason: invalid class name */
    static final class AnonymousClass1 implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f67766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f67767b;

        AnonymousClass1(Ref.BooleanRef booleanRef, c cVar) {
            this.f67766a = booleanRef;
            this.f67767b = cVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object a(int i11, Continuation continuation) throws Throwable {
            StartedLazily$command$1$1$emit$1 startedLazily$command$1$1$emit$1;
            if (continuation instanceof StartedLazily$command$1$1$emit$1) {
                startedLazily$command$1$1$emit$1 = (StartedLazily$command$1$1$emit$1) continuation;
                int i12 = startedLazily$command$1$1$emit$1.label;
                if ((i12 & Integer.MIN_VALUE) != 0) {
                    startedLazily$command$1$1$emit$1.label = i12 - Integer.MIN_VALUE;
                } else {
                    startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
                }
            } else {
                startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
            }
            Object obj = startedLazily$command$1$1$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i13 = startedLazily$command$1$1$emit$1.label;
            if (i13 == 0) {
                ResultKt.b(obj);
                if (i11 > 0) {
                    Ref.BooleanRef booleanRef = this.f67766a;
                    if (!booleanRef.element) {
                        booleanRef.element = true;
                        c cVar = this.f67767b;
                        SharingCommand sharingCommand = SharingCommand.START;
                        startedLazily$command$1$1$emit$1.label = 1;
                        if (cVar.emit(sharingCommand, startedLazily$command$1$1$emit$1) == objF) {
                            return objF;
                        }
                    }
                }
                return Unit.f67061a;
            }
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Unit.f67061a;
        }

        @Override // kotlinx.coroutines.flow.c
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return a(((Number) obj).intValue(), continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartedLazily$command$1(i1 i1Var, Continuation<? super StartedLazily$command$1> continuation) {
        super(2, continuation);
        this.$subscriptionCount = i1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        StartedLazily$command$1 startedLazily$command$1 = new StartedLazily$command$1(this.$subscriptionCount, continuation);
        startedLazily$command$1.L$0 = obj;
        return startedLazily$command$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(c cVar, Continuation<? super Unit> continuation) {
        return ((StartedLazily$command$1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            c cVar = (c) this.L$0;
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            i1 i1Var = this.$subscriptionCount;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(booleanRef, cVar);
            this.label = 1;
            if (i1Var.a(anonymousClass1, this) == objF) {
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
