package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public interface RiZ<T> {

    /* JADX INFO: loaded from: classes2.dex */
    public interface Sj {
        void Sj(int i11, String str);

        void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc);
    }

    /* JADX INFO: loaded from: classes2.dex */
    public interface sP {
        void Sj(int i11, String str);

        void Sj(sU.sP sPVar);
    }

    com.bytedance.sdk.component.adexpress.Sj.TKC.Sj Sj();

    com.bytedance.sdk.openadsdk.EjP.HiB Sj(JSONObject jSONObject, String str, boolean z10);

    JSONObject Sj(JSONObject jSONObject);

    void Sj(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.ib ibVar, int i11, Sj sj2);

    void Sj(String str);

    void Sj(String str, List<FilterWord> list, String str2, String str3, String str4);

    void Sj(JSONObject jSONObject, sP sPVar);

    void Sj(JSONObject jSONObject, String str);

    com.bytedance.sdk.openadsdk.EjP.HiB sP(JSONObject jSONObject);
}
