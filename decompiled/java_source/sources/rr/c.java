package rr;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.bean.Subject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 2;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_item_ad;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, Subject item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        or.a aVar = or.a.f71107a;
        Context contextK = k();
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        r rVarA = aVar.a(contextK, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.ad_container);
        if (nativeWrapperAdView != null) {
            BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
            BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
            nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.n0() : null);
        }
    }
}
