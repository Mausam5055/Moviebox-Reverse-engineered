package kotlinx.serialization.json.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
final class f0 extends JsonTreeDecoder {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final JsonObject f68300k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f68301l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f68302m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f68303n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(kotlinx.serialization.json.a json, JsonObject value) {
        super(json, value, null, null, 12, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(value, "value");
        this.f68300k = value;
        List listR0 = CollectionsKt.R0(v0().keySet());
        this.f68301l = listR0;
        this.f68302m = listR0.size() * 2;
        this.f68303n = -1;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.c, kotlinx.serialization.internal.TaggedDecoder, e00.c
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.internal.e1
    protected String c0(kotlinx.serialization.descriptors.f desc, int i11) {
        Intrinsics.h(desc, "desc");
        return (String) this.f68301l.get(i11 / 2);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.c
    protected kotlinx.serialization.json.h g0(String tag) {
        Intrinsics.h(tag, "tag");
        return this.f68303n % 2 == 0 ? kotlinx.serialization.json.j.c(tag) : (kotlinx.serialization.json.h) MapsKt.i(v0(), tag);
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, e00.c
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        int i11 = this.f68303n;
        if (i11 >= this.f68302m - 1) {
            return -1;
        }
        int i12 = i11 + 1;
        this.f68303n = i12;
        return i12;
    }

    @Override // kotlinx.serialization.json.internal.JsonTreeDecoder, kotlinx.serialization.json.internal.c
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public JsonObject v0() {
        return this.f68300k;
    }
}
