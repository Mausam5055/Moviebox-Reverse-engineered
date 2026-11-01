package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.AdSlot;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    public ArrayList<Integer> EjP;
    public AdSlot HiB;
    public String Sj;
    public int TKC = 1;
    public int sP;

    public static void Sj(TKC tkc) {
        int iSP;
        if (tkc == null || tkc.EjP() == null || (iSP = tkc.sP()) >= 0 || iSP == -8) {
            return;
        }
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("rd_client_custom_error", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.core.model.TKC.1
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("from", TKC.this.TKC());
                jSONObject.put("err_code", TKC.this.sP());
                jSONObject.put("server_res_str", TKC.this.Sj());
                if (TKC.this.HiB() != null && TKC.this.HiB().size() > 0) {
                    jSONObject.put("mate_unavailable_code_list", new JSONArray((Collection) TKC.this.HiB()).toString());
                }
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("rd_client_custom_error").Sj(TKC.this.EjP().getDurationSlotType()).sP(jSONObject.toString());
            }
        });
    }

    public AdSlot EjP() {
        return this.HiB;
    }

    public ArrayList<Integer> HiB() {
        return this.EjP;
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(int i11) {
        this.sP = i11;
    }

    public void Sj(AdSlot adSlot) {
        this.HiB = adSlot;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public void Sj(ArrayList<Integer> arrayList) {
        this.EjP = arrayList;
    }

    public int TKC() {
        return this.TKC;
    }

    public int sP() {
        return this.sP;
    }

    public void sP(int i11) {
        this.TKC = i11;
    }
}
