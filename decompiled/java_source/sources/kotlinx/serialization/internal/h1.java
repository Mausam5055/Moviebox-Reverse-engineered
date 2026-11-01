package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes7.dex */
public final class h1 implements kotlinx.serialization.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.b f68148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.descriptors.f f68149b;

    public h1(kotlinx.serialization.b serializer) {
        Intrinsics.h(serializer, "serializer");
        this.f68148a = serializer;
        this.f68149b = new v1(serializer.getDescriptor());
    }

    @Override // kotlinx.serialization.a
    public Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return decoder.D() ? decoder.G(this.f68148a) : decoder.j();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Intrinsics.c(Reflection.b(h1.class), Reflection.b(obj.getClass())) && Intrinsics.c(this.f68148a, ((h1) obj).f68148a);
    }

    @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
    public kotlinx.serialization.descriptors.f getDescriptor() {
        return this.f68149b;
    }

    public int hashCode() {
        return this.f68148a.hashCode();
    }

    @Override // kotlinx.serialization.g
    public void serialize(e00.f encoder, Object obj) {
        Intrinsics.h(encoder, "encoder");
        if (obj == null) {
            encoder.o();
        } else {
            encoder.v();
            encoder.e(this.f68148a, obj);
        }
    }
}
