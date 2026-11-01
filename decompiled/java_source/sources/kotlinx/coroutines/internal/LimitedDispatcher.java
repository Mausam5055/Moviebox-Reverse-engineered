package kotlinx.coroutines.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.t0;

/* JADX INFO: loaded from: classes.dex */
public final class LimitedDispatcher extends kotlinx.coroutines.i0 implements t0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67837g = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ t0 f67838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.coroutines.i0 f67839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f67840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f67841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l f67842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f67843f;
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0002j\u0002`\u0001B\u0013\u0012\n\u0010\u0003\u001a\u00060\u0002j\u0002`\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00060\u0002j\u0002`\u0001X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;", "Lkotlinx/coroutines/Runnable;", "Ljava/lang/Runnable;", "currentTask", "<init>", "(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V", "Ljava/lang/Runnable;", "run", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private final class Worker implements Runnable {
        private Runnable currentTask;

        public Worker(Runnable runnable) {
            this.currentTask = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i11 = 0;
            while (true) {
                try {
                    this.currentTask.run();
                } catch (Throwable th2) {
                    kotlinx.coroutines.k0.a(EmptyCoroutineContext.INSTANCE, th2);
                }
                Runnable runnableS = LimitedDispatcher.this.s();
                if (runnableS == null) {
                    return;
                }
                this.currentTask = runnableS;
                i11++;
                if (i11 >= 16 && LimitedDispatcher.this.f67839b.isDispatchNeeded(LimitedDispatcher.this)) {
                    LimitedDispatcher.this.f67839b.dispatch(LimitedDispatcher.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(kotlinx.coroutines.i0 i0Var, int i11, String str) {
        t0 t0Var = i0Var instanceof t0 ? (t0) i0Var : null;
        this.f67838a = t0Var == null ? q0.a() : t0Var;
        this.f67839b = i0Var;
        this.f67840c = i11;
        this.f67841d = str;
        this.f67842e = new l(false);
        this.f67843f = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable s() {
        while (true) {
            Runnable runnable = (Runnable) this.f67842e.e();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f67843f) {
                f67837g.decrementAndGet(this);
                if (this.f67842e.c() == 0) {
                    return null;
                }
                f67837g.incrementAndGet(this);
            }
        }
    }

    private final boolean t() {
        synchronized (this.f67843f) {
            if (f67837g.get(this) >= this.f67840c) {
                return false;
            }
            f67837g.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.i0
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableS;
        this.f67842e.a(runnable);
        if (f67837g.get(this) >= this.f67840c || !t() || (runnableS = s()) == null) {
            return;
        }
        this.f67839b.dispatch(this, new Worker(runnableS));
    }

    @Override // kotlinx.coroutines.i0
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableS;
        this.f67842e.a(runnable);
        if (f67837g.get(this) >= this.f67840c || !t() || (runnableS = s()) == null) {
            return;
        }
        this.f67839b.dispatchYield(this, new Worker(runnableS));
    }

    @Override // kotlinx.coroutines.t0
    public a1 invokeOnTimeout(long j11, Runnable runnable, CoroutineContext coroutineContext) {
        return this.f67838a.invokeOnTimeout(j11, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.i0
    public kotlinx.coroutines.i0 limitedParallelism(int i11, String str) {
        i.a(i11);
        return i11 >= this.f67840c ? i.b(this, str) : super.limitedParallelism(i11, str);
    }

    @Override // kotlinx.coroutines.t0
    public void scheduleResumeAfterDelay(long j11, kotlinx.coroutines.n nVar) {
        this.f67838a.scheduleResumeAfterDelay(j11, nVar);
    }

    @Override // kotlinx.coroutines.i0
    public String toString() {
        String str = this.f67841d;
        if (str != null) {
            return str;
        }
        return this.f67839b + ".limitedParallelism(" + this.f67840c + ')';
    }
}
