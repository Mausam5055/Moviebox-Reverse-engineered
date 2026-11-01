package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    private com.bytedance.adsdk.Sj.sP.sP.Sj[] Sj;
    private com.bytedance.adsdk.Sj.sP.Sj.Sj TKC;
    private String sP;

    public TEQ(String str) {
        this.sP = str;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.sP.METHOD;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public Object Sj(Map<String, JSONObject> map) {
        com.bytedance.adsdk.Sj.sP.Sj.Sj sj2 = new com.bytedance.adsdk.Sj.sP.Sj.Sj();
        this.TKC = sj2;
        sj2.Sj(this.sP);
        Object[] objArr = new Object[this.Sj.length];
        int i11 = 0;
        while (true) {
            com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr = this.Sj;
            if (i11 >= sjArr.length) {
                this.TKC.Sj(objArr);
                return com.bytedance.adsdk.Sj.Dq.Sj(this.sP).Sj(map.get("default_key"), objArr);
            }
            com.bytedance.adsdk.Sj.sP.sP.Sj sj3 = sjArr[i11];
            if (sj3 != null) {
                objArr[i11] = sj3.Sj(map);
            }
            i11++;
        }
    }

    public void Sj(com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr) {
        this.Sj = sjArr;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public String sP() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.sP);
        sb2.append("(");
        com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr = this.Sj;
        if (sjArr != null && sjArr.length > 0) {
            int i11 = 0;
            while (true) {
                com.bytedance.adsdk.Sj.sP.sP.Sj[] sjArr2 = this.Sj;
                if (i11 >= sjArr2.length) {
                    break;
                }
                sb2.append(sjArr2[i11].sP());
                sb2.append(",");
                i11++;
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
