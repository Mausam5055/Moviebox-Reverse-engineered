package e00;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements e, c {
    @Override // e00.c
    public final char A(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return x();
    }

    @Override // e00.c
    public final byte B(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return H();
    }

    @Override // e00.c
    public final boolean C(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return w();
    }

    @Override // e00.e
    public boolean D() {
        return true;
    }

    @Override // e00.c
    public final short E(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return s();
    }

    @Override // e00.c
    public final double F(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return v();
    }

    @Override // e00.e
    public Object G(kotlinx.serialization.a aVar) {
        return e.a.a(this, aVar);
    }

    @Override // e00.e
    public byte H() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objJ).byteValue();
    }

    public Object I(kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(deserializer, "deserializer");
        return G(deserializer);
    }

    public Object J() {
        throw new SerializationException(Reflection.b(getClass()) + " can't retrieve untyped values");
    }

    @Override // e00.e
    public c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override // e00.c
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override // e00.e
    public int e(kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override // e00.c
    public final long f(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return l();
    }

    @Override // e00.e
    public int h() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objJ).intValue();
    }

    @Override // e00.c
    public final int i(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return h();
    }

    @Override // e00.e
    public Void j() {
        return null;
    }

    @Override // e00.c
    public int k(kotlinx.serialization.descriptors.f fVar) {
        return c.a.a(this, fVar);
    }

    @Override // e00.e
    public long l() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objJ).longValue();
    }

    @Override // e00.c
    public final String m(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return z();
    }

    @Override // e00.c
    public final Object n(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return (deserializer.getDescriptor().b() || D()) ? I(deserializer, obj) : j();
    }

    @Override // e00.c
    public boolean p() {
        return c.a.b(this);
    }

    @Override // e00.e
    public e q(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override // e00.c
    public e r(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return q(descriptor.h(i11));
    }

    @Override // e00.e
    public short s() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objJ).shortValue();
    }

    @Override // e00.e
    public float t() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objJ).floatValue();
    }

    @Override // e00.c
    public final float u(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return t();
    }

    @Override // e00.e
    public double v() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objJ).doubleValue();
    }

    @Override // e00.e
    public boolean w() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objJ).booleanValue();
    }

    @Override // e00.e
    public char x() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objJ).charValue();
    }

    @Override // e00.c
    public Object y(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return I(deserializer, obj);
    }

    @Override // e00.e
    public String z() {
        Object objJ = J();
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlin.String");
        return (String) objJ;
    }
}
