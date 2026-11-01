package kotlinx.serialization.json.internal;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class z extends AbstractJsonTreeEncoder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private kotlinx.serialization.json.h f68351f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        c0("primitive");
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public kotlinx.serialization.json.h v0() {
        kotlinx.serialization.json.h hVar = this.f68351f;
        if (hVar != null) {
            return hVar;
        }
        throw new IllegalArgumentException("Primitive element has not been recorded. Is call to .encodeXxx is missing in serializer?");
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        if (key != "primitive") {
            throw new IllegalArgumentException("This output can only consume primitives with 'primitive' tag");
        }
        if (this.f68351f != null) {
            throw new IllegalArgumentException("Primitive element was already recorded. Does call to .encodeXxx happen more than once?");
        }
        this.f68351f = element;
    }
}
