package com.mbridge.msdk.foundation.same.net;

import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.i0;

/* JADX INFO: loaded from: classes5.dex */
public class Aa {
    private static final String C_END = "_mv_end";
    private static final String C_START = "mv_channel_";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f35423a = "";

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Process.killProcess(Process.myPid());
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public static String a() {
        return f35423a;
    }

    public static String b() {
        return null;
    }

    private static void b(String str) {
        String strA;
        Integer numC;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            strA = i0.a(str);
        } catch (Throwable th2) {
            th2.printStackTrace();
            strA = null;
        }
        if (!TextUtils.isEmpty(strA) && strA.startsWith(C_START) && strA.endsWith(C_END) && (numC = c(strA)) != null) {
            f35423a = String.valueOf(numC);
        } else {
            if (MBridgeConstans.DEBUG) {
                g();
                throw new RuntimeException("please don't update this value");
            }
            f35423a = "";
        }
    }

    private static Integer c(String str) {
        Throwable th2;
        Integer numValueOf;
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(C_START);
        int iIndexOf2 = str.indexOf(C_END);
        if (iIndexOf == -1 || iIndexOf2 == -1 || iIndexOf2 <= iIndexOf) {
            return null;
        }
        try {
            numValueOf = Integer.valueOf(str.substring(iIndexOf + 11, iIndexOf2));
            try {
                if (numValueOf.intValue() > 0) {
                    return numValueOf;
                }
                return null;
            } catch (Throwable th3) {
                th2 = th3;
                th2.printStackTrace();
                return numValueOf;
            }
        } catch (Throwable th4) {
            th2 = th4;
            numValueOf = null;
        }
    }

    private static void g() {
        new Handler().postDelayed(new a(), 500L);
    }
}
