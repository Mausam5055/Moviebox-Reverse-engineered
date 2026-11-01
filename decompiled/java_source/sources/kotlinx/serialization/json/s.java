package kotlinx.serialization.json;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f68359a = new LinkedHashMap();

    @PublishedApi
    public s() {
    }

    public final JsonObject a() {
        return new JsonObject(this.f68359a);
    }

    public final h b(String key, h element) {
        Intrinsics.h(key, "key");
        Intrinsics.h(element, "element");
        return (h) this.f68359a.put(key, element);
    }
}
