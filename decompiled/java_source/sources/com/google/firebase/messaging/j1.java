package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
class j1 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Intent f32104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f32105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue f32106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g1 f32107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f32108f;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f32109a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TaskCompletionSource f32110b = new TaskCompletionSource();

        a(Intent intent) {
            this.f32109a = intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + this.f32109a.getAction() + " finishing.");
            d();
        }

        void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.messaging.h1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f32091a.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().addOnCompleteListener(scheduledExecutorService, new OnCompleteListener() { // from class: com.google.firebase.messaging.i1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    scheduledFutureSchedule.cancel(false);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            this.f32110b.trySetResult(null);
        }

        Task e() {
            return this.f32110b.getTask();
        }
    }

    j1(Context context, String str) {
        this(context, str, a());
    }

    j1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f32106d = new ArrayDeque();
        this.f32108f = false;
        Context applicationContext = context.getApplicationContext();
        this.f32103a = applicationContext;
        this.f32104b = new Intent(str).setPackage(applicationContext.getPackageName());
        this.f32105c = scheduledExecutorService;
    }

    private static ScheduledThreadPoolExecutor a() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        return scheduledThreadPoolExecutor;
    }

    private void b() {
        while (!this.f32106d.isEmpty()) {
            ((a) this.f32106d.poll()).d();
        }
    }

    private synchronized void c() {
        try {
            Log.isLoggable("FirebaseMessaging", 3);
            while (!this.f32106d.isEmpty()) {
                Log.isLoggable("FirebaseMessaging", 3);
                g1 g1Var = this.f32107e;
                if (g1Var == null || !g1Var.isBinderAlive()) {
                    e();
                    return;
                } else {
                    Log.isLoggable("FirebaseMessaging", 3);
                    this.f32107e.c((a) this.f32106d.poll());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void e() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("binder is dead. start connection? ");
            sb2.append(!this.f32108f);
        }
        if (this.f32108f) {
            return;
        }
        this.f32108f = true;
        try {
            if (ConnectionTracker.getInstance().bindService(this.f32103a, this.f32104b, this, 65)) {
                return;
            } else {
                Log.e("FirebaseMessaging", "binding to the service failed");
            }
        } catch (SecurityException e11) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e11);
        }
        this.f32108f = false;
        b();
    }

    synchronized Task d(Intent intent) {
        a aVar;
        Log.isLoggable("FirebaseMessaging", 3);
        aVar = new a(intent);
        aVar.c(this.f32105c);
        this.f32106d.add(aVar);
        c();
        return aVar.e();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onServiceConnected: ");
                sb2.append(componentName);
            }
            this.f32108f = false;
            if (iBinder instanceof g1) {
                this.f32107e = (g1) iBinder;
                c();
                return;
            }
            Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
            b();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onServiceDisconnected: ");
            sb2.append(componentName);
        }
        c();
    }
}
