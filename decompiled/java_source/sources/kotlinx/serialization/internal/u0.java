package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class u0 extends c1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(kotlinx.serialization.descriptors.f keyDesc, kotlinx.serialization.descriptors.f valueDesc) {
        super("kotlin.collections.LinkedHashMap", keyDesc, valueDesc, null);
        Intrinsics.h(keyDesc, "keyDesc");
        Intrinsics.h(valueDesc, "valueDesc");
    }
}
