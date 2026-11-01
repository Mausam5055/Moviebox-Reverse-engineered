package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class j2 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j2 f68158a = new j2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68159b = o0.a("kotlin.UInt", d00.a.D(IntCompanionObject.f67282a));

    private j2() {
    }

    public int a(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return UInt.b(decoder.q(getDescriptor()).h());
    }

    public void b(e00.f encoder, int i11) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).B(i11);
    }

    @Override // kotlinx.serialization.a
    public /* bridge */ /* synthetic */ Object deserialize(e00.e eVar) {
        return UInt.a(a(eVar));
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68159b;
    }

    @Override // kotlinx.serialization.g
    public /* bridge */ /* synthetic */ void serialize(e00.f fVar, Object obj) {
        b(fVar, ((UInt) obj).getData());
    }
}
