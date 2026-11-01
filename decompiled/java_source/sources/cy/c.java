package cy;

import android.content.Context;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Context context) {
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
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer j() {
        return Integer.valueOf(R$id.tvSizeNum);
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
        return R$layout.download_intercept_ad_layout;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer x() {
        return Integer.valueOf(R$id.tvStarNum);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return Integer.valueOf(R$id.native_ad_title);
    }
}
