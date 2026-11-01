package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class q1 extends y0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f68187c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(kotlinx.serialization.descriptors.f primitive) {
        super(primitive, null);
        Intrinsics.h(primitive, "primitive");
        this.f68187c = primitive.i() + "Array";
    }

    @Override // kotlinx.serialization.descriptors.f
    public String i() {
        return this.f68187c;
    }
}
