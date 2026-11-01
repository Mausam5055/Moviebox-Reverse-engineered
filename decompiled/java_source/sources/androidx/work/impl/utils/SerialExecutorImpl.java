package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class SerialExecutorImpl implements j4.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f15936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f15937c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayDeque f15935a = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f15938d = new Object();

    static class Task implements Runnable {
        final Runnable mRunnable;
        final SerialExecutorImpl mSerialExecutor;

        Task(SerialExecutorImpl serialExecutorImpl, Runnable runnable) {
            this.mSerialExecutor = serialExecutorImpl;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mRunnable.run();
                synchronized (this.mSerialExecutor.f15938d) {
                    this.mSerialExecutor.a();
                }
            } catch (Throwable th2) {
                synchronized (this.mSerialExecutor.f15938d) {
                    this.mSerialExecutor.a();
                    throw th2;
                }
            }
        }
    }

    public SerialExecutorImpl(Executor executor) {
        this.f15936b = executor;
    }

    void a() {
        Runnable runnable = (Runnable) this.f15935a.poll();
        this.f15937c = runnable;
        if (runnable != null) {
            this.f15936b.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f15938d) {
            try {
                this.f15935a.add(new Task(this, runnable));
                if (this.f15937c == null) {
                    a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
