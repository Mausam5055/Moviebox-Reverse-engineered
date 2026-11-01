package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends Sj {
    public HiB(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.EjP.Sj
    public boolean Sj(Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            int iSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(String.valueOf(objArr[0]), 0);
            Map<String, String> map = this.HiB;
            if (map == null || map.isEmpty() || iSj == com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get(NativeComponentConstants.KEY_COMPONENT_TYPE), 0)) {
                this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
            }
        }
        return false;
    }
}
