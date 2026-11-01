package com.bytedance.sdk.component.adexpress.dynamic.TKC;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    public static Jcg Sj(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB hiB, com.bytedance.sdk.component.adexpress.dynamic.EjP.Jcg jcg, com.bytedance.sdk.component.adexpress.dynamic.EjP.TEQ teq, com.bytedance.sdk.component.adexpress.sP.Fmk fmk) {
        Jcg riZ;
        String str = null;
        if (context == null || hiB == null || jcg == null) {
            return null;
        }
        String strEi = jcg.Ei();
        String strKF = fmk.kF();
        strEi.hashCode();
        switch (strEi) {
            case "0":
                return new HiB(context, hiB, jcg);
            case "1":
                return new TKC(context, hiB, jcg);
            case "2":
                return new sP(context, hiB, jcg);
            case "5":
                return jcg.xhi() == 1 ? new dNu(context, hiB, jcg, jcg.Chv()) : new uvD(context, hiB, jcg);
            case "6":
            case "11":
                return new sef(context, hiB, jcg);
            case "7":
            case "14":
                return new aa(context, hiB, jcg);
            case "8":
                return new Fmk(context, hiB, jcg);
            case "9":
            case "16":
                return new Zq(context, hiB, jcg, strEi, teq.Sj(), teq.sP(), teq.EjP(), teq.Jcg());
            case "10":
                return new EjP(context, hiB, jcg);
            case "12":
                return new uvD(context, hiB, jcg);
            case "13":
                return new dNu(context, hiB, jcg);
            case "17":
            case "18":
                riZ = new RiZ(context, hiB, jcg, strEi, teq);
                break;
            case "20":
                if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    if (!TextUtils.isEmpty(strKF)) {
                        str = strKF + "brush_mask.json";
                    }
                    riZ = new Ym(context, hiB, jcg, str, "20");
                    break;
                } else {
                    riZ = new Ym(context, hiB, jcg, strKF + "static/lotties/glass-swipe/glass-swipe.json", "20");
                    break;
                }
                break;
            case "22":
                if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    return new TzV(context, hiB, jcg);
                }
                riZ = new Ym(context, hiB, jcg, strKF + "static/lotties/202327swiper-up-star/index.json", "22");
                break;
                break;
            case "23":
                if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    return null;
                }
                riZ = new Ym(context, hiB, jcg, strKF + "static/lotties/202327swiper-up-star/click.json", "23");
                break;
                break;
            case "24":
                if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    if (!TextUtils.isEmpty(strKF)) {
                        str = strKF + "swiper_up_star.json";
                    }
                    riZ = new Ym(context, hiB, jcg, str, "24");
                    break;
                } else {
                    return new Sj(context, hiB, jcg);
                }
                break;
            case "25":
                if (!com.bytedance.sdk.component.adexpress.EjP.sP()) {
                    return null;
                }
                riZ = new Ym(context, hiB, jcg, strKF + "static/lotties/gesture-slide.json", "25");
                break;
                break;
            case "29":
                return new vS(context, hiB, jcg, teq.Sj(), teq.sP(), teq.EjP(), teq.Jcg());
            default:
                return null;
        }
        return riZ;
    }
}
