package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class e0 extends AbstractJsonTreeEncoder {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayList f68299f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        this.f68299f = new ArrayList();
    }

    @Override // kotlinx.serialization.internal.f1
    protected String e0(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return String.valueOf(i11);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public kotlinx.serialization.json.h v0() {
        return new kotlinx.serialization.json.b(this.f68299f);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        this.f68299f.add(Integer.parseInt(key), element);
    }
}
