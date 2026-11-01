package kotlinx.serialization.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class o0 {

    public static final class a implements i0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlinx.serialization.b f68176a;

        a(kotlinx.serialization.b bVar) {
            this.f68176a = bVar;
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] childSerializers() {
            return new kotlinx.serialization.b[]{this.f68176a};
        }

        @Override // kotlinx.serialization.a
        public Object deserialize(e00.e decoder) {
            Intrinsics.h(decoder, "decoder");
            throw new IllegalStateException("unsupported");
        }

        @Override // kotlinx.serialization.b, kotlinx.serialization.g, kotlinx.serialization.a
        public kotlinx.serialization.descriptors.f getDescriptor() {
            throw new IllegalStateException("unsupported");
        }

        @Override // kotlinx.serialization.g
        public void serialize(e00.f encoder, Object obj) {
            Intrinsics.h(encoder, "encoder");
            throw new IllegalStateException("unsupported");
        }

        @Override // kotlinx.serialization.internal.i0
        public kotlinx.serialization.b[] typeParametersSerializers() {
            return i0.a.a(this);
        }
    }

    public static final kotlinx.serialization.descriptors.f a(String name, kotlinx.serialization.b primitiveSerializer) {
        Intrinsics.h(name, "name");
        Intrinsics.h(primitiveSerializer, "primitiveSerializer");
        return new n0(name, new a(primitiveSerializer));
    }
}
