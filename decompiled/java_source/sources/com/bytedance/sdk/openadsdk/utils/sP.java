package com.bytedance.sdk.openadsdk.utils;

import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    public static SoftReference<com.bytedance.sdk.openadsdk.core.model.sU> Sj;

    public static com.bytedance.sdk.openadsdk.core.model.sU Sj() {
        SoftReference<com.bytedance.sdk.openadsdk.core.model.sU> softReference = Sj;
        if (softReference != null) {
            return softReference.get();
        }
        return null;
    }

    public static void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return;
        }
        Sj = new SoftReference<>(sUVar);
    }
}
