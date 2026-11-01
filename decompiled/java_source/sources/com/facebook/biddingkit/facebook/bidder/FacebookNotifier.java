package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.cloud.tmc.ad.TrackingManager;
import com.facebook.biddingkit.bidders.LossCode;
import com.facebook.biddingkit.http.util.HttpStatusCode;
import java.util.HashMap;
import java.util.Map;
import l8.e;

/* JADX INFO: loaded from: classes3.dex */
class FacebookNotifier implements j8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f24095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.facebook.biddingkit.facebook.bidder.a f24096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b.a f24097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f24098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f24099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f24100f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f24101g;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f24102a;

        static {
            int[] iArr = new int[HttpStatusCode.values().length];
            f24102a = iArr;
            try {
                iArr[HttpStatusCode.NO_BID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24102a[HttpStatusCode.BAD_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24102a[HttpStatusCode.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public FacebookNotifier(b.a aVar, c cVar) {
        this.f24095a = 2000;
        this.f24100f = "";
        this.f24101g = "";
        this.f24097c = aVar;
        this.f24098d = cVar;
    }

    protected FacebookNotifier(String str, c cVar) {
        this(new b.a("", "", null, "").d(str), cVar);
        this.f24099e = true;
    }

    protected static Double c(p8.b bVar, p8.b bVar2) {
        if (bVar == null) {
            return Double.valueOf(0.0d);
        }
        if (b.f24103a.equals(bVar.b())) {
            return Double.valueOf(bVar2 != null ? bVar2.a() : 0.0d);
        }
        return Double.valueOf(bVar.a());
    }

    private String d() {
        return this.f24098d.a();
    }

    protected static String e(p8.b bVar) {
        if (bVar == null) {
            return null;
        }
        return bVar.b();
    }

    private int i() {
        return 2000;
    }

    @Override // j8.b
    public void a(String str, p8.a aVar) {
        p8.b[] bVarArrB = o8.b.b(aVar);
        p8.b bVar = bVarArrB[0];
        String strE = e(null);
        p8.b bVar2 = bVarArrB[0];
        p8.b bVar3 = bVarArrB[1];
        j(str, strE, c(null, null), false);
    }

    protected String f() {
        return TextUtils.isEmpty(this.f24101g) ? o8.b.c(com.facebook.biddingkit.bridge.a.a()) : this.f24101g;
    }

    protected LossCode g(String str) {
        if (this.f24099e) {
            return LossCode.DID_NOT_PARTICIPATE;
        }
        return b.f24103a.equals(str) ? LossCode.WIN : LossCode.TIMEOUT;
    }

    protected String h() {
        return TextUtils.isEmpty(this.f24100f) ? com.facebook.biddingkit.bridge.a.a().getPackageName() : this.f24100f;
    }

    protected void j(String str, String str2, Double d11, boolean z10) {
        e eVarA = m8.b.a(k(z10, str, str2, d11), i());
        if (z10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Facebook display winner notified with http status ");
            sb2.append(eVarA != null ? String.valueOf(eVarA.a()) : "null");
            com.facebook.biddingkit.logging.b.a("FacebookNotifier", sb2.toString());
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Facebook bidder winner notified with http status ");
        sb3.append(eVarA != null ? String.valueOf(eVarA.a()) : "null");
        com.facebook.biddingkit.logging.b.a("FacebookNotifier", sb3.toString());
    }

    protected String k(boolean z10, String str, String str2, Double d11) {
        String strD = d();
        try {
            String[] strArrSplit = this.f24097c.c().split("_", 2);
            for (Map.Entry<String, String> entry : new HashMap<String, String>(strArrSplit.length >= 2 ? strArrSplit[1] : "", str, str2, d11, z10) { // from class: com.facebook.biddingkit.facebook.bidder.FacebookNotifier.1
                final /* synthetic */ Double val$cpmCents;
                final /* synthetic */ String val$entryName;
                final /* synthetic */ boolean val$isDisplay;
                final /* synthetic */ String val$placementFbid;
                final /* synthetic */ String val$segment;

                {
                    this.val$placementFbid = str;
                    this.val$segment = str;
                    this.val$entryName = str2;
                    this.val$cpmCents = d11;
                    this.val$isDisplay = z10;
                    put("${PARTNER_FBID}", FacebookNotifier.this.f24097c.a());
                    put("${APP_FBID}", FacebookNotifier.this.f24097c.a());
                    put("${PLACEMENT_FBID}", str);
                    put("${BUNDLE}", FacebookNotifier.this.h());
                    put("${IDFA}", FacebookNotifier.this.f());
                    put("${AUCTION_ID}", FacebookNotifier.this.f24097c.b());
                    put("${AB_TEST_SEGMENT}", str);
                    put("${AUCTION_LOSS}", FacebookNotifier.this.g(str2).getStringValue());
                    put(TrackingManager.AUCTION_PRICE, Double.toString(d11.doubleValue() / 100.0d));
                    put("${WINNER_NAME}", str2 == null ? "" : str2);
                    put("${WINNER_TYPE}", k8.a.a(str2) ? "bidding" : "waterfall");
                    put("${PHASE}", z10 ? "display" : "auction");
                }
            }.entrySet()) {
                String value = entry.getValue();
                if (value == null) {
                    value = "";
                }
                strD = strD.replace(entry.getKey(), value);
            }
        } catch (Throwable th2) {
            com.facebook.biddingkit.logging.b.d("FacebookNotifier", "Failed processing the Url", th2);
        }
        return strD;
    }
}
