package com.android.billingclient.api;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b1 {
    b1(JSONObject jSONObject) throws JSONException {
        jSONObject.getLong("preorderReleaseTimeMillis");
        jSONObject.getLong("preorderPresaleEndTimeMillis");
    }
}
