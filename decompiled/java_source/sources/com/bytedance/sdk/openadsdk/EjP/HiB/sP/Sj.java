package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.openadsdk.EjP.HiB.sP.TKC;
import com.bytedance.sdk.openadsdk.core.model.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj<T extends TKC> {
    private T EjP;
    private boolean HiB = false;
    private sU Sj;
    private JSONObject TKC;
    private String sP;

    public Sj(sU sUVar, String str, JSONObject jSONObject, T t11) {
        this.Sj = sUVar;
        this.sP = str;
        this.TKC = jSONObject;
        this.EjP = t11;
    }

    public T EjP() {
        return this.EjP;
    }

    public boolean HiB() {
        return this.HiB;
    }

    public sU Sj() {
        return this.Sj;
    }

    public void Sj(boolean z10) {
        this.HiB = z10;
    }

    public JSONObject TKC() {
        if (this.TKC == null) {
            this.TKC = new JSONObject();
        }
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }
}
