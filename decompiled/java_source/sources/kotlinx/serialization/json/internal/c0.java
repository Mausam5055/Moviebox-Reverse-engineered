package kotlinx.serialization.json.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
class c0 extends AbstractJsonTreeEncoder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f68295f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        this.f68295f = new LinkedHashMap();
    }

    @Override // kotlinx.serialization.internal.c2, e00.d
    public void i(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (obj != null || this.f68270d.f()) {
            super.i(descriptor, i11, serializer, obj);
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public kotlinx.serialization.json.h v0() {
        return new JsonObject(this.f68295f);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        this.f68295f.put(key, element);
    }

    protected final Map x0() {
        return this.f68295f;
    }
}
