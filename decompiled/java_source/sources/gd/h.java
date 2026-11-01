package gd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f63551a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Runnable f63555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f63556f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f63553c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BroadcastReceiver f63552b = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f63554d = new Handler();

    /* JADX INFO: Access modifiers changed from: private */
    final class b extends BroadcastReceiver {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(boolean z10) {
            h.this.f(z10);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                final boolean z10 = intent.getIntExtra("plugged", -1) <= 0;
                h.this.f63554d.post(new Runnable() { // from class: gd.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f63558a.b(z10);
                    }
                });
            }
        }
    }

    public h(Context context, Runnable runnable) {
        this.f63551a = context;
        this.f63555e = runnable;
    }

    private void e() {
        this.f63554d.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(boolean z10) {
        this.f63556f = z10;
        if (this.f63553c) {
            c();
        }
    }

    private void g() {
        if (this.f63553c) {
            return;
        }
        this.f63551a.registerReceiver(this.f63552b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.f63553c = true;
    }

    private void i() {
        if (this.f63553c) {
            this.f63551a.unregisterReceiver(this.f63552b);
            this.f63553c = false;
        }
    }

    public void c() {
        e();
        if (this.f63556f) {
            this.f63554d.postDelayed(this.f63555e, 300000L);
        }
    }

    public void d() {
        e();
        i();
    }

    public void h() {
        g();
        c();
    }
}
