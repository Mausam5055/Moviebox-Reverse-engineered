package com.bytedance.sdk.openadsdk.core.model;

import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    private int EjP;
    private List<String> HiB;
    private int Jcg;
    private int Sj;
    private List<Integer> TKC;
    private int sP;
    private int vS;

    public int EjP() {
        return this.sP;
    }

    public void EjP(int i11) {
        this.sP = i11;
    }

    public List<Integer> HiB() {
        return this.TKC;
    }

    public void HiB(int i11) {
        this.EjP = i11;
    }

    public JSONObject Jcg() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("interceptor_x", this.Sj);
            jSONObject.put("interceptor_y", this.sP);
            if (this.TKC != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator<Integer> it = this.TKC.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().intValue());
                }
                jSONObject.put("interceptor_page", jSONArray);
            }
            jSONObject.put("interceptor_interval_time", this.EjP);
            if (this.HiB != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it2 = this.HiB.iterator();
                while (it2.hasNext()) {
                    jSONArray2.put(it2.next());
                }
                jSONObject.put("url_regular", jSONArray2);
            }
            jSONObject.put("is_act", this.vS);
            jSONObject.put("boc_index", this.Jcg);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP(th2.getMessage(), new Object[0]);
        }
        return jSONObject;
    }

    public int Sj() {
        int i11 = this.Jcg;
        if (i11 >= 2) {
            return i11;
        }
        return 0;
    }

    public void Sj(int i11) {
        this.vS = i11;
    }

    public void Sj(List<String> list) {
        this.HiB = list;
    }

    public int TKC() {
        return this.Sj;
    }

    public void TKC(int i11) {
        this.Sj = i11;
    }

    public List<String> sP() {
        return this.HiB;
    }

    public void sP(int i11) {
        this.Jcg = i11;
    }

    public void sP(List<Integer> list) {
        this.TKC = list;
    }

    public int vS() {
        return this.EjP;
    }
}
