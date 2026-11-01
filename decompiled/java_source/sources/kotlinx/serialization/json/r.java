package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.json.internal.JsonDecodingException;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f68357a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68358b = SerialDescriptorsKt.d("kotlinx.serialization.json.JsonNull", kotlinx.serialization.descriptors.h.b.f68069a, new kotlinx.serialization.descriptors.f[0], null, 8, null);

    private r() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonNull deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        k.g(decoder);
        if (decoder.D()) {
            throw new JsonDecodingException("Expected 'null' literal");
        }
        decoder.j();
        return JsonNull.f68226c;
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, JsonNull value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        encoder.o();
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68358b;
    }
}
