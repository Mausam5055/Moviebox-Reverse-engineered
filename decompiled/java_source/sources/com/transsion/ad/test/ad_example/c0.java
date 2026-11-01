package com.transsion.ad.test.ad_example;

import android.content.Context;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c0 extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer A() {
        return Integer.valueOf(R$id.flVolumeContainer);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer c() {
        return Integer.valueOf(R$id.adChoicesView);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer h() {
        return Integer.valueOf(R$id.store_mark_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer i() {
        return Integer.valueOf(R$id.adIcon);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer l() {
        return Integer.valueOf(R$id.call_to_action);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer m() {
        return Integer.valueOf(R$id.native_ad_body);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer s() {
        return Integer.valueOf(R$id.native_ad_icon);
    }

    @Override // com.transsion.ad.bidding.base.r
    public int t() {
        return R$layout.test_ad_native_layout;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return Integer.valueOf(R$id.coverview);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return Integer.valueOf(R$id.native_ad_title);
    }
}
