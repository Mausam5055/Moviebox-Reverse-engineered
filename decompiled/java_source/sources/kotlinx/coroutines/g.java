package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class g extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread f67830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e1 f67831b;

    public g(CoroutineContext coroutineContext, Thread thread, e1 e1Var) {
        super(coroutineContext, true, true);
        this.f67830a = thread;
        this.f67831b = e1Var;
    }

    public final Object X() throws Throwable {
        b bVar = c.f67643a;
        if (bVar != null) {
            bVar.c();
        }
        try {
            e1 e1Var = this.f67831b;
            if (e1Var != null) {
                e1.incrementUseCount$default(e1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    e1 e1Var2 = this.f67831b;
                    long jProcessNextEvent = e1Var2 != null ? e1Var2.processNextEvent() : Long.MAX_VALUE;
                    if (isCompleted()) {
                        e1 e1Var3 = this.f67831b;
                        if (e1Var3 != null) {
                            e1.decrementUseCount$default(e1Var3, false, 1, null);
                        }
                        b bVar2 = c.f67643a;
                        if (bVar2 != null) {
                            bVar2.g();
                        }
                        Object objH = x1.h(getState$kotlinx_coroutines_core());
                        b0 b0Var = objH instanceof b0 ? (b0) objH : null;
                        if (b0Var == null) {
                            return objH;
                        }
                        throw b0Var.f67641a;
                    }
                    b bVar3 = c.f67643a;
                    if (bVar3 != null) {
                        bVar3.b(this, jProcessNextEvent);
                    } else {
                        LockSupport.parkNanos(this, jProcessNextEvent);
                    }
                } catch (Throwable th2) {
                    e1 e1Var4 = this.f67831b;
                    if (e1Var4 != null) {
                        e1.decrementUseCount$default(e1Var4, false, 1, null);
                    }
                    throw th2;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            cancelCoroutine(interruptedException);
            throw interruptedException;
        } catch (Throwable th3) {
            b bVar4 = c.f67643a;
            if (bVar4 != null) {
                bVar4.g();
            }
            throw th3;
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void afterCompletion(Object obj) {
        if (Intrinsics.c(Thread.currentThread(), this.f67830a)) {
            return;
        }
        Thread thread = this.f67830a;
        b bVar = c.f67643a;
        if (bVar != null) {
            bVar.f(thread);
        } else {
            LockSupport.unpark(thread);
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean isScopedCoroutine() {
        return true;
    }
}
