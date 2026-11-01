package com.android.billingclient.api;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.internal.play_billing.zzaf;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f19153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JSONObject f19154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f19155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f19156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f19157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f19158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f19159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f19160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f19161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f19162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f19163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f19164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f19165m;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f19166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f19167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f19168c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f19169d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f19170e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final zzaf f19171f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Long f19172g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final z0 f19173h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final c1 f19174i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final a1 f19175j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final b1 f19176k;

        a(JSONObject jSONObject) {
            this.f19166a = jSONObject.optString("formattedPrice");
            this.f19167b = jSONObject.optLong("priceAmountMicros");
            this.f19168c = jSONObject.optString("priceCurrencyCode");
            this.f19169d = jSONObject.optString("offerIdToken");
            this.f19170e = jSONObject.optString("offerId");
            jSONObject.optInt("offerType");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i11));
                }
            }
            this.f19171f = zzaf.zzj(arrayList);
            this.f19172g = jSONObject.has("fullPriceMicros") ? Long.valueOf(jSONObject.optLong("fullPriceMicros")) : null;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            this.f19173h = jSONObjectOptJSONObject == null ? null : new z0(jSONObjectOptJSONObject);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            this.f19174i = jSONObjectOptJSONObject2 == null ? null : new c1(jSONObjectOptJSONObject2);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            this.f19175j = jSONObjectOptJSONObject3 == null ? null : new a1(jSONObjectOptJSONObject3);
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            this.f19176k = jSONObjectOptJSONObject4 != null ? new b1(jSONObjectOptJSONObject4) : null;
        }

        public final String a() {
            return this.f19169d;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f19177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f19178b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f19179c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f19180d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f19181e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f19182f;

        b(JSONObject jSONObject) {
            this.f19180d = jSONObject.optString("billingPeriod");
            this.f19179c = jSONObject.optString("priceCurrencyCode");
            this.f19177a = jSONObject.optString("formattedPrice");
            this.f19178b = jSONObject.optLong("priceAmountMicros");
            this.f19182f = jSONObject.optInt("recurrenceMode");
            this.f19181e = jSONObject.optInt("billingCycleCount");
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f19183a;

        c(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                    if (jSONObjectOptJSONObject != null) {
                        arrayList.add(new b(jSONObjectOptJSONObject));
                    }
                }
            }
            this.f19183a = arrayList;
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f19184a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f19185b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f19186c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final c f19187d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f19188e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final y0 f19189f;

        d(JSONObject jSONObject) {
            this.f19184a = jSONObject.optString("basePlanId");
            String strOptString = jSONObject.optString("offerId");
            this.f19185b = true == strOptString.isEmpty() ? null : strOptString;
            this.f19186c = jSONObject.getString("offerIdToken");
            this.f19187d = new c(jSONObject.getJSONArray("pricingPhases"));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.f19189f = jSONObjectOptJSONObject != null ? new y0(jSONObjectOptJSONObject) : null;
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            if (jSONArrayOptJSONArray != null) {
                for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i11));
                }
            }
            this.f19188e = arrayList;
        }

        public String a() {
            return this.f19186c;
        }
    }

    r(String str) {
        this.f19153a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f19154b = jSONObject;
        String strOptString = jSONObject.optString("productId");
        this.f19155c = strOptString;
        String strOptString2 = jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        this.f19156d = strOptString2;
        if (TextUtils.isEmpty(strOptString)) {
            throw new IllegalArgumentException("Product id cannot be empty.");
        }
        if (TextUtils.isEmpty(strOptString2)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.f19157e = jSONObject.optString(CampaignEx.JSON_KEY_TITLE);
        this.f19158f = jSONObject.optString("name");
        this.f19159g = jSONObject.optString(TrackingKey.DESCRIPTION);
        this.f19161i = jSONObject.optString("packageDisplayName");
        this.f19162j = jSONObject.optString("iconUrl");
        this.f19160h = jSONObject.optString("skuDetailsToken");
        this.f19163k = jSONObject.optString("serializedDocid");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < jSONArrayOptJSONArray.length(); i11++) {
                arrayList.add(new d(jSONArrayOptJSONArray.getJSONObject(i11)));
            }
            this.f19164l = arrayList;
        } else {
            this.f19164l = (strOptString2.equals("subs") || strOptString2.equals("play_pass_subs")) ? new ArrayList() : null;
        }
        JSONObject jSONObjectOptJSONObject = this.f19154b.optJSONObject("oneTimePurchaseOfferDetails");
        JSONArray jSONArrayOptJSONArray2 = this.f19154b.optJSONArray("oneTimePurchaseOfferDetailsList");
        ArrayList arrayList2 = new ArrayList();
        if (jSONArrayOptJSONArray2 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray2.length(); i12++) {
                arrayList2.add(new a(jSONArrayOptJSONArray2.getJSONObject(i12)));
            }
            this.f19165m = arrayList2;
            return;
        }
        if (jSONObjectOptJSONObject == null) {
            this.f19165m = null;
        } else {
            arrayList2.add(new a(jSONObjectOptJSONObject));
            this.f19165m = arrayList2;
        }
    }

    public a a() {
        List list = this.f19165m;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (a) this.f19165m.get(0);
    }

    public String b() {
        return this.f19155c;
    }

    public String c() {
        return this.f19156d;
    }

    public List d() {
        return this.f19164l;
    }

    public final String e() {
        return this.f19154b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            return TextUtils.equals(this.f19153a, ((r) obj).f19153a);
        }
        return false;
    }

    final String f() {
        return this.f19160h;
    }

    public String g() {
        return this.f19163k;
    }

    public int hashCode() {
        return this.f19153a.hashCode();
    }

    public String toString() {
        List list = this.f19164l;
        return "ProductDetails{jsonString='" + this.f19153a + "', parsedJson=" + this.f19154b.toString() + ", productId='" + this.f19155c + "', productType='" + this.f19156d + "', title='" + this.f19157e + "', productDetailsToken='" + this.f19160h + "', subscriptionOfferDetails=" + String.valueOf(list) + "}";
    }
}
