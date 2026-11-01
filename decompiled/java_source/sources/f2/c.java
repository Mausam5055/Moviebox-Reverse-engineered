package f2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.scheduler.Requirements;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f62132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0754c f62133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Requirements f62134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Handler f62135d = a1.C();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f62136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f62137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f62138g;

    private class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            c.this.e();
        }
    }

    /* JADX INFO: renamed from: f2.c$c, reason: collision with other inner class name */
    public interface InterfaceC0754c {
        void a(c cVar, int i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class d extends ConnectivityManager.NetworkCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f62140a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f62141b;

        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            if (c.this.f62138g != null) {
                c.this.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            if (c.this.f62138g != null) {
                c.this.g();
            }
        }

        private void e() {
            c.this.f62135d.post(new Runnable() { // from class: f2.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f62143a.c();
                }
            });
        }

        private void f() {
            c.this.f62135d.post(new Runnable() { // from class: f2.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f62144a.d();
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            e();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z10) {
            if (z10) {
                return;
            }
            f();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean zHasCapability = networkCapabilities.hasCapability(16);
            if (this.f62140a && this.f62141b == zHasCapability) {
                if (zHasCapability) {
                    f();
                }
            } else {
                this.f62140a = true;
                this.f62141b = zHasCapability;
                e();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            e();
        }
    }

    public c(Context context, InterfaceC0754c interfaceC0754c, Requirements requirements) {
        this.f62132a = context.getApplicationContext();
        this.f62133b = interfaceC0754c;
        this.f62134c = requirements;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int notMetRequirements = this.f62134c.getNotMetRequirements(this.f62132a);
        if (this.f62137f != notMetRequirements) {
            this.f62137f = notMetRequirements;
            this.f62133b.a(this, notMetRequirements);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if ((this.f62137f & 3) == 0) {
            return;
        }
        e();
    }

    private void h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) androidx.media3.common.util.a.e((ConnectivityManager) this.f62132a.getSystemService("connectivity"));
        d dVar = new d();
        this.f62138g = dVar;
        connectivityManager.registerDefaultNetworkCallback(dVar);
    }

    private void k() {
        ((ConnectivityManager) androidx.media3.common.util.a.e((ConnectivityManager) this.f62132a.getSystemService("connectivity"))).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) androidx.media3.common.util.a.e(this.f62138g));
        this.f62138g = null;
    }

    public Requirements f() {
        return this.f62134c;
    }

    public int i() {
        this.f62137f = this.f62134c.getNotMetRequirements(this.f62132a);
        IntentFilter intentFilter = new IntentFilter();
        if (this.f62134c.isNetworkRequired()) {
            if (a1.f10350a >= 24) {
                h();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.f62134c.isChargingRequired()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.f62134c.isIdleRequired()) {
            if (a1.f10350a >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if (this.f62134c.isStorageNotLowRequired()) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        b bVar = new b();
        this.f62136e = bVar;
        this.f62132a.registerReceiver(bVar, intentFilter, null, this.f62135d);
        return this.f62137f;
    }

    public void j() {
        this.f62132a.unregisterReceiver((BroadcastReceiver) androidx.media3.common.util.a.e(this.f62136e));
        this.f62136e = null;
        if (a1.f10350a < 24 || this.f62138g == null) {
            return;
        }
        k();
    }
}
