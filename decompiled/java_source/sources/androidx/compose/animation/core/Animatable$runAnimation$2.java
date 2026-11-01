package androidx.compose.animation.core;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "Landroidx/compose/animation/core/o;", "V", "Landroidx/compose/animation/core/e;", "<anonymous>", "()Landroidx/compose/animation/core/e;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", l = {Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE}, m = "invokeSuspend")
final class Animatable$runAnimation$2 extends SuspendLambda implements Function1<Continuation<? super e>, Object> {
    final /* synthetic */ c $animation;
    final /* synthetic */ Function1<Animatable, Unit> $block;
    final /* synthetic */ Object $initialVelocity;
    final /* synthetic */ long $startTime;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Animatable this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Animatable$runAnimation$2(Animatable animatable, Object obj, c cVar, long j11, Function1<? super Animatable, Unit> function1, Continuation<? super Animatable$runAnimation$2> continuation) {
        super(1, continuation);
        this.this$0 = animatable;
        this.$initialVelocity = obj;
        this.$animation = cVar;
        this.$startTime = j11;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new Animatable$runAnimation$2(this.this$0, this.$initialVelocity, this.$animation, this.$startTime, this.$block, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super e> continuation) {
        return ((Animatable$runAnimation$2) create(continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        i iVar;
        Ref.BooleanRef booleanRef;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                this.this$0.i().m((o) this.this$0.j().a().invoke(this.$initialVelocity));
                this.this$0.p(this.$animation.g());
                this.this$0.o(true);
                final i iVarH = j.h(this.this$0.i(), null, null, 0L, Long.MIN_VALUE, false, 23, null);
                final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                c cVar = this.$animation;
                long j11 = this.$startTime;
                final Animatable animatable = this.this$0;
                final Function1<Animatable, Unit> function1 = this.$block;
                Function1<f, Unit> function2 = new Function1<f, Unit>() { // from class: androidx.compose.animation.core.Animatable$runAnimation$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((f) obj2);
                        return Unit.f67061a;
                    }

                    public final void invoke(f fVar) {
                        SuspendAnimationKt.o(fVar, animatable.i());
                        Object objG = animatable.g(fVar.e());
                        if (Intrinsics.c(objG, fVar.e())) {
                            Function1<Animatable, Unit> function3 = function1;
                            if (function3 != null) {
                                function3.invoke(animatable);
                                return;
                            }
                            return;
                        }
                        animatable.i().l(objG);
                        iVarH.l(objG);
                        Function1<Animatable, Unit> function4 = function1;
                        if (function4 != null) {
                            function4.invoke(animatable);
                        }
                        fVar.a();
                        booleanRef2.element = true;
                    }
                };
                this.L$0 = iVarH;
                this.L$1 = booleanRef2;
                this.label = 1;
                if (SuspendAnimationKt.c(iVarH, cVar, j11, function2, this) == objF) {
                    return objF;
                }
                iVar = iVarH;
                booleanRef = booleanRef2;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$1;
                iVar = (i) this.L$0;
                ResultKt.b(obj);
            }
            AnimationEndReason animationEndReason = booleanRef.element ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
            this.this$0.h();
            return new e(iVar, animationEndReason);
        } catch (CancellationException e11) {
            this.this$0.h();
            throw e11;
        }
    }
}
