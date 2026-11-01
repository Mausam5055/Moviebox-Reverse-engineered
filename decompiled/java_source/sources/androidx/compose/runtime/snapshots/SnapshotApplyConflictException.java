package androidx.compose.runtime.snapshots;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotApplyConflictException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Landroidx/compose/runtime/snapshots/j;", TmcStartParams.KEY_ENABLE_SNAPSHOT, "<init>", "(Landroidx/compose/runtime/snapshots/j;)V", "Landroidx/compose/runtime/snapshots/j;", "getSnapshot", "()Landroidx/compose/runtime/snapshots/j;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SnapshotApplyConflictException extends Exception {
    public static final int $stable = 8;
    private final j snapshot;

    public SnapshotApplyConflictException(j jVar) {
        this.snapshot = jVar;
    }

    public final j getSnapshot() {
        return this.snapshot;
    }
}
