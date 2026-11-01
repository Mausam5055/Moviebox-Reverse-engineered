package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;

/* JADX INFO: loaded from: classes3.dex */
final class r3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WifiManager f25622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WifiManager.WifiLock f25623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f25625d;

    public r3(Context context) {
        this.f25622a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void c() {
        WifiManager.WifiLock wifiLock = this.f25623b;
        if (wifiLock == null) {
            return;
        }
        if (this.f25624c && this.f25625d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f25623b == null) {
            WifiManager wifiManager = this.f25622a;
            if (wifiManager == null) {
                com.google.android.exoplayer2.util.s.i("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.f25623b = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        this.f25624c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f25625d = z10;
        c();
    }
}
