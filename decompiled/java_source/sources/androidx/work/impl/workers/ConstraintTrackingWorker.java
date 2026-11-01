package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.f1;
import androidx.work.impl.model.j0;
import androidx.work.impl.model.k0;
import androidx.work.impl.utils.g0;
import androidx.work.l0;
import androidx.work.m0;
import androidx.work.s;
import androidx.work.t;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import i4.n;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0082@¢\u0006\u0004\b\t\u0010\nJ(\u0010\u0011\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082@¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\bH\u0096@¢\u0006\u0004\b\u0013\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "workerParameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/s$a;", TmcStartParams.KEY_URL_SHORT, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/work/s;", "delegate", "Landroidx/work/impl/constraints/WorkConstraintsTracker;", "workConstraintsTracker", "Landroidx/work/impl/model/j0;", "workSpec", "t", "(Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "n", "g", "Landroidx/work/WorkerParameters;", "ConstraintUnsatisfiedException", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ConstraintTrackingWorker extends CoroutineWorker {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final WorkerParameters workerParameters;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "stopReason", "", "<init>", "(I)V", "getStopReason", "()I", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    static final class ConstraintUnsatisfiedException extends CancellationException {
        private final int stopReason;

        public ConstraintUnsatisfiedException(int i11) {
            this.stopReason = i11;
        }

        public final int getStopReason() {
            return this.stopReason;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context appContext, WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object t(s sVar, WorkConstraintsTracker workConstraintsTracker, j0 j0Var, Continuation continuation) throws Throwable {
        ConstraintTrackingWorker$runWorker$1 constraintTrackingWorker$runWorker$1;
        if (continuation instanceof ConstraintTrackingWorker$runWorker$1) {
            constraintTrackingWorker$runWorker$1 = (ConstraintTrackingWorker$runWorker$1) continuation;
            int i11 = constraintTrackingWorker$runWorker$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                constraintTrackingWorker$runWorker$1.label = i11 - Integer.MIN_VALUE;
            } else {
                constraintTrackingWorker$runWorker$1 = new ConstraintTrackingWorker$runWorker$1(this, continuation);
            }
        } else {
            constraintTrackingWorker$runWorker$1 = new ConstraintTrackingWorker$runWorker$1(this, continuation);
        }
        Object objE = constraintTrackingWorker$runWorker$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = constraintTrackingWorker$runWorker$1.label;
        if (i12 == 0) {
            ResultKt.b(objE);
            ConstraintTrackingWorker$runWorker$2 constraintTrackingWorker$runWorker$2 = new ConstraintTrackingWorker$runWorker$2(sVar, workConstraintsTracker, j0Var, null);
            constraintTrackingWorker$runWorker$1.label = 1;
            objE = o0.e(constraintTrackingWorker$runWorker$2, constraintTrackingWorker$runWorker$1);
            if (objE == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objE);
        }
        Intrinsics.g(objE, "coroutineScope(...)");
        return objE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:47:0x012e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0134  */
    /* JADX WARN: Code duplicated, block: B:50:0x0137  */
    /* JADX WARN: Code duplicated, block: B:52:0x013d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0142  */
    /* JADX WARN: Code duplicated, block: B:55:0x0146  */
    /* JADX WARN: Code duplicated, block: B:59:0x0154  */
    /* JADX WARN: Code duplicated, block: B:61:0x015c  */
    /* JADX WARN: Code duplicated, block: B:62:0x015d  */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object u(Continuation continuation) throws Throwable {
        ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1 constraintTrackingWorker$setupAndRunConstraintTrackingWork$1;
        s sVar;
        int stopReason;
        if (continuation instanceof ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1) {
            constraintTrackingWorker$setupAndRunConstraintTrackingWork$1 = (ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1) continuation;
            int i11 = constraintTrackingWorker$setupAndRunConstraintTrackingWork$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                constraintTrackingWorker$setupAndRunConstraintTrackingWork$1.label = i11 - Integer.MIN_VALUE;
            } else {
                constraintTrackingWorker$setupAndRunConstraintTrackingWork$1 = new ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1(this, continuation);
            }
        } else {
            constraintTrackingWorker$setupAndRunConstraintTrackingWork$1 = new ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1(this, continuation);
        }
        ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1 constraintTrackingWorker$setupAndRunConstraintTrackingWork$2 = constraintTrackingWorker$setupAndRunConstraintTrackingWork$1;
        Object objG = constraintTrackingWorker$setupAndRunConstraintTrackingWork$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = constraintTrackingWorker$setupAndRunConstraintTrackingWork$2.label;
        if (i12 == 0) {
            ResultKt.b(objG);
            String strG = e().g("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
            if (strG == null || strG.length() == 0) {
                t.e().c(ConstraintTrackingWorkerKt.f16013a, "No worker to delegate to.");
                s.a aVarA = s.a.a();
                Intrinsics.g(aVarA, "failure(...)");
                return aVarA;
            }
            f1 f1VarO = f1.o(a());
            Intrinsics.g(f1VarO, "getInstance(...)");
            k0 k0VarL0 = f1VarO.t().l0();
            String string = d().toString();
            Intrinsics.g(string, "toString(...)");
            j0 j0VarJ = k0VarL0.j(string);
            if (j0VarJ == null) {
                s.a aVarA2 = s.a.a();
                Intrinsics.g(aVarA2, "failure(...)");
                return aVarA2;
            }
            n nVarS = f1VarO.s();
            Intrinsics.g(nVarS, "getTrackers(...)");
            WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(nVarS);
            if (!workConstraintsTracker.b(j0VarJ)) {
                String str = ConstraintTrackingWorkerKt.f16013a;
                t.e().a(str, "Constraints not met for delegate " + strG + ". Requesting retry.");
                s.a aVarB = s.a.b();
                Intrinsics.g(aVarB, "retry(...)");
                return aVarB;
            }
            String str2 = ConstraintTrackingWorkerKt.f16013a;
            t.e().a(str2, "Constraints met for delegate " + strG);
            try {
                m0 m0VarG = g();
                Context contextA = a();
                Intrinsics.g(contextA, "getApplicationContext(...)");
                s sVarB = m0VarG.b(contextA, strG, this.workerParameters);
                Executor executorA = this.workerParameters.e().a();
                Intrinsics.g(executorA, "getMainThreadExecutor(...)");
                try {
                    i0 i0VarB = m1.b(executorA);
                    ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5 constraintTrackingWorker$setupAndRunConstraintTrackingWork$5 = new ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5(this, sVarB, workConstraintsTracker, j0VarJ, null);
                    constraintTrackingWorker$setupAndRunConstraintTrackingWork$2.L$0 = sVarB;
                    constraintTrackingWorker$setupAndRunConstraintTrackingWork$2.label = 1;
                    objG = i.g(i0VarB, constraintTrackingWorker$setupAndRunConstraintTrackingWork$5, constraintTrackingWorker$setupAndRunConstraintTrackingWork$2);
                    if (objG == objF) {
                        return objF;
                    }
                    sVar = sVarB;
                } catch (CancellationException e11) {
                    e = e11;
                    sVar = sVarB;
                    if (h()) {
                        if (Build.VERSION.SDK_INT < 31) {
                            stopReason = -512;
                        } else if (h()) {
                            stopReason = f();
                        } else {
                            if (!(e instanceof ConstraintUnsatisfiedException)) {
                                throw new IllegalStateException("Unreachable");
                            }
                            stopReason = ((ConstraintUnsatisfiedException) e).getStopReason();
                        }
                        sVar.m(stopReason);
                    } else {
                        if (Build.VERSION.SDK_INT < 31) {
                            stopReason = -512;
                        } else if (h()) {
                            stopReason = f();
                        } else {
                            if (!(e instanceof ConstraintUnsatisfiedException)) {
                                throw new IllegalStateException("Unreachable");
                            }
                            stopReason = ((ConstraintUnsatisfiedException) e).getStopReason();
                        }
                        sVar.m(stopReason);
                    }
                    if (e instanceof ConstraintUnsatisfiedException) {
                        throw e;
                    }
                    s.a aVarB2 = s.a.b();
                    Intrinsics.e(aVarB2);
                    return aVarB2;
                }
            } catch (Throwable th2) {
                t.e().a(ConstraintTrackingWorkerKt.f16013a, "No worker to delegate to.");
                androidx.core.util.a aVarR = f1VarO.m().r();
                if (aVarR != null) {
                    g0.a(aVarR, new l0(strG, this.workerParameters, th2), ConstraintTrackingWorkerKt.f16013a);
                }
                s.a aVarA3 = s.a.a();
                Intrinsics.g(aVarA3, "failure(...)");
                return aVarA3;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sVar = (s) constraintTrackingWorker$setupAndRunConstraintTrackingWork$2.L$0;
            try {
                ResultKt.b(objG);
            } catch (CancellationException e12) {
                e = e12;
                if (h() || (e instanceof ConstraintUnsatisfiedException)) {
                    if (Build.VERSION.SDK_INT < 31) {
                        stopReason = -512;
                    } else if (h()) {
                        stopReason = f();
                    } else {
                        if (!(e instanceof ConstraintUnsatisfiedException)) {
                            throw new IllegalStateException("Unreachable");
                        }
                        stopReason = ((ConstraintUnsatisfiedException) e).getStopReason();
                    }
                    sVar.m(stopReason);
                }
                if (e instanceof ConstraintUnsatisfiedException) {
                    throw e;
                }
                s.a aVarB3 = s.a.b();
                Intrinsics.e(aVarB3);
                return aVarB3;
            }
        }
        return (s.a) objG;
    }

    @Override // androidx.work.CoroutineWorker
    public Object n(Continuation continuation) {
        Executor executorB = b();
        Intrinsics.g(executorB, "getBackgroundExecutor(...)");
        return i.g(m1.b(executorB), new ConstraintTrackingWorker$doWork$2(this, null), continuation);
    }
}
