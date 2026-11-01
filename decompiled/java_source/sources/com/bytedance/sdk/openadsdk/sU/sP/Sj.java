package com.bytedance.sdk.openadsdk.sU.sP;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private String Sj;
    private List<C0289Sj> TKC;
    private List<C0289Sj> sP;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.sU.sP.Sj$Sj, reason: collision with other inner class name */
    public static class C0289Sj {
        private String Sj;
        private int TKC;
        private String sP;

        public static C0289Sj Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            C0289Sj c0289Sj = new C0289Sj();
            c0289Sj.Sj = jSONObject.optString("url");
            c0289Sj.sP = jSONObject.optString("md5");
            c0289Sj.TKC = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            return c0289Sj;
        }

        public String Sj() {
            return this.Sj;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof C0289Sj)) {
                return super.equals(obj);
            }
            String str2 = this.Sj;
            if (str2 != null) {
                C0289Sj c0289Sj = (C0289Sj) obj;
                if (str2.equals(c0289Sj.Sj) && (str = this.sP) != null && str.equals(c0289Sj.sP)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static Sj sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Sj sj2 = new Sj();
            sj2.Sj(jSONObject.optString("version"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resources");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    C0289Sj c0289SjSj = C0289Sj.Sj(jSONArrayOptJSONArray.optJSONObject(i11));
                    if (c0289SjSj != null) {
                        if (c0289SjSj.TKC == 1) {
                            arrayList.add(c0289SjSj);
                        } else if (c0289SjSj.TKC == 2 && arrayList2.size() < 10) {
                            arrayList2.add(c0289SjSj);
                        }
                    }
                }
            }
            sj2.Sj(arrayList);
            sj2.sP(arrayList2);
            return sj2;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(List<C0289Sj> list) {
        this.sP = list;
    }

    public List<C0289Sj> TKC() {
        return this.TKC;
    }

    public List<C0289Sj> sP() {
        return this.sP;
    }

    public void sP(List<C0289Sj> list) {
        this.TKC = list;
    }
}
