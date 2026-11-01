package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d0 extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.transsion.ad.bidding.base.r
    public boolean B() {
        return false;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer c() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer h() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer i() {
        return null;
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
        return Integer.valueOf(R$id.ad_icon);
    }

    @Override // com.transsion.ad.bidding.base.r
    public int t() {
        return R$layout.stage_task_native_ad_layout;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return Integer.valueOf(R$id.ad_title);
    }
}
