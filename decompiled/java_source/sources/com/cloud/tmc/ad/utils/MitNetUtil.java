package com.cloud.tmc.ad.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import qk.a;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/cloud/tmc/ad/utils/MitNetUtil;", "", "()V", "operatorName", "", "getOperatorName", "()Ljava/lang/String;", "getNetworkType", "Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;", "context", "Landroid/content/Context;", "isNetworkAvailable", "", "NetworkType", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MitNetUtil {
    public static final MitNetUtil INSTANCE = new MitNetUtil();

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/ad/utils/MitNetUtil$NetworkType;", "", "(Ljava/lang/String;I)V", "NETWORK_UNKNOWN", "NETWORK_WIFI", "NETWORK_2G", "NETWORK_3G", "NETWORK_4G", "NETWORK_5G", "NETWORK_ETHERNET", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum NetworkType {
        NETWORK_UNKNOWN,
        NETWORK_WIFI,
        NETWORK_2G,
        NETWORK_3G,
        NETWORK_4G,
        NETWORK_5G,
        NETWORK_ETHERNET
    }

    private MitNetUtil() {
    }

    public final NetworkType getNetworkType(Context context) {
        NetworkInfo.State state;
        NetworkInfo.State state2;
        if (context == null) {
            return NetworkType.NETWORK_UNKNOWN;
        }
        Object systemService = context.getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
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
                            if (!StringsKt.H(subtypeName, "TD-SCDMA", true) && !StringsKt.H(subtypeName, "WCDMA", true) && !StringsKt.H(subtypeName, "CDMA2000", true)) {
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
            e11.printStackTrace();
        }
    }

    public final String getOperatorName() {
        if (a.a().getApplicationContext() == null) {
            return "";
        }
        Object systemService = a.a().getApplicationContext().getSystemService("phone");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        String simOperatorName = ((TelephonyManager) systemService).getSimOperatorName();
        Intrinsics.g(simOperatorName, "telephonyManager.simOperatorName");
        return simOperatorName;
    }

    public final boolean isNetworkAvailable(Context context) {
        NetworkCapabilities networkCapabilities;
        Intrinsics.h(context, "context");
        Object systemService = context.getApplicationContext().getSystemService("connectivity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return false;
    }
}
