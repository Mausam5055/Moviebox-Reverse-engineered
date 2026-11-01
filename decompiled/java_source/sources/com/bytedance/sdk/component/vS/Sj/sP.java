package com.bytedance.sdk.component.vS.Sj;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private static volatile List<Object> Sj = new ArrayList();

    public static void EjP() {
        EjP.Sj.sP();
    }

    public static void HiB() {
        EjP ejP = EjP.Sj;
    }

    public static List<Object> Sj() {
        return Sj;
    }

    public static void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        EjP.Sj.Sj(sj2);
    }

    public static void Sj(Sj sj2, Context context) {
        EjP.Sj.Sj(sj2, context);
    }

    public static void Sj(String str, List<String> list, boolean z10, int i11, String str2) {
        Sj(str, list, z10, null, i11, str2);
    }

    public static void Sj(String str, List<String> list, boolean z10, Map<String, String> map, int i11, String str2) {
        EjP.Sj.Sj(str, list, z10, map, i11, str2);
    }

    public static void Sj(String str, boolean z10) {
        EjP.Sj.Sj(str, z10);
    }

    public static void Sj(boolean z10) {
        EjP.Sj.Sj(z10);
    }

    public static void TKC() {
        Sj(false);
        EjP.Sj.Sj();
    }

    public static boolean sP() {
        return Dq.Jcg().uvD() == null || Dq.Jcg().vS() == null;
    }
}
