package androidx.work;

import android.content.Context;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\tH¦@¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u0096@¢\u0006\u0004\b\u000f\u0010\rJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\b¢\u0006\u0004\b\u0010\u0010\u000bJ\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R \u0010\u001c\u001a\u00020\u00168\u0016X\u0097\u0004¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u001b\u0010\u0013\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/s;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Lcom/google/common/util/concurrent/r;", "Landroidx/work/s$a;", "l", "()Lcom/google/common/util/concurrent/r;", "n", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/work/i;", TtmlNode.TAG_P, "c", "", "j", "()V", "e", "Landroidx/work/WorkerParameters;", "Lkotlinx/coroutines/i0;", "f", "Lkotlinx/coroutines/i0;", "o", "()Lkotlinx/coroutines/i0;", "getCoroutineContext$annotations", "coroutineContext", "a", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class CoroutineWorker extends s {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final WorkerParameters params;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final kotlinx.coroutines.i0 coroutineContext;

    /* JADX INFO: loaded from: classes2.dex */
    private static final class a extends kotlinx.coroutines.i0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15382a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final kotlinx.coroutines.i0 f15383b = y0.a();

        private a() {
        }

        @Override // kotlinx.coroutines.i0
        public void dispatch(CoroutineContext context, Runnable block) {
            Intrinsics.h(context, "context");
            Intrinsics.h(block, "block");
            f15383b.dispatch(context, block);
        }

        @Override // kotlinx.coroutines.i0
        public boolean isDispatchNeeded(CoroutineContext context) {
            Intrinsics.h(context, "context");
            return f15383b.isDispatchNeeded(context);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context appContext, WorkerParameters params) {
        super(appContext, params);
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(params, "params");
        this.params = params;
        this.coroutineContext = a.f15382a;
    }

    static /* synthetic */ Object q(CoroutineWorker coroutineWorker, Continuation continuation) {
        throw new IllegalStateException("Not implemented");
    }

    @Override // androidx.work.s
    public final com.google.common.util.concurrent.r c() {
        return ListenableFutureKt.k(getCoroutineContext().plus(JobKt__JobKt.b(null, 1, null)), null, new CoroutineWorker$getForegroundInfoAsync$1(this, null), 2, null);
    }

    @Override // androidx.work.s
    public final void j() {
        super.j();
    }

    @Override // androidx.work.s
    public final com.google.common.util.concurrent.r l() {
        CoroutineContext coroutineContext = !Intrinsics.c(getCoroutineContext(), a.f15382a) ? getCoroutineContext() : this.params.f();
        Intrinsics.e(coroutineContext);
        return ListenableFutureKt.k(coroutineContext.plus(JobKt__JobKt.b(null, 1, null)), null, new CoroutineWorker$startWork$1(this, null), 2, null);
    }

    public abstract Object n(Continuation continuation);

    /* JADX INFO: renamed from: o, reason: from getter */
    public kotlinx.coroutines.i0 getCoroutineContext() {
        return this.coroutineContext;
    }

    public Object p(Continuation continuation) {
        return q(this, continuation);
    }
}
