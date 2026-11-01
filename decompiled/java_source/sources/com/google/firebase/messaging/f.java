package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.Tasks;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f32076a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f32077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k0 f32078c;

    public f(Context context, k0 k0Var, ExecutorService executorService) {
        this.f32076a = executorService;
        this.f32077b = context;
        this.f32078c = k0Var;
    }

    private boolean b() {
        if (((KeyguardManager) this.f32077b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!PlatformVersion.isAtLeastLollipop()) {
            SystemClock.sleep(10L);
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f32077b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    private void c(d.a aVar) {
        Log.isLoggable("FirebaseMessaging", 3);
        ((NotificationManager) this.f32077b.getSystemService("notification")).notify(aVar.f32062b, aVar.f32063c, aVar.f32061a.c());
    }

    private g0 d() {
        g0 g0VarI = g0.i(this.f32078c.p("gcm.n.image"));
        if (g0VarI != null) {
            g0VarI.m(this.f32076a);
        }
        return g0VarI;
    }

    private void e(NotificationCompat.m mVar, g0 g0Var) {
        if (g0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) Tasks.await(g0Var.k(), 5L, TimeUnit.SECONDS);
            mVar.A(bitmap);
            mVar.L(new NotificationCompat.j().r(bitmap).q(null));
        } catch (InterruptedException unused) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            g0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e11) {
            Log.w("FirebaseMessaging", "Failed to download image: " + e11.getCause());
        } catch (TimeoutException unused2) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            g0Var.close();
        }
    }

    boolean a() {
        if (this.f32078c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        g0 g0VarD = d();
        d.a aVarE = d.e(this.f32077b, this.f32078c);
        e(aVarE.f32061a, g0VarD);
        c(aVarE);
        return true;
    }
}
