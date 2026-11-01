package androidx.work;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    public static final class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f15459a = new AtomicInteger(0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f15460b;

        a(boolean z10) {
            this.f15460b = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            return new Thread(runnable, (this.f15460b ? "WM.task-" : "androidx.work-") + this.f15459a.incrementAndGet());
        }
    }

    public static final class b implements f0 {
        b() {
        }

        @Override // androidx.work.f0
        public void a(String label) {
            Intrinsics.h(label, "label");
            f4.a.c(label);
        }

        @Override // androidx.work.f0
        public void b(String methodName, int i11) {
            Intrinsics.h(methodName, "methodName");
            f4.a.d(methodName, i11);
        }

        @Override // androidx.work.f0
        public void c(String methodName, int i11) {
            Intrinsics.h(methodName, "methodName");
            f4.a.a(methodName, i11);
        }

        @Override // androidx.work.f0
        public void d() {
            f4.a.f();
        }

        @Override // androidx.work.f0
        public boolean isEnabled() {
            return f4.a.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor d(CoroutineContext coroutineContext) {
        ContinuationInterceptor continuationInterceptor = coroutineContext != null ? (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.INSTANCE) : null;
        kotlinx.coroutines.i0 i0Var = continuationInterceptor instanceof kotlinx.coroutines.i0 ? (kotlinx.coroutines.i0) continuationInterceptor : null;
        if (i0Var != null) {
            return m1.a(i0Var);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Executor e(boolean z10) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new a(z10));
        Intrinsics.g(executorServiceNewFixedThreadPool, "newFixedThreadPool(...)");
        return executorServiceNewFixedThreadPool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f0 f() {
        return new b();
    }
}
