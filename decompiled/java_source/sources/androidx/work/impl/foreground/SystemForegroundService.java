package androidx.work.impl.foreground;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import androidx.p009lifecycle.LifecycleService;
import androidx.work.t;

/* JADX INFO: loaded from: classes2.dex */
public class SystemForegroundService extends LifecycleService implements SystemForegroundDispatcher.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f15678e = t.i("SystemFgService");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static SystemForegroundService f15679f = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f15680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    SystemForegroundDispatcher f15681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    NotificationManager f15682d;

    static class a {
        static void a(Service service, int i11, Notification notification, int i12) {
            service.startForeground(i11, notification, i12);
        }
    }

    static class b {
        static void a(Service service, int i11, Notification notification, int i12) {
            try {
                service.startForeground(i11, notification, i12);
            } catch (ForegroundServiceStartNotAllowedException e11) {
                t.e().l(SystemForegroundService.f15678e, "Unable to start foreground service", e11);
            } catch (SecurityException e12) {
                t.e().l(SystemForegroundService.f15678e, "Unable to start foreground service", e12);
            }
        }
    }

    private void f() {
        this.f15682d = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.f15681c = systemForegroundDispatcher;
        systemForegroundDispatcher.o(this);
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.a
    public void a(int i11, Notification notification) {
        this.f15682d.notify(i11, notification);
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.a
    public void b(int i11) {
        this.f15680b = true;
        t.e().a(f15678e, "Shutting down.");
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f15679f = null;
        stopSelf(i11);
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.a
    public void c(int i11, int i12, Notification notification) {
        int i13 = Build.VERSION.SDK_INT;
        if (i13 >= 31) {
            b.a(this, i11, notification, i12);
        } else if (i13 >= 29) {
            a.a(this, i11, notification, i12);
        } else {
            startForeground(i11, notification);
        }
    }

    @Override // androidx.work.impl.foreground.SystemForegroundDispatcher.a
    public void d(int i11) {
        this.f15682d.cancel(i11);
    }

    @Override // androidx.p009lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        f15679f = this;
        f();
    }

    @Override // androidx.p009lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f15681c.l();
    }

    @Override // androidx.p009lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        super.onStartCommand(intent, i11, i12);
        if (this.f15680b) {
            t.e().f(f15678e, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f15681c.l();
            f();
            this.f15680b = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f15681c.m(intent, i12);
        return 3;
    }

    @Override // android.app.Service
    public void onTimeout(int i11) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.f15681c.n(i11, 2048);
    }

    public void onTimeout(int i11, int i12) {
        this.f15681c.n(i11, i12);
    }
}
