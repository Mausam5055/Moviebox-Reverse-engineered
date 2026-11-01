package com.bytedance.sdk.openadsdk.api;

import android.os.Bundle;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PAGRequest {
    private String Sj;
    private Bundle TKC = null;
    private Map<String, Object> sP;

    public final void addNetworkExtrasBundle(Class<?> cls, Bundle bundle) {
        if (this.TKC == null) {
            this.TKC = new Bundle();
        }
        this.TKC.putBundle(cls.getName(), bundle);
    }

    public String getAdString() {
        return this.Sj;
    }

    public Map<String, Object> getExtraInfo() {
        return this.sP;
    }

    public Bundle getNetworkExtrasBundle() {
        return this.TKC;
    }

    public void setAdString(String str) {
        this.Sj = str;
    }

    public void setExtraInfo(Map<String, Object> map) {
        this.sP = map;
    }
}
