package androidx.work.impl.workers;

import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.j0;
import androidx.work.s;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/work/s$a;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroidx/work/s$a;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5", f = "ConstraintTrackingWorker.kt", l = {98}, m = "invokeSuspend")
final class ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5 extends SuspendLambda implements Function2<n0, Continuation<? super s.a>, Object> {
    final /* synthetic */ s $delegate;
    final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
    final /* synthetic */ j0 $workSpec;
    int label;
    final /* synthetic */ ConstraintTrackingWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5(ConstraintTrackingWorker constraintTrackingWorker, s sVar, WorkConstraintsTracker workConstraintsTracker, j0 j0Var, Continuation<? super ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5> continuation) {
        super(2, continuation);
        this.this$0 = constraintTrackingWorker;
        this.$delegate = sVar;
        this.$workConstraintsTracker = workConstraintsTracker;
        this.$workSpec = j0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5(this.this$0, this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super s.a> continuation) {
        return ((ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            ConstraintTrackingWorker constraintTrackingWorker = this.this$0;
            s sVar = this.$delegate;
            WorkConstraintsTracker workConstraintsTracker = this.$workConstraintsTracker;
            j0 j0Var = this.$workSpec;
            this.label = 1;
            obj = constraintTrackingWorker.t(sVar, workConstraintsTracker, j0Var, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
