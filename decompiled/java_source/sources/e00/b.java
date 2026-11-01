package e00;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.g;
import kotlinx.serialization.internal.g1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b implements f, d {
    @Override // e00.f
    public void B(int i11) {
        J(Integer.valueOf(i11));
    }

    @Override // e00.d
    public void C(kotlinx.serialization.descriptors.f descriptor, int i11, g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i11)) {
            e(serializer, obj);
        }
    }

    @Override // e00.d
    public final void D(kotlinx.serialization.descriptors.f descriptor, int i11, short s11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            q(s11);
        }
    }

    @Override // e00.d
    public final void E(kotlinx.serialization.descriptors.f descriptor, int i11, double d11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            g(d11);
        }
    }

    @Override // e00.d
    public final void F(kotlinx.serialization.descriptors.f descriptor, int i11, long j11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            m(j11);
        }
    }

    @Override // e00.f
    public void G(String value) {
        Intrinsics.h(value, "value");
        J(value);
    }

    public boolean H(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return true;
    }

    public void I(g gVar, Object obj) {
        f.a.c(this, gVar, obj);
    }

    public void J(Object value) {
        Intrinsics.h(value, "value");
        throw new SerializationException("Non-serializable " + Reflection.b(value.getClass()) + " is not supported by " + Reflection.b(getClass()) + " encoder");
    }

    @Override // e00.f
    public d b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override // e00.d
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override // e00.f
    public void e(g gVar, Object obj) {
        f.a.d(this, gVar, obj);
    }

    @Override // e00.d
    public final f f(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return H(descriptor, i11) ? l(descriptor.h(i11)) : g1.f68141a;
    }

    @Override // e00.f
    public void g(double d11) {
        J(Double.valueOf(d11));
    }

    @Override // e00.f
    public void h(byte b11) {
        J(Byte.valueOf(b11));
    }

    @Override // e00.d
    public void i(kotlinx.serialization.descriptors.f descriptor, int i11, g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i11)) {
            I(serializer, obj);
        }
    }

    @Override // e00.f
    public d j(kotlinx.serialization.descriptors.f fVar, int i11) {
        return f.a.a(this, fVar, i11);
    }

    @Override // e00.f
    public void k(kotlinx.serialization.descriptors.f enumDescriptor, int i11) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        J(Integer.valueOf(i11));
    }

    @Override // e00.f
    public f l(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override // e00.f
    public void m(long j11) {
        J(Long.valueOf(j11));
    }

    @Override // e00.d
    public final void n(kotlinx.serialization.descriptors.f descriptor, int i11, char c11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            u(c11);
        }
    }

    @Override // e00.f
    public void o() {
        throw new SerializationException("'null' is not supported by default");
    }

    @Override // e00.d
    public final void p(kotlinx.serialization.descriptors.f descriptor, int i11, byte b11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            h(b11);
        }
    }

    @Override // e00.f
    public void q(short s11) {
        J(Short.valueOf(s11));
    }

    @Override // e00.f
    public void r(boolean z10) {
        J(Boolean.valueOf(z10));
    }

    @Override // e00.d
    public final void s(kotlinx.serialization.descriptors.f descriptor, int i11, float f11) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            t(f11);
        }
    }

    @Override // e00.f
    public void t(float f11) {
        J(Float.valueOf(f11));
    }

    @Override // e00.f
    public void u(char c11) {
        J(Character.valueOf(c11));
    }

    @Override // e00.f
    public void v() {
        f.a.b(this);
    }

    @Override // e00.d
    public final void w(kotlinx.serialization.descriptors.f descriptor, int i11, int i12) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            B(i12);
        }
    }

    @Override // e00.d
    public final void x(kotlinx.serialization.descriptors.f descriptor, int i11, boolean z10) {
        Intrinsics.h(descriptor, "descriptor");
        if (H(descriptor, i11)) {
            r(z10);
        }
    }

    @Override // e00.d
    public final void y(kotlinx.serialization.descriptors.f descriptor, int i11, String value) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(value, "value");
        if (H(descriptor, i11)) {
            G(value);
        }
    }

    @Override // e00.d
    public boolean z(kotlinx.serialization.descriptors.f fVar, int i11) {
        return d.a.a(this, fVar, i11);
    }
}
