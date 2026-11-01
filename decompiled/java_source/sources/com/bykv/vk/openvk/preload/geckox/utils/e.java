package com.bykv.vk.openvk.preload.geckox.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.cloud.tmc.kernel.utils.NetworkUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static String a(Context context) {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                if (networkInfo == null || (state = networkInfo.getState()) == null || (state != NetworkInfo.State.CONNECTED && state != NetworkInfo.State.CONNECTING)) {
                    switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            return NetworkUtil.NETWORK_TYPE_2G;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return NetworkUtil.NETWORK_TYPE_3G;
                        case 13:
                            return NetworkUtil.NETWORK_TYPE_4G;
                        default:
                            return "unknow";
                    }
                }
                return NetworkUtil.NETWORK_TYPE_WIFI;
            }
            return "unknow";
        } catch (Throwable th2) {
            GeckoLogger.w("gecko-debug-tag", "getNetworkState:", th2);
            return "null";
        }
    }
}
