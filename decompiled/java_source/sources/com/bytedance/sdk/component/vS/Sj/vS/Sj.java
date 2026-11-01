package com.bytedance.sdk.component.vS.Sj.vS;

import com.bytedance.sdk.component.vS.Sj.Dq;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static volatile sP Sj;

    public static sP Sj() {
        if (Sj == null) {
            synchronized (sP.class) {
                try {
                    if (Sj == null) {
                        Sj = new TKC(Dq.Jcg().vS(), new vS(Dq.Jcg().vS()));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }
}
