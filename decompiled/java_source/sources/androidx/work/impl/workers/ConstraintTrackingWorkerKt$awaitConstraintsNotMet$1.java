package androidx.work.impl.workers;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorkerKt", f = "ConstraintTrackingWorker.kt", l = {160}, m = "awaitConstraintsNotMet")
final class ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1(Continuation<? super ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ConstraintTrackingWorkerKt.c(null, null, this);
    }
}
