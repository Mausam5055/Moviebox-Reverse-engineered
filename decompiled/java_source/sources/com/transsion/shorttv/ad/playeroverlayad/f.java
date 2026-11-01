package com.transsion.shorttv.ad.playeroverlayad;

import android.content.Context;
import com.transsion.ad.bidding.base.r;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer c() {
        return Integer.valueOf(R$id.ad_choices_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer h() {
        return Integer.valueOf(R$id.store_mark_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer i() {
        return Integer.valueOf(R$id.ad_tag_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer k() {
        return Integer.valueOf(R$id.ad_blur_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer l() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer m() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer s() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public int t() {
        return R$layout.shorttv_player_ad_overlay_layout;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return Integer.valueOf(R$id.ad_media_view);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return null;
    }
}
