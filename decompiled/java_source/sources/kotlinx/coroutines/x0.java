package kotlinx.coroutines;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes7.dex */
final class x0 implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0 f68004a;

    public x0(i0 i0Var) {
        this.f68004a = i0Var;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        i0 i0Var = this.f68004a;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (i0Var.isDispatchNeeded(emptyCoroutineContext)) {
            this.f68004a.dispatch(emptyCoroutineContext, runnable);
        } else {
            runnable.run();
        }
    }

    public String toString() {
        return this.f68004a.toString();
    }
}
