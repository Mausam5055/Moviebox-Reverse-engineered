package cy;

import android.content.Context;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class o extends com.transsion.ad.bidding.base.r {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer c() {
        return Integer.valueOf(R$id.adChoicesView);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer h() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer i() {
        return Integer.valueOf(R$id.adTag);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer l() {
        return Integer.valueOf(R$id.native_ad_action);
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
        return R$layout.media_content_native_ad_layout;
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer v() {
        return Integer.valueOf(R$id.native_ad_media);
    }

    @Override // com.transsion.ad.bidding.base.r
    public Integer z() {
        return null;
    }
}
