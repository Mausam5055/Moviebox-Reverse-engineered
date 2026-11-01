package com.android.billingclient.api;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a1 {
    a1(JSONObject jSONObject) throws JSONException {
        jSONObject.getInt("maximumQuantity");
        jSONObject.getInt("remainingQuantity");
    }
}
