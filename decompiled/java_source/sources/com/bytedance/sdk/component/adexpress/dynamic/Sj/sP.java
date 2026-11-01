package com.bytedance.sdk.component.adexpress.dynamic.Sj;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.EjP;
import com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.HiB;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.JcM;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Jcg;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.LD;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.LqL;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.TEQ;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.TKC;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.TzV;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Yf;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Ym;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Zq;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.aa;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.dNu;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.dx;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fF;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ib;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.kF;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ley;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.sU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.sef;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.uA;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.uP;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.uvD;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.vS;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.wE;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.zR;
import com.bytedance.sdk.component.adexpress.sP.Fmk;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static HiB Sj(Context context, DynamicRootView dynamicRootView, Dq dq2) {
        Fmk renderRequest;
        if (context == null || dynamicRootView == null || dq2 == null || dq2.TEQ() == null) {
            return null;
        }
        switch (dq2.TEQ().Sj()) {
            case -1:
                return new LD(context, dynamicRootView, dq2);
            case 0:
                return new uP(context, dynamicRootView, dq2);
            case 1:
                return new Ym(context, dynamicRootView, dq2);
            case 2:
                return new Jcg(context, dynamicRootView, dq2);
            case 3:
                return new uA(context, dynamicRootView, dq2);
            case 4:
                return new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Fmk(context, dynamicRootView, dq2);
            case 5:
                return new sef(context, dynamicRootView, dq2);
            case 6:
            case 9:
            case 17:
                return new vS(context, dynamicRootView, dq2);
            case 7:
                return new JcM(context, dynamicRootView, dq2);
            case 8:
                return new TzV(context, dynamicRootView, dq2);
            case 10:
                return new uvD(context, dynamicRootView, dq2);
            case 11:
                return new kF(context, dynamicRootView, dq2);
            case 12:
                return new TEQ(context, dynamicRootView, dq2);
            case 13:
                return new wE(context, dynamicRootView, dq2);
            case 14:
                return new ley(context, dynamicRootView, dq2);
            case 15:
                return EjP.sP() ? new LqL(context, dynamicRootView, dq2) : new Yf(context, dynamicRootView, dq2);
            case 16:
                return new Ym(context, dynamicRootView, dq2);
            case 18:
                return new ib(context, dynamicRootView, dq2);
            case 19:
                return new zR(context, dynamicRootView, dq2);
            case 20:
                return new sU(context, dynamicRootView, dq2);
            case 21:
                return new dx(context, dynamicRootView, dq2);
            case 22:
                return new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Dq(context, dynamicRootView, dq2);
            case 23:
                return new dNu(context, dynamicRootView, dq2);
            case 24:
                return new com.bytedance.sdk.component.adexpress.dynamic.dynamicview.EjP(context, dynamicRootView, dq2);
            case 25:
                return new aa(context, dynamicRootView, dq2);
            case 26:
                return "vertical".equals(dq2.TEQ().HiB().nru()) ? new fF(context, dynamicRootView, dq2) : new TKC(context, dynamicRootView, dq2);
            case 27:
                return new Yf(context, dynamicRootView, dq2);
            case 28:
                if (!EjP.sP() || (renderRequest = dynamicRootView.getRenderRequest()) == null) {
                    return null;
                }
                return new Zq(context, dynamicRootView, dq2, renderRequest.kF());
            default:
                return null;
        }
    }
}
