package com.bytedance.sdk.component.adexpress.Sj.TKC;

import android.text.TextUtils;
import android.util.Pair;
import com.cloud.tmc.integration.permission.PermissionConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private List<C0217Sj> EjP;
    private sP HiB;
    private Map<String, Sj> Jcg = new ConcurrentHashMap();
    private String Sj;
    private String TKC;
    private String sP;
    private String vS;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.adexpress.Sj.TKC.Sj$Sj, reason: collision with other inner class name */
    public static class C0217Sj {
        private String Sj;
        private int TKC;
        private String sP;

        public String Sj() {
            return this.Sj;
        }

        public void Sj(int i11) {
            this.TKC = i11;
        }

        public void Sj(String str) {
            this.Sj = str;
        }

        public int TKC() {
            return this.TKC;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C0217Sj)) {
                return super.equals(obj);
            }
            String str2 = this.Sj;
            if (str2 != null) {
                C0217Sj c0217Sj = (C0217Sj) obj;
                if (str2.equals(c0217Sj.Sj()) && (str = this.sP) != null && str.equals(c0217Sj.sP())) {
                    return true;
                }
            }
            return false;
        }

        public String sP() {
            return this.sP;
        }

        public void sP(String str) {
            this.sP = str;
        }
    }

    public static class sP {
        private String Sj;
        private List<Pair<String, String>> TKC;
        private String sP;

        public String Sj() {
            return this.Sj;
        }

        public void Sj(String str) {
            this.Sj = str;
        }

        public void Sj(List<Pair<String, String>> list) {
            this.TKC = list;
        }

        public List<Pair<String, String>> sP() {
            return this.TKC;
        }

        public void sP(String str) {
            this.sP = str;
        }
    }

    public static Sj HiB(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Sj(new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    public static Sj Sj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return null;
        }
        Sj sj2 = new Sj();
        sj2.Sj(jSONObject.optString("name"));
        sj2.sP(jSONObject.optString("version"));
        sj2.TKC(jSONObject.optString("main"));
        sj2.EjP(jSONObject.optString("template_fetch_url", ""));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i11);
                C0217Sj c0217Sj = new C0217Sj();
                c0217Sj.Sj(jSONObjectOptJSONObject2.optString("url"));
                c0217Sj.sP(jSONObjectOptJSONObject2.optString("md5"));
                c0217Sj.Sj(jSONObjectOptJSONObject2.optInt(PermissionConstant.level));
                arrayList.add(c0217Sj);
            }
        }
        sj2.Sj(arrayList);
        try {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("engines");
            if (jSONObjectOptJSONObject3 != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject3.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Sj Sj = Sj(jSONObjectOptJSONObject3.optJSONObject(next));
                    if (Sj != null) {
                        sj2.Sj().put(next, Sj);
                    }
                }
            }
        } catch (Exception e11) {
            e11.getMessage();
        }
        if (jSONObject.has("resources_archive") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("resources_archive")) != null) {
            sP sPVar = new sP();
            sPVar.Sj(jSONObjectOptJSONObject.optString("url"));
            sPVar.sP(jSONObjectOptJSONObject.optString("md5"));
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("map");
            if (jSONObjectOptJSONObject4 != null) {
                Iterator<String> itKeys2 = jSONObjectOptJSONObject4.keys();
                ArrayList arrayList2 = new ArrayList();
                while (itKeys2.hasNext()) {
                    String next2 = itKeys2.next();
                    arrayList2.add(new Pair<>(next2, jSONObjectOptJSONObject4.optString(next2)));
                }
                sPVar.Sj(arrayList2);
            }
            sj2.Sj(sPVar);
        }
        if (sj2.Dq()) {
            return sj2;
        }
        return null;
    }

    public boolean Dq() {
        return (TextUtils.isEmpty(EjP()) || TextUtils.isEmpty(TKC()) || TextUtils.isEmpty(sP())) ? false : true;
    }

    public String EjP() {
        return this.TKC;
    }

    public void EjP(String str) {
        this.vS = str;
    }

    public sP HiB() {
        return this.HiB;
    }

    public String Jcg() {
        return this.vS;
    }

    public Map<String, Sj> Sj() {
        return this.Jcg;
    }

    public void Sj(sP sPVar) {
        this.HiB = sPVar;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(List<C0217Sj> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.EjP = list;
    }

    public String TEQ() {
        JSONObject jSONObjectUA;
        if (!Dq() || (jSONObjectUA = uA()) == null) {
            return null;
        }
        return jSONObjectUA.toString();
    }

    public String TKC() {
        return this.sP;
    }

    public void TKC(String str) {
        this.TKC = str;
    }

    public String sP() {
        return this.Sj;
    }

    public void sP(String str) {
        this.sP = str;
    }

    public JSONObject uA() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("name", sP());
            jSONObject.putOpt("version", TKC());
            jSONObject.putOpt("main", EjP());
            if (!TextUtils.isEmpty(this.vS)) {
                jSONObject.put("template_fetch_url", this.vS);
            }
            JSONArray jSONArray = new JSONArray();
            if (vS() != null) {
                for (C0217Sj c0217Sj : vS()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", c0217Sj.Sj());
                    jSONObject2.putOpt("md5", c0217Sj.sP());
                    jSONObject2.putOpt(PermissionConstant.level, Integer.valueOf(c0217Sj.TKC()));
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.putOpt("resources", jSONArray);
            if (!this.Jcg.isEmpty()) {
                JSONObject jSONObject3 = new JSONObject();
                boolean z10 = false;
                for (String str : this.Jcg.keySet()) {
                    Sj sj2 = this.Jcg.get(str);
                    if (sj2 != null) {
                        jSONObject3.put(str, sj2.uA());
                        z10 = true;
                    }
                }
                if (z10) {
                    jSONObject.put("engines", jSONObject3);
                }
            }
            sP sPVarHiB = HiB();
            if (sPVarHiB != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("url", sPVarHiB.Sj);
                jSONObject4.put("md5", sPVarHiB.sP);
                JSONObject jSONObject5 = new JSONObject();
                List<Pair<String, String>> listSP = sPVarHiB.sP();
                if (listSP != null) {
                    for (Pair<String, String> pair : listSP) {
                        jSONObject5.put((String) pair.first, pair.second);
                    }
                }
                jSONObject4.put("map", jSONObject5);
                jSONObject.putOpt("resources_archive", jSONObject4);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public List<C0217Sj> vS() {
        if (this.EjP == null) {
            this.EjP = new ArrayList();
        }
        return this.EjP;
    }
}
