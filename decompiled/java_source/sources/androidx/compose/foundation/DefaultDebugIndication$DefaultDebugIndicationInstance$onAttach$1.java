package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1", f = "Indication.kt", l = {240}, m = "invokeSuspend")
final class DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ DefaultDebugIndication.DefaultDebugIndicationInstance this$0;

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f2584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f2585b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f2586c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DefaultDebugIndication.DefaultDebugIndicationInstance f2587d;

        a(Ref.IntRef intRef, Ref.IntRef intRef2, Ref.IntRef intRef3, DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance) {
            this.f2584a = intRef;
            this.f2585b = intRef2;
            this.f2586c = intRef3;
            this.f2587d = defaultDebugIndicationInstance;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(p.f fVar, Continuation continuation) {
            boolean z10 = true;
            if (fVar instanceof p.k.b) {
                this.f2584a.element++;
            } else if (fVar instanceof p.k.c) {
                this.f2584a.element--;
            } else if (fVar instanceof p.k.a) {
                this.f2584a.element--;
            } else if (fVar instanceof p.d) {
                this.f2585b.element++;
            } else if (fVar instanceof p.e) {
                this.f2585b.element--;
            } else if (fVar instanceof p.b) {
                this.f2586c.element++;
            } else if (fVar instanceof p.c) {
                this.f2586c.element--;
            }
            boolean z11 = false;
            boolean z12 = this.f2584a.element > 0;
            boolean z13 = this.f2585b.element > 0;
            boolean z14 = this.f2586c.element > 0;
            if (this.f2587d.f2581o != z12) {
                this.f2587d.f2581o = z12;
                z11 = true;
            }
            if (this.f2587d.f2582p != z13) {
                this.f2587d.f2582p = z13;
                z11 = true;
            }
            if (this.f2587d.f2583q != z14) {
                this.f2587d.f2583q = z14;
            } else {
                z10 = z11;
            }
            if (z10) {
                androidx.compose.ui.node.o.a(this.f2587d);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance, Continuation<? super DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultDebugIndicationInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            Ref.IntRef intRef = new Ref.IntRef();
            Ref.IntRef intRef2 = new Ref.IntRef();
            Ref.IntRef intRef3 = new Ref.IntRef();
            kotlinx.coroutines.flow.b bVarB = this.this$0.f2580n.b();
            a aVar = new a(intRef, intRef2, intRef3, this.this$0);
            this.label = 1;
            if (bVarB.a(aVar, this) == objF) {
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
