package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private long EjP;
    private long HiB;
    private String Sj;
    private List<C0203Sj> TKC;
    private float sP;
    private String vS;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.core.Sj$Sj, reason: collision with other inner class name */
    public static class C0203Sj {
        private float[] Dq;
        private long EjP;
        private String HiB;
        private float Jcg;
        private long Sj;
        private String TEQ;
        private String TKC;
        private float sP;
        private String uA;
        private float vS;

        public static C0203Sj Sj(JSONObject jSONObject, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
            if (jSONObject == null) {
                return null;
            }
            C0203Sj c0203Sj = new C0203Sj();
            c0203Sj.Sj(jSONObject.optLong("duration"));
            String strOptString = jSONObject.optString("loop");
            if (TextUtils.equals("infinite", strOptString)) {
                c0203Sj.Sj(-1.0f);
            } else {
                try {
                    c0203Sj.Sj(Float.parseFloat(strOptString));
                } catch (NumberFormatException unused) {
                    c0203Sj.Sj(0.0f);
                }
            }
            c0203Sj.Sj(jSONObject.optString("loopMode"));
            c0203Sj.sP(jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE));
            if (TextUtils.equals(c0203Sj.HiB(), "ripple")) {
                c0203Sj.TKC(jSONObject.optString("rippleColor"));
            }
            View viewYm = tkc.Ym();
            Context context = viewYm != null ? viewYm.getContext() : null;
            if (TextUtils.equals(c0203Sj.HiB(), "backgroundColor")) {
                String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("valueTo"), tkc.aa());
                int iSj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(jSONObject.optString("valueFrom"));
                int iSj2 = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(strSj);
                c0203Sj.sP(iSj);
                c0203Sj.TKC(iSj2);
            } else if ((TextUtils.equals(c0203Sj.HiB(), "translateX") || TextUtils.equals(c0203Sj.HiB(), "translateY")) && context != null) {
                try {
                    float fSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, (float) jSONObject.optDouble("valueFrom"));
                    float fSj2 = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, (float) jSONObject.optDouble("valueTo"));
                    c0203Sj.sP(fSj);
                    c0203Sj.TKC(fSj2);
                } catch (Exception unused2) {
                    Log.e("animation", "animation ");
                }
            } else {
                c0203Sj.sP((float) jSONObject.optDouble("valueFrom"));
                c0203Sj.TKC((float) jSONObject.optDouble("valueTo"));
            }
            c0203Sj.EjP(jSONObject.optString("interpolator"));
            c0203Sj.sP(com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("startDelay"), tkc.aa()), 0L));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("values");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                float[] fArr = new float[jSONArrayOptJSONArray.length()];
                int i11 = 0;
                if ((TextUtils.equals(c0203Sj.HiB(), "translateX") || TextUtils.equals(c0203Sj.HiB(), "translateY")) && context != null) {
                    while (i11 < jSONArrayOptJSONArray.length()) {
                        fArr[i11] = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, (float) Sj.Sj(jSONArrayOptJSONArray.optString(i11), tkc.aa()));
                        i11++;
                    }
                } else {
                    while (i11 < jSONArrayOptJSONArray.length()) {
                        fArr[i11] = (float) Sj.Sj(jSONArrayOptJSONArray.optString(i11), tkc.aa());
                        i11++;
                    }
                }
                c0203Sj.Sj(fArr);
            }
            return c0203Sj;
        }

        public float[] Dq() {
            return this.Dq;
        }

        public long EjP() {
            return this.EjP;
        }

        public void EjP(String str) {
            this.uA = str;
        }

        public String HiB() {
            return this.HiB;
        }

        public float Jcg() {
            return this.Jcg;
        }

        public long Sj() {
            return this.Sj;
        }

        public void Sj(float f11) {
            this.sP = f11;
        }

        public void Sj(long j11) {
            this.Sj = j11;
        }

        public void Sj(String str) {
            this.TKC = str;
        }

        public void Sj(float[] fArr) {
            this.Dq = fArr;
        }

        public String TEQ() {
            return this.TEQ;
        }

        public String TKC() {
            return this.TKC;
        }

        public void TKC(float f11) {
            this.Jcg = f11;
        }

        public void TKC(String str) {
            this.TEQ = str;
        }

        public float sP() {
            return this.sP;
        }

        public void sP(float f11) {
            this.vS = f11;
        }

        public void sP(long j11) {
            this.EjP = j11;
        }

        public void sP(String str) {
            this.HiB = str;
        }

        public String uA() {
            return this.uA;
        }

        public float vS() {
            return this.vS;
        }
    }

    public static double Sj(Object obj, JSONObject jSONObject) {
        if (obj instanceof String) {
            return com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(com.bytedance.adsdk.ugeno.TKC.sP.Sj((String) obj, jSONObject), 0.0d);
        }
        if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof Integer)) {
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }

    public static Sj Sj(String str, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Sj(new JSONObject(str), tkc);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static Sj Sj(JSONObject jSONObject, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        return Sj(jSONObject, null, tkc);
    }

    public static Sj Sj(JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        if (jSONObject == null) {
            return null;
        }
        Sj sj2 = new Sj();
        sj2.Sj(jSONObject.optString("ordering"));
        String strOptString = jSONObject.optString("loop");
        if (TextUtils.equals("infinite", strOptString)) {
            sj2.Sj(-1.0f);
        } else {
            try {
                sj2.Sj(Float.parseFloat(strOptString));
            } catch (NumberFormatException unused) {
                sj2.Sj(0.0f);
            }
        }
        sj2.Sj(jSONObject.optLong("duration", 0L));
        sj2.sP(com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObject.optString("startDelay"), tkc.aa()), 0L));
        sj2.sP(jSONObject.optString("loopMode"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("animators");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i11);
                if (jSONObject2 != null) {
                    com.bytedance.adsdk.ugeno.Jcg.sP.Sj(jSONObject2, jSONObjectOptJSONObject);
                }
                arrayList.add(C0203Sj.Sj(jSONObjectOptJSONObject, tkc));
            }
            sj2.Sj(arrayList);
        }
        return sj2;
    }

    public long EjP() {
        return this.EjP;
    }

    public long HiB() {
        return this.HiB;
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(float f11) {
        this.sP = f11;
    }

    public void Sj(long j11) {
        this.EjP = j11;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(List<C0203Sj> list) {
        this.TKC = list;
    }

    public List<C0203Sj> TKC() {
        return this.TKC;
    }

    public float sP() {
        return this.sP;
    }

    public void sP(long j11) {
        this.HiB = j11;
    }

    public void sP(String str) {
        this.vS = str;
    }

    public String vS() {
        return this.vS;
    }
}
