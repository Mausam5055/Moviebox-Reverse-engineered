package androidx.media3.exoplayer;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
final class s4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f12575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.p f12576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f12577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f12578d;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f12579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WifiManager.WifiLock f12580b;

        public a(Context context) {
            this.f12579a = context;
        }

        public void a(boolean z10, boolean z11) {
            if (z10 && this.f12580b == null) {
                WifiManager wifiManager = (WifiManager) this.f12579a.getApplicationContext().getSystemService("wifi");
                if (wifiManager == null) {
                    androidx.media3.common.util.u.h("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                } else {
                    WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                    this.f12580b = wifiLockCreateWifiLock;
                    wifiLockCreateWifiLock.setReferenceCounted(false);
                }
            }
            WifiManager.WifiLock wifiLock = this.f12580b;
            if (wifiLock == null) {
                return;
            }
            if (z10 && z11) {
                wifiLock.acquire();
            } else {
                wifiLock.release();
            }
        }
    }

    public s4(Context context, Looper looper, androidx.media3.common.util.i iVar) {
        this.f12575a = new a(context.getApplicationContext());
        this.f12576b = iVar.createHandler(looper, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z10, boolean z11) {
        this.f12575a.a(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z10) {
        this.f12575a.a(true, z10);
    }

    public void e(final boolean z10) {
        if (this.f12577c == z10) {
            return;
        }
        this.f12577c = z10;
        final boolean z11 = this.f12578d;
        this.f12576b.post(new Runnable() { // from class: androidx.media3.exoplayer.q4
            @Override // java.lang.Runnable
            public final void run() {
                this.f12482a.c(z10, z11);
            }
        });
    }

    public void f(final boolean z10) {
        if (this.f12578d == z10) {
            return;
        }
        this.f12578d = z10;
        if (this.f12577c) {
            this.f12576b.post(new Runnable() { // from class: androidx.media3.exoplayer.r4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12563a.d(z10);
                }
            });
        }
    }
}
