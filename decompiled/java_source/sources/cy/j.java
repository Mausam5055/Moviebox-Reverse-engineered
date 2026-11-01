package cy;

import android.content.Context;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class j extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer A() {
        return Integer.valueOf(R$id.flVolumeContainer);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer c() {
        return Integer.valueOf(R$id.native_ad_choices);
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
        return R$layout.native_home_trending_banner_layout;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return Integer.valueOf(R$id.ad_media);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return null;
    }
}
