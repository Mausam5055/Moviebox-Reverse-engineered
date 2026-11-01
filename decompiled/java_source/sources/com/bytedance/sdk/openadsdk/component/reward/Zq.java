package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTClientBidding;

/* JADX INFO: loaded from: classes3.dex */
class Zq implements TTClientBidding {
    private final Dq Sj;

    Zq(Context context, com.bytedance.sdk.openadsdk.core.model.Sj sj2, AdSlot adSlot) {
        this.Sj = new Dq(context, sj2, adSlot);
    }

    public Dq Sj() {
        return this.Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d11, String str, String str2) {
        this.Sj.loss(d11, str, str2);
    }

    public void sP() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d11) {
        this.Sj.win(d11);
    }
}
