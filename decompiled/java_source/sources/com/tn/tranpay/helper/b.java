package com.tn.tranpay.helper;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.tn.tranpay.TranPay;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f41651a = new b();

    private b() {
    }

    public final boolean a() {
        try {
            Object systemService = TranPay.f41486a.d().getSystemService("connectivity");
            ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
            boolean z10 = false;
            if (connectivityManager == null) {
                ai.a.k(ai.a.f619a, "无法获取 ConnectivityManager", null, 2, null);
                return false;
            }
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null) {
                ai.a.k(ai.a.f619a, "网络不可用: activeNetwork 为 null", null, 2, null);
                return false;
            }
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null) {
                ai.a.k(ai.a.f619a, "网络不可用: NetworkCapabilities 为 null", null, 2, null);
                return false;
            }
            if (networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16)) {
                z10 = true;
            }
            if (!z10) {
                ai.a.k(ai.a.f619a, "网络不可用: 无Internet连接或未验证", null, 2, null);
            }
            return z10;
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "检查网络状态失败: " + e11.getMessage(), null, 2, null);
            return true;
        }
    }
}
