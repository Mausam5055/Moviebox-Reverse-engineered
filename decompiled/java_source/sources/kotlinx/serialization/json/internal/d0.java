package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class d0 extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlinx.serialization.json.b f68296f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f68297g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f68298h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(kotlinx.serialization.json.a json, kotlinx.serialization.json.b value) {
        super(json, value, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f68296f = value;
        this.f68297g = v0().size();
        this.f68298h = -1;
    }

    @Override // kotlinx.serialization.internal.e1
    protected String c0(kotlinx.serialization.descriptors.f desc, int i11) {
        Intrinsics.h(desc, "desc");
        return String.valueOf(i11);
    }

    @Override // kotlinx.serialization.json.internal.c
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        return v0().get(Integer.parseInt(tag));
    }

    @Override // e00.c
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        int i11 = this.f68298h;
        if (i11 >= this.f68297g - 1) {
            return -1;
        }
        int i12 = i11 + 1;
        this.f68298h = i12;
        return i12;
    }

    @Override // kotlinx.serialization.json.internal.c
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public kotlinx.serialization.json.b v0() {
        return this.f68296f;
    }
}
