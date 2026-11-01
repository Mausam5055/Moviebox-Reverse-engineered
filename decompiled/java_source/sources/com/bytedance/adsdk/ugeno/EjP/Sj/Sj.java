package com.bytedance.adsdk.ugeno.EjP.Sj;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private volatile Map<String, TKC> Sj = new HashMap();

    public TKC Sj(String str) {
        if (this.Sj.containsKey(str) && this.Sj.get(str) != null) {
            return this.Sj.get(str);
        }
        sP sPVar = new sP();
        this.Sj.put(str, sPVar);
        return sPVar;
    }

    public void Sj(String str, TKC tkc) {
        if (!this.Sj.containsKey(str) || this.Sj.get(str) == null) {
            this.Sj.put(str, tkc);
        }
    }
}
