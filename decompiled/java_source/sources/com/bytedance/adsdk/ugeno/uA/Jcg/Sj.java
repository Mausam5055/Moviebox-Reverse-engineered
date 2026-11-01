package com.bytedance.adsdk.ugeno.uA.Jcg;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj extends com.bytedance.adsdk.ugeno.sP.Sj<com.bytedance.adsdk.ugeno.uA.sP.Sj> {
    public Sj(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "onVideoProgress":
            case "onVideoFinish":
            case "onVideoPlay":
            case "onVideoResume":
            case "onVideoPause":
                sP(str, str2);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
    }
}
