package com.bytedance.adsdk.ugeno.core;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private JSONObject EjP;
    private String HiB;
    private boolean Jcg;
    private JSONObject Sj;
    private String TKC;
    private JSONObject sP;
    private JSONObject vS;

    public static class Sj {
        private String Dq;
        private JSONObject EjP;
        private List<Sj> HiB;
        private String Jcg;
        private String Sj;
        private JSONObject TKC;
        private String sP;
        private Sj vS;

        public JSONObject EjP() {
            return this.TKC;
        }

        public List<Sj> HiB() {
            return this.HiB;
        }

        public String Sj() {
            return this.Sj;
        }

        public void Sj(Sj sj2) {
            if (this.HiB == null) {
                this.HiB = new ArrayList();
            }
            this.HiB.add(sj2);
        }

        public void Sj(String str) {
            this.sP = str;
        }

        public String TKC() {
            return this.sP;
        }

        public String sP() {
            return this.Jcg;
        }

        public String toString() {
            return "UGNode{id='" + this.Sj + "', name='" + this.sP + "'}";
        }

        public JSONObject vS() {
            return this.EjP;
        }
    }

    public HiB(JSONObject jSONObject, JSONObject jSONObject2) {
        this(jSONObject, jSONObject2, null);
    }

    public HiB(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        if (jSONObject != null) {
            if (jSONObject.has(TtmlNode.TAG_BODY)) {
                this.Sj = jSONObject.optJSONObject(TtmlNode.TAG_BODY);
            } else {
                this.Sj = jSONObject.optJSONObject("main_template");
            }
            this.sP = jSONObject.optJSONObject("sub_templates");
            JSONObject jSONObjectOptJSONObject = jSONObject.has("meta") ? jSONObject.optJSONObject("meta") : jSONObject.optJSONObject("template_info");
            if (jSONObjectOptJSONObject != null) {
                if (jSONObject.has(TtmlNode.TAG_BODY)) {
                    this.Jcg = true;
                    String strOptString = jSONObjectOptJSONObject.optString("version");
                    this.TKC = strOptString;
                    if (TextUtils.isEmpty(strOptString)) {
                        this.TKC = "3.0";
                    }
                } else {
                    this.TKC = jSONObjectOptJSONObject.optString("sdk_version");
                }
                if (jSONObjectOptJSONObject.has("adType")) {
                    this.HiB = jSONObjectOptJSONObject.optString("adType");
                }
            } else if (jSONObject.has(TtmlNode.TAG_BODY)) {
                this.TKC = "3.0";
                this.Jcg = true;
            }
            this.EjP = jSONObject2;
            this.vS = jSONObject3;
        }
    }

    private Sj Sj(JSONObject jSONObject, Sj sj2) {
        Sj Sj2;
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.has(NativeComponentConstants.KEY_COMPONENT_TYPE) ? jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE) : jSONObject.optString("name");
        String strOptString2 = jSONObject.optString("id");
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.equals(next, "children")) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException unused) {
                }
            }
        }
        Sj sj3 = new Sj();
        sj3.Sj = strOptString2;
        if (this.Jcg && TextUtils.equals("Video", strOptString)) {
            sj3.sP = strOptString + "V3";
        } else {
            sj3.sP = strOptString;
        }
        sj3.TKC = jSONObject2;
        sj3.vS = sj2;
        sj3.Jcg = this.TKC;
        sj3.Dq = this.HiB;
        if (jSONObject2.has("i18n")) {
            sj3.EjP = jSONObject2.optJSONObject("i18n");
        }
        if (TextUtils.equals(strOptString, "CustomComponent")) {
            Sj(jSONObject, sj3.TKC);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i11);
                String strOptString3 = jSONObject.has(NativeComponentConstants.KEY_COMPONENT_TYPE) ? jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE) : jSONObject.optString("name");
                String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectOptJSONObject.optString("id"), this.EjP);
                if (TextUtils.equals(strOptString3, "Template")) {
                    JSONObject jSONObject3 = this.sP;
                    if (jSONObject3 != null) {
                        jSONObjectOptJSONObject = jSONObject3.optJSONObject(strSj);
                        Sj2 = Sj(jSONObjectOptJSONObject, sj3);
                    } else {
                        Sj2 = null;
                    }
                } else {
                    Sj2 = Sj(jSONObjectOptJSONObject, sj3);
                }
                if (Sj2 != null) {
                    sj3.Sj(Sj2);
                }
            }
        }
        return sj3;
    }

    private void Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        if (this.vS == null || jSONObject2 == null) {
            return;
        }
        try {
            String strOptString = this.vS.optString(jSONObject2.optString("targetId"));
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject(strOptString);
            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("targetProps");
            if (jSONObjectOptJSONObject != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object objOpt = jSONObjectOptJSONObject.opt(next);
                    if (!TextUtils.equals(next, "events") || !jSONObject3.has("events")) {
                        jSONObject3.put(next, objOpt);
                    } else if (objOpt instanceof JSONArray) {
                        com.bytedance.adsdk.ugeno.Jcg.sP.Sj(jSONObject3.optJSONArray("events"), (JSONArray) objOpt);
                    }
                }
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                jSONArrayOptJSONArray.put(jSONObject3);
                if (jSONObject.has("children")) {
                    return;
                }
                jSONObject.put("children", jSONArrayOptJSONArray);
            }
        } catch (JSONException unused) {
        }
    }

    public static boolean Sj(Sj sj2) {
        return (sj2 == null || sj2.TKC == null) ? false : true;
    }

    public boolean EjP() {
        return this.Jcg;
    }

    public Sj Sj() {
        return Sj(this.Sj, (Sj) null);
    }

    public List<Sj> TKC() {
        if (this.sP == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = this.sP.keys();
        while (itKeys.hasNext()) {
            Sj Sj2 = Sj(this.sP.optJSONObject(itKeys.next()), (Sj) null);
            if (Sj2 != null) {
                arrayList.add(Sj2);
            }
        }
        return arrayList;
    }

    public String sP() {
        return this.TKC;
    }
}
