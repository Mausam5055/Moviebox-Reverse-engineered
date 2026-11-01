package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends dNu {
    public vS() {
        super(com.bytedance.adsdk.Sj.sP.EjP.TKC.GT);
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj;
        Object objSj2 = this.Sj.Sj(map);
        if (objSj2 == null || (objSj = this.sP.Sj(map)) == null) {
            return null;
        }
        return com.bytedance.adsdk.Sj.sP.HiB.Sj.TKC.Sj(objSj2, (Number) objSj);
    }
}
