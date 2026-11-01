package androidx.core.os;

import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f8163a;

        a(Handler handler) {
            this.f8163a = (Handler) androidx.core.util.i.g(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (this.f8163a.post((Runnable) androidx.core.util.i.g(runnable))) {
                return;
            }
            throw new RejectedExecutionException(this.f8163a + " is shutting down");
        }
    }

    public static Executor a(Handler handler) {
        return new a(handler);
    }
}
