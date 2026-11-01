package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
public abstract class EnhancedIntentService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Binder f31959b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f31961d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ExecutorService f31958a = n.d();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f31960c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f31962e = 0;

    /* JADX INFO: loaded from: classes4.dex */
    class a implements g1.a {
        a() {
        }

        @Override // com.google.firebase.messaging.g1.a
        public Task a(Intent intent) {
            return EnhancedIntentService.this.j(intent);
        }
    }

    private void d(Intent intent) {
        if (intent != null) {
            e1.c(intent);
        }
        synchronized (this.f31960c) {
            try {
                int i11 = this.f31962e - 1;
                this.f31962e = i11;
                if (i11 == 0) {
                    k(this.f31961d);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Intent intent, Task task) {
        d(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(Intent intent, TaskCompletionSource taskCompletionSource) {
        try {
            f(intent);
        } finally {
            taskCompletionSource.setResult(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task j(final Intent intent) {
        if (g(intent)) {
            return Tasks.forResult(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f31958a.execute(new Runnable() { // from class: com.google.firebase.messaging.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f32088a.i(intent, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    protected Intent e(Intent intent) {
        return intent;
    }

    public abstract void f(Intent intent);

    public boolean g(Intent intent) {
        return false;
    }

    boolean k(int i11) {
        return stopSelfResult(i11);
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        try {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.f31959b == null) {
                this.f31959b = new g1(new a());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f31959b;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f31958a.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i11, int i12) {
        synchronized (this.f31960c) {
            this.f31961d = i12;
            this.f31962e++;
        }
        Intent intentE = e(intent);
        if (intentE == null) {
            d(intent);
            return 2;
        }
        Task taskJ = j(intentE);
        if (taskJ.isComplete()) {
            d(intent);
            return 2;
        }
        taskJ.addOnCompleteListener(new w3.m(), new OnCompleteListener() { // from class: com.google.firebase.messaging.g
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f32082a.h(intent, task);
            }
        });
        return 3;
    }
}
