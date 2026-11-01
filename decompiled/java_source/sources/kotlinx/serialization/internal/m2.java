package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes7.dex */
public final class m2 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m2 f68170a = new m2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final kotlinx.serialization.descriptors.f f68171b = o0.a("kotlin.ULong", d00.a.E(LongCompanionObject.f67283a));

    private m2() {
    }

    public long a(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return ULong.b(decoder.q(getDescriptor()).l());
    }

    public void b(e00.f encoder, long j11) {
        Intrinsics.h(encoder, "encoder");
        encoder.l(getDescriptor()).m(j11);
    }

    @Override // kotlinx.serialization.a
    public /* bridge */ /* synthetic */ Object deserialize(e00.e eVar) {
        return ULong.a(a(eVar));
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return f68171b;
    }

    @Override // kotlinx.serialization.g
    public /* bridge */ /* synthetic */ void serialize(e00.f fVar, Object obj) {
        b(fVar, ((ULong) obj).getData());
    }
}
