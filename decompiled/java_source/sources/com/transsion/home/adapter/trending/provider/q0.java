package com.transsion.home.adapter.trending.provider;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class q0 extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final WeakHashMap f44822e = new WeakHashMap();

    public static final class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f44823a;

        a(Function0 function0) {
            this.f44823a = function0;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v11) {
            Intrinsics.h(v11, "v");
            this.f44823a.invoke();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v11) {
            Intrinsics.h(v11, "v");
        }
    }

    private final void A(NativeWrapperAdView nativeWrapperAdView, OperateItem operateItem, Function0 function0) {
        if (nativeWrapperAdView.getTag(R$id.tag_attach_listener_item) == operateItem) {
            return;
        }
        nativeWrapperAdView.setTag(R$id.tag_attach_listener_item, operateItem);
        nativeWrapperAdView.addOnAttachStateChangeListener(new a(function0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(com.transsion.ad.bidding.base.r rVar, NativeWrapperAdView nativeWrapperAdView) {
        ((cy.b0) rVar).J(nativeWrapperAdView);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(com.transsion.ad.bidding.base.r rVar, NativeWrapperAdView nativeWrapperAdView) {
        ((cy.d0) rVar).I(nativeWrapperAdView);
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        String mSceneId = nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null;
        Object objA = this.f44822e.get(item);
        if (objA == null) {
            objA = cy.b.f60940a.a(k(), mSceneId);
            if (objA == null) {
                return;
            } else {
                this.f44822e.put(item, objA);
            }
        }
        final com.transsion.ad.bidding.base.r rVar = (com.transsion.ad.bidding.base.r) objA;
        final NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.nativeView);
        if (nativeWrapperAdView == null) {
            return;
        }
        BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
        BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
        nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVar, nonAdDelegate3 != null ? nonAdDelegate3.n0() : null);
        if (rVar instanceof cy.y) {
            return;
        }
        if (rVar instanceof cy.b0) {
            cy.b0 b0Var = (cy.b0) rVar;
            b0Var.H(nativeWrapperAdView);
            di.a aVarI = b0Var.I(nativeWrapperAdView);
            BiddingNativeManager nonAdDelegate4 = item.getNonAdDelegate();
            if (nonAdDelegate4 != null) {
                nonAdDelegate4.N0(aVarI);
            }
            A(nativeWrapperAdView, item, new Function0() { // from class: com.transsion.home.adapter.trending.provider.o0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q0.C(rVar, nativeWrapperAdView);
                }
            });
            return;
        }
        if (rVar instanceof cy.d0) {
            cy.d0 d0Var = (cy.d0) rVar;
            d0Var.G(nativeWrapperAdView);
            di.a aVarH = d0Var.H(nativeWrapperAdView);
            BiddingNativeManager nonAdDelegate5 = item.getNonAdDelegate();
            if (nonAdDelegate5 != null) {
                nonAdDelegate5.N0(aVarH);
            }
            A(nativeWrapperAdView, item, new Function0() { // from class: com.transsion.home.adapter.trending.provider.p0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return q0.D(rVar, nativeWrapperAdView);
                }
            });
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.TRENDING_NATIVE_AD.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.post_list_item_native_ad_layout;
    }
}
