package kotlinx.serialization.json;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class JsonElementSerializer implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JsonElementSerializer f68224a = new JsonElementSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68225b = SerialDescriptorsKt.c("kotlinx.serialization.json.JsonElement", kotlinx.serialization.descriptors.d.b.f68052a, new kotlinx.serialization.descriptors.f[0], new Function1<kotlinx.serialization.descriptors.a, Unit>() { // from class: kotlinx.serialization.json.JsonElementSerializer$descriptor$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((kotlinx.serialization.descriptors.a) obj);
            return Unit.f67061a;
        }

        public final void invoke(kotlinx.serialization.descriptors.a buildSerialDescriptor) {
            Intrinsics.h(buildSerialDescriptor, "$this$buildSerialDescriptor");
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonPrimitive", k.f(new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.json.JsonElementSerializer$descriptor$1.1
                @Override // kotlin.jvm.functions.Function0
                public final kotlinx.serialization.descriptors.f invoke() {
                    return v.f68366a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonNull", k.f(new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.json.JsonElementSerializer$descriptor$1.2
                @Override // kotlin.jvm.functions.Function0
                public final kotlinx.serialization.descriptors.f invoke() {
                    return r.f68357a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonLiteral", k.f(new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.json.JsonElementSerializer$descriptor$1.3
                @Override // kotlin.jvm.functions.Function0
                public final kotlinx.serialization.descriptors.f invoke() {
                    return p.f68355a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonObject", k.f(new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.json.JsonElementSerializer$descriptor$1.4
                @Override // kotlin.jvm.functions.Function0
                public final kotlinx.serialization.descriptors.f invoke() {
                    return t.f68360a.getDescriptor();
                }
            }), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "JsonArray", k.f(new Function0<kotlinx.serialization.descriptors.f>() { // from class: kotlinx.serialization.json.JsonElementSerializer$descriptor$1.5
                @Override // kotlin.jvm.functions.Function0
                public final kotlinx.serialization.descriptors.f invoke() {
                    return c.f68237a.getDescriptor();
                }
            }), null, false, 12, null);
        }
    });

    private JsonElementSerializer() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public h deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return k.d(decoder).g();
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, h value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        if (value instanceof u) {
            encoder.e(v.f68366a, value);
        } else if (value instanceof JsonObject) {
            encoder.e(t.f68360a, value);
        } else if (value instanceof b) {
            encoder.e(c.f68237a, value);
        }
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68225b;
    }
}
