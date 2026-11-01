package com.google.android.exoplayer2;

import android.content.Context;
import android.os.PowerManager;

/* JADX INFO: loaded from: classes3.dex */
final class q3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PowerManager f25609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PowerManager.WakeLock f25610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f25612d;

    public q3(Context context) {
        this.f25609a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    private void c() {
        PowerManager.WakeLock wakeLock = this.f25610b;
        if (wakeLock == null) {
            return;
        }
        if (this.f25611c && this.f25612d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f25610b == null) {
            PowerManager powerManager = this.f25609a;
            if (powerManager == null) {
                com.google.android.exoplayer2.util.s.i("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                this.f25610b = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            }
        }
        this.f25611c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f25612d = z10;
        c();
    }
}
