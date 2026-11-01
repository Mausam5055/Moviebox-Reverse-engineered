package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.content.Context;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    public static AtomicInteger Sj = new AtomicInteger(0);
    public static final AtomicBoolean sP = new AtomicBoolean(false);

    public static com.bytedance.sdk.openadsdk.Zq.TKC.sP Sj() {
        return aa.Sj;
    }

    public static void Sj(Context context, boolean z10) {
        if (sP.compareAndSet(false, true)) {
            com.bytedance.sdk.component.vS.Sj.sP.Sj(new com.bytedance.sdk.component.vS.Sj.Sj.C0230Sj().Sj(new TEQ()).sP(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj.TKC()).TKC(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj.HiB()).Sj(com.bytedance.sdk.component.vS.Sj.EjP.sP.Sj.EjP()).Sj(z10).Sj(new Ym()).Sj(Dq.Sj).sP(dNu.EjP().Fmk()).Sj(dNu.EjP().sef()).Sj(dNu.EjP().cX()).Sj(), context);
            sP();
        }
    }

    public static void Sj(com.bytedance.sdk.openadsdk.EjP.Sj sj2) {
        com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj sj3 = new com.bytedance.sdk.component.vS.Sj.EjP.Sj.Sj(sj2.EjP(), sj2);
        sj3.sP(sj2.HiB() ? (byte) 1 : (byte) 2);
        sj3.Sj((byte) 0);
        if (com.bytedance.sdk.component.vS.Sj.sP.sP()) {
            Sj(dNu.Sj(), com.bytedance.sdk.openadsdk.multipro.sP.TKC());
        }
        com.bytedance.sdk.component.vS.Sj.sP.Sj(sj3);
    }

    public static void Sj(String str) {
        Sj(str, false);
    }

    public static void Sj(String str, boolean z10) {
        if (com.bytedance.sdk.component.vS.Sj.sP.sP()) {
            Sj(dNu.Sj(), com.bytedance.sdk.openadsdk.multipro.sP.TKC());
        }
        com.bytedance.sdk.component.vS.Sj.sP.Sj(str, z10);
    }

    public static void Sj(final List<String> list, final int i11, final String str) {
        if (list == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(new com.bytedance.sdk.component.Dq.Dq("track") { // from class: com.bytedance.sdk.openadsdk.EjP.Sj.EjP.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.bytedance.sdk.component.vS.Sj.sP.sP()) {
                    EjP.Sj(dNu.Sj(), com.bytedance.sdk.openadsdk.multipro.sP.TKC());
                }
                com.bytedance.sdk.component.vS.Sj.sP.Sj(com.bytedance.sdk.openadsdk.core.aa.Sj(dNu.Sj()), list, true, i11, str);
            }
        });
    }

    public static void TKC() {
        try {
            com.bytedance.sdk.component.vS.Sj.sP.EjP();
            com.bytedance.sdk.component.vS.Sj.sP.HiB();
        } catch (Throwable th2) {
            sU.sP("AdLogSwitchUtils", th2.getMessage());
        }
    }

    public static void sP() {
        com.bytedance.sdk.component.vS.Sj.sP.TKC();
    }
}
