package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f68190a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68191b = new s1("kotlin.Char", kotlinx.serialization.descriptors.e.c.f68055a);

    private r() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Character deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Character.valueOf(decoder.x());
    }

    public void b(e00.f encoder, char c11) {
        Intrinsics.h(encoder, "encoder");
        encoder.u(c11);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68191b;
    }

    @Override // kotlinx.serialization.g
    public /* bridge */ /* synthetic */ void serialize(e00.f fVar, Object obj) {
        b(fVar, ((Character) obj).charValue());
    }
}
