package com.bytedance.sdk.openadsdk.core.Ym.sP;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends TKC implements Comparable<sP> {
    private final float Sj;

    public static class Sj {
        private final String Sj;
        private final float sP;
        private TKC.EnumC0269TKC TKC = TKC.EnumC0269TKC.TRACKING_URL;
        private boolean EjP = false;

        public Sj(String str, float f11) {
            this.Sj = str;
            this.sP = f11;
        }

        public sP Sj() {
            return new sP(this.sP, this.Sj, this.TKC, Boolean.valueOf(this.EjP));
        }
    }

    private sP(float f11, String str, TKC.EnumC0269TKC enumC0269TKC, Boolean bool) {
        super(str, enumC0269TKC, bool);
        this.Sj = f11;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
    public int compareTo(sP sPVar) {
        if (sPVar == null) {
            return 1;
        }
        float f11 = this.Sj;
        float f12 = sPVar.Sj;
        if (f11 > f12) {
            return 1;
        }
        return f11 < f12 ? -1 : 0;
    }

    public boolean Sj(float f11) {
        return this.Sj <= f11 && !HiB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ym.sP.TKC
    public void j_() {
        super.j_();
    }

    public JSONObject sP() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", TKC());
        jSONObject.put("trackingFraction", this.Sj);
        return jSONObject;
    }
}
