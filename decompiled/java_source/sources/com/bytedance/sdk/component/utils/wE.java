package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class wE {
    private static final Object Sj = new Object();
    private static final Map<Sj, Object> sP = new ConcurrentHashMap();
    private static AtomicBoolean TKC = new AtomicBoolean(false);
    private static volatile int EjP = -1;
    private static volatile long HiB = 0;
    private static volatile int vS = 60000;
    private static RiZ Jcg = null;
    private static final AtomicBoolean Dq = new AtomicBoolean(false);

    public interface Sj {
        void Sj(Context context, Intent intent, boolean z10, int i11);
    }

    private static class sP extends BroadcastReceiver {
        private sP() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z10 = false;
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            if (wE.sP != null && wE.sP.size() > 0) {
                z10 = true;
            }
            wE.sP(context, intent, z10, booleanExtra);
        }
    }

    public static int Sj(Context context, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (HiB + j11 > jElapsedRealtime && EjP != -1) {
            if (jElapsedRealtime - HiB >= vS) {
                sP(context, (Intent) null, false, false);
            }
            return EjP;
        }
        return sP(context);
    }

    public static void Sj(Sj sj2) {
        if (sj2 == null) {
            return;
        }
        sP.remove(sj2);
    }

    public static void Sj(Sj sj2, Context context) {
        if (sj2 == null) {
            return;
        }
        if (!TKC.get()) {
            try {
                context.registerReceiver(new sP(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                TKC.set(true);
            } catch (Throwable unused) {
            }
        }
        sP.put(sj2, Sj);
    }

    private static int TKC(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                switch (activeNetworkInfo.getSubtype()) {
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
                        RiZ riZ = Jcg;
                        return (riZ == null || !riZ.Sj(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !(subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000"))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int sP(Context context) {
        EjP = TKC(context);
        HiB = SystemClock.elapsedRealtime();
        return EjP;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sP(Context context, Intent intent, int i11, boolean z10) {
        Map<Sj, Object> map = sP;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Sj sj2 : map.keySet()) {
            if (sj2 != null) {
                sj2.Sj(context, intent, !z10, i11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sP(final Context context, final Intent intent, final boolean z10, final boolean z11) {
        if (!z10 && z11) {
            EjP = 0;
        } else if (Dq.compareAndSet(false, true)) {
            com.bytedance.sdk.component.Dq.vS.sP(new com.bytedance.sdk.component.Dq.Dq("getNetworkType") { // from class: com.bytedance.sdk.component.utils.wE.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = wE.EjP = z11 ? 0 : wE.sP(context);
                    wE.Dq.set(false);
                    if (z10) {
                        wE.sP(context, intent, wE.EjP, z11);
                    }
                }
            });
        }
    }
}
