package com.transsion.player.longvideo.member;

import android.content.Context;
import com.transsion.ad.bidding.base.r;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context) {
        super(context);
        Intrinsics.h(context, "context");
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
    public Integer k() {
        return Integer.valueOf(R$id.ivBurlBgView);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer l() {
        return null;
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
        return R$layout.resolution_ad_native_layout;
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
