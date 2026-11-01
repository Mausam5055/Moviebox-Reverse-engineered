package kotlinx.coroutines;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class EventLoopImplBase extends f1 implements t0 {
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;
    private static final /* synthetic */ AtomicReferenceFieldUpdater _queue$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _delayed$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater _isCompleted$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted$volatile");

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "", "nanoTime", "Lkotlinx/coroutines/n;", "", "cont", "<init>", "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/n;)V", "run", "()V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/n;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    private final class DelayedResumeTask extends DelayedTask {
        private final n cont;

        public DelayedResumeTask(long j11, n nVar) {
            super(j11);
            this.cont = nVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.cont.resumeUndispatched(EventLoopImplBase.this, Unit.f67061a);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public String toString() {
            return super.toString() + this.cont;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0006j\u0002`\u0005¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u00060\u0006j\u0002`\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "block", "Lkotlinx/coroutines/Runnable;", "Ljava/lang/Runnable;", "<init>", "(JLjava/lang/Runnable;)V", "Ljava/lang/Runnable;", "run", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class DelayedRunnableTask extends DelayedTask {
        private final Runnable block;

        public DelayedRunnableTask(long j11, Runnable runnable) {
            super(j11);
            this.block = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.block.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public String toString() {
            return super.toString() + this.block;
        }
    }

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u00052\u00060\u0006j\u0002`\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010 R\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R0\u0010/\u001a\b\u0012\u0002\b\u0003\u0018\u00010)2\f\u0010*\u001a\b\u0012\u0002\b\u0003\u0018\u00010)8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00060"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/a1;", "Lkotlinx/coroutines/internal/l0;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", "nanoTime", "<init>", "(J)V", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "compareTo", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "now", "", "timeToExecute", "(J)Z", "Lkotlinx/coroutines/EventLoopImplBase$a;", "delayed", "Lkotlinx/coroutines/EventLoopImplBase;", "eventLoop", "scheduleTask", "(JLkotlinx/coroutines/EventLoopImplBase$a;Lkotlinx/coroutines/EventLoopImplBase;)I", "", "dispose", "()V", "", "toString", "()Ljava/lang/String;", "J", "_heap", "Ljava/lang/Object;", "index", "I", "getIndex", "()I", "setIndex", "(I)V", "Lkotlinx/coroutines/internal/k0;", AppMeasurementSdk.ConditionalUserProperty.VALUE, "getHeap", "()Lkotlinx/coroutines/internal/k0;", "setHeap", "(Lkotlinx/coroutines/internal/k0;)V", "heap", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, a1, kotlinx.coroutines.internal.l0 {
        private volatile Object _heap;
        private int index = -1;

        @JvmField
        public long nanoTime;

        public DelayedTask(long j11) {
            this.nanoTime = j11;
        }

        @Override // java.lang.Comparable
        public int compareTo(DelayedTask other) {
            long j11 = this.nanoTime - other.nanoTime;
            if (j11 > 0) {
                return 1;
            }
            return j11 < 0 ? -1 : 0;
        }

        @Override // kotlinx.coroutines.a1
        public final void dispose() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    if (obj == h1.f67834a) {
                        return;
                    }
                    a aVar = obj instanceof a ? (a) obj : null;
                    if (aVar != null) {
                        aVar.h(this);
                    }
                    this._heap = h1.f67834a;
                    Unit unit = Unit.f67061a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.l0
        public kotlinx.coroutines.internal.k0 getHeap() {
            Object obj = this._heap;
            if (obj instanceof kotlinx.coroutines.internal.k0) {
                return (kotlinx.coroutines.internal.k0) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.l0
        public int getIndex() {
            return this.index;
        }

        public final int scheduleTask(long now, a delayed, EventLoopImplBase eventLoop) {
            synchronized (this) {
                if (this._heap == h1.f67834a) {
                    return 2;
                }
                synchronized (delayed) {
                    try {
                        DelayedTask delayedTask = (DelayedTask) delayed.b();
                        if (eventLoop.isCompleted()) {
                            return 1;
                        }
                        if (delayedTask == null) {
                            delayed.f67614c = now;
                        } else {
                            long j11 = delayedTask.nanoTime;
                            if (j11 - now < 0) {
                                now = j11;
                            }
                            if (now - delayed.f67614c > 0) {
                                delayed.f67614c = now;
                            }
                        }
                        long j12 = this.nanoTime;
                        long j13 = delayed.f67614c;
                        if (j12 - j13 < 0) {
                            this.nanoTime = j13;
                        }
                        delayed.a(this);
                        return 0;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // kotlinx.coroutines.internal.l0
        public void setHeap(kotlinx.coroutines.internal.k0 k0Var) {
            if (this._heap == h1.f67834a) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this._heap = k0Var;
        }

        @Override // kotlinx.coroutines.internal.l0
        public void setIndex(int i11) {
            this.index = i11;
        }

        public final boolean timeToExecute(long now) {
            return now - this.nanoTime >= 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + ']';
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a extends kotlinx.coroutines.internal.k0 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f67614c;

        public a(long j11) {
            this.f67614c = j11;
        }
    }

    private final int T(long j11, DelayedTask delayedTask) {
        if (isCompleted()) {
            return 1;
        }
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar == null) {
            androidx.concurrent.futures.a.a(_delayed$volatile$FU, this, null, new a(j11));
            Object obj = _delayed$volatile$FU.get(this);
            Intrinsics.e(obj);
            aVar = (a) obj;
        }
        return delayedTask.scheduleTask(j11, aVar, this);
    }

    private final void U(boolean z10) {
        _isCompleted$volatile$FU.set(this, z10 ? 1 : 0);
    }

    private final boolean V(DelayedTask delayedTask) {
        a aVar = (a) _delayed$volatile$FU.get(this);
        return (aVar != null ? (DelayedTask) aVar.f() : null) == delayedTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCompleted() {
        return _isCompleted$volatile$FU.get(this) != 0;
    }

    private final void p() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(_queue$volatile$FU, this, null, h1.f67835b)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.m) {
                ((kotlinx.coroutines.internal.m) obj).d();
                return;
            } else {
                if (obj == h1.f67835b) {
                    return;
                }
                kotlinx.coroutines.internal.m mVar = new kotlinx.coroutines.internal.m(8, true);
                Intrinsics.f(obj, "null cannot be cast to non-null type java.lang.Runnable");
                mVar.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(_queue$volatile$FU, this, obj, mVar)) {
                    return;
                }
            }
        }
    }

    private final Runnable q() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.m) {
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                kotlinx.coroutines.internal.m mVar = (kotlinx.coroutines.internal.m) obj;
                Object objM = mVar.m();
                if (objM != kotlinx.coroutines.internal.m.f67870h) {
                    return (Runnable) objM;
                }
                androidx.concurrent.futures.a.a(_queue$volatile$FU, this, obj, mVar.l());
            } else {
                if (obj == h1.f67835b) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(_queue$volatile$FU, this, obj, null)) {
                    Intrinsics.f(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    return (Runnable) obj;
                }
            }
        }
    }

    private final void s() {
        kotlinx.coroutines.internal.l0 l0VarI;
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar == null || aVar.e()) {
            return;
        }
        b bVar = c.f67643a;
        long jA = bVar != null ? bVar.a() : System.nanoTime();
        do {
            synchronized (aVar) {
                try {
                    kotlinx.coroutines.internal.l0 l0VarB = aVar.b();
                    l0VarI = null;
                    if (l0VarB != null) {
                        DelayedTask delayedTask = (DelayedTask) l0VarB;
                        l0VarI = delayedTask.timeToExecute(jA) ? t(delayedTask) : false ? aVar.i(0) : null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } while (((DelayedTask) l0VarI) != null);
    }

    private final boolean t(Runnable runnable) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(_queue$volatile$FU, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.m) {
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                kotlinx.coroutines.internal.m mVar = (kotlinx.coroutines.internal.m) obj;
                int iA = mVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    androidx.concurrent.futures.a.a(_queue$volatile$FU, this, obj, mVar.l());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == h1.f67835b) {
                    return false;
                }
                kotlinx.coroutines.internal.m mVar2 = new kotlinx.coroutines.internal.m(8, true);
                Intrinsics.f(obj, "null cannot be cast to non-null type java.lang.Runnable");
                mVar2.a((Runnable) obj);
                mVar2.a(runnable);
                if (androidx.concurrent.futures.a.a(_queue$volatile$FU, this, obj, mVar2)) {
                    return true;
                }
            }
        }
    }

    private final void x() {
        DelayedTask delayedTask;
        b bVar = c.f67643a;
        long jA = bVar != null ? bVar.a() : System.nanoTime();
        while (true) {
            a aVar = (a) _delayed$volatile$FU.get(this);
            if (aVar == null || (delayedTask = (DelayedTask) aVar.j()) == null) {
                return;
            } else {
                reschedule(jA, delayedTask);
            }
        }
    }

    @Deprecated
    public Object delay(long j11, Continuation<? super Unit> continuation) {
        return t0.a.a(this, j11, continuation);
    }

    @Override // kotlinx.coroutines.i0
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        enqueue(runnable);
    }

    public void enqueue(Runnable runnable) {
        s();
        if (t(runnable)) {
            unpark();
        } else {
            DefaultExecutor.INSTANCE.enqueue(runnable);
        }
    }

    @Override // kotlinx.coroutines.e1
    protected long getNextTime() {
        DelayedTask delayedTask;
        if (super.getNextTime() == 0) {
            return 0L;
        }
        Object obj = _queue$volatile$FU.get(this);
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.m)) {
                return obj == h1.f67835b ? Long.MAX_VALUE : 0L;
            }
            if (!((kotlinx.coroutines.internal.m) obj).j()) {
                return 0L;
            }
        }
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar == null || (delayedTask = (DelayedTask) aVar.f()) == null) {
            return Long.MAX_VALUE;
        }
        long j11 = delayedTask.nanoTime;
        b bVar = c.f67643a;
        return RangesKt.g(j11 - (bVar != null ? bVar.a() : System.nanoTime()), 0L);
    }

    public a1 invokeOnTimeout(long j11, Runnable runnable, CoroutineContext coroutineContext) {
        return t0.a.b(this, j11, runnable, coroutineContext);
    }

    protected boolean isEmpty() {
        if (!isUnconfinedQueueEmpty()) {
            return false;
        }
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar != null && !aVar.e()) {
            return false;
        }
        Object obj = _queue$volatile$FU.get(this);
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.m) {
                return ((kotlinx.coroutines.internal.m) obj).j();
            }
            if (obj != h1.f67835b) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.e1
    public long processNextEvent() {
        if (processUnconfinedEvent()) {
            return 0L;
        }
        s();
        Runnable runnableQ = q();
        if (runnableQ == null) {
            return getNextTime();
        }
        runnableQ.run();
        return 0L;
    }

    protected final void resetAll() {
        _queue$volatile$FU.set(this, null);
        _delayed$volatile$FU.set(this, null);
    }

    public final void schedule(long j11, DelayedTask delayedTask) {
        int iT = T(j11, delayedTask);
        if (iT == 0) {
            if (V(delayedTask)) {
                unpark();
            }
        } else if (iT == 1) {
            reschedule(j11, delayedTask);
        } else if (iT != 2) {
            throw new IllegalStateException("unexpected result");
        }
    }

    protected final a1 scheduleInvokeOnTimeout(long j11, Runnable runnable) {
        long jC = h1.c(j11);
        if (jC >= 4611686018427387903L) {
            return d2.f67702a;
        }
        b bVar = c.f67643a;
        long jA = bVar != null ? bVar.a() : System.nanoTime();
        DelayedRunnableTask delayedRunnableTask = new DelayedRunnableTask(jC + jA, runnable);
        schedule(jA, delayedRunnableTask);
        return delayedRunnableTask;
    }

    @Override // kotlinx.coroutines.t0
    public void scheduleResumeAfterDelay(long j11, n nVar) {
        long jC = h1.c(j11);
        if (jC < 4611686018427387903L) {
            b bVar = c.f67643a;
            long jA = bVar != null ? bVar.a() : System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(jC + jA, nVar);
            schedule(jA, delayedResumeTask);
            q.a(nVar, delayedResumeTask);
        }
    }

    @Override // kotlinx.coroutines.e1
    public void shutdown() {
        o2.f67904a.c();
        U(true);
        p();
        while (processNextEvent() <= 0) {
        }
        x();
    }
}
