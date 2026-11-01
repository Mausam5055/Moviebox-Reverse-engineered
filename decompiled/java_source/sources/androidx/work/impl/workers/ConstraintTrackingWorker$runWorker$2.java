package androidx.work.impl.workers;

import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.view.InputDeviceCompat;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.j0;
import androidx.work.s;
import androidx.work.t;
import com.google.common.util.concurrent.r;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/work/s$a;", "kotlin.jvm.PlatformType", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroidx/work/s$a;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2", f = "ConstraintTrackingWorker.kt", l = {134}, m = "invokeSuspend")
@SourceDebugExtension
final class ConstraintTrackingWorker$runWorker$2 extends SuspendLambda implements Function2<n0, Continuation<? super s.a>, Object> {
    final /* synthetic */ s $delegate;
    final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
    final /* synthetic */ j0 $workSpec;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConstraintTrackingWorker$runWorker$2(s sVar, WorkConstraintsTracker workConstraintsTracker, j0 j0Var, Continuation<? super ConstraintTrackingWorker$runWorker$2> continuation) {
        super(2, continuation);
        this.$delegate = sVar;
        this.$workConstraintsTracker = workConstraintsTracker;
        this.$workSpec = j0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ConstraintTrackingWorker$runWorker$2 constraintTrackingWorker$runWorker$2 = new ConstraintTrackingWorker$runWorker$2(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
        constraintTrackingWorker$runWorker$2.L$0 = obj;
        return constraintTrackingWorker$runWorker$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super s.a> continuation) {
        return ((ConstraintTrackingWorker$runWorker$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, kotlinx.coroutines.t1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        AtomicInteger atomicInteger;
        r rVar;
        Object objB;
        AtomicInteger atomicInteger2;
        t1 t1Var;
        Object objF = IntrinsicsKt.f();
        ?? r11 = this.label;
        try {
            if (r11 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                AtomicInteger atomicInteger3 = new AtomicInteger(InputDeviceCompat.SOURCE_ANY);
                r rVarL = this.$delegate.l();
                Intrinsics.g(rVarL, "startWork(...)");
                t1 t1VarD = k.d(n0Var, null, null, new ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1(this.$workConstraintsTracker, this.$workSpec, atomicInteger3, rVarL, null), 3, null);
                try {
                    this.L$0 = atomicInteger3;
                    this.L$1 = rVarL;
                    this.L$2 = t1VarD;
                    this.label = 1;
                    objB = ListenableFutureKt.b(rVarL, this);
                    if (objB == objF) {
                        return objF;
                    }
                    atomicInteger2 = atomicInteger3;
                    t1Var = t1VarD;
                    rVar = rVarL;
                    s.a aVar = (s.a) objB;
                    t1.a.b(t1Var, null, 1, null);
                    return aVar;
                } catch (CancellationException e11) {
                    e = e11;
                    atomicInteger = atomicInteger3;
                    rVar = rVarL;
                } catch (Throwable th2) {
                    th = th2;
                    String str = ConstraintTrackingWorkerKt.f16013a;
                    s sVar = this.$delegate;
                    t.e().b(str, "Delegated worker " + sVar.getClass() + " threw exception in startWork.", th);
                    throw th;
                }
            } else {
                if (r11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                t1Var = (t1) this.L$2;
                rVar = (r) this.L$1;
                atomicInteger = (AtomicInteger) this.L$0;
                try {
                    try {
                        ResultKt.b(obj);
                        atomicInteger2 = atomicInteger;
                        objB = obj;
                        try {
                            s.a aVar2 = (s.a) objB;
                            t1.a.b(t1Var, null, 1, null);
                            return aVar2;
                        } catch (CancellationException e12) {
                            e = e12;
                            atomicInteger = atomicInteger2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        String str2 = ConstraintTrackingWorkerKt.f16013a;
                        s sVar2 = this.$delegate;
                        t.e().b(str2, "Delegated worker " + sVar2.getClass() + " threw exception in startWork.", th);
                        throw th;
                    }
                } catch (CancellationException e13) {
                    e = e13;
                }
            }
            String str3 = ConstraintTrackingWorkerKt.f16013a;
            s sVar3 = this.$delegate;
            t.e().b(str3, "Delegated worker " + sVar3.getClass() + " was cancelled", e);
            boolean z10 = atomicInteger.get() != -256;
            if (rVar.isCancelled() && z10) {
                throw new ConstraintTrackingWorker.ConstraintUnsatisfiedException(atomicInteger.get());
            }
            throw e;
        } catch (Throwable th4) {
            t1.a.b(r11, null, 1, null);
            throw th4;
        }
    }
}
