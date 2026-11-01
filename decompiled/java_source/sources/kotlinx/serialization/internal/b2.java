package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b2 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b2 f68112a = new b2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68113b = new s1("kotlin.String", kotlinx.serialization.descriptors.e.i.f68061a);

    private b2() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return decoder.z();
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, String value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        encoder.G(value);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68113b;
    }
}
