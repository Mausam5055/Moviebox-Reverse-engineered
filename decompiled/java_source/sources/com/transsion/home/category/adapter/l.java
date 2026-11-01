package com.transsion.home.category.adapter;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv._channel.model.ShortTvCategoryItemBean;
import com.transsion.shorttv.bean.Subject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.short_tv_item_ad;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, ShortTvCategoryItemBean item) {
        BiddingNativeManager nonAdDelegate;
        BiddingNativeManager nonAdDelegate2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        or.a aVar = or.a.f71107a;
        Context contextK = k();
        Subject subject = item.getSubject();
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanN0 = null;
        r rVarA = aVar.a(contextK, (subject == null || (nonAdDelegate2 = subject.getNonAdDelegate()) == null) ? null : nonAdDelegate2.getMSceneId());
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.ad_container);
        if (nativeWrapperAdView != null) {
            Subject subject2 = item.getSubject();
            BiddingNativeManager nonAdDelegate3 = subject2 != null ? subject2.getNonAdDelegate() : null;
            Subject subject3 = item.getSubject();
            if (subject3 != null && (nonAdDelegate = subject3.getNonAdDelegate()) != null) {
                biddingIntermediateMaterialBeanN0 = nonAdDelegate.n0();
            }
            nativeWrapperAdView.bindNativeView(nonAdDelegate3, rVarA, biddingIntermediateMaterialBeanN0);
        }
    }
}
