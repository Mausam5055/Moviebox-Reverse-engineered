package kotlinx.serialization.internal;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class q2 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q2 f68188b = new q2();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ObjectSerializer f68189a = new ObjectSerializer("kotlin.Unit", Unit.f67061a);

    private q2() {
    }

    public void a(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        this.f68189a.deserialize(decoder);
    }

    @Override // kotlinx.serialization.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(e00.f encoder, Unit value) {
        Intrinsics.h(encoder, "encoder");
        Intrinsics.h(value, "value");
        this.f68189a.serialize(encoder, value);
    }

    @Override // kotlinx.serialization.a
    public /* bridge */ /* synthetic */ Object deserialize(e00.e eVar) {
        a(eVar);
        return Unit.f67061a;
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68189a.getDescriptor();
    }
}
