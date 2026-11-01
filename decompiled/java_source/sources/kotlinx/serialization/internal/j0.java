package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class j0 extends c1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(kotlinx.serialization.descriptors.f keyDesc, kotlinx.serialization.descriptors.f valueDesc) {
        super("kotlin.collections.HashMap", keyDesc, valueDesc, null);
        Intrinsics.h(keyDesc, "keyDesc");
        Intrinsics.h(valueDesc, "valueDesc");
    }
}
