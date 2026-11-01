package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
class c1 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final long f32051i = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f32053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e0 f32054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FirebaseMessaging f32055d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ScheduledExecutorService f32057f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a1 f32059h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f32056e = new androidx.collection.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f32058g = false;

    private c1(FirebaseMessaging firebaseMessaging, j0 j0Var, a1 a1Var, e0 e0Var, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f32055d = firebaseMessaging;
        this.f32053b = j0Var;
        this.f32059h = a1Var;
        this.f32054c = e0Var;
        this.f32052a = context;
        this.f32057f = scheduledExecutorService;
    }

    private void b(z0 z0Var, TaskCompletionSource taskCompletionSource) {
        ArrayDeque arrayDeque;
        synchronized (this.f32056e) {
            try {
                String strE = z0Var.e();
                if (this.f32056e.containsKey(strE)) {
                    arrayDeque = (ArrayDeque) this.f32056e.get(strE);
                } else {
                    ArrayDeque arrayDeque2 = new ArrayDeque();
                    this.f32056e.put(strE, arrayDeque2);
                    arrayDeque = arrayDeque2;
                }
                arrayDeque.add(taskCompletionSource);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void c(Task task) throws IOException {
        try {
            Tasks.await(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e11) {
            e = e11;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e12) {
            Throwable cause = e12.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e12);
            }
            throw ((RuntimeException) cause);
        } catch (TimeoutException e13) {
            e = e13;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    private void d(String str) throws IOException {
        c(this.f32054c.m(this.f32055d.m(), str));
    }

    private void e(String str) throws IOException {
        c(this.f32054c.n(this.f32055d.m(), str));
    }

    static Task f(final FirebaseMessaging firebaseMessaging, final j0 j0Var, final e0 e0Var, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.b1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return c1.j(context, scheduledExecutorService, firebaseMessaging, j0Var, e0Var);
            }
        });
    }

    static boolean h() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c1 j(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, j0 j0Var, e0 e0Var) {
        return new c1(firebaseMessaging, j0Var, a1.b(context, scheduledExecutorService), e0Var, context, scheduledExecutorService);
    }

    private void k(z0 z0Var) {
        synchronized (this.f32056e) {
            try {
                String strE = z0Var.e();
                if (this.f32056e.containsKey(strE)) {
                    ArrayDeque arrayDeque = (ArrayDeque) this.f32056e.get(strE);
                    TaskCompletionSource taskCompletionSource = (TaskCompletionSource) arrayDeque.poll();
                    if (taskCompletionSource != null) {
                        taskCompletionSource.setResult(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.f32056e.remove(strE);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void p() {
        if (i()) {
            return;
        }
        t(0L);
    }

    boolean g() {
        return this.f32059h.c() != null;
    }

    synchronized boolean i() {
        return this.f32058g;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    boolean l(z0 z0Var) throws IOException {
        byte b11;
        try {
            String strB = z0Var.b();
            int iHashCode = strB.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && strB.equals("U")) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
            } else if (strB.equals("S")) {
                b11 = 0;
            } else {
                b11 = -1;
            }
            if (b11 == 0) {
                d(z0Var.c());
                if (h()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Subscribe to topic: ");
                    sb2.append(z0Var.c());
                    sb2.append(" succeeded.");
                }
            } else if (b11 == 1) {
                e(z0Var.c());
                if (h()) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Unsubscribe from topic: ");
                    sb3.append(z0Var.c());
                    sb3.append(" succeeded.");
                }
            } else if (h()) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Unknown topic operation");
                sb4.append(z0Var);
                sb4.append(".");
            }
            return true;
        } catch (IOException e11) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e11.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e11.getMessage()) && !"TOO_MANY_SUBSCRIBERS".equals(e11.getMessage())) {
                if (e11.getMessage() != null) {
                    throw e11;
                }
                Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            }
            Log.e("FirebaseMessaging", "Topic operation failed: " + e11.getMessage() + ". Will retry Topic operation.");
            return false;
        }
    }

    void m(Runnable runnable, long j11) {
        this.f32057f.schedule(runnable, j11, TimeUnit.SECONDS);
    }

    Task n(z0 z0Var) {
        this.f32059h.a(z0Var);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        b(z0Var, taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    synchronized void o(boolean z10) {
        this.f32058g = z10;
    }

    void q() {
        if (g()) {
            p();
        }
    }

    Task r(String str) {
        Task taskN = n(z0.f(str));
        q();
        return taskN;
    }

    boolean s() {
        while (true) {
            synchronized (this) {
                try {
                    z0 z0VarC = this.f32059h.c();
                    if (z0VarC == null) {
                        h();
                        return true;
                    }
                    if (!l(z0VarC)) {
                        return false;
                    }
                    this.f32059h.e(z0VarC);
                    k(z0VarC);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    void t(long j11) {
        m(new TopicsSyncTask(this, this.f32052a, this.f32053b, Math.min(Math.max(30L, 2 * j11), f32051i)), j11);
        o(true);
    }

    Task u(String str) {
        Task taskN = n(z0.g(str));
        q();
        return taskN;
    }
}
