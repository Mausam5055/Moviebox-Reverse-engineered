package com.therouter;

import android.os.Looper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
final class BufferExecutor implements ExecutorService, Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Task f40701b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayDeque f40700a = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConcurrentHashMap f40702c = new ConcurrentHashMap();

    private final void b() {
        Collection<b> collectionValues = this.f40702c.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (b bVar : collectionValues) {
            boolean z10 = System.currentTimeMillis() - bVar.a() < TheRouterThreadPool.h() * 1000;
            TheRouterKt.h(z10, "ThreadPool", "执行该任务耗时过久，有可能是此任务耗时，或者当前线程池中其他任务都很耗时，请优化逻辑\n当前任务被创建时间为" + bVar.a() + "此时时间为" + System.currentTimeMillis() + "\n" + bVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void d() {
        try {
            if (Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
                e(this);
            } else {
                int activeCount = TheRouterThreadPool.f40720i.getActiveCount();
                int size = TheRouterThreadPool.f40720i.getQueue().size();
                if (this.f40700a.size() > TheRouterThreadPool.i() * 100) {
                    TheRouterThreadPool.f40720i.setCorePoolSize(TheRouterThreadPool.f40715d);
                } else if (this.f40700a.size() > TheRouterThreadPool.i() * 10) {
                    TheRouterThreadPool.f40720i.setCorePoolSize(TheRouterThreadPool.f40714c);
                } else {
                    TheRouterThreadPool.f40720i.setCorePoolSize(TheRouterThreadPool.f40713b);
                }
                if (size <= TheRouterThreadPool.i() && activeCount < TheRouterThreadPool.f40720i.getCorePoolSize()) {
                    e(this);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static final void e(BufferExecutor bufferExecutor) {
        Object objPoll = bufferExecutor.f40700a.poll();
        Task task = (Task) objPoll;
        bufferExecutor.f40701b = task;
        if (objPoll != null) {
            if (task != null && TheRouter.m()) {
                bufferExecutor.f40702c.put(Integer.valueOf(task.getR().hashCode()), new b(task.getTrace()));
            }
            TheRouterThreadPool.f40720i.execute(bufferExecutor.f40701b);
            bufferExecutor.f40701b = null;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized boolean awaitTermination(long j11, TimeUnit unit) {
        Intrinsics.h(unit, "unit");
        return TheRouterThreadPool.f40720i.awaitTermination(j11, unit);
    }

    public final ConcurrentHashMap c() {
        return this.f40702c;
    }

    @Override // java.util.concurrent.Executor
    public synchronized void execute(final Runnable r11) {
        String strJ;
        try {
            Intrinsics.h(r11, "r");
            ArrayDeque arrayDeque = this.f40700a;
            if (TheRouter.m()) {
                b();
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                Intrinsics.g(stackTrace, "getStackTrace(...)");
                strJ = TheRouterThreadPool.j(stackTrace);
            } else {
                strJ = "";
            }
            arrayDeque.offer(new Task(r11, strJ, new Function0<Unit>() { // from class: com.therouter.BufferExecutor.execute.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m295invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m295invoke() {
                    if (TheRouter.m()) {
                        BufferExecutor.this.c().remove(Integer.valueOf(r11.hashCode()));
                    }
                    BufferExecutor.this.d();
                }
            }));
            if (this.f40701b == null) {
                d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized List invokeAll(Collection tasks) {
        List listInvokeAll;
        Intrinsics.h(tasks, "tasks");
        listInvokeAll = TheRouterThreadPool.f40720i.invokeAll(tasks);
        Intrinsics.g(listInvokeAll, "invokeAll(...)");
        return listInvokeAll;
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized List invokeAll(Collection tasks, long j11, TimeUnit unit) {
        List listInvokeAll;
        Intrinsics.h(tasks, "tasks");
        Intrinsics.h(unit, "unit");
        listInvokeAll = TheRouterThreadPool.f40720i.invokeAll(tasks, j11, unit);
        Intrinsics.g(listInvokeAll, "invokeAll(...)");
        return listInvokeAll;
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized Object invokeAny(Collection tasks) {
        Intrinsics.h(tasks, "tasks");
        return TheRouterThreadPool.f40720i.invokeAny(tasks);
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized Object invokeAny(Collection tasks, long j11, TimeUnit unit) {
        Intrinsics.h(tasks, "tasks");
        Intrinsics.h(unit, "unit");
        return TheRouterThreadPool.f40720i.invokeAny(tasks, j11, unit);
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized boolean isShutdown() {
        return TheRouterThreadPool.f40720i.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized boolean isTerminated() {
        return TheRouterThreadPool.f40720i.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized void shutdown() {
        TheRouterThreadPool.f40720i.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized List shutdownNow() {
        List<Runnable> listShutdownNow;
        listShutdownNow = TheRouterThreadPool.f40720i.shutdownNow();
        Intrinsics.g(listShutdownNow, "shutdownNow(...)");
        return listShutdownNow;
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized Future submit(Runnable task) {
        Future<?> futureSubmit;
        Intrinsics.h(task, "task");
        futureSubmit = TheRouterThreadPool.f40720i.submit(task);
        Intrinsics.g(futureSubmit, "submit(...)");
        return futureSubmit;
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized Future submit(Runnable task, Object obj) {
        Future futureSubmit;
        Intrinsics.h(task, "task");
        futureSubmit = TheRouterThreadPool.f40720i.submit(task, obj);
        Intrinsics.g(futureSubmit, "submit(...)");
        return futureSubmit;
    }

    @Override // java.util.concurrent.ExecutorService
    public synchronized Future submit(Callable task) {
        Future futureSubmit;
        Intrinsics.h(task, "task");
        futureSubmit = TheRouterThreadPool.f40720i.submit(task);
        Intrinsics.g(futureSubmit, "submit(...)");
        return futureSubmit;
    }
}
