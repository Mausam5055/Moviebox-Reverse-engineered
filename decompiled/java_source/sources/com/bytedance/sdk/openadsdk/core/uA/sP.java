package com.bytedance.sdk.openadsdk.core.uA;

import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private static com.bytedance.sdk.openadsdk.core.uA.Sj Sj;
    private String sP;

    private static class Sj {
        private static final sP Sj = new sP();
    }

    private sP() {
        this.sP = null;
        Sj = new com.bytedance.sdk.openadsdk.core.uA.Sj();
    }

    public static sP sP() {
        return Sj.Sj;
    }

    public String EjP() {
        String strEjP;
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        return (sj2 == null || (strEjP = sj2.EjP()) == null) ? "" : strEjP;
    }

    public String HiB() {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        return sj2 != null ? sj2.HiB() : "";
    }

    public int Jcg() {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 != null) {
            return sj2.Jcg();
        }
        return 1;
    }

    public Map<String, String> Sj(String str, byte[] bArr) {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        return sj2 != null ? sj2.Sj(str, bArr) : new HashMap();
    }

    public void Sj() {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 != null) {
            sj2.TKC();
        }
    }

    public void Sj(MotionEvent motionEvent) {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 != null) {
            sj2.Sj(motionEvent);
        }
    }

    public void Sj(String str) {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2;
        if (TextUtils.isEmpty(str) || (sj2 = Sj) == null) {
            return;
        }
        sj2.Sj(str);
    }

    public void Sj(@NonNull String str, Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 != null) {
            sj2.Sj(str, map);
        }
    }

    public void Sj(Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 != null) {
            sj2.Sj(map);
        }
    }

    public boolean TKC() {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 == null) {
            return false;
        }
        return sj2.sP();
    }

    public void sP(String str) {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2;
        if (TextUtils.isEmpty(str) || (sj2 = Sj) == null) {
            return;
        }
        sj2.sP(str);
    }

    public long vS() {
        com.bytedance.sdk.openadsdk.core.uA.Sj sj2 = Sj;
        if (sj2 != null) {
            return sj2.vS();
        }
        return 0L;
    }
}
