package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Zq implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    private Number Sj;

    public Zq(String str) {
        if (str.indexOf(46) < 0) {
            try {
                this.Sj = Integer.valueOf(str);
            } catch (NumberFormatException unused) {
                this.Sj = Long.valueOf(str);
            }
        } else {
            Float fValueOf = Float.valueOf(str);
            this.Sj = fValueOf;
            if (Float.isInfinite(fValueOf.floatValue())) {
                this.Sj = Double.valueOf(str);
            }
        }
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.vS.NUMBER;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public Object Sj(Map<String, JSONObject> map) {
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public String sP() {
        return this.Sj.toString();
    }

    public String toString() {
        return sP();
    }
}
