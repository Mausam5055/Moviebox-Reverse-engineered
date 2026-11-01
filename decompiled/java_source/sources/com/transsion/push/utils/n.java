package com.transsion.push.utils;

import com.cloud.tmc.kernel.utils.NetworkUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class n {
    public static String a() {
        int iC = com.transsion.core.utils.d.c();
        if (iC == -101) {
            return "wifi";
        }
        if (iC == -1 || iC == 0) {
            return "";
        }
        if (iC == 1) {
            return NetworkUtil.NETWORK_TYPE_2G;
        }
        if (iC != 2) {
            return iC != 3 ? "" : NetworkUtil.NETWORK_TYPE_4G;
        }
        return NetworkUtil.NETWORK_TYPE_3G;
    }

    public static String b() {
        String strA = a();
        if ("wifi".equals(strA)) {
            return "wifi";
        }
        return "".equals(strA) ? "no_network" : "mobile";
    }

    public static boolean c() {
        return "wifi".equals(a());
    }
}
