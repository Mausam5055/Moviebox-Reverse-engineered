package com.bytedance.adsdk.Sj;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements com.bytedance.adsdk.ugeno.TKC.Sj {

    static class Sj implements com.bytedance.adsdk.ugeno.TKC.Sj.InterfaceC0202Sj {
        private com.bytedance.adsdk.Sj.sP.Sj Sj;
        private String sP;

        private Sj(String str) {
            this.sP = str;
            this.Sj = com.bytedance.adsdk.Sj.sP.Sj.Sj(str);
        }

        public static Sj Sj(String str) {
            return new Sj(str);
        }

        @Override // com.bytedance.adsdk.ugeno.TKC.Sj.InterfaceC0202Sj
        public Object Sj(JSONObject jSONObject) {
            com.bytedance.adsdk.Sj.sP.Sj sj2 = this.Sj;
            if (sj2 == null) {
                return this.sP;
            }
            Object objSj = sj2.Sj(jSONObject);
            if (objSj instanceof String) {
                return objSj;
            }
            return objSj instanceof com.bytedance.adsdk.Sj.sP.Sj.Sj ? String.valueOf(Dq.Sj((com.bytedance.adsdk.Sj.sP.Sj.Sj) objSj)) : String.valueOf(objSj);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.TKC.Sj
    public com.bytedance.adsdk.ugeno.TKC.Sj.InterfaceC0202Sj Sj(String str) {
        return Sj.Sj(str);
    }
}
