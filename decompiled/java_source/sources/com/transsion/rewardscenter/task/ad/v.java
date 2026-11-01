package com.transsion.rewardscenter.task.ad;

import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class v {

    public static final class a extends v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BiddingIntermediateMaterialBean f51133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private NativeWrapperAdView f51134b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.transsion.ad.bidding.base.r f51135c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.transsion.ad.bidding.base.u f51136d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private AdTaskState f51137e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f51138f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f51139g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f51140h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f51141i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, boolean z11, long j11) {
            super(null);
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            this.f51133a = adBean;
            this.f51134b = nativeWrapperAdView;
            this.f51135c = rVar;
            this.f51136d = uVar;
            this.f51137e = adTaskState;
            this.f51138f = packageName;
            this.f51139g = z10;
            this.f51140h = z11;
            this.f51141i = j11;
        }

        public /* synthetic */ a(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String str, boolean z10, boolean z11, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(biddingIntermediateMaterialBean, (i11 & 2) != 0 ? null : nativeWrapperAdView, (i11 & 4) != 0 ? null : rVar, (i11 & 8) == 0 ? uVar : null, (i11 & 16) != 0 ? AdTaskState.NORMAL : adTaskState, (i11 & 32) != 0 ? "" : str, (i11 & 64) != 0 ? false : z10, (i11 & 128) == 0 ? z11 : false, (i11 & 256) != 0 ? 0L : j11);
        }

        public final a a(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, boolean z11, long j11) {
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            return new a(adBean, nativeWrapperAdView, rVar, uVar, adTaskState, packageName, z10, z11, j11);
        }

        public final BiddingIntermediateMaterialBean c() {
            return this.f51133a;
        }

        public final com.transsion.ad.bidding.base.r d() {
            return this.f51135c;
        }

        public final AdTaskState e() {
            return this.f51137e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f51133a, aVar.f51133a) && Intrinsics.c(this.f51134b, aVar.f51134b) && Intrinsics.c(this.f51135c, aVar.f51135c) && Intrinsics.c(this.f51136d, aVar.f51136d) && this.f51137e == aVar.f51137e && Intrinsics.c(this.f51138f, aVar.f51138f) && this.f51139g == aVar.f51139g && this.f51140h == aVar.f51140h && this.f51141i == aVar.f51141i;
        }

        public final boolean f() {
            return this.f51140h;
        }

        public final long g() {
            return this.f51141i;
        }

        public final NativeWrapperAdView h() {
            return this.f51134b;
        }

        public int hashCode() {
            int iHashCode = this.f51133a.hashCode() * 31;
            NativeWrapperAdView nativeWrapperAdView = this.f51134b;
            int iHashCode2 = (iHashCode + (nativeWrapperAdView == null ? 0 : nativeWrapperAdView.hashCode())) * 31;
            com.transsion.ad.bidding.base.r rVar = this.f51135c;
            int iHashCode3 = (iHashCode2 + (rVar == null ? 0 : rVar.hashCode())) * 31;
            com.transsion.ad.bidding.base.u uVar = this.f51136d;
            return ((((((((((iHashCode3 + (uVar != null ? uVar.hashCode() : 0)) * 31) + this.f51137e.hashCode()) * 31) + this.f51138f.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f51139g)) * 31) + androidx.compose.foundation.e.a(this.f51140h)) * 31) + androidx.collection.s.a(this.f51141i);
        }

        public final String i() {
            return this.f51138f;
        }

        public final com.transsion.ad.bidding.base.u j() {
            return this.f51136d;
        }

        public final boolean k() {
            return this.f51139g;
        }

        public final void l(com.transsion.ad.bidding.base.r rVar) {
            this.f51135c = rVar;
        }

        public final void m(AdTaskState adTaskState) {
            Intrinsics.h(adTaskState, "<set-?>");
            this.f51137e = adTaskState;
        }

        public final void n(boolean z10) {
            this.f51140h = z10;
        }

        public final void o(long j11) {
            this.f51141i = j11;
        }

        public final void p(NativeWrapperAdView nativeWrapperAdView) {
            this.f51134b = nativeWrapperAdView;
        }

        public final void q(com.transsion.ad.bidding.base.u uVar) {
            this.f51136d = uVar;
        }

        public String toString() {
            return "RegularItem(adBean=" + this.f51133a + ", nativeAdView=" + this.f51134b + ", adLayoutProvider=" + this.f51135c + ", sspLayoutProvider=" + this.f51136d + ", adTaskState=" + this.f51137e + ", packageName=" + this.f51138f + ", isPullNewAd=" + this.f51139g + ", bind=" + this.f51140h + ", downloadStartTime=" + this.f51141i + ")";
        }
    }

    public static final class b extends v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AdTaskState f51142a;

        /* JADX WARN: Multi-variable type inference failed */
        public b() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AdTaskState adTaskState) {
            super(null);
            Intrinsics.h(adTaskState, "adTaskState");
            this.f51142a = adTaskState;
        }

        public /* synthetic */ b(AdTaskState adTaskState, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? AdTaskState.NORMAL : adTaskState);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.f51142a == ((b) obj).f51142a;
        }

        public int hashCode() {
            return this.f51142a.hashCode();
        }

        public String toString() {
            return "RewardItem(adTaskState=" + this.f51142a + ")";
        }
    }

    public static final class c extends v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BiddingIntermediateMaterialBean f51143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private NativeWrapperAdView f51144b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.transsion.ad.bidding.base.r f51145c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.transsion.ad.bidding.base.u f51146d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private AdTaskState f51147e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f51148f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f51149g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f51150h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f51151i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, long j11, long j12) {
            super(null);
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            this.f51143a = adBean;
            this.f51144b = nativeWrapperAdView;
            this.f51145c = rVar;
            this.f51146d = uVar;
            this.f51147e = adTaskState;
            this.f51148f = packageName;
            this.f51149g = z10;
            this.f51150h = j11;
            this.f51151i = j12;
        }

        public /* synthetic */ c(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String str, boolean z10, long j11, long j12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(biddingIntermediateMaterialBean, (i11 & 2) != 0 ? null : nativeWrapperAdView, (i11 & 4) != 0 ? null : rVar, (i11 & 8) == 0 ? uVar : null, (i11 & 16) != 0 ? AdTaskState.NORMAL : adTaskState, (i11 & 32) != 0 ? "" : str, (i11 & 64) != 0 ? false : z10, (i11 & 128) != 0 ? 0L : j11, (i11 & 256) == 0 ? j12 : 0L);
        }

        public final c a(BiddingIntermediateMaterialBean adBean, NativeWrapperAdView nativeWrapperAdView, com.transsion.ad.bidding.base.r rVar, com.transsion.ad.bidding.base.u uVar, AdTaskState adTaskState, String packageName, boolean z10, long j11, long j12) {
            Intrinsics.h(adBean, "adBean");
            Intrinsics.h(adTaskState, "adTaskState");
            Intrinsics.h(packageName, "packageName");
            return new c(adBean, nativeWrapperAdView, rVar, uVar, adTaskState, packageName, z10, j11, j12);
        }

        public final BiddingIntermediateMaterialBean c() {
            return this.f51143a;
        }

        public final com.transsion.ad.bidding.base.r d() {
            return this.f51145c;
        }

        public final AdTaskState e() {
            return this.f51147e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f51143a, cVar.f51143a) && Intrinsics.c(this.f51144b, cVar.f51144b) && Intrinsics.c(this.f51145c, cVar.f51145c) && Intrinsics.c(this.f51146d, cVar.f51146d) && this.f51147e == cVar.f51147e && Intrinsics.c(this.f51148f, cVar.f51148f) && this.f51149g == cVar.f51149g && this.f51150h == cVar.f51150h && this.f51151i == cVar.f51151i;
        }

        public final boolean f() {
            return this.f51149g;
        }

        public final long g() {
            return this.f51151i;
        }

        public final NativeWrapperAdView h() {
            return this.f51144b;
        }

        public int hashCode() {
            int iHashCode = this.f51143a.hashCode() * 31;
            NativeWrapperAdView nativeWrapperAdView = this.f51144b;
            int iHashCode2 = (iHashCode + (nativeWrapperAdView == null ? 0 : nativeWrapperAdView.hashCode())) * 31;
            com.transsion.ad.bidding.base.r rVar = this.f51145c;
            int iHashCode3 = (iHashCode2 + (rVar == null ? 0 : rVar.hashCode())) * 31;
            com.transsion.ad.bidding.base.u uVar = this.f51146d;
            return ((((((((((iHashCode3 + (uVar != null ? uVar.hashCode() : 0)) * 31) + this.f51147e.hashCode()) * 31) + this.f51148f.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f51149g)) * 31) + androidx.collection.s.a(this.f51150h)) * 31) + androidx.collection.s.a(this.f51151i);
        }

        public final String i() {
            return this.f51148f;
        }

        public final long j() {
            return this.f51150h;
        }

        public final com.transsion.ad.bidding.base.u k() {
            return this.f51146d;
        }

        public final void l(com.transsion.ad.bidding.base.r rVar) {
            this.f51145c = rVar;
        }

        public final void m(AdTaskState adTaskState) {
            Intrinsics.h(adTaskState, "<set-?>");
            this.f51147e = adTaskState;
        }

        public final void n(boolean z10) {
            this.f51149g = z10;
        }

        public final void o(long j11) {
            this.f51151i = j11;
        }

        public final void p(NativeWrapperAdView nativeWrapperAdView) {
            this.f51144b = nativeWrapperAdView;
        }

        public final void q(long j11) {
            this.f51150h = j11;
        }

        public final void r(com.transsion.ad.bidding.base.u uVar) {
            this.f51146d = uVar;
        }

        public String toString() {
            return "StageItem(adBean=" + this.f51143a + ", nativeAdView=" + this.f51144b + ", adLayoutProvider=" + this.f51145c + ", sspLayoutProvider=" + this.f51146d + ", adTaskState=" + this.f51147e + ", packageName=" + this.f51148f + ", bind=" + this.f51149g + ", playedTime=" + this.f51150h + ", downloadStartTime=" + this.f51151i + ")";
        }
    }

    private v() {
    }

    public /* synthetic */ v(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
