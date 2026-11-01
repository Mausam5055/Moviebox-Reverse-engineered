package com.facebook.biddingkit.logging;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f24137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24139c;

    public i(String str) {
        this.f24137a = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.f24138b = 60000;
        this.f24139c = "https://www.facebook.com/audiencenetwork/bidding_kit_logging";
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(RequestParameters.SUBRESOURCE_LOGGING);
            if (jSONObjectOptJSONObject != null) {
                if (jSONObjectOptJSONObject.has("cycle_separation_ms")) {
                    this.f24137a = jSONObjectOptJSONObject.getInt("cycle_separation_ms");
                }
                if (jSONObjectOptJSONObject.has("network_wait_on_failure_ms")) {
                    this.f24138b = jSONObjectOptJSONObject.getInt("network_wait_on_failure_ms");
                }
                if (jSONObjectOptJSONObject.has("dispatcher_url")) {
                    this.f24139c = jSONObjectOptJSONObject.getString("dispatcher_url");
                }
            }
        } catch (JSONException e11) {
            b.d("LoggingConfig", "Failed to parse configuration.", e11);
        }
    }

    public int a() {
        return this.f24137a;
    }

    public String b() {
        return this.f24139c;
    }

    public int c() {
        return this.f24138b;
    }
}
