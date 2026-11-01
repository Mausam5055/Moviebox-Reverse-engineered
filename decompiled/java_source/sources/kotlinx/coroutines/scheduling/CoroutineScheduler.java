package kotlinx.coroutines.scheduling;

import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.z;
import kotlinx.coroutines.p0;

/* JADX INFO: loaded from: classes.dex */
public final class CoroutineScheduler implements Executor, Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f67918h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67919i = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f67920j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67921k = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final z f67922l = new z("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f67923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f67924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f67925c;
    private volatile /* synthetic */ long controlState$volatile;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f67926d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f67927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c f67928f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final u f67929g;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\tJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u0016J\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u001d\u001a\u00060\u0004j\u0002`\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010\fJ\r\u0010&\u001a\u00020%¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u0007¢\u0006\u0004\b(\u0010\tJ\u0015\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010,\u001a\u00020\u0007¢\u0006\u0004\b-\u0010\u001aR*\u0010.\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001c\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R$\u0010?\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010=R\u0016\u0010F\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010/R\u0016\u0010,\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010GR\u0012\u0010K\u001a\u00020H8Æ\u0002¢\u0006\u0006\u001a\u0004\bI\u0010JR\b\u0010M\u001a\u00020L8\u0006¨\u0006N"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "", "index", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "", "tryAcquireCpuPermit", "()Z", "", "runWorker", "()V", "tryPark", "inStack", "Lkotlinx/coroutines/scheduling/Task;", "task", "executeTask", "(Lkotlinx/coroutines/scheduling/Task;)V", PlaceTypes.PARK, "tryTerminateWorker", "findBlockingTask", "()Lkotlinx/coroutines/scheduling/Task;", "findCpuTask", "scanLocalQueue", "findAnyTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "pollGlobalQueues", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "trySteal", "(I)Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "run", "", "runSingleTask", "()J", "isIo", "upperBound", "nextInt", "(I)I", "mayHaveLocalTasks", "findTask", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "Lkotlinx/coroutines/scheduling/i;", "localQueue", "Lkotlinx/coroutines/scheduling/i;", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTask", "Lkotlin/jvm/internal/Ref$ObjectRef;", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "terminationDeadline", "J", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "minDelayUntilStealableTaskNs", "rngState", "Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public final class Worker extends Thread {
        private static final /* synthetic */ AtomicIntegerFieldUpdater workerCtl$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;

        @JvmField
        public final i localQueue;

        @JvmField
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        private int rngState;

        @JvmField
        public WorkerState state;
        private final Ref.ObjectRef<Task> stolenTask;
        private long terminationDeadline;
        private volatile /* synthetic */ int workerCtl$volatile;

        private Worker() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.localQueue = new i();
            this.stolenTask = new Ref.ObjectRef<>();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.f67922l;
            int iNanoTime = (int) System.nanoTime();
            this.rngState = iNanoTime == 0 ? 42 : iNanoTime;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i11) {
            this();
            setIndexInArray(i11);
        }

        private final void executeTask(Task task) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                this.state = WorkerState.BLOCKING;
            }
            if (!task.taskContext) {
                CoroutineScheduler.this.w(task);
                return;
            }
            if (tryReleaseCpu(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.U();
            }
            CoroutineScheduler.this.w(task);
            CoroutineScheduler.p().addAndGet(CoroutineScheduler.this, -2097152L);
            if (this.state != WorkerState.TERMINATED) {
                this.state = WorkerState.DORMANT;
            }
        }

        private final Task findAnyTask(boolean scanLocalQueue) {
            Task taskPollGlobalQueues;
            Task taskPollGlobalQueues2;
            if (scanLocalQueue) {
                boolean z10 = nextInt(CoroutineScheduler.this.f67923a * 2) == 0;
                if (z10 && (taskPollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues2;
                }
                Task taskK = this.localQueue.k();
                if (taskK != null) {
                    return taskK;
                }
                if (!z10 && (taskPollGlobalQueues = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues;
                }
            } else {
                Task taskPollGlobalQueues3 = pollGlobalQueues();
                if (taskPollGlobalQueues3 != null) {
                    return taskPollGlobalQueues3;
                }
            }
            return trySteal(3);
        }

        private final Task findBlockingTask() {
            Task taskL = this.localQueue.l();
            if (taskL != null) {
                return taskL;
            }
            Task task = (Task) CoroutineScheduler.this.f67928f.e();
            return task == null ? trySteal(1) : task;
        }

        private final Task findCpuTask() {
            Task taskN = this.localQueue.n();
            if (taskN != null) {
                return taskN;
            }
            Task task = (Task) CoroutineScheduler.this.f67928f.e();
            return task == null ? trySteal(2) : task;
        }

        private final /* synthetic */ int getWorkerCtl$volatile() {
            return this.workerCtl$volatile;
        }

        private final boolean inStack() {
            return this.nextParkedWorker != CoroutineScheduler.f67922l;
        }

        private final void park() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.f67925c;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f67925c);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                tryTerminateWorker();
            }
        }

        private final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task task = (Task) CoroutineScheduler.this.f67927e.e();
                return task != null ? task : (Task) CoroutineScheduler.this.f67928f.e();
            }
            Task task2 = (Task) CoroutineScheduler.this.f67928f.e();
            return task2 != null ? task2 : (Task) CoroutineScheduler.this.f67927e.e();
        }

        private final void runWorker() {
            loop0: while (true) {
                boolean z10 = false;
                while (true) {
                    if (CoroutineScheduler.this.isTerminated() || this.state == WorkerState.TERMINATED) {
                        break loop0;
                    }
                    Task taskFindTask = findTask(this.mayHaveLocalTasks);
                    if (taskFindTask != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        executeTask(taskFindTask);
                        break;
                    }
                    this.mayHaveLocalTasks = false;
                    if (this.minDelayUntilStealableTaskNs == 0) {
                        tryPark();
                    } else {
                        if (z10) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                            break;
                        }
                        z10 = true;
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        private final /* synthetic */ void setWorkerCtl$volatile(int i11) {
            this.workerCtl$volatile = i11;
        }

        private final boolean tryAcquireCpuPermit() {
            long j11;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdaterP = CoroutineScheduler.p();
            do {
                j11 = atomicLongFieldUpdaterP.get(coroutineScheduler);
                if (((int) ((9223367638808264704L & j11) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.p().compareAndSet(coroutineScheduler, j11, j11 - 4398046511104L));
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        private final void tryPark() {
            if (!inStack()) {
                CoroutineScheduler.this.u(this);
                return;
            }
            workerCtl$volatile$FU.set(this, -1);
            while (inStack() && workerCtl$volatile$FU.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                tryReleaseCpu(WorkerState.PARKING);
                Thread.interrupted();
                park();
            }
        }

        private final Task trySteal(int stealingMode) {
            int i11 = (int) (CoroutineScheduler.p().get(CoroutineScheduler.this) & 2097151);
            if (i11 < 2) {
                return null;
            }
            int iNextInt = nextInt(i11);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                iNextInt++;
                if (iNextInt > i11) {
                    iNextInt = 1;
                }
                Worker worker = (Worker) coroutineScheduler.f67929g.b(iNextInt);
                if (worker != null && worker != this) {
                    long jS = worker.localQueue.s(stealingMode, this.stolenTask);
                    if (jS == -1) {
                        Ref.ObjectRef<Task> objectRef = this.stolenTask;
                        Task task = objectRef.element;
                        objectRef.element = null;
                        return task;
                    }
                    if (jS > 0) {
                        jMin = Math.min(jMin, jS);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.minDelayUntilStealableTaskNs = jMin;
            return null;
        }

        private final void tryTerminateWorker() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.f67929g) {
                try {
                    if (coroutineScheduler.isTerminated()) {
                        return;
                    }
                    if (((int) (CoroutineScheduler.p().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.f67923a) {
                        return;
                    }
                    if (workerCtl$volatile$FU.compareAndSet(this, -1, 1)) {
                        int i11 = this.indexInArray;
                        setIndexInArray(0);
                        coroutineScheduler.v(this, i11, 0);
                        int andDecrement = (int) (CoroutineScheduler.p().getAndDecrement(coroutineScheduler) & 2097151);
                        if (andDecrement != i11) {
                            Object objB = coroutineScheduler.f67929g.b(andDecrement);
                            Intrinsics.e(objB);
                            Worker worker = (Worker) objB;
                            coroutineScheduler.f67929g.c(i11, worker);
                            worker.setIndexInArray(i11);
                            coroutineScheduler.v(worker, andDecrement, i11);
                        }
                        coroutineScheduler.f67929g.c(andDecrement, null);
                        Unit unit = Unit.f67061a;
                        this.state = WorkerState.TERMINATED;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final Task findTask(boolean mayHaveLocalTasks) {
            return tryAcquireCpuPermit() ? findAnyTask(mayHaveLocalTasks) : findBlockingTask();
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final CoroutineScheduler getScheduler() {
            return CoroutineScheduler.this;
        }

        public final boolean isIo() {
            return this.state == WorkerState.BLOCKING;
        }

        public final int nextInt(int upperBound) {
            int i11 = this.rngState;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.rngState = i14;
            int i15 = upperBound - 1;
            return (i15 & upperBound) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % upperBound;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            runWorker();
        }

        public final long runSingleTask() {
            boolean z10 = this.state == WorkerState.CPU_ACQUIRED;
            Task taskFindCpuTask = z10 ? findCpuTask() : findBlockingTask();
            if (taskFindCpuTask == null) {
                long j11 = this.minDelayUntilStealableTaskNs;
                if (j11 == 0) {
                    return -1L;
                }
                return j11;
            }
            CoroutineScheduler.this.w(taskFindCpuTask);
            if (!z10) {
                CoroutineScheduler.p().addAndGet(CoroutineScheduler.this, -2097152L);
            }
            return 0L;
        }

        public final void setIndexInArray(int i11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CoroutineScheduler.this.f67926d);
            sb2.append("-worker-");
            sb2.append(i11 == 0 ? "TERMINATED" : String.valueOf(i11));
            setName(sb2.toString());
            this.indexInArray = i11;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(WorkerState newState) {
            WorkerState workerState = this.state;
            boolean z10 = workerState == WorkerState.CPU_ACQUIRED;
            if (z10) {
                CoroutineScheduler.p().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z10;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "<init>", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<WorkerState> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f67930a;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f67930a = iArr;
        }
    }

    public CoroutineScheduler(int i11, int i12, long j11, String str) {
        this.f67923a = i11;
        this.f67924b = i12;
        this.f67925c = j11;
        this.f67926d = str;
        if (i11 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i11 + " should be at least 1").toString());
        }
        if (i12 < i11) {
            throw new IllegalArgumentException(("Max pool size " + i12 + " should be greater than or equals to core pool size " + i11).toString());
        }
        if (i12 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i12 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j11 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j11 + " must be positive").toString());
        }
        this.f67927e = new c();
        this.f67928f = new c();
        this.f67929g = new u((i11 + 1) * 2);
        this.controlState$volatile = ((long) i11) << 42;
        this._isTerminated$volatile = 0;
    }

    private final void T(long j11, boolean z10) {
        if (z10 || c0() || Z(j11)) {
            return;
        }
        c0();
    }

    private final Task V(Worker worker, Task task, boolean z10) {
        WorkerState workerState;
        if (worker == null || (workerState = worker.state) == WorkerState.TERMINATED) {
            return task;
        }
        if (!task.taskContext && workerState == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.a(task, z10);
    }

    private final boolean Z(long j11) {
        if (RangesKt.f(((int) (2097151 & j11)) - ((int) ((j11 & 4398044413952L) >> 21)), 0) < this.f67923a) {
            int iK = k();
            if (iK == 1 && this.f67923a > 1) {
                k();
            }
            if (iK > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean a0(CoroutineScheduler coroutineScheduler, long j11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j11 = f67920j.get(coroutineScheduler);
        }
        return coroutineScheduler.Z(j11);
    }

    private final boolean c0() {
        Worker workerT;
        do {
            workerT = t();
            if (workerT == null) {
                return false;
            }
        } while (!Worker.workerCtl$volatile$FU.compareAndSet(workerT, -1, 0));
        LockSupport.unpark(workerT);
        return true;
    }

    private final boolean h(Task task) {
        return task.taskContext ? this.f67928f.a(task) : this.f67927e.a(task);
    }

    private final int k() {
        synchronized (this.f67929g) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j11 = f67920j.get(this);
                int i11 = (int) (j11 & 2097151);
                int iF = RangesKt.f(i11 - ((int) ((j11 & 4398044413952L) >> 21)), 0);
                if (iF >= this.f67923a) {
                    return 0;
                }
                if (i11 >= this.f67924b) {
                    return 0;
                }
                int i12 = ((int) (p().get(this) & 2097151)) + 1;
                if (i12 <= 0 || this.f67929g.b(i12) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(this, i12);
                this.f67929g.c(i12, worker);
                if (i12 != ((int) (2097151 & f67920j.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i13 = iF + 1;
                worker.start();
                return i13;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final Worker m() {
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker == null || !Intrinsics.c(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    public static /* synthetic */ void o(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        coroutineScheduler.n(runnable, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater p() {
        return f67920j;
    }

    private final int s(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != f67922l) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    private final Worker t() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67919i;
        while (true) {
            long j11 = atomicLongFieldUpdater.get(this);
            Worker worker = (Worker) this.f67929g.b((int) (2097151 & j11));
            if (worker == null) {
                return null;
            }
            long j12 = (2097152 + j11) & (-2097152);
            int iS = s(worker);
            if (iS >= 0 && f67919i.compareAndSet(this, j11, ((long) iS) | j12)) {
                worker.setNextParkedWorker(f67922l);
                return worker;
            }
        }
    }

    public final void U() {
        if (c0() || a0(this, 0L, 1, null)) {
            return;
        }
        c0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        x(10000L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        o(this, runnable, false, false, 6, null);
    }

    public final boolean isTerminated() {
        return f67921k.get(this) != 0;
    }

    public final Task l(Runnable runnable, boolean z10) {
        long jA = g.f67945f.a();
        if (!(runnable instanceof Task)) {
            return g.b(runnable, jA, z10);
        }
        Task task = (Task) runnable;
        task.submissionTime = jA;
        task.taskContext = z10;
        return task;
    }

    public final void n(Runnable runnable, boolean z10, boolean z11) {
        kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f67643a;
        if (bVar != null) {
            bVar.d();
        }
        Task taskL = l(runnable, z10);
        boolean z12 = taskL.taskContext;
        long jAddAndGet = z12 ? f67920j.addAndGet(this, 2097152L) : 0L;
        Worker workerM = m();
        Task taskV = V(workerM, taskL, z11);
        if (taskV != null && !h(taskV)) {
            throw new RejectedExecutionException(this.f67926d + " was terminated");
        }
        boolean z13 = z11 && workerM != null;
        if (z12) {
            T(jAddAndGet, z13);
        } else {
            if (z13) {
                return;
            }
            U();
        }
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f67929g.a();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 1; i16 < iA; i16++) {
            Worker worker = (Worker) this.f67929g.b(i16);
            if (worker != null) {
                int i17 = worker.localQueue.i();
                int i18 = b.f67930a[worker.state.ordinal()];
                if (i18 == 1) {
                    i13++;
                } else if (i18 == 2) {
                    i12++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i17);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (i18 == 3) {
                    i11++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(i17);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                } else if (i18 == 4) {
                    i14++;
                    if (i17 > 0) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(i17);
                        sb4.append('d');
                        arrayList.add(sb4.toString());
                    }
                } else {
                    if (i18 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i15++;
                }
            }
        }
        long j11 = f67920j.get(this);
        return this.f67926d + '@' + p0.b(this) + "[Pool Size {core = " + this.f67923a + ", max = " + this.f67924b + "}, Worker States {CPU = " + i11 + ", blocking = " + i12 + ", parked = " + i13 + ", dormant = " + i14 + ", terminated = " + i15 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f67927e.c() + ", global blocking queue size = " + this.f67928f.c() + ", Control State {created workers= " + ((int) (2097151 & j11)) + ", blocking tasks = " + ((int) ((4398044413952L & j11) >> 21)) + ", CPUs acquired = " + (this.f67923a - ((int) ((9223367638808264704L & j11) >> 42))) + "}]";
    }

    public final boolean u(Worker worker) {
        long j11;
        int indexInArray;
        if (worker.getNextParkedWorker() != f67922l) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67919i;
        do {
            j11 = atomicLongFieldUpdater.get(this);
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.f67929g.b((int) (2097151 & j11)));
        } while (!f67919i.compareAndSet(this, j11, ((2097152 + j11) & (-2097152)) | ((long) indexInArray)));
        return true;
    }

    public final void v(Worker worker, int i11, int i12) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f67919i;
        while (true) {
            long j11 = atomicLongFieldUpdater.get(this);
            int iS = (int) (2097151 & j11);
            long j12 = (2097152 + j11) & (-2097152);
            if (iS == i11) {
                iS = i12 == 0 ? s(worker) : i12;
            }
            if (iS >= 0 && f67919i.compareAndSet(this, j11, j12 | ((long) iS))) {
                return;
            }
        }
    }

    public final void w(Task task) {
        kotlinx.coroutines.b bVar;
        try {
            task.run();
            bVar = kotlinx.coroutines.c.f67643a;
            if (bVar == null) {
                return;
            }
        } catch (Throwable th2) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
                bVar = kotlinx.coroutines.c.f67643a;
                if (bVar == null) {
                    return;
                }
            } catch (Throwable th3) {
                kotlinx.coroutines.b bVar2 = kotlinx.coroutines.c.f67643a;
                if (bVar2 != null) {
                    bVar2.e();
                }
                throw th3;
            }
        }
        bVar.e();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    public final void x(long j11) throws InterruptedException {
        int i11;
        Task taskFindTask;
        if (f67921k.compareAndSet(this, 0, 1)) {
            Worker workerM = m();
            synchronized (this.f67929g) {
                i11 = (int) (p().get(this) & 2097151);
            }
            if (1 <= i11) {
                int i12 = 1;
                while (true) {
                    Object objB = this.f67929g.b(i12);
                    Intrinsics.e(objB);
                    Worker worker = (Worker) objB;
                    if (worker != workerM) {
                        while (worker.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(worker);
                            worker.join(j11);
                        }
                        worker.localQueue.j(this.f67928f);
                    }
                    if (i12 == i11) {
                        break;
                    } else {
                        i12++;
                    }
                }
            }
            this.f67928f.b();
            this.f67927e.b();
            while (true) {
                if (workerM == null) {
                    taskFindTask = (Task) this.f67927e.e();
                    if (taskFindTask == null && (taskFindTask = (Task) this.f67928f.e()) == null) {
                        break;
                    }
                } else {
                    taskFindTask = workerM.findTask(true);
                    if (taskFindTask == null) {
                        taskFindTask = (Task) this.f67927e.e();
                        if (taskFindTask == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                w(taskFindTask);
            }
            if (workerM != null) {
                workerM.tryReleaseCpu(WorkerState.TERMINATED);
            }
            f67919i.set(this, 0L);
            f67920j.set(this, 0L);
        }
    }
}
