package com.cloud.sdk.commonutil.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class MitNetUtil {

    public enum NetworkType {
        NETWORK_UNKNOWN,
        NETWORK_WIFI,
        NETWORK_2G,
        NETWORK_3G,
        NETWORK_4G,
        NETWORK_5G,
        NETWORK_ETHERNET
    }

    public static NetworkType a(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo.State state;
        NetworkInfo.State state2;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) != null) {
            try {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                if (networkInfo == null || ((state2 = networkInfo.getState()) != NetworkInfo.State.CONNECTED && state2 != NetworkInfo.State.CONNECTING)) {
                    NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(9);
                    if (networkInfo2 != null && ((state = networkInfo2.getState()) == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
                        return NetworkType.NETWORK_ETHERNET;
                    }
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                        if (activeNetworkInfo.getType() != 0) {
                            return NetworkType.NETWORK_UNKNOWN;
                        }
                        switch (activeNetworkInfo.getSubtype()) {
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                            case 11:
                            case 16:
                                return NetworkType.NETWORK_2G;
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                            case 17:
                                return NetworkType.NETWORK_3G;
                            case 13:
                            case 18:
                                return NetworkType.NETWORK_4G;
                            case 19:
                            default:
                                String subtypeName = activeNetworkInfo.getSubtypeName();
                                if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                                    return NetworkType.NETWORK_UNKNOWN;
                                }
                                return NetworkType.NETWORK_3G;
                            case 20:
                                return NetworkType.NETWORK_5G;
                        }
                    }
                    return NetworkType.NETWORK_UNKNOWN;
                }
                return NetworkType.NETWORK_WIFI;
            } catch (Exception e11) {
                c.Log().e("MitNetUtil", Log.getStackTraceString(e11));
            }
        }
        return NetworkType.NETWORK_UNKNOWN;
    }

    public static String b() {
        return e.a().getApplicationContext() != null ? ((TelephonyManager) e.a().getApplicationContext().getSystemService("phone")).getSimOperatorName() : "";
    }

    public static boolean c(Context context) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e11) {
            c.Log().e("MitNetUtil", Log.getStackTraceString(e11));
        }
        return false;
    }
}
