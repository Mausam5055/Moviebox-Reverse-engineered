package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c2 implements e00.f, e00.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f68120a = new ArrayList();

    private final boolean H(kotlinx.serialization.descriptors.f fVar, int i11) {
        c0(a0(fVar, i11));
        return true;
    }

    @Override // e00.f
    public final void B(int i11) {
        Q(b0(), i11);
    }

    @Override // e00.d
    public void C(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i11)) {
            e(serializer, obj);
        }
    }

    @Override // e00.d
    public final void D(kotlinx.serialization.descriptors.f descriptor, int i11, short s11) {
        Intrinsics.h(descriptor, "descriptor");
        U(a0(descriptor, i11), s11);
    }

    @Override // e00.d
    public final void E(kotlinx.serialization.descriptors.f descriptor, int i11, double d11) {
        Intrinsics.h(descriptor, "descriptor");
        M(a0(descriptor, i11), d11);
    }

    @Override // e00.d
    public final void F(kotlinx.serialization.descriptors.f descriptor, int i11, long j11) {
        Intrinsics.h(descriptor, "descriptor");
        R(a0(descriptor, i11), j11);
    }

    @Override // e00.f
    public final void G(String value) {
        Intrinsics.h(value, "value");
        V(b0(), value);
    }

    public void I(kotlinx.serialization.g gVar, Object obj) {
        e00.f.a.c(this, gVar, obj);
    }

    protected void J(Object obj, boolean z10) {
        W(obj, Boolean.valueOf(z10));
    }

    protected void K(Object obj, byte b11) {
        W(obj, Byte.valueOf(b11));
    }

    protected void L(Object obj, char c11) {
        W(obj, Character.valueOf(c11));
    }

    protected void M(Object obj, double d11) {
        W(obj, Double.valueOf(d11));
    }

    protected void N(Object obj, kotlinx.serialization.descriptors.f enumDescriptor, int i11) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        W(obj, Integer.valueOf(i11));
    }

    protected void O(Object obj, float f11) {
        W(obj, Float.valueOf(f11));
    }

    protected e00.f P(Object obj, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        c0(obj);
        return this;
    }

    protected void Q(Object obj, int i11) {
        W(obj, Integer.valueOf(i11));
    }

    protected void R(Object obj, long j11) {
        W(obj, Long.valueOf(j11));
    }

    protected void S(Object obj) {
    }

    protected void T(Object obj) {
        throw new SerializationException("null is not supported");
    }

    protected void U(Object obj, short s11) {
        W(obj, Short.valueOf(s11));
    }

    protected void V(Object obj, String value) {
        Intrinsics.h(value, "value");
        W(obj, value);
    }

    protected void W(Object obj, Object value) {
        Intrinsics.h(value, "value");
        throw new SerializationException("Non-serializable " + Reflection.b(value.getClass()) + " is not supported by " + Reflection.b(getClass()) + " encoder");
    }

    protected void X(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    protected final Object Y() {
        return CollectionsKt.u0(this.f68120a);
    }

    protected final Object Z() {
        return CollectionsKt.v0(this.f68120a);
    }

    @Override // e00.f
    public f00.c a() {
        return f00.d.a();
    }

    protected abstract Object a0(kotlinx.serialization.descriptors.f fVar, int i11);

    @Override // e00.f
    public e00.d b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    protected final Object b0() {
        if (this.f68120a.isEmpty()) {
            throw new SerializationException("No tag in stack for requested element");
        }
        ArrayList arrayList = this.f68120a;
        return arrayList.remove(CollectionsKt.n(arrayList));
    }

    @Override // e00.d
    public final void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        if (!this.f68120a.isEmpty()) {
            b0();
        }
        X(descriptor);
    }

    protected final void c0(Object obj) {
        this.f68120a.add(obj);
    }

    @Override // e00.f
    public void e(kotlinx.serialization.g gVar, Object obj) {
        e00.f.a.d(this, gVar, obj);
    }

    @Override // e00.d
    public final e00.f f(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return P(a0(descriptor, i11), descriptor.h(i11));
    }

    @Override // e00.f
    public final void g(double d11) {
        M(b0(), d11);
    }

    @Override // e00.f
    public final void h(byte b11) {
        K(b0(), b11);
    }

    @Override // e00.d
    public void i(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (H(descriptor, i11)) {
            I(serializer, obj);
        }
    }

    @Override // e00.f
    public e00.d j(kotlinx.serialization.descriptors.f fVar, int i11) {
        return e00.f.a.a(this, fVar, i11);
    }

    @Override // e00.f
    public final void k(kotlinx.serialization.descriptors.f enumDescriptor, int i11) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        N(b0(), enumDescriptor, i11);
    }

    @Override // e00.f
    public final e00.f l(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return P(b0(), descriptor);
    }

    @Override // e00.f
    public final void m(long j11) {
        R(b0(), j11);
    }

    @Override // e00.d
    public final void n(kotlinx.serialization.descriptors.f descriptor, int i11, char c11) {
        Intrinsics.h(descriptor, "descriptor");
        L(a0(descriptor, i11), c11);
    }

    @Override // e00.f
    public void o() {
        T(b0());
    }

    @Override // e00.d
    public final void p(kotlinx.serialization.descriptors.f descriptor, int i11, byte b11) {
        Intrinsics.h(descriptor, "descriptor");
        K(a0(descriptor, i11), b11);
    }

    @Override // e00.f
    public final void q(short s11) {
        U(b0(), s11);
    }

    @Override // e00.f
    public final void r(boolean z10) {
        J(b0(), z10);
    }

    @Override // e00.d
    public final void s(kotlinx.serialization.descriptors.f descriptor, int i11, float f11) {
        Intrinsics.h(descriptor, "descriptor");
        O(a0(descriptor, i11), f11);
    }

    @Override // e00.f
    public final void t(float f11) {
        O(b0(), f11);
    }

    @Override // e00.f
    public final void u(char c11) {
        L(b0(), c11);
    }

    @Override // e00.f
    public void v() {
        S(Y());
    }

    @Override // e00.d
    public final void w(kotlinx.serialization.descriptors.f descriptor, int i11, int i12) {
        Intrinsics.h(descriptor, "descriptor");
        Q(a0(descriptor, i11), i12);
    }

    @Override // e00.d
    public final void x(kotlinx.serialization.descriptors.f descriptor, int i11, boolean z10) {
        Intrinsics.h(descriptor, "descriptor");
        J(a0(descriptor, i11), z10);
    }

    @Override // e00.d
    public final void y(kotlinx.serialization.descriptors.f descriptor, int i11, String value) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(value, "value");
        V(a0(descriptor, i11), value);
    }

    @Override // e00.d
    public boolean z(kotlinx.serialization.descriptors.f fVar, int i11) {
        return e00.d.a.a(this, fVar, i11);
    }
}
