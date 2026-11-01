package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f24111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f24112b;

    public c(String str) {
        this.f24111a = "https://an.facebook.com/placementbid.ortb";
        this.f24112b = "https://www.facebook.com/audiencenetwork/nurl/?partner=${PARTNER_FBID}&app=${APP_FBID}&placement=${PLACEMENT_FBID}&auction=${AUCTION_ID}&clearing_price=${AUCTION_PRICE}&ortb_loss_code=${AUCTION_LOSS}&ab_test_segment=${AB_TEST_SEGMENT}&winner_name=${WINNER_NAME}&winner_type=${WINNER_TYPE}&bundle=${BUNDLE}&phase=${PHASE}&idfa=${IDFA}";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject("facebook");
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has("bid_url")) {
                    this.f24111a = jSONObjectOptJSONObject.getString("bid_url");
                }
                if (jSONObjectOptJSONObject.has("notify_url")) {
                    this.f24112b = jSONObjectOptJSONObject.getString("notify_url");
                }
            }
        } catch (JSONException e11) {
            com.facebook.biddingkit.logging.b.d("FacebookConfig", "Failed to parse configuration.", e11);
        }
    }

    public String a() {
        return this.f24112b;
    }
}
