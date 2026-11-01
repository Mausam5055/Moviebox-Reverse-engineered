package com.bytedance.sdk.component.Dq;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.utils.Zq;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private static AtomicInteger TKC = new AtomicInteger(0);
    public static final String[] Sj = {"com.bytedance.sdk", "com.bykv.vk", "com.ss", "tt_pangle"};
    public static final String[] sP = {"tt_pangle", "bd_tracker"};
    private static int EjP = 0;
    private static int HiB = 0;

    public static class Sj {
        public String EjP;
        public int Sj;
        public String TKC;
        public String sP;

        public Sj(String str, int i11, String str2, String str3) {
            this.TKC = str;
            this.Sj = i11;
            this.EjP = str2;
            this.sP = str3;
        }

        public int Sj() {
            return this.Sj;
        }

        public void Sj(int i11) {
            this.Sj = i11;
        }

        public String toString() {
            return "ThreadModel{times=" + this.Sj + ", name='" + this.sP + "', lastStackStack='" + this.TKC + "'}";
        }
    }

    public static void Sj() {
        try {
            sP();
        } catch (Throwable unused) {
        }
    }

    private static boolean Sj(String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void sP() {
        int i11;
        TKC tkcUA = vS.uA();
        if (tkcUA == null) {
            return;
        }
        int i12 = 1;
        int iAddAndGet = TKC.addAndGet(1);
        int i13 = vS.TKC;
        if (i13 < 0 || iAddAndGet % i13 != 0 || Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        HashMap map = new HashMap();
        if (allStackTraces == null) {
            return;
        }
        boolean zSj = Zq.Sj();
        int size = allStackTraces.size();
        if (size > HiB) {
            HiB = size;
        }
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
        int i14 = 0;
        int i15 = 0;
        while (it.hasNext()) {
            Map.Entry<Thread, StackTraceElement[]> next = it.next();
            i15 += i12;
            Thread key = next.getKey();
            StackTraceElement[] value = next.getValue();
            StringBuilder sb2 = new StringBuilder("\n");
            if (zSj) {
                sb2.append("Thread Name is : " + key.getName());
                sb2.append("\n");
            }
            int length = value.length;
            String str = null;
            int i16 = 0;
            while (i16 < length) {
                String string = value[i16].toString();
                Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = it;
                if (zSj) {
                    sb2.append(string + "\n");
                }
                if (TextUtils.isEmpty(str) && (Sj(string, Sj) || Sj(key.getName(), sP))) {
                    i14++;
                    str = string;
                }
                i16++;
                it = it2;
            }
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it3 = it;
            if (zSj) {
                if (TextUtils.isEmpty(str)) {
                    i11 = 1;
                } else {
                    String str2 = str + UrlUtils.AND_MARK + key.getName();
                    Sj sj2 = (Sj) map.get(str2);
                    if (sj2 != null) {
                        i11 = 1;
                        sj2.Sj(sj2.Sj() + 1);
                    } else {
                        i11 = 1;
                        sj2 = new Sj(str2, 1, sb2.toString(), key.getName());
                    }
                    map.put(str2, sj2);
                }
                if (!TextUtils.isEmpty(sb2.toString())) {
                    Log.e("PoolTaskStatistics", "Thread index = " + i15 + "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
                    Log.w("PoolTaskStatistics", sb2.toString());
                }
            } else {
                i11 = 1;
            }
            i12 = i11;
            it = it3;
        }
        if (i14 > EjP) {
            EjP = i14;
        }
        if (zSj) {
            Log.e("PoolTaskStatistics", "SDK current threads=" + i14 + ", SDK Max threads=" + EjP + ", Application threads = " + size + ", Application max threads = " + HiB);
            Iterator it4 = map.entrySet().iterator();
            while (it4.hasNext()) {
                ((Sj) ((Map.Entry) it4.next()).getValue()).toString();
            }
        }
        tkcUA.Sj(new com.bytedance.sdk.component.Dq.sP.Sj(i14, EjP, size, HiB));
    }
}
