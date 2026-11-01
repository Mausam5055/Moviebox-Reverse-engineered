package com.google.firebase.crashlytics.internal.concurrency;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public class e implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f31307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f31308b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Task f31309c = Tasks.forResult(null);

    e(ExecutorService executorService) {
        this.f31307a = executorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task d(Runnable runnable, Task task) {
        runnable.run();
        return Tasks.forResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task e(Callable callable, Task task) {
        return (Task) callable.call();
    }

    public ExecutorService c() {
        return this.f31307a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f31307a.execute(runnable);
    }

    public Task f(final Runnable runnable) {
        Task taskContinueWithTask;
        synchronized (this.f31308b) {
            taskContinueWithTask = this.f31309c.continueWithTask(this.f31307a, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.d
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return e.d(runnable, task);
                }
            });
            this.f31309c = taskContinueWithTask;
        }
        return taskContinueWithTask;
    }

    public Task g(final Callable callable) {
        Task taskContinueWithTask;
        synchronized (this.f31308b) {
            taskContinueWithTask = this.f31309c.continueWithTask(this.f31307a, new Continuation() { // from class: com.google.firebase.crashlytics.internal.concurrency.c
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return e.e(callable, task);
                }
            });
            this.f31309c = taskContinueWithTask;
        }
        return taskContinueWithTask;
    }
}
