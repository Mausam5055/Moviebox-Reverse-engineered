package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class SafeLoggingExecutor implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24328a;

    static class SafeLoggingRunnable implements Runnable {
        private final Runnable delegate;

        SafeLoggingRunnable(Runnable runnable) {
            this.delegate = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.delegate.run();
            } catch (Exception e11) {
                w8.a.d("Executor", "Background execution failure.", e11);
            }
        }
    }

    SafeLoggingExecutor(Executor executor) {
        this.f24328a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f24328a.execute(new SafeLoggingRunnable(runnable));
    }
}
