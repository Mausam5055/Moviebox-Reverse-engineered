package com.transsion.transfer.wifi.util;

import android.net.wifi.WifiManager;
import android.os.PowerManager;
import com.blankj.utilcode.util.Utils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f55967a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static WifiManager.WifiLock f55968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static PowerManager.WakeLock f55969c;

    private f() {
    }

    private final String b() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void a() {
        PowerManager.WakeLock wakeLock;
        WifiManager.WifiLock wifiLock;
        try {
            if (f55968b == null) {
                Object systemService = Utils.a().getApplicationContext().getSystemService("wifi");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                f55968b = ((WifiManager) systemService).createWifiLock(3, "MB:Wifi-Connect");
            }
            if (f55969c == null) {
                Object systemService2 = Utils.a().getSystemService("power");
                Intrinsics.f(systemService2, "null cannot be cast to non-null type android.os.PowerManager");
                f55969c = ((PowerManager) systemService2).newWakeLock(1, "MB:Wifi-Connect");
            }
            WifiManager.WifiLock wifiLock2 = f55968b;
            if (wifiLock2 != null && !wifiLock2.isHeld() && (wifiLock = f55968b) != null) {
                wifiLock.acquire();
            }
            PowerManager.WakeLock wakeLock2 = f55969c;
            if (wakeLock2 == null || wakeLock2.isHeld() || (wakeLock = f55969c) == null) {
                return;
            }
            wakeLock.acquire(600000L);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final void c() {
        WifiManager.WifiLock wifiLock = f55968b;
        if (wifiLock != null && wifiLock.isHeld()) {
            WifiManager.WifiLock wifiLock2 = f55968b;
            if (wifiLock2 != null) {
                wifiLock2.release();
            }
            f55968b = null;
            g.b(g.f55970a, b() + " --> release() --> mWifiLock?.release() --> success", false, 2, null);
        }
        PowerManager.WakeLock wakeLock = f55969c;
        if (wakeLock == null || !wakeLock.isHeld()) {
            return;
        }
        PowerManager.WakeLock wakeLock2 = f55969c;
        if (wakeLock2 != null) {
            wakeLock2.release();
        }
        f55969c = null;
        g.b(g.f55970a, b() + " --> release() --> mWakeLock?.release() --> success", false, 2, null);
    }
}
