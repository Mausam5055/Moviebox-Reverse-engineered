package com.transsion.wrapperad.view.cardpage;

import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NativeWrapperAdView f58345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BiddingIntermediateMaterialBean f58346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NativeCardPageAdHelper f58347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f58348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f58349e;

    public f(NativeWrapperAdView nativeView, BiddingIntermediateMaterialBean adBean, NativeCardPageAdHelper nativeCardPageAdHelper, boolean z10, boolean z11) {
        Intrinsics.h(nativeView, "nativeView");
        Intrinsics.h(adBean, "adBean");
        this.f58345a = nativeView;
        this.f58346b = adBean;
        this.f58347c = nativeCardPageAdHelper;
        this.f58348d = z10;
        this.f58349e = z11;
    }

    public /* synthetic */ f(NativeWrapperAdView nativeWrapperAdView, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, NativeCardPageAdHelper nativeCardPageAdHelper, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(nativeWrapperAdView, biddingIntermediateMaterialBean, (i11 & 4) != 0 ? null : nativeCardPageAdHelper, (i11 & 8) != 0 ? false : z10, (i11 & 16) != 0 ? true : z11);
    }

    public final BiddingIntermediateMaterialBean a() {
        return this.f58346b;
    }

    public final boolean b() {
        return this.f58348d;
    }

    public final NativeCardPageAdHelper c() {
        return this.f58347c;
    }

    public final NativeWrapperAdView d() {
        return this.f58345a;
    }

    public final boolean e() {
        return this.f58349e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.c(this.f58345a, fVar.f58345a) && Intrinsics.c(this.f58346b, fVar.f58346b) && Intrinsics.c(this.f58347c, fVar.f58347c) && this.f58348d == fVar.f58348d && this.f58349e == fVar.f58349e;
    }

    public final void f(boolean z10) {
        this.f58348d = z10;
    }

    public final void g(NativeCardPageAdHelper nativeCardPageAdHelper) {
        this.f58347c = nativeCardPageAdHelper;
    }

    public final void h(boolean z10) {
        this.f58349e = z10;
    }

    public int hashCode() {
        int iHashCode = ((this.f58345a.hashCode() * 31) + this.f58346b.hashCode()) * 31;
        NativeCardPageAdHelper nativeCardPageAdHelper = this.f58347c;
        return ((((iHashCode + (nativeCardPageAdHelper == null ? 0 : nativeCardPageAdHelper.hashCode())) * 31) + androidx.compose.foundation.e.a(this.f58348d)) * 31) + androidx.compose.foundation.e.a(this.f58349e);
    }

    public String toString() {
        return "NativeCardPageData(nativeView=" + this.f58345a + ", adBean=" + this.f58346b + ", helper=" + this.f58347c + ", bind=" + this.f58348d + ", showGuide=" + this.f58349e + ")";
    }
}
