package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.w;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)F"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2", f = "Scrollable.kt", l = {893}, m = "invokeSuspend")
final class DefaultFlingBehavior$performFling$2 extends SuspendLambda implements Function2<n0, Continuation<? super Float>, Object> {
    final /* synthetic */ float $initialVelocity;
    final /* synthetic */ k $this_performFling;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DefaultFlingBehavior this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultFlingBehavior$performFling$2(float f11, DefaultFlingBehavior defaultFlingBehavior, k kVar, Continuation<? super DefaultFlingBehavior$performFling$2> continuation) {
        super(2, continuation);
        this.$initialVelocity = f11;
        this.this$0 = defaultFlingBehavior;
        this.$this_performFling = kVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DefaultFlingBehavior$performFling$2(this.$initialVelocity, this.this$0, this.$this_performFling, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Float> continuation) {
        return ((DefaultFlingBehavior$performFling$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        float f11;
        Ref.FloatRef floatRef;
        androidx.compose.animation.core.i iVar;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (Math.abs(this.$initialVelocity) > 1.0f) {
                final Ref.FloatRef floatRef2 = new Ref.FloatRef();
                floatRef2.element = this.$initialVelocity;
                final Ref.FloatRef floatRef3 = new Ref.FloatRef();
                androidx.compose.animation.core.i iVarC = androidx.compose.animation.core.j.c(0.0f, this.$initialVelocity, 0L, 0L, false, 28, null);
                try {
                    w wVarB = this.this$0.b();
                    final k kVar = this.$this_performFling;
                    final DefaultFlingBehavior defaultFlingBehavior = this.this$0;
                    Function1<androidx.compose.animation.core.f, Unit> function1 = new Function1<androidx.compose.animation.core.f, Unit>() { // from class: androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                            invoke((androidx.compose.animation.core.f) obj2);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.animation.core.f fVar) {
                            float fFloatValue = ((Number) fVar.e()).floatValue() - floatRef3.element;
                            float fA = kVar.a(fFloatValue);
                            floatRef3.element = ((Number) fVar.e()).floatValue();
                            floatRef2.element = ((Number) fVar.f()).floatValue();
                            if (Math.abs(fFloatValue - fA) > 0.5f) {
                                fVar.a();
                            }
                            DefaultFlingBehavior defaultFlingBehavior2 = defaultFlingBehavior;
                            defaultFlingBehavior2.e(defaultFlingBehavior2.c() + 1);
                        }
                    };
                    this.L$0 = floatRef2;
                    this.L$1 = iVarC;
                    this.label = 1;
                    if (SuspendAnimationKt.h(iVarC, wVarB, false, function1, this, 2, null) == objF) {
                        return objF;
                    }
                    floatRef = floatRef2;
                    f11 = floatRef.element;
                } catch (CancellationException unused) {
                    floatRef = floatRef2;
                    iVar = iVarC;
                    floatRef.element = ((Number) iVar.f()).floatValue();
                }
            } else {
                f11 = this.$initialVelocity;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            iVar = (androidx.compose.animation.core.i) this.L$1;
            floatRef = (Ref.FloatRef) this.L$0;
            try {
                ResultKt.b(obj);
            } catch (CancellationException unused2) {
                floatRef.element = ((Number) iVar.f()).floatValue();
            }
            f11 = floatRef.element;
        }
        return Boxing.c(f11);
    }
}
