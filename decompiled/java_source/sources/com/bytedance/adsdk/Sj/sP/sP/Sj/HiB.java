package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends dNu {
    public HiB() {
        super(com.bytedance.adsdk.Sj.sP.EjP.TKC.GT_EQ);
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj;
        Object objSj2 = this.Sj.Sj(map);
        if (objSj2 == null || (objSj = this.sP.Sj(map)) == null) {
            return null;
        }
        return Boolean.valueOf(!((Boolean) com.bytedance.adsdk.Sj.sP.HiB.Sj.EjP.Sj(objSj2, (Number) objSj)).booleanValue());
    }
}
