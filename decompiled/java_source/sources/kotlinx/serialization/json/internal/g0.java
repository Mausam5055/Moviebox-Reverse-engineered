package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
final class g0 extends c0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f68304g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f68305h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(kotlinx.serialization.json.a json, Function1 nodeConsumer) {
        super(json, nodeConsumer);
        Intrinsics.h(json, "json");
        Intrinsics.h(nodeConsumer, "nodeConsumer");
        this.f68305h = true;
    }

    @Override // kotlinx.serialization.json.internal.c0, kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public kotlinx.serialization.json.h v0() {
        return new JsonObject(x0());
    }

    @Override // kotlinx.serialization.json.internal.c0, kotlinx.serialization.json.internal.AbstractJsonTreeEncoder
    public void w0(String key, kotlinx.serialization.json.h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        if (!this.f68305h) {
            Map mapX0 = x0();
            String str = this.f68304g;
            if (str == null) {
                Intrinsics.z("tag");
                str = null;
            }
            mapX0.put(str, element);
            this.f68305h = true;
            return;
        }
        if (element instanceof kotlinx.serialization.json.u) {
            this.f68304g = ((kotlinx.serialization.json.u) element).a();
            this.f68305h = false;
        } else {
            if (element instanceof JsonObject) {
                throw w.d(kotlinx.serialization.json.t.f68360a.getDescriptor());
            }
            if (!(element instanceof kotlinx.serialization.json.b)) {
                throw new NoWhenBranchMatchedException();
            }
            throw w.d(kotlinx.serialization.json.c.f68237a.getDescriptor());
        }
    }
}
