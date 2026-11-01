package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends Sj {
    private Map<Integer, Boolean> Ym;

    public uA(Context context) {
        super(context);
        this.Ym = new HashMap();
    }

    @Override // com.bytedance.adsdk.ugeno.EjP.EjP.Sj
    public boolean Sj(Object... objArr) {
        Map<String, String> map = this.HiB;
        int i11 = map != null ? Integer.parseInt(map.get("interval")) : -1;
        if (((Integer) objArr[0]).intValue() < i11) {
            return true;
        }
        Boolean bool = this.Ym.get(Integer.valueOf(i11));
        if (bool != null && bool.booleanValue()) {
            return true;
        }
        this.Ym.put(Integer.valueOf(i11), Boolean.TRUE);
        this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
        return true;
    }
}
