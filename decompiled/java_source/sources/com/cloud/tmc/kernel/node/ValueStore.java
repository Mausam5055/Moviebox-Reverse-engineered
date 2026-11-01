package com.cloud.tmc.kernel.node;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public interface ValueStore {
    boolean getBooleanValue(String str);

    int getIntValue(String str);

    JsonArray getJsonArrayValue(String str);

    JsonObject getJsonValue(String str);

    long getLongValue(String str);

    String getStringValue(String str);

    void putBooleanValue(String str, boolean z10);

    void putIntValue(String str, int i11);

    void putJsonArrayValue(String str, JsonArray jsonArray);

    void putJsonValue(String str, JsonObject jsonObject);

    void putLongValue(String str, long j11);

    void putStringValue(String str, String str2);
}
