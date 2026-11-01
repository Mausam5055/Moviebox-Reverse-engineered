package androidx.work.impl.workers;

import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.j0;
import androidx.work.t;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.b;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ConstraintTrackingWorkerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f16013a;

    static {
        String strI = t.i("ConstraintTrkngWrkr");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f16013a = strI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object c(WorkConstraintsTracker workConstraintsTracker, j0 j0Var, Continuation continuation) throws Throwable {
        ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 constraintTrackingWorkerKt$awaitConstraintsNotMet$1;
        if (continuation instanceof ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1) {
            constraintTrackingWorkerKt$awaitConstraintsNotMet$1 = (ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1) continuation;
            int i11 = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label = i11 - Integer.MIN_VALUE;
            } else {
                constraintTrackingWorkerKt$awaitConstraintsNotMet$1 = new ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1(continuation);
            }
        } else {
            constraintTrackingWorkerKt$awaitConstraintsNotMet$1 = new ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1(continuation);
        }
        Object objP = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label;
        if (i12 == 0) {
            ResultKt.b(objP);
            final b bVarA = d.A(workConstraintsTracker.d(j0Var), new ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2(j0Var, null));
            b bVar = new b() { // from class: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1

                /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2, reason: invalid class name */
                public static final class AnonymousClass2 implements c {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ c f16015a;

                    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                    @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2", f = "ConstraintTrackingWorker.kt", l = {50}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(c cVar) {
                        this.f16015a = cVar;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.c
                    public final Object emit(Object obj, Continuation continuation) throws Throwable {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i11 = anonymousClass1.label;
                            if ((i11 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i11 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.result;
                        Object objF = IntrinsicsKt.f();
                        int i12 = anonymousClass1.label;
                        if (i12 == 0) {
                            ResultKt.b(obj2);
                            c cVar = this.f16015a;
                            if (obj instanceof androidx.work.impl.constraints.b.C0134b) {
                                anonymousClass1.label = 1;
                                if (cVar.emit(obj, anonymousClass1) == objF) {
                                    return objF;
                                }
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

                @Override // kotlinx.coroutines.flow.b
                public Object a(c cVar, Continuation continuation2) {
                    Object objA = bVarA.a(new AnonymousClass2(cVar), continuation2);
                    return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
                }
            };
            constraintTrackingWorkerKt$awaitConstraintsNotMet$1.label = 1;
            objP = d.p(bVar, constraintTrackingWorkerKt$awaitConstraintsNotMet$1);
            if (objP == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objP);
        }
        return Boxing.d(((androidx.work.impl.constraints.b.C0134b) objP).a());
    }
}
