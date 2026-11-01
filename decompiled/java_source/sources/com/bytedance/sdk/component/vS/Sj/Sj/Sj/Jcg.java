package com.bytedance.sdk.component.vS.Sj.Sj.Sj;

import com.bytedance.sdk.component.vS.Sj.Dq;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    public static String Sj = "com.bytedance.openadsdk";
    public static String sP = "content://" + Sj + ".TTMultiProvider";

    static {
        Sj();
    }

    public static void Sj() {
        if (Dq.Jcg().vS() != null) {
            Sj = Dq.Jcg().vS().getPackageName();
            sP = "content://" + Sj + ".TTMultiProvider";
        }
    }
}
