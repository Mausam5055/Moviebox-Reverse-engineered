package com.cloud.hisavana.sdk.manager;

import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.util.Log;
import com.cloud.hisavana.sdk.Z;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.k1;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class NetStateManager {
    private static final int PROTECTION_TIME = 10000;
    private static final String TAG = "NetStateManager";
    private static AtomicBoolean isNetAvailable = new AtomicBoolean(false);
    private static AtomicBoolean isInitSuccessful = new AtomicBoolean(false);
    private static long lastRequestTime = 0;
    private static boolean isInit = false;

    class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(true);
            e4.b().d(NetStateManager.TAG, "onAvailable isNetAvailable " + NetStateManager.isNetAvailable);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - NetStateManager.lastRequestTime) > 10000) {
                long unused = NetStateManager.lastRequestTime = jCurrentTimeMillis;
                k1.o().n(2);
                g.f22718d.a().i();
                Z.f21541a.D();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z10) {
            super.onBlockedStatusChanged(network, z10);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(!z10);
            e4.b().d(NetStateManager.TAG, "onBlockedStatusChanged isNetAvailable " + NetStateManager.isNetAvailable);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLosing(Network network, int i11) {
            super.onLosing(network, i11);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(false);
            e4.b().d(NetStateManager.TAG, "onLosing isNetAvailable " + NetStateManager.isNetAvailable);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(false);
            NetStateManager.updateNetStatus(1000);
            e4.b().d(NetStateManager.TAG, "onLost isNetAvailable " + NetStateManager.isNetAvailable);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            super.onUnavailable();
            NetStateManager.isInitSuccessful.set(true);
            NetStateManager.isNetAvailable.set(false);
            e4.b().d(NetStateManager.TAG, "onUnavailable isNetAvailable " + NetStateManager.isNetAvailable);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NetStateManager.isNetAvailable.set(MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a()));
        }
    }

    public static boolean checkNetworkState(boolean z10) {
        if (Build.VERSION.SDK_INT < 24) {
            return MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a());
        }
        e4.b().d(TAG, "checkNetworkState " + isNetAvailable + ", isInitSuccessful " + isInitSuccessful + ", isSync=" + z10);
        if (!z10) {
            return isNetAvailable.get();
        }
        boolean zC = MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a());
        isNetAvailable.set(zC);
        return zC;
    }

    public static void registerMonitorBroadcast() {
        if (isInit) {
            return;
        }
        isInit = true;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                ((ConnectivityManager) com.cloud.sdk.commonutil.util.e.a().getSystemService("connectivity")).registerDefaultNetworkCallback(new a());
            } catch (Exception e11) {
                e4.b().e(TAG, "registerMonitorBroadcast " + Log.getStackTraceString(e11));
            }
        }
        updateNetStatus(0);
    }

    public static void setIsNetAvailable(boolean z10) {
        isNetAvailable.set(z10);
    }

    public static void updateNetStatus(int i11) {
        HSScopeHelper.f23167a.j(new b(), i11);
    }
}
