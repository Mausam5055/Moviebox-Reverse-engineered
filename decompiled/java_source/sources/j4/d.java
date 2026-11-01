package j4;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.m1;

/* JADX INFO: loaded from: classes2.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SerialExecutorImpl f65940a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i0 f65941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f65942c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f65943d = new a();

    class a implements Executor {
        a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            d.this.f65942c.post(runnable);
        }
    }

    public d(Executor executor) {
        SerialExecutorImpl serialExecutorImpl = new SerialExecutorImpl(executor);
        this.f65940a = serialExecutorImpl;
        this.f65941b = m1.b(serialExecutorImpl);
    }

    @Override // j4.c
    public Executor a() {
        return this.f65943d;
    }

    @Override // j4.c
    public i0 b() {
        return this.f65941b;
    }

    @Override // j4.c
    public /* synthetic */ void d(Runnable runnable) {
        b.a(this, runnable);
    }

    @Override // j4.c
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public SerialExecutorImpl c() {
        return this.f65940a;
    }
}
