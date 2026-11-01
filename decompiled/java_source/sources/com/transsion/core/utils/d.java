package com.transsion.core.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static boolean a() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (qk.a.a().getApplicationContext() == null || (connectivityManager = (ConnectivityManager) qk.a.a().getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    private static int b(int i11) {
        int i12 = -101;
        if (i11 != -101) {
            i12 = -1;
            if (i11 != -1) {
                switch (i11) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 2;
                    case 13:
                        return 3;
                    default:
                        return 0;
                }
            }
        }
        return i12;
    }

    public static int c() {
        int networkType = 0;
        try {
            if (qk.a.a().getApplicationContext() == null && qk.a.a().getApplicationContext().getSystemService("connectivity") == null) {
                return 0;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) qk.a.a().getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    networkType = -101;
                } else if (type == 0) {
                    networkType = ((TelephonyManager) qk.a.a().getApplicationContext().getSystemService("phone")).getNetworkType();
                }
            } else {
                networkType = -1;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return b(networkType);
    }
}
