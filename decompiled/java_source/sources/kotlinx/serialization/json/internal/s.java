package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class s {
    public static final j a(h0 sb2, kotlinx.serialization.json.a json) {
        Intrinsics.h(sb2, "sb");
        Intrinsics.h(json, "json");
        return json.e().h() ? new r(sb2, json) : new j(sb2);
    }
}
