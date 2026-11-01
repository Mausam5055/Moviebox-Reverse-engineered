package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private long Dq;
    private C0276Sj EjP;
    private String Fmk;
    private boolean HiB;
    private String Jcg;
    private String Sj;
    private String TKC;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f21062aa;
    private int sP;
    private boolean uA;
    private List<sU> vS = new ArrayList();
    private JSONObject TEQ = new JSONObject();
    private volatile boolean Ym = false;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.model.Sj$Sj, reason: collision with other inner class name */
    public static class C0276Sj extends sU.Sj {
        private int Sj;

        public static C0276Sj Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0276Sj c0276Sj = new C0276Sj();
            c0276Sj.TKC(jSONObject.optString("id"));
            c0276Sj.EjP(jSONObject.optString("md5"));
            c0276Sj.HiB(jSONObject.optString("url"));
            c0276Sj.vS(jSONObject.optString("data"));
            c0276Sj.Jcg(jSONObject.optString("diff_data"));
            c0276Sj.sP(jSONObject.optString("version"));
            c0276Sj.Dq(jSONObject.optString("dynamic_creative"));
            c0276Sj.Sj(jSONObject.optInt("count_down_time"));
            if (Sj(c0276Sj)) {
                return c0276Sj;
            }
            return null;
        }

        private static boolean Sj(C0276Sj c0276Sj) {
            return (c0276Sj == null || TextUtils.isEmpty(c0276Sj.vS()) || TextUtils.isEmpty(c0276Sj.Dq())) ? false : true;
        }

        public int Sj() {
            return this.Sj;
        }

        public void Sj(int i11) {
            this.Sj = i11;
        }

        public JSONObject sP() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", vS());
                jSONObject.put("md5", Jcg());
                jSONObject.put("url", Dq());
                jSONObject.put("data", uA());
                jSONObject.put("diff_data", TEQ());
                jSONObject.put("version", HiB());
                jSONObject.put("dynamic_creative", Ym());
                jSONObject.put("count_down_time", Sj());
                return jSONObject;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static Map<String, sU> Sj(Sj sj2) {
        if (sj2 == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (sU sUVar : sj2.EjP()) {
            if (!TextUtils.isEmpty(sUVar.eMB())) {
                map.put(sUVar.eMB(), sUVar);
            }
        }
        if (map.size() != 0) {
            return map;
        }
        return null;
    }

    public static Sj TKC(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            Sj sj2 = new Sj();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("choose_ui_data");
            if (jSONObjectOptJSONObject != null) {
                sj2.sP(jSONObjectOptJSONObject);
            }
            sj2.sP(jSONObject.optInt("multi_ad_style", 0));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            if (jSONArrayOptJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    sU sUVarSj = com.bytedance.sdk.openadsdk.core.sP.Sj(jSONArrayOptJSONArray.optJSONObject(i11));
                    if (sUVarSj != null) {
                        sUVarSj.uA(sj2.aa());
                        arrayList.add(sUVarSj);
                    }
                }
                sj2.Sj(arrayList);
            }
            sj2.Sj(jSONObject.optBoolean("is_choose_ad_original", false));
            sj2.Sj(jSONObject.optString(TrackingKey.REQUEST_ID, ""));
            return sj2;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("AdInfo", "fromJson: ", th2);
            return null;
        }
    }

    public boolean Dq() {
        return this.uA;
    }

    public List<sU> EjP() {
        return this.vS;
    }

    public void EjP(String str) {
        this.Fmk = str;
    }

    @Nullable
    public JSONObject Fmk() {
        try {
            JSONObject jSONObject = new JSONObject();
            C0276Sj c0276SjUA = uA();
            if (c0276SjUA != null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObjectSP = c0276SjUA.sP();
                if (jSONObjectSP != null) {
                    jSONObject2.put("tpl_info", jSONObjectSP);
                    jSONObject.put("choose_ui_data", jSONObject2);
                }
            }
            List<sU> list = this.vS;
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i11 = 0; i11 < this.vS.size(); i11++) {
                    jSONArray.put(this.vS.get(i11).SP());
                }
                jSONObject.put("creatives", jSONArray);
            }
            jSONObject.put("is_choose_ad_original", this.uA);
            jSONObject.put("multi_ad_style", this.f21062aa);
            jSONObject.put(TrackingKey.REQUEST_ID, this.Sj);
            return jSONObject;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.Sj("AdInfo", "toJsonObj: ", th2);
            return null;
        }
    }

    public boolean HiB() {
        List<sU> list = this.vS;
        return list != null && list.size() > 0;
    }

    public boolean Jcg() {
        if (uA() == null || EjP() == null || EjP().size() <= 1) {
            this.HiB = false;
            Sj((C0276Sj) null);
        } else {
            this.HiB = true;
        }
        return this.HiB;
    }

    public JSONObject Sj() {
        return this.TEQ;
    }

    public void Sj(int i11) {
        this.sP = i11;
    }

    public void Sj(long j11) {
        this.Dq = j11;
    }

    public void Sj(C0276Sj c0276Sj) {
        this.EjP = c0276Sj;
        if (c0276Sj == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.Sj.sP.sP.Sj(sU.Sj.Sj(c0276Sj, ""));
    }

    public void Sj(sU sUVar) {
        this.vS.add(sUVar);
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(List<sU> list) {
        this.vS = list;
    }

    public void Sj(JSONObject jSONObject) {
        this.TEQ = jSONObject;
    }

    public void Sj(boolean z10) {
        this.uA = z10;
    }

    public boolean TEQ() {
        return this.Ym;
    }

    public int TKC() {
        return this.sP;
    }

    public void TKC(String str) {
        this.Jcg = str;
    }

    public void Ym() {
        this.Ym = false;
    }

    public boolean aa() {
        return this.f21062aa == 1;
    }

    public String sP() {
        sU sUVarVS = vS();
        return sUVarVS != null ? sUVarVS.cKW() : "";
    }

    public void sP(int i11) {
        this.f21062aa = i11;
    }

    public void sP(String str) {
        this.TKC = str;
    }

    public void sP(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        Sj(C0276Sj.Sj(jSONObject.optJSONObject("tpl_info")));
    }

    public String sef() {
        return this.Fmk;
    }

    public C0276Sj uA() {
        return this.EjP;
    }

    public sU vS() {
        if (this.vS.size() > 0) {
            return this.vS.get(0);
        }
        return null;
    }
}
