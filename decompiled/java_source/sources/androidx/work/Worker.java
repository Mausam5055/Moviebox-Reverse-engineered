package androidx.work;

import android.content.Context;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH'¢\u0006\u0004\b\t\u0010\nJ\u0013\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u000b¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000bH\u0016¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/work/Worker;", "Landroidx/work/s;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/s$a;", TtmlNode.TAG_P, "()Landroidx/work/s$a;", "Lcom/google/common/util/concurrent/r;", "l", "()Lcom/google/common/util/concurrent/r;", "Landroidx/work/i;", "c", CampaignEx.JSON_KEY_AD_Q, "()Landroidx/work/i;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class Worker extends s {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.h(context, "context");
        Intrinsics.h(workerParams, "workerParams");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i r(Worker worker) {
        return worker.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final s.a s(Worker worker) {
        return worker.p();
    }

    @Override // androidx.work.s
    public com.google.common.util.concurrent.r c() {
        Executor executorB = b();
        Intrinsics.g(executorB, "getBackgroundExecutor(...)");
        return r0.e(executorB, new Function0() { // from class: androidx.work.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Worker.r(this.f16023a);
            }
        });
    }

    @Override // androidx.work.s
    public final com.google.common.util.concurrent.r l() {
        Executor executorB = b();
        Intrinsics.g(executorB, "getBackgroundExecutor(...)");
        return r0.e(executorB, new Function0() { // from class: androidx.work.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Worker.s(this.f16022a);
            }
        });
    }

    public abstract s.a p();

    public i q() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
    }
}
