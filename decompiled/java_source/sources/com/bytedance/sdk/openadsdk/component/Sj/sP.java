package com.bytedance.sdk.openadsdk.component.Sj;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg;
import com.bytedance.sdk.openadsdk.core.Dq.Dq;
import com.bytedance.sdk.openadsdk.core.Dq.uA;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.sP.TKC;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public static Sj Sj(sU sUVar, Activity activity, com.bytedance.sdk.openadsdk.component.Dq.Sj sj2) {
        Sj sj3 = new Sj(activity.getApplicationContext(), sUVar, "open_ad", 4, sj2);
        sj3.Sj(activity.findViewById(R.id.content));
        sj3.sP(activity.findViewById(520093713));
        Sj(activity.getApplicationContext(), sUVar, sj3);
        Sj(sj3, sUVar);
        return sj3;
    }

    public static uA Sj(sU sUVar, Activity activity, final com.bytedance.sdk.openadsdk.component.Dq.Sj sj2, com.bytedance.sdk.openadsdk.component.uA.sP sPVar) {
        uA uAVar = new uA(activity, sUVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.Sj.sP.1
            @Override // com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
            public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<TKC.Sj> sparseArray, boolean z10) {
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(sj2.sP()));
                Sj(map);
                super.Sj(view, f11, f12, f13, f14, sparseArray, z10);
            }
        };
        uAVar.Sj(sPVar);
        Sj(activity.getApplicationContext(), sUVar, uAVar);
        Sj(uAVar, sUVar);
        return uAVar;
    }

    private static void Sj(Context context, sU sUVar, com.bytedance.sdk.openadsdk.core.sP.sP sPVar) {
        if (sUVar == null || sUVar.sdp() != 4) {
            return;
        }
        sPVar.Sj(Jcg.Sj(context, sUVar, "open_ad"));
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.sP.sP sPVar, sU sUVar) {
        HashMap map = new HashMap();
        map.put("click_area", Integer.valueOf(sUVar.dNu()));
        map.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
        map.put("click_scence", Integer.valueOf(uP.TKC(sUVar) ? 3 : 1));
        sPVar.Sj(map);
    }

    public static Dq sP(sU sUVar, Activity activity, final com.bytedance.sdk.openadsdk.component.Dq.Sj sj2, com.bytedance.sdk.openadsdk.component.uA.sP sPVar) {
        Dq dq2 = new Dq(activity.getApplicationContext(), sUVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.Sj.sP.2
            @Override // com.bytedance.sdk.openadsdk.core.sP.Sj, com.bytedance.sdk.openadsdk.core.sP.sP, com.bytedance.sdk.openadsdk.core.sP.TKC
            public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<TKC.Sj> sparseArray, boolean z10) {
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(sj2.sP()));
                Sj(map);
                super.Sj(view, f11, f12, f13, f14, sparseArray, z10);
            }
        };
        dq2.Sj((View) sPVar);
        Sj(activity.getApplicationContext(), sUVar, dq2);
        Sj(dq2, sUVar);
        return dq2;
    }
}
