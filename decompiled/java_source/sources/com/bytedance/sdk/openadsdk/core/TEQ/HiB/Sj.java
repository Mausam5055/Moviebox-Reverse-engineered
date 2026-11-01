package com.bytedance.sdk.openadsdk.core.TEQ.HiB;

import com.bytedance.adsdk.ugeno.core.Zq;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj extends Fmk {
    private float EjP;
    private JSONObject Sj;
    private float TKC;
    private Zq sP;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj$Sj, reason: collision with other inner class name */
    public static class C0258Sj extends Fmk.Sj {
        private float EjP;
        private JSONObject Sj;
        private float TKC;
        private Zq sP;

        public C0258Sj Sj(float f11) {
            this.TKC = f11;
            return this;
        }

        public C0258Sj Sj(Zq zq2) {
            this.sP = zq2;
            return this;
        }

        public C0258Sj Sj(JSONObject jSONObject) {
            this.Sj = jSONObject;
            return this;
        }

        public C0258Sj sP(float f11) {
            this.EjP = f11;
            return this;
        }

        @Override // com.bytedance.sdk.component.adexpress.sP.Fmk.Sj
        /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
        public Sj Sj() {
            return new Sj(this);
        }
    }

    public Sj(C0258Sj c0258Sj) {
        super(c0258Sj);
        this.Sj = c0258Sj.Sj;
        this.sP = c0258Sj.sP;
        this.TKC = c0258Sj.TKC;
        this.EjP = c0258Sj.EjP;
    }

    public JSONObject LD() {
        return this.Sj;
    }

    public float LqL() {
        return this.TKC;
    }

    public float Yf() {
        return this.EjP;
    }

    public Zq fF() {
        return this.sP;
    }
}
