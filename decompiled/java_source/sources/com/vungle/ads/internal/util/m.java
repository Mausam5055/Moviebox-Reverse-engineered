package com.vungle.ads.internal.util;

import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
public final class m {
    public static final m INSTANCE = new m();

    private m() {
    }

    public final String getContentStringValue(JsonObject json, String key) {
        Intrinsics.h(json, "json");
        Intrinsics.h(key, "key");
        try {
            return kotlinx.serialization.json.j.l((kotlinx.serialization.json.h) MapsKt.i(json, key)).a();
        } catch (Exception unused) {
            return null;
        }
    }
}
