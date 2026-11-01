package com.bytedance.adsdk.sP.TKC;

import com.bytedance.adsdk.sP.sef;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private static final HiB Sj = new HiB();
    private final sef<String, com.bytedance.adsdk.sP.Jcg> sP = new sef<>(20);

    HiB() {
    }

    public static HiB Sj() {
        return Sj;
    }

    public com.bytedance.adsdk.sP.Jcg Sj(String str) {
        if (str == null) {
            return null;
        }
        return this.sP.Sj(str);
    }

    public void Sj(String str, com.bytedance.adsdk.sP.Jcg jcg) {
        if (str == null) {
            return;
        }
        this.sP.Sj(str, jcg);
    }
}
