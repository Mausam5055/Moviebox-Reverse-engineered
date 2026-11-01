package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f32494d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Executor f32495e = new w3.m();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f32496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r f32497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Task f32498c = null;

    private static class b implements OnSuccessListener, OnFailureListener, OnCanceledListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final CountDownLatch f32499a;

        private b() {
            this.f32499a = new CountDownLatch(1);
        }

        public boolean a(long j11, TimeUnit timeUnit) {
            return this.f32499a.await(j11, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public void onCanceled() {
            this.f32499a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(Exception exc) {
            this.f32499a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(Object obj) {
            this.f32499a.countDown();
        }
    }

    private e(Executor executor, r rVar) {
        this.f32496a = executor;
        this.f32497b = rVar;
    }

    private static Object c(Task task, long j11, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        b bVar = new b();
        Executor executor = f32495e;
        task.addOnSuccessListener(executor, bVar);
        task.addOnFailureListener(executor, bVar);
        task.addOnCanceledListener(executor, bVar);
        if (!bVar.a(j11, timeUnit)) {
            throw new TimeoutException("Task await timed out.");
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    public static synchronized e h(Executor executor, r rVar) {
        String strB;
        Map map;
        try {
            strB = rVar.b();
            map = f32494d;
            if (!map.containsKey(strB)) {
                map.put(strB, new e(executor, rVar));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (e) map.get(strB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void i(f fVar) {
        return this.f32497b.e(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task j(boolean z10, f fVar, Void r11) {
        if (z10) {
            m(fVar);
        }
        return Tasks.forResult(fVar);
    }

    private synchronized void m(f fVar) {
        this.f32498c = Tasks.forResult(fVar);
    }

    public void d() {
        synchronized (this) {
            this.f32498c = Tasks.forResult(null);
        }
        this.f32497b.a();
    }

    public synchronized Task e() {
        try {
            Task task = this.f32498c;
            if (task == null || (task.isComplete() && !this.f32498c.isSuccessful())) {
                Executor executor = this.f32496a;
                final r rVar = this.f32497b;
                Objects.requireNonNull(rVar);
                this.f32498c = Tasks.call(executor, new Callable() { // from class: com.google.firebase.remoteconfig.internal.b
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return rVar.d();
                    }
                });
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f32498c;
    }

    public f f() {
        return g(5L);
    }

    f g(long j11) {
        synchronized (this) {
            try {
                Task task = this.f32498c;
                if (task == null || !task.isSuccessful()) {
                    try {
                        return (f) c(e(), j11, TimeUnit.SECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException unused) {
                        return null;
                    }
                }
                return (f) this.f32498c.getResult();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Task k(f fVar) {
        return l(fVar, true);
    }

    public Task l(final f fVar, final boolean z10) {
        return Tasks.call(this.f32496a, new Callable() { // from class: com.google.firebase.remoteconfig.internal.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32489a.i(fVar);
            }
        }).onSuccessTask(this.f32496a, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.d
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f32491a.j(z10, fVar, (Void) obj);
            }
        });
    }
}
