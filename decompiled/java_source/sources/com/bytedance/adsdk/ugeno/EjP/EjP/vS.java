package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends Sj {
    private int Fmk;
    private int Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20809aa;

    public vS(Context context) {
        super(context);
        this.Ym = -1;
        this.f20809aa = -1;
        this.Fmk = -1;
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.EjP.Sj
    public boolean Sj(Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            int iSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(String.valueOf(objArr[0]), -1);
            int iSj2 = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(String.valueOf(objArr[1]), -1);
            int iSj3 = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(String.valueOf(objArr[2]), -1);
            Map<String, String> map = this.HiB;
            if (map == null || map.isEmpty()) {
                HashMap map2 = new HashMap();
                map2.put("fromIndex", Integer.valueOf(iSj));
                map2.put("toIndex", Integer.valueOf(iSj2));
                map2.put(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(iSj3));
                Iterator<com.bytedance.adsdk.ugeno.EjP.vS.Sj> it = this.TKC.sP().iterator();
                while (it.hasNext()) {
                    it.next().sP(map2);
                }
                this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
            } else {
                this.Ym = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get("fromIndex"), -1);
                this.f20809aa = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get("toIndex"), -1);
                int iSj4 = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get(NativeComponentConstants.KEY_COMPONENT_TYPE), -1);
                this.Fmk = iSj4;
                if (iSj == this.Ym && iSj2 == this.f20809aa && iSj3 == iSj4) {
                    this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
                }
            }
        }
        return false;
    }
}
