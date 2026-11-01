package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTClientBidding;

/* JADX INFO: loaded from: classes3.dex */
class sef implements TTClientBidding {
    private final vS Sj;

    sef(Context context, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.Sj = new vS(context, sj2);
    }

    public vS Sj() {
        return this.Sj;
    }

    public void Sj(boolean z10) {
        this.Sj.Sj(z10);
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
