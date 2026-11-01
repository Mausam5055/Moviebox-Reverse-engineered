package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends y0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlinx.serialization.descriptors.f elementDesc) {
        super(elementDesc, null);
        Intrinsics.h(elementDesc, "elementDesc");
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return "kotlin.Array";
    }
}
