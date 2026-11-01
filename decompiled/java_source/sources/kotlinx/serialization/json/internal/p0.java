package kotlinx.serialization.json.internal;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class p0 {
    public static final Object a(kotlinx.serialization.json.a aVar, kotlinx.serialization.json.h element, kotlinx.serialization.a deserializer) {
        e00.e yVar;
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(element, "element");
        Intrinsics.h(deserializer, "deserializer");
        if (element instanceof JsonObject) {
            yVar = new JsonTreeDecoder(aVar, (JsonObject) element, null, null, 12, null);
        } else if (element instanceof kotlinx.serialization.json.b) {
            yVar = new d0(aVar, (kotlinx.serialization.json.b) element);
        } else {
            if (!(element instanceof kotlinx.serialization.json.o ? true : Intrinsics.c(element, JsonNull.f68226c))) {
                throw new NoWhenBranchMatchedException();
            }
            yVar = new y(aVar, (kotlinx.serialization.json.u) element);
        }
        return yVar.G(deserializer);
    }

    public static final Object b(kotlinx.serialization.json.a aVar, String discriminator, JsonObject element, kotlinx.serialization.a deserializer) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(discriminator, "discriminator");
        Intrinsics.h(element, "element");
        Intrinsics.h(deserializer, "deserializer");
        return new JsonTreeDecoder(aVar, element, discriminator, deserializer.getDescriptor()).G(deserializer);
    }
}
