package com.bytedance.sdk.openadsdk.core;

import com.bytedance.sdk.component.embedapplog.IDefaultEncrypt;
import com.bytedance.sdk.component.embedapplog.PangleEncryptConstant;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class dx implements IDefaultEncrypt {
    private final PangleEncryptConstant.CryptDataScene Sj;

    public dx(PangleEncryptConstant.CryptDataScene cryptDataScene) {
        this.Sj = cryptDataScene;
    }

    @Override // com.bytedance.sdk.component.embedapplog.IDefaultEncrypt
    public JSONObject encrypt(JSONObject jSONObject, int i11) {
        zR.Sj(1, this.Sj, i11);
        return com.bytedance.sdk.component.utils.Sj.Sj(jSONObject);
    }
}
