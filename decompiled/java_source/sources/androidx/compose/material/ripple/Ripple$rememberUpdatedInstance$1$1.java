package androidx.compose.material.ripple;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1$1", f = "Ripple.kt", l = {Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE}, m = "invokeSuspend")
final class Ripple$rememberUpdatedInstance$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ RippleIndicationInstance $instance;
    final /* synthetic */ p.g $interactionSource;
    private /* synthetic */ Object L$0;
    int label;

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RippleIndicationInstance f3445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f3446b;

        a(RippleIndicationInstance rippleIndicationInstance, n0 n0Var) {
            this.f3445a = rippleIndicationInstance;
            this.f3446b = n0Var;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(p.f fVar, Continuation continuation) {
            if (fVar instanceof p.k.b) {
                this.f3445a.b((p.k.b) fVar, this.f3446b);
            } else if (fVar instanceof p.k.c) {
                this.f3445a.d(((p.k.c) fVar).a());
            } else if (fVar instanceof p.k.a) {
                this.f3445a.d(((p.k.a) fVar).a());
            } else {
                this.f3445a.e(fVar, this.f3446b);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Ripple$rememberUpdatedInstance$1$1(p.g gVar, RippleIndicationInstance rippleIndicationInstance, Continuation<? super Ripple$rememberUpdatedInstance$1$1> continuation) {
        super(2, continuation);
        this.$interactionSource = gVar;
        this.$instance = rippleIndicationInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Ripple$rememberUpdatedInstance$1$1 ripple$rememberUpdatedInstance$1$1 = new Ripple$rememberUpdatedInstance$1$1(this.$interactionSource, this.$instance, continuation);
        ripple$rememberUpdatedInstance$1$1.L$0 = obj;
        return ripple$rememberUpdatedInstance$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((Ripple$rememberUpdatedInstance$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            kotlinx.coroutines.flow.b bVarB = this.$interactionSource.b();
            a aVar = new a(this.$instance, n0Var);
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
