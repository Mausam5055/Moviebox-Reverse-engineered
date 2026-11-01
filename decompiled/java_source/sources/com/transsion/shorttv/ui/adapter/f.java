package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f53124e = R$layout.short_tv_item_immersion_ad;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 2;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f53124e;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, js.k item) {
        NativeWrapperAdView nativeWrapperAdView;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (!(item instanceof js.c) || (nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.flRoot)) == null) {
            return;
        }
        ur.b bVar = ur.b.f76890a;
        Context contextK = k();
        js.c cVar = (js.c) item;
        BiddingNativeManager biddingNativeManagerA = cVar.a();
        com.transsion.ad.bidding.base.r rVarA = bVar.a(contextK, biddingNativeManagerA != null ? biddingNativeManagerA.getMSceneId() : null);
        BiddingNativeManager biddingNativeManagerA2 = cVar.a();
        BiddingNativeManager biddingNativeManagerA3 = cVar.a();
        nativeWrapperAdView.bindNativeView(biddingNativeManagerA2, rVarA, biddingNativeManagerA3 != null ? biddingNativeManagerA3.n0() : null);
    }
}
