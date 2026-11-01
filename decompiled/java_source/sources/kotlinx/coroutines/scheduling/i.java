package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes7.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67947b = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "lastScheduledTask$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67948c = AtomicIntegerFieldUpdater.newUpdater(i.class, "producerIndex$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67949d = AtomicIntegerFieldUpdater.newUpdater(i.class, "consumerIndex$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67950e = AtomicIntegerFieldUpdater.newUpdater(i.class, "blockingTasksInBuffer$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReferenceArray f67951a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    private final Task b(Task task) {
        if (e() == 127) {
            return task;
        }
        if (task.taskContext) {
            f67950e.incrementAndGet(this);
        }
        int i11 = f67948c.get(this) & 127;
        while (this.f67951a.get(i11) != null) {
            Thread.yield();
        }
        this.f67951a.lazySet(i11, task);
        f67948c.incrementAndGet(this);
        return null;
    }

    private final void c(Task task) {
        if (task == null || !task.taskContext) {
            return;
        }
        f67950e.decrementAndGet(this);
    }

    private final int e() {
        return f67948c.get(this) - f67949d.get(this);
    }

    private final Task m() {
        Task task;
        while (true) {
            int i11 = f67949d.get(this);
            if (i11 - f67948c.get(this) == 0) {
                return null;
            }
            int i12 = i11 & 127;
            if (f67949d.compareAndSet(this, i11, i11 + 1) && (task = (Task) this.f67951a.getAndSet(i12, null)) != null) {
                c(task);
                return task;
            }
        }
    }

    private final boolean o(c cVar) {
        Task taskM = m();
        if (taskM == null) {
            return false;
        }
        cVar.a(taskM);
        return true;
    }

    private final Task p(boolean z10) {
        Task task;
        do {
            task = (Task) f67947b.get(this);
            if (task == null || task.taskContext != z10) {
                int i11 = f67949d.get(this);
                int i12 = f67948c.get(this);
                while (i11 != i12) {
                    if (z10 && f67950e.get(this) == 0) {
                        return null;
                    }
                    i12--;
                    Task taskR = r(i12, z10);
                    if (taskR != null) {
                        return taskR;
                    }
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f67947b, this, task, null));
        return task;
    }

    private final Task q(int i11) {
        int i12 = f67949d.get(this);
        int i13 = f67948c.get(this);
        boolean z10 = i11 == 1;
        while (i12 != i13) {
            if (z10 && f67950e.get(this) == 0) {
                return null;
            }
            int i14 = i12 + 1;
            Task taskR = r(i12, z10);
            if (taskR != null) {
                return taskR;
            }
            i12 = i14;
        }
        return null;
    }

    private final Task r(int i11, boolean z10) {
        int i12 = i11 & 127;
        Task task = (Task) this.f67951a.get(i12);
        if (task == null || task.taskContext != z10 || !kotlinx.coroutines.channels.i.a(this.f67951a, i12, task, null)) {
            return null;
        }
        if (z10) {
            f67950e.decrementAndGet(this);
        }
        return task;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.Task] */
    private final long t(int i11, Ref.ObjectRef objectRef) {
        ?? r11;
        do {
            r11 = (Task) f67947b.get(this);
            if (r11 == 0) {
                return -2L;
            }
            if (((r11.taskContext ? 1 : 2) & i11) == 0) {
                return -2L;
            }
            long jA = g.f67945f.a() - r11.submissionTime;
            long j11 = g.f67941b;
            if (jA < j11) {
                return j11 - jA;
            }
        } while (!androidx.concurrent.futures.a.a(f67947b, this, r11, null));
        objectRef.element = r11;
        return -1L;
    }

    public final Task a(Task task, boolean z10) {
        if (z10) {
            return b(task);
        }
        Task task2 = (Task) f67947b.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return b(task2);
    }

    public final int i() {
        return f67947b.get(this) != null ? e() + 1 : e();
    }

    public final void j(c cVar) {
        Task task = (Task) f67947b.getAndSet(this, null);
        if (task != null) {
            cVar.a(task);
        }
        while (o(cVar)) {
        }
    }

    public final Task k() {
        Task task = (Task) f67947b.getAndSet(this, null);
        return task == null ? m() : task;
    }

    public final Task l() {
        return p(true);
    }

    public final Task n() {
        return p(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long s(int i11, Ref.ObjectRef objectRef) {
        Task taskQ;
        T t11;
        Task taskM;
        if (i11 == 3) {
            taskM = m();
        } else {
            taskQ = q(i11);
        }
        if (t11 == 0) {
            t11 = taskQ;
            t11 = taskM;
            return t(i11, objectRef);
        }
        t11 = taskQ;
        t11 = taskM;
        objectRef.element = t11;
        return -1L;
    }
}
