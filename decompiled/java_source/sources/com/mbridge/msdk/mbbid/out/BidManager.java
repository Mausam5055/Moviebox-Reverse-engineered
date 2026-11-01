package com.mbridge.msdk.mbbid.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.authoritycontroller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.middle.b;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class BidManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f36222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BidListennning f36223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36224c;

    public <T extends CommonBidRequestParams> BidManager(T t11) {
        this(t11 == null ? "" : t11.getmPlacementId(), t11 == null ? "" : t11.getmUnitId(), t11 != null ? t11.getmFloorPrice() : "");
        if (!(t11 instanceof BannerBidRequestParams)) {
            if (t11 instanceof AdvancedNativeBidRequestParams) {
                AdvancedNativeBidRequestParams advancedNativeBidRequestParams = (AdvancedNativeBidRequestParams) t11;
                this.f36222a.a(advancedNativeBidRequestParams.getHeight());
                this.f36222a.b(advancedNativeBidRequestParams.getWidth());
                this.f36222a.a(298);
                return;
            }
            return;
        }
        BannerBidRequestParams bannerBidRequestParams = (BannerBidRequestParams) t11;
        this.f36222a.a(bannerBidRequestParams.getHeight());
        this.f36222a.b(bannerBidRequestParams.getWidth());
        this.f36222a.a(296);
        if (t11 instanceof SplashBidRequestParams) {
            SplashBidRequestParams splashBidRequestParams = (SplashBidRequestParams) t11;
            this.f36222a.b(splashBidRequestParams.a());
            this.f36222a.b(splashBidRequestParams.getOrientation());
            this.f36222a.a(297);
        }
    }

    public BidManager(String str, String str2) {
        this(str, str2, "0");
    }

    public BidManager(String str, String str2, String str3) {
        this.f36224c = false;
        this.f36222a = new b(str, str2, str3);
    }

    private void a(String str) {
        BidListennning bidListennning = this.f36223b;
        if (bidListennning != null) {
            bidListennning.onFailed(str);
        }
    }

    public static String getBuyerUid(Context context) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                o0.b("BidManager", th2.getMessage());
            }
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, "");
    }

    public static String getBuyerUid(Context context, String str) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                o0.b("BidManager", th2.getMessage());
            }
        }
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, str);
    }

    public static String getBuyerUid(Context context, Map<String, String> map) {
        if (com.mbridge.msdk.util.b.a()) {
            try {
                c.c(true);
            } catch (Throwable th2) {
                o0.b("BidManager", th2.getMessage());
            }
        }
        return com.mbridge.msdk.mbbid.common.b.a(context, map);
    }

    public void bid() {
        b bVar = this.f36222a;
        if (bVar != null) {
            bVar.a(this.f36224c);
        } else {
            a("you need init the class :BidManager");
        }
    }

    public void setBidListener(BidListennning bidListennning) {
        this.f36223b = bidListennning;
        b bVar = this.f36222a;
        if (bVar != null) {
            bVar.a(bidListennning);
        }
    }

    public void setRewardPlus(boolean z10) {
        this.f36224c = z10;
    }
}
