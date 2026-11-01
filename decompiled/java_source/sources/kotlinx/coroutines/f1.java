package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f1 extends e1 {
    protected abstract Thread getThread();

    protected void reschedule(long j11, EventLoopImplBase.DelayedTask delayedTask) {
        DefaultExecutor.INSTANCE.schedule(j11, delayedTask);
    }

    protected final void unpark() {
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            b bVar = c.f67643a;
            if (bVar != null) {
                bVar.f(thread);
            } else {
                LockSupport.unpark(thread);
            }
        }
    }
}
