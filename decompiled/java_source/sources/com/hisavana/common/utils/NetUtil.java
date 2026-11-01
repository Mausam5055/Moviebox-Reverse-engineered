package com.hisavana.common.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.cloud.sdk.commonutil.util.e;

/* JADX INFO: loaded from: classes4.dex */
public class NetUtil {
    public static boolean checkNetworkState() {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (e.a().getApplicationContext() == null || (connectivityManager = (ConnectivityManager) e.a().getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception unused) {
            activeNetworkInfo = null;
        }
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }
}
