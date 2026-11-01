package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c0 f68114a = new c0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68115b = new s1("kotlin.Double", kotlinx.serialization.descriptors.e.d.f68056a);

    private c0() {
    }

    @Override // kotlinx.serialization.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Double deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return Double.valueOf(decoder.v());
    }

    public void b(e00.f encoder, double d11) {
        Intrinsics.h(encoder, "encoder");
        encoder.g(d11);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68115b;
    }

    @Override // kotlinx.serialization.g
    public /* bridge */ /* synthetic */ void serialize(e00.f fVar, Object obj) {
        b(fVar, ((Number) obj).doubleValue());
    }
}
