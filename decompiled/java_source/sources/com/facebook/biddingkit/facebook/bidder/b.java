package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.gen.FBAdBidAuctionType;
import com.facebook.biddingkit.gen.FacebookAdBidFormat;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f24103a = "FACEBOOK_BIDDER";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f24104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f24105b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private FacebookAdBidFormat f24106c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f24107d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f24108e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private FBAdBidAuctionType f24109f = FBAdBidAuctionType.FIRST_PRICE;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f24110g;

        public a(String str, String str2, FacebookAdBidFormat facebookAdBidFormat, String str3) {
            this.f24104a = str;
            this.f24105b = str2;
            this.f24106c = facebookAdBidFormat;
            this.f24108e = str3;
            this.f24110g = str;
        }

        protected String a() {
            return this.f24104a;
        }

        protected String b() {
            return this.f24107d;
        }

        protected String c() {
            return this.f24105b;
        }

        public a d(String str) {
            this.f24107d = str;
            return this;
        }
    }

    public static j8.b a(String str) {
        return new FacebookNotifier(str, new c(com.facebook.biddingkit.bridge.a.b()));
    }
}
