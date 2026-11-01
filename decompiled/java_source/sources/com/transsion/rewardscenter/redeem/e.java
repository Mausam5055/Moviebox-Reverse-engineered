package com.transsion.rewardscenter.redeem;

import com.transsion.rewardscenterapi.LotteryPrize;
import com.transsion.rewardscenterapi.SkuPoint;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e {

    public static final class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final LotteryPrize f51019a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f51020b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final SkuPoint f51021c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(LotteryPrize lotteryPrize, boolean z10, SkuPoint skuPoint) {
            super(null);
            Intrinsics.h(lotteryPrize, "lotteryPrize");
            this.f51019a = lotteryPrize;
            this.f51020b = z10;
            this.f51021c = skuPoint;
        }

        public final boolean a() {
            return this.f51020b;
        }

        public final LotteryPrize b() {
            return this.f51019a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f51019a, aVar.f51019a) && this.f51020b == aVar.f51020b && Intrinsics.c(this.f51021c, aVar.f51021c);
        }

        public int hashCode() {
            int iHashCode = ((this.f51019a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f51020b)) * 31;
            SkuPoint skuPoint = this.f51021c;
            return iHashCode + (skuPoint == null ? 0 : skuPoint.hashCode());
        }

        public String toString() {
            return "LotteryItem(lotteryPrize=" + this.f51019a + ", hasPaid=" + this.f51020b + ", skuPoint=" + this.f51021c + ")";
        }
    }

    public static final class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final SkuPoint f51022a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f51023b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SkuPoint skuPoint, boolean z10) {
            super(null);
            Intrinsics.h(skuPoint, "skuPoint");
            this.f51022a = skuPoint;
            this.f51023b = z10;
        }

        public final boolean a() {
            return this.f51023b;
        }

        public final SkuPoint b() {
            return this.f51022a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f51022a, bVar.f51022a) && this.f51023b == bVar.f51023b;
        }

        public int hashCode() {
            return (this.f51022a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f51023b);
        }

        public String toString() {
            return "SkuItem(skuPoint=" + this.f51022a + ", hasPaid=" + this.f51023b + ")";
        }
    }

    public static final class c extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f51024a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String title) {
            super(null);
            Intrinsics.h(title, "title");
            this.f51024a = title;
        }

        public final String a() {
            return this.f51024a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f51024a, ((c) obj).f51024a);
        }

        public int hashCode() {
            return this.f51024a.hashCode();
        }

        public String toString() {
            return "TitleItem(title=" + this.f51024a + ")";
        }
    }

    private e() {
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
