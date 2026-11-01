package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class v implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f68366a = new v();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68367b = SerialDescriptorsKt.d("kotlinx.serialization.json.JsonPrimitive", kotlinx.serialization.descriptors.e.i.f68061a, new kotlinx.serialization.descriptors.f[0], null, 8, null);

    private v() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public u deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        h hVarG = k.d(decoder).g();
        if (hVarG instanceof u) {
            return (u) hVarG;
        }
        throw kotlinx.serialization.json.internal.w.f(-1, "Unexpected JSON element, expected JsonPrimitive, had " + Reflection.b(hVarG.getClass()), hVarG.toString());
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, u value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        k.h(encoder);
        if (value instanceof JsonNull) {
            encoder.e(r.f68357a, JsonNull.f68226c);
        } else {
            encoder.e(p.f68355a, (o) value);
        }
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68367b;
    }
}
