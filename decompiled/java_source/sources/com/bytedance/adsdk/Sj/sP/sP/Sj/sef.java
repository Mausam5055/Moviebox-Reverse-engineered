package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sef extends dNu {
    public sef() {
        super(com.bytedance.adsdk.Sj.sP.EjP.TKC.NOT_EQ);
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public Object Sj(Map<String, JSONObject> map) {
        Object objSj = this.Sj.Sj(map);
        Object objSj2 = this.sP.Sj(map);
        if (objSj == null && objSj2 == null) {
            return Boolean.FALSE;
        }
        if (objSj == null && objSj2 != null) {
            return Boolean.TRUE;
        }
        if (objSj == null || objSj2 != null) {
            return ((objSj instanceof Number) && (objSj2 instanceof Number)) ? Boolean.valueOf(!com.bytedance.adsdk.Sj.sP.HiB.Sj.sP.Sj((Number) objSj, (Number) objSj2)) : Boolean.valueOf(!objSj.equals(objSj2));
        }
        return Boolean.TRUE;
    }
}
