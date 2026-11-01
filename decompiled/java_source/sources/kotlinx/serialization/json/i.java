package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i {
    public static final h a(s sVar, String key, Boolean bool) {
        Intrinsics.h(sVar, "<this>");
        Intrinsics.h(key, "key");
        return sVar.b(key, j.a(bool));
    }

    public static final h b(s sVar, String key, Number number) {
        Intrinsics.h(sVar, "<this>");
        Intrinsics.h(key, "key");
        return sVar.b(key, j.b(number));
    }

    public static final h c(s sVar, String key, String str) {
        Intrinsics.h(sVar, "<this>");
        Intrinsics.h(key, "key");
        return sVar.b(key, j.c(str));
    }
}
