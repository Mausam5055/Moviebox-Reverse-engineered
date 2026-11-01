package com.bytedance.adsdk.Sj.sP.sP.Sj;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg implements com.bytedance.adsdk.Sj.sP.sP.Sj {
    private final Object Sj;

    public Jcg(String str) {
        if (str.equalsIgnoreCase("true")) {
            this.Sj = Boolean.TRUE;
        } else if (str.equalsIgnoreCase("false")) {
            this.Sj = Boolean.FALSE;
        } else {
            if (!str.equalsIgnoreCase("null")) {
                throw new IllegalArgumentException();
            }
            this.Sj = null;
        }
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public com.bytedance.adsdk.Sj.sP.EjP.HiB Sj() {
        return com.bytedance.adsdk.Sj.sP.EjP.vS.CONSTANT;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public Object Sj(Map<String, JSONObject> map) {
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.Sj.sP.sP.Sj
    public String sP() {
        Object obj = this.Sj;
        return obj != null ? obj.toString() : "NULL";
    }

    public String toString() {
        return "KeywordNode [keywordValue=" + this.Sj + "]";
    }
}
