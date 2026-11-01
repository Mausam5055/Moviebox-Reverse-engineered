package com.transsion.search_pugc.ad;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.a0;
import com.google.android.material.card.MaterialCardView;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.R$color;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$drawable;
import com.transsion.wrapperad.R$id;
import cy.s;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import y0.h;

/* JADX INFO: loaded from: classes6.dex */
public final class SearchHotAdHelper {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f52285n = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LifecycleCoroutineScope f52286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BiddingSspNativeManager f52287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f52288c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List f52289d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BiddingNativeManager f52290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NativeWrapperAdView f52291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SearchHotAdContainerView f52292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Function1 f52293h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f52294i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ObjectAnimator f52295j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Runnable f52296k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final c f52297l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b f52298m;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends di.a {
        b() {
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            SearchHotAdHelper.this.n(biddingIntermediateMaterialBean);
        }
    }

    public static final class c extends di.a {
        c() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            SearchHotAdHelper.this.t();
        }

        @Override // di.a
        public void k(List list) {
            super.k(list);
            SearchHotAdHelper.this.o(list);
        }
    }

    public SearchHotAdHelper(LifecycleCoroutineScope lifecycleScope) {
        Intrinsics.h(lifecycleScope, "lifecycleScope");
        this.f52286a = lifecycleScope;
        this.f52297l = new c();
        this.f52298m = new b();
    }

    private final void k() {
        Runnable runnable = new Runnable() { // from class: com.transsion.search_pugc.ad.a
            @Override // java.lang.Runnable
            public final void run() {
                SearchHotAdHelper.l(this.f52301a);
            }
        };
        this.f52296k = runnable;
        NativeWrapperAdView nativeWrapperAdView = this.f52291f;
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.postDelayed(runnable, 3000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SearchHotAdHelper searchHotAdHelper) {
        NativeWrapperAdView nativeWrapperAdView = searchHotAdHelper.f52291f;
        AppCompatTextView appCompatTextView = nativeWrapperAdView != null ? (AppCompatTextView) nativeWrapperAdView.findViewById(R$id.native_ad_action) : null;
        if (appCompatTextView != null) {
            ObjectAnimator duration = ObjectAnimator.ofArgb(appCompatTextView, "textColor", appCompatTextView.getCurrentTextColor(), androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.gray_dark_00)).setDuration(300L);
            Intrinsics.g(duration, "setDuration(...)");
            Drawable background = appCompatTextView.getBackground();
            if (background == null) {
                background = h.e(appCompatTextView.getContext().getResources(), R.color.transparent, appCompatTextView.getContext().getTheme());
            }
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{background, h.e(appCompatTextView.getContext().getResources(), R$drawable.bg_gradient_brand_4, appCompatTextView.getContext().getTheme())});
            appCompatTextView.setBackground(transitionDrawable);
            transitionDrawable.startTransition(300);
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        NativeWrapperAdView nativeWrapperAdView;
        SearchHotAdContainerView searchHotAdContainerView = this.f52292g;
        if (searchHotAdContainerView == null || (nativeWrapperAdView = searchHotAdContainerView.getNativeWrapperAdView()) == null) {
            return;
        }
        this.f52291f = nativeWrapperAdView;
        cy.b bVar = cy.b.f60940a;
        Context context = nativeWrapperAdView.getContext();
        Intrinsics.g(context, "getContext(...)");
        nativeWrapperAdView.bindNativeView(this.f52290e, bVar.a(context, "SearchHotNativeScene"), biddingIntermediateMaterialBean);
        x();
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(List list) {
        List list2;
        BiddingSspNativeManager biddingSspNativeManager;
        SearchHotAdContainerView searchHotAdContainerView = this.f52292g;
        if (searchHotAdContainerView == null) {
            return;
        }
        List<NativeWrapperAdView> hiNativeAdViews = searchHotAdContainerView.getHiNativeAdViews();
        this.f52288c = hiNativeAdViews;
        if (list != null) {
            this.f52289d = list;
        } else {
            list = null;
        }
        List<NativeWrapperAdView> list3 = hiNativeAdViews;
        if (list3 == null || list3.isEmpty() || (list2 = list) == null || list2.isEmpty() || (biddingSspNativeManager = this.f52287b) == null) {
            return;
        }
        int iMin = Math.min(hiNativeAdViews.size(), list.size());
        for (int i11 = 0; i11 < iMin; i11++) {
            Context context = searchHotAdContainerView.getContext();
            Intrinsics.g(context, "getContext(...)");
            NativeWrapperAdView.bindSspNativeView$default(hiNativeAdViews.get(i11), biddingSspNativeManager, null, new s(context), (BiddingIntermediateMaterialBean) list.get(i11), 2, null);
        }
        x();
    }

    private final void q() {
        NativeWrapperAdView nativeWrapperAdView;
        ObjectAnimator objectAnimator = this.f52295j;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.f52295j = null;
        Runnable runnable = this.f52296k;
        if (runnable != null && (nativeWrapperAdView = this.f52291f) != null) {
            nativeWrapperAdView.removeCallbacks(runnable);
        }
        this.f52296k = null;
    }

    private final void r() {
        BiddingNativeManager biddingNativeManager = this.f52290e;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.f52290e = null;
        q();
    }

    private final void s() {
        List list = this.f52288c;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((NativeWrapperAdView) it.next()).removeAllViews();
            }
        }
        this.f52288c = null;
        BiddingSspNativeManager biddingSspNativeManager = this.f52287b;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.V();
        }
        this.f52287b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        r();
        k.d(this.f52286a, y0.b(), null, new SearchHotAdHelper$loadBiddingAd$1(this, null), 2, null);
    }

    private final void u() {
        s();
        k.d(this.f52286a, y0.b(), null, new SearchHotAdHelper$loadHiAd$1(this, null), 2, null);
    }

    private final void v() {
        w();
        k();
    }

    private final void w() {
        NativeWrapperAdView nativeWrapperAdView = this.f52291f;
        ImageView imageView = nativeWrapperAdView != null ? (ImageView) nativeWrapperAdView.findViewWithTag("adVolumeImage") : null;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            int iA = a0.a(8.0f);
            layoutParams2.setMarginStart(iA);
            layoutParams2.bottomMargin = iA;
            int iA2 = a0.a(26.0f);
            layoutParams2.width = iA2;
            layoutParams2.height = iA2;
        }
    }

    private final void x() {
        this.f52294i = true;
        Function1 function1 = this.f52293h;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    public final void m(SearchHotAdContainerView searchHotAdContainerView) {
        this.f52292g = searchHotAdContainerView;
        u();
    }

    public final void p() {
        s();
        r();
        this.f52293h = null;
        SearchHotAdContainerView searchHotAdContainerView = this.f52292g;
        if (searchHotAdContainerView != null) {
            searchHotAdContainerView.destroy();
        }
        this.f52292g = null;
    }
}
