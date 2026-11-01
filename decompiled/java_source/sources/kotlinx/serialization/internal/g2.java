package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class g2 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g2 f68143a = new g2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68144b = o0.a("kotlin.UByte", d00.a.z(ByteCompanionObject.f67268a));

    private g2() {
    }

    public byte a(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return UByte.b(decoder.q(getDescriptor()).H());
    }

    public void b(e00.f encoder, byte b11) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).h(b11);
    }

    @Override // kotlinx.serialization.a
    public /* bridge */ /* synthetic */ Object deserialize(e00.e eVar) {
        return UByte.a(a(eVar));
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68144b;
    }

    @Override // kotlinx.serialization.g
    public /* bridge */ /* synthetic */ void serialize(e00.f fVar, Object obj) {
        b(fVar, ((UByte) obj).getData());
    }
}
