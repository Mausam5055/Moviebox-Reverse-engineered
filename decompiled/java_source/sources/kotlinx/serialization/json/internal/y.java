package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class y extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlinx.serialization.json.u f68350f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(kotlinx.serialization.json.a json, kotlinx.serialization.json.u value) {
        super(json, value, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f68350f = value;
        Z("primitive");
    }

    @Override // kotlinx.serialization.json.internal.c
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        if (tag == "primitive") {
            return v0();
        }
        throw new IllegalArgumentException("This input can only handle primitives with 'primitive' tag");
    }

    @Override // e00.c
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return 0;
    }

    @Override // kotlinx.serialization.json.internal.c
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public kotlinx.serialization.json.u v0() {
        return this.f68350f;
    }
}
