package io.reactivex.rxjava3.internal.schedulers;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
final class c implements Callable, io.reactivex.rxjava3.disposables.c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final FutureTask f65512f = new FutureTask(Functions.f65321b, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Runnable f65513a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final ExecutorService f65516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Thread f65517e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final AtomicReference f65515c = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicReference f65514b = new AtomicReference();

    c(Runnable runnable, ExecutorService executorService) {
        this.f65513a = runnable;
        this.f65516d = executorService;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() {
        this.f65517e = Thread.currentThread();
        try {
            this.f65513a.run();
            this.f65517e = null;
            c(this.f65516d.submit(this));
            return null;
        } catch (Throwable th2) {
            this.f65517e = null;
            pz.a.r(th2);
            throw th2;
        }
    }

    void b(Future future) {
        Future future2;
        do {
            future2 = (Future) this.f65515c.get();
            if (future2 == f65512f) {
                future.cancel(this.f65517e != Thread.currentThread());
                return;
            }
        } while (!j0.a(this.f65515c, future2, future));
    }

    void c(Future future) {
        Future future2;
        do {
            future2 = (Future) this.f65514b.get();
            if (future2 == f65512f) {
                future.cancel(this.f65517e != Thread.currentThread());
                return;
            }
        } while (!j0.a(this.f65514b, future2, future));
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        AtomicReference atomicReference = this.f65515c;
        FutureTask futureTask = f65512f;
        Future future = (Future) atomicReference.getAndSet(futureTask);
        if (future != null && future != futureTask) {
            future.cancel(this.f65517e != Thread.currentThread());
        }
        Future future2 = (Future) this.f65514b.getAndSet(futureTask);
        if (future2 == null || future2 == futureTask) {
            return;
        }
        future2.cancel(this.f65517e != Thread.currentThread());
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.f65515c.get() == f65512f;
    }
}
