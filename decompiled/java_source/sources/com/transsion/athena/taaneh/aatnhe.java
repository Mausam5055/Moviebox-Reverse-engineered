package com.transsion.athena.taaneh;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.b;
import com.transsion.core.log.ObjectLogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class aatnhe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f42796a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static aethna f42797b;

    @TargetApi(21)
    private static class aethna extends ConnectivityManager.NetworkCallback {
        private aethna() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            aatnhe.a();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            super.onCapabilitiesChanged(network, networkCapabilities);
            aatnhe.a();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            aatnhe.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    @SuppressLint({"MissingPermission"})
    private static int a(Context context) {
        int subtype;
        String subtypeName;
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            subtype = 0;
        } else if (Build.VERSION.SDK_INT < 30) {
            subtype = telephonyManager.getNetworkType();
        } else if (b.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0 || telephonyManager.hasCarrierPrivileges()) {
            subtype = telephonyManager.getDataNetworkType();
        } else {
            subtype = 0;
        }
        if (subtype != 0 || (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            subtypeName = "";
        } else {
            subtype = activeNetworkInfo.getSubtype();
            subtypeName = activeNetworkInfo.getSubtypeName();
        }
        switch (subtype) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return 2;
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
                return 3;
            case 13:
            case 18:
            case 19:
                return 4;
            case 20:
                return 5;
            default:
                if (TextUtils.isEmpty(subtypeName)) {
                    return 99;
                }
                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? 3 : 0;
        }
    }

    public static void a() {
        f42796a = -1;
    }

    private static boolean a(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(3);
    }

    public static int b(Context context) {
        NetworkCapabilities networkCapabilities;
        int i11 = f42796a;
        if (i11 != -1 && i11 != 0 && i11 != 99) {
            return i11;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (!b(connectivityManager)) {
                f42796a = 99;
                return 99;
            }
            if (c(connectivityManager)) {
                f42796a = 1;
            } else if (a(connectivityManager)) {
                f42796a = 6;
            } else {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                boolean zHasTransport = false;
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                    zHasTransport = networkCapabilities.hasTransport(0);
                }
                if (zHasTransport) {
                    f42796a = a(context);
                } else {
                    f42796a = 100;
                }
            }
            return f42796a;
        } catch (Exception unused) {
            return 99;
        }
    }

    private static boolean b(ConnectivityManager connectivityManager) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        if (connectivityManager == null || (activeNetwork = connectivityManager.getActiveNetwork()) == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4) || networkCapabilities.hasCapability(16);
    }

    public static boolean c(Context context) {
        try {
            return b((ConnectivityManager) context.getSystemService("connectivity"));
        } catch (Exception e11) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
            return false;
        }
    }

    private static boolean c(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1);
    }

    public static boolean d(Context context) {
        try {
            if (!c(context)) {
                return false;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            return c(connectivityManager) || a(connectivityManager);
        } catch (Exception unused) {
            return false;
        }
    }

    public static void e(Context context) {
        try {
            if (f42797b == null) {
                f42797b = new aethna();
            }
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().build();
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(networkRequestBuild, f42797b);
            }
        } catch (Exception e11) {
            ObjectLogUtils objectLogUtils = com.transsion.athena.taaneh.aethna.f42798a;
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e11));
        }
    }
}
