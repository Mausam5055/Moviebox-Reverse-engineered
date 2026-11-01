package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.stats.WakeLock;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
abstract class e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final long f32073a = TimeUnit.MINUTES.toMillis(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f32074b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static WakeLock f32075c;

    private static void b(Context context) {
        if (f32075c == null) {
            WakeLock wakeLock = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f32075c = wakeLock;
            wakeLock.setReferenceCounted(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Intent intent) {
        synchronized (f32074b) {
            try {
                if (f32075c != null && d(intent)) {
                    g(intent, false);
                    f32075c.release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static boolean d(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    static void f(Context context, j1 j1Var, final Intent intent) {
        synchronized (f32074b) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                if (!zD) {
                    f32075c.acquire(f32073a);
                }
                j1Var.d(intent).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.firebase.messaging.d1
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        e1.c(intent);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void g(Intent intent, boolean z10) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z10);
    }

    static ComponentName h(Context context, Intent intent) {
        synchronized (f32074b) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!zD) {
                    f32075c.acquire(f32073a);
                }
                return componentNameStartService;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
