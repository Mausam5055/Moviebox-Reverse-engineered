package com.bytedance.adsdk.Sj;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    public static vS Sj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "find":
                return new EjP();
            case "chunk":
                return new Sj();
            case "exist":
                return new TKC();
            case "translate":
                return new Jcg();
            case "isDigit":
                return new HiB();
            default:
                return null;
        }
    }

    public static Object Sj(com.bytedance.adsdk.Sj.sP.Sj.Sj sj2) {
        vS vSVarSj;
        if (sj2 == null || (vSVarSj = Sj(sj2.Sj())) == null) {
            return null;
        }
        return vSVarSj.Sj(null, sj2.sP());
    }
}
