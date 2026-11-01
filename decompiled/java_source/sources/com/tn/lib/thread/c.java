package com.tn.lib.thread;

import com.tn.lib.thread.wrapper.RunnableWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Executor {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f40870f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f40871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f40872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private dh.b f40873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f40874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ThreadLocal f40875e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final eh.a a(int i11) {
            return new eh.a(i11, 1, null);
        }
    }

    private static final class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f40876a;

        public b(int i11) {
            this.f40876a = i11;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f40876a);
            return thread;
        }
    }

    public c(int i11, int i12, int i13, String threadName, dh.b bVar, Executor executor, ExecutorService executorService) {
        Intrinsics.h(threadName, "threadName");
        this.f40872b = threadName;
        this.f40873c = bVar;
        this.f40874d = executor;
        this.f40871a = executorService == null ? a(i11, i12, i13) : executorService;
        this.f40872b = threadName;
        this.f40873c = bVar;
        this.f40874d = executor;
        this.f40875e = new ThreadLocal();
    }

    private final ExecutorService a(int i11, int i12, int i13) {
        if (i11 == 1) {
            ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i12, new b(i13));
            Intrinsics.g(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
            return executorServiceNewFixedThreadPool;
        }
        if (i11 == 2) {
            ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(new b(i13));
            Intrinsics.g(executorServiceNewCachedThreadPool, "newCachedThreadPool(...)");
            return executorServiceNewCachedThreadPool;
        }
        if (i11 == 3) {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(i12, new b(i13));
            Intrinsics.g(scheduledExecutorServiceNewScheduledThreadPool, "newScheduledThreadPool(...)");
            return scheduledExecutorServiceNewScheduledThreadPool;
        }
        if (i11 != 4) {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new b(i13));
            Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
            return executorServiceNewSingleThreadExecutor;
        }
        ExecutorService executorServiceNewSingleThreadExecutor2 = Executors.newSingleThreadExecutor(new b(i13));
        Intrinsics.g(executorServiceNewSingleThreadExecutor2, "newSingleThreadExecutor(...)");
        return executorServiceNewSingleThreadExecutor2;
    }

    private final eh.d b() {
        ThreadLocal threadLocal = this.f40875e;
        eh.d dVar = threadLocal != null ? (eh.d) threadLocal.get() : null;
        if (dVar == null) {
            dVar = new eh.d();
            dVar.h(this.f40872b);
            dVar.g(this.f40873c);
            dVar.f(this.f40874d);
            ThreadLocal threadLocal2 = this.f40875e;
            if (threadLocal2 != null) {
                threadLocal2.set(dVar);
            }
        }
        return dVar;
    }

    public final void c() {
        ThreadLocal threadLocal = this.f40875e;
        if (threadLocal != null) {
            threadLocal.set(null);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        Intrinsics.h(command, "command");
        eh.d dVarB = b();
        fh.c.f62398b.a().e(dVarB.b(), this.f40871a, new RunnableWrapper(dVarB).setRunnable(command));
        c();
    }
}
