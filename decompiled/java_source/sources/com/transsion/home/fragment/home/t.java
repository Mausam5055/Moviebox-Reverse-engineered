package com.transsion.home.fragment.home;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.wrapperad.view.BiddingRectangleIrregularView;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BiddingRectangleIrregularView f45180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BiddingRectangleIrregularView f45181b;

    public static final class a extends di.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ FrameLayout f45182d;

        a(FrameLayout frameLayout) {
            this.f45182d = frameLayout;
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            this.f45182d.setVisibility(8);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            this.f45182d.setVisibility(0);
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            this.f45182d.setVisibility(8);
        }
    }

    public static final class b extends di.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f45183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ FrameLayout f45184e;

        b(View view, FrameLayout frameLayout) {
            this.f45183d = view;
            this.f45184e = frameLayout;
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            this.f45184e.setVisibility(8);
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            this.f45183d.setVisibility(8);
            this.f45184e.setVisibility(0);
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            this.f45184e.setVisibility(8);
        }
    }

    public final void a() {
        BiddingRectangleIrregularView biddingRectangleIrregularView = this.f45180a;
        if (biddingRectangleIrregularView != null) {
            biddingRectangleIrregularView.onAdViewDestroy();
        }
        BiddingRectangleIrregularView biddingRectangleIrregularView2 = this.f45181b;
        if (biddingRectangleIrregularView2 != null) {
            biddingRectangleIrregularView2.onAdViewDestroy();
        }
    }

    public final void b(FrameLayout flGameCenter, FrameLayout flPhoneCenter, View leftLogo, n0 n0Var) {
        Intrinsics.h(flGameCenter, "flGameCenter");
        Intrinsics.h(flPhoneCenter, "flPhoneCenter");
        Intrinsics.h(leftLogo, "leftLogo");
        if (this.f45180a == null) {
            Context context = flGameCenter.getContext();
            Intrinsics.g(context, "getContext(...)");
            BiddingRectangleIrregularView biddingRectangleIrregularView = new BiddingRectangleIrregularView(context, null, 2, null);
            this.f45180a = biddingRectangleIrregularView;
            biddingRectangleIrregularView.setSceneId("HomeRIGHTTopGameNonstandardScene");
            BiddingRectangleIrregularView biddingRectangleIrregularView2 = this.f45180a;
            if (biddingRectangleIrregularView2 != null) {
                biddingRectangleIrregularView2.setIrregularAdListener(new a(flGameCenter));
            }
            BiddingRectangleIrregularView biddingRectangleIrregularView3 = this.f45180a;
            if (biddingRectangleIrregularView3 != null) {
                biddingRectangleIrregularView3.loadAd();
            }
            flGameCenter.removeAllViews();
            flGameCenter.addView(this.f45180a);
        }
        if (this.f45181b == null) {
            Context context2 = flPhoneCenter.getContext();
            Intrinsics.g(context2, "getContext(...)");
            BiddingRectangleIrregularView biddingRectangleIrregularView4 = new BiddingRectangleIrregularView(context2, null, 2, null);
            this.f45181b = biddingRectangleIrregularView4;
            biddingRectangleIrregularView4.setSceneId("HomeLeftTopBrandNonstandardScene");
            BiddingRectangleIrregularView biddingRectangleIrregularView5 = this.f45181b;
            if (biddingRectangleIrregularView5 != null) {
                biddingRectangleIrregularView5.setIrregularAdListener(new b(leftLogo, flPhoneCenter));
            }
            BiddingRectangleIrregularView biddingRectangleIrregularView6 = this.f45181b;
            if (biddingRectangleIrregularView6 != null) {
                biddingRectangleIrregularView6.loadAd();
            }
            flPhoneCenter.removeAllViews();
            flPhoneCenter.addView(this.f45181b);
        }
    }

    public final void c() {
        BiddingRectangleIrregularView biddingRectangleIrregularView = this.f45180a;
        if (biddingRectangleIrregularView != null) {
            biddingRectangleIrregularView.loadAd();
        }
        BiddingRectangleIrregularView biddingRectangleIrregularView2 = this.f45181b;
        if (biddingRectangleIrregularView2 != null) {
            biddingRectangleIrregularView2.loadAd();
        }
    }
}
