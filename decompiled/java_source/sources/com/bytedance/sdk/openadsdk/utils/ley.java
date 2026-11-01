package com.bytedance.sdk.openadsdk.utils;

import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class ley {
    private static volatile boolean EjP = true;
    private static String Sj;
    private static String TKC;
    private static String sP;

    public static class Sj extends com.bytedance.sdk.component.Dq.Dq {
        public static AtomicBoolean Sj = new AtomicBoolean(false);
        private static final AtomicLong sP = new AtomicLong(0);

        public Sj(String str, int i11) {
            super(str, i11);
        }

        public static void Sj() {
            if (Sj.get()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            AtomicLong atomicLong = sP;
            if (jCurrentTimeMillis - atomicLong.get() < 600000) {
                return;
            }
            atomicLong.set(jCurrentTimeMillis);
            JcM.sP((com.bytedance.sdk.component.Dq.Dq) new Sj("UpdateSimStatusTask", 5));
        }

        @Override // java.lang.Runnable
        public void run() {
            Sj.set(true);
            ley.HiB();
            Sj.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void HiB() {
        String simOperatorName;
        String simOperator;
        String strSubstring;
        if (com.bytedance.sdk.openadsdk.core.dNu.Sj() == null) {
            return;
        }
        EjP = true;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) com.bytedance.sdk.openadsdk.core.dNu.Sj().getSystemService("phone");
            try {
                int simState = telephonyManager.getSimState();
                if (simState == 0 || simState == 1) {
                    EjP = false;
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("SimUtils", th2.getMessage());
            }
            String str = null;
            try {
                simOperatorName = telephonyManager.getSimOperatorName();
            } catch (Throwable unused) {
                simOperatorName = null;
            }
            try {
                simOperator = telephonyManager.getNetworkOperator();
            } catch (Throwable unused2) {
                simOperator = null;
            }
            if (simOperator == null || simOperator.length() < 5) {
                try {
                    simOperator = telephonyManager.getSimOperator();
                } catch (Throwable unused3) {
                }
            }
            if (TextUtils.isEmpty(simOperator) || simOperator.length() <= 4) {
                strSubstring = null;
            } else {
                String strSubstring2 = simOperator.substring(0, 3);
                strSubstring = simOperator.substring(3);
                str = strSubstring2;
            }
            if (!TextUtils.isEmpty(simOperatorName)) {
                Sj = simOperatorName;
            }
            if (!TextUtils.isEmpty(str)) {
                sP = str;
            }
            if (TextUtils.isEmpty(strSubstring)) {
                return;
            }
            TKC = strSubstring;
        } catch (Throwable unused4) {
        }
    }

    public static String Sj() {
        Sj.Sj();
        return Sj;
    }

    public static String TKC() {
        Sj.Sj();
        return TKC;
    }

    public static String sP() {
        try {
            Sj.Sj();
            if (!EjP) {
                StringBuilder sb2 = new StringBuilder("getMCC");
                sb2.append(EjP ? "Have SIM card" : "No SIM card, MCC returns null");
                com.bytedance.sdk.component.utils.sU.sP("MCC", sb2.toString());
                return null;
            }
            Configuration configuration = com.bytedance.sdk.openadsdk.core.dNu.Sj().getResources().getConfiguration();
            int i11 = configuration.mcc;
            String strValueOf = i11 != 0 ? String.valueOf(i11) : sP;
            com.bytedance.sdk.component.utils.sU.sP("MCC", "config=" + configuration.mcc + ",sMCC=" + sP);
            return strValueOf;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("SimUtils", th2.getMessage());
            return null;
        }
    }
}
