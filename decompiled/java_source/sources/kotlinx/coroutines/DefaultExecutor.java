package kotlinx.coroutines;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u000e\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u001b\u0010\u0010\u001a\u00020\u00062\n\u0010\u000f\u001a\u00060\u0002j\u0002`\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J+\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u00122\n\u0010\u001a\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0000¢\u0006\u0004\b!\u0010\u0005J\u0015\u0010$\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020&8\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010-\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010,R\u001e\u0010.\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b.\u0010/\u0012\u0004\b0\u0010\u0005R\u0014\u00102\u001a\u0002018\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00104\u001a\u0002018\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u00103R\u0014\u00105\u001a\u0002018\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082T¢\u0006\u0006\n\u0004\b6\u00103R\u0014\u00107\u001a\u0002018\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u00103R\u0016\u00108\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00103R\u0014\u00109\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\rR\u0014\u0010:\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\rR\u0014\u0010<\u001a\u00020\b8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\nR\u0014\u0010>\u001a\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b=\u0010\r¨\u0006?"}, d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "<init>", "()V", "", "shutdownError", "Ljava/lang/Thread;", "createThreadSync", "()Ljava/lang/Thread;", "", "notifyStartup", "()Z", "acknowledgeShutdownIfNeeded", "task", "enqueue", "(Ljava/lang/Runnable;)V", "", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "reschedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "shutdown", "timeMillis", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/a1;", "invokeOnTimeout", "(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;", "run", "ensureStarted$kotlinx_coroutines_core", "ensureStarted", "timeout", "shutdownForTests", "(J)V", "", "toString", "()Ljava/lang/String;", "THREAD_NAME", "Ljava/lang/String;", "DEFAULT_KEEP_ALIVE_MS", "J", "KEEP_ALIVE_NANOS", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "", "FRESH", "I", "ACTIVE", "SHUTDOWN_REQ", "SHUTDOWN_ACK", "SHUTDOWN", "debugStatus", "isShutDown", "isShutdownRequested", "getThread", "thread", "isThreadPresent$kotlinx_coroutines_core", "isThreadPresent", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DefaultExecutor extends EventLoopImplBase implements Runnable {
    private static final int ACTIVE = 1;
    private static final long DEFAULT_KEEP_ALIVE_MS = 1000;
    private static final int FRESH = 0;
    public static final DefaultExecutor INSTANCE;
    private static final long KEEP_ALIVE_NANOS;
    private static final int SHUTDOWN = 4;
    private static final int SHUTDOWN_ACK = 3;
    private static final int SHUTDOWN_REQ = 2;
    public static final String THREAD_NAME = "kotlinx.coroutines.DefaultExecutor";
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    static {
        Long l11;
        DefaultExecutor defaultExecutor = new DefaultExecutor();
        INSTANCE = defaultExecutor;
        e1.incrementUseCount$default(defaultExecutor, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l11 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l11 = 1000L;
        }
        KEEP_ALIVE_NANOS = timeUnit.toNanos(l11.longValue());
    }

    private DefaultExecutor() {
    }

    private final synchronized void acknowledgeShutdownIfNeeded() {
        if (isShutdownRequested()) {
            debugStatus = 3;
            resetAll();
            Intrinsics.f(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    private final synchronized Thread createThreadSync() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, THREAD_NAME);
            _thread = thread;
            thread.setContextClassLoader(INSTANCE.getClass().getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private static /* synthetic */ void get_thread$annotations() {
    }

    private final boolean isShutDown() {
        return debugStatus == 4;
    }

    private final boolean isShutdownRequested() {
        int i11 = debugStatus;
        return i11 == 2 || i11 == 3;
    }

    private final synchronized boolean notifyStartup() {
        if (isShutdownRequested()) {
            return false;
        }
        debugStatus = 1;
        Intrinsics.f(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    private final void shutdownError() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.EventLoopImplBase
    public void enqueue(Runnable task) {
        if (isShutDown()) {
            shutdownError();
        }
        super.enqueue(task);
    }

    public final synchronized void ensureStarted$kotlinx_coroutines_core() {
        debugStatus = 0;
        createThreadSync();
        while (debugStatus == 0) {
            Intrinsics.f(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        }
    }

    @Override // kotlinx.coroutines.f1
    protected Thread getThread() {
        Thread thread = _thread;
        return thread == null ? createThreadSync() : thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.t0
    public a1 invokeOnTimeout(long timeMillis, Runnable block, CoroutineContext context) {
        return scheduleInvokeOnTimeout(timeMillis, block);
    }

    public final boolean isThreadPresent$kotlinx_coroutines_core() {
        return _thread != null;
    }

    @Override // kotlinx.coroutines.f1
    protected void reschedule(long now, EventLoopImplBase.DelayedTask delayedTask) {
        shutdownError();
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zIsEmpty;
        o2.f67904a.d(this);
        b bVar = c.f67643a;
        if (bVar != null) {
            bVar.c();
        }
        try {
            if (!notifyStartup()) {
                if (zIsEmpty) {
                    return;
                } else {
                    return;
                }
            }
            long j11 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jProcessNextEvent = processNextEvent();
                if (jProcessNextEvent == Long.MAX_VALUE) {
                    b bVar2 = c.f67643a;
                    long jA = bVar2 != null ? bVar2.a() : System.nanoTime();
                    if (j11 == Long.MAX_VALUE) {
                        j11 = KEEP_ALIVE_NANOS + jA;
                    }
                    long j12 = j11 - jA;
                    if (j12 <= 0) {
                        if (zIsEmpty) {
                            return;
                        } else {
                            return;
                        }
                    }
                    jProcessNextEvent = RangesKt.j(jProcessNextEvent, j12);
                } else {
                    j11 = Long.MAX_VALUE;
                }
                if (jProcessNextEvent > 0) {
                    if (isShutdownRequested()) {
                        if (zIsEmpty) {
                            return;
                        } else {
                            return;
                        }
                    }
                    b bVar3 = c.f67643a;
                    if (bVar3 != null) {
                        bVar3.b(this, jProcessNextEvent);
                    } else {
                        LockSupport.parkNanos(this, jProcessNextEvent);
                    }
                }
            }
        } finally {
            _thread = null;
            acknowledgeShutdownIfNeeded();
            b bVar4 = c.f67643a;
            if (bVar4 != null) {
                bVar4.g();
            }
            if (!isEmpty()) {
                getThread();
            }
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.e1
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    public final synchronized void shutdownForTests(long timeout) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() + timeout;
            if (!isShutdownRequested()) {
                debugStatus = 2;
            }
            while (debugStatus != 3 && _thread != null) {
                Thread thread = _thread;
                if (thread != null) {
                    b bVar = c.f67643a;
                    if (bVar != null) {
                        bVar.f(thread);
                    } else {
                        LockSupport.unpark(thread);
                    }
                }
                if (jCurrentTimeMillis - System.currentTimeMillis() <= 0) {
                    break;
                }
                Intrinsics.f(this, "null cannot be cast to non-null type java.lang.Object");
                wait(timeout);
            }
            debugStatus = 0;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // kotlinx.coroutines.i0
    public String toString() {
        return "DefaultExecutor";
    }
}
