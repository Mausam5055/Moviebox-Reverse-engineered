package kotlinx.serialization.internal;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TaggedDecoder implements e00.e, e00.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f68098a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68099b;

    private final Object a0(Object obj, Function0 function0) {
        Z(obj);
        Object objInvoke = function0.invoke();
        if (!this.f68099b) {
            Y();
        }
        this.f68099b = false;
        return objInvoke;
    }

    @Override // e00.c
    public final char A(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return L(X(descriptor, i11));
    }

    @Override // e00.c
    public final byte B(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return K(X(descriptor, i11));
    }

    @Override // e00.c
    public final boolean C(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return J(X(descriptor, i11));
    }

    @Override // e00.e
    public boolean D() {
        Object objW = W();
        if (objW == null) {
            return false;
        }
        return S(objW);
    }

    @Override // e00.c
    public final short E(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return T(X(descriptor, i11));
    }

    @Override // e00.c
    public final double F(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return M(X(descriptor, i11));
    }

    @Override // e00.e
    public Object G(kotlinx.serialization.a aVar) {
        return e00.e.a.a(this, aVar);
    }

    @Override // e00.e
    public final byte H() {
        return K(Y());
    }

    protected Object I(kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(deserializer, "deserializer");
        return G(deserializer);
    }

    protected boolean J(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objV).booleanValue();
    }

    protected byte K(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) objV).byteValue();
    }

    protected char L(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) objV).charValue();
    }

    protected double M(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) objV).doubleValue();
    }

    protected int N(Object obj, kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objV).intValue();
    }

    protected float O(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) objV).floatValue();
    }

    protected e00.e P(Object obj, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        Z(obj);
        return this;
    }

    protected int Q(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) objV).intValue();
    }

    protected long R(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objV).longValue();
    }

    protected boolean S(Object obj) {
        return true;
    }

    protected short T(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) objV).shortValue();
    }

    protected String U(Object obj) {
        Object objV = V(obj);
        Intrinsics.f(objV, "null cannot be cast to non-null type kotlin.String");
        return (String) objV;
    }

    protected Object V(Object obj) {
        throw new SerializationException(Reflection.b(getClass()) + " can't retrieve untyped values");
    }

    protected final Object W() {
        return CollectionsKt.v0(this.f68098a);
    }

    protected abstract Object X(kotlinx.serialization.descriptors.f fVar, int i11);

    protected final Object Y() {
        ArrayList arrayList = this.f68098a;
        Object objRemove = arrayList.remove(CollectionsKt.n(arrayList));
        this.f68099b = true;
        return objRemove;
    }

    protected final void Z(Object obj) {
        this.f68098a.add(obj);
    }

    @Override // e00.e, e00.c
    public f00.c a() {
        return f00.d.a();
    }

    @Override // e00.e
    public e00.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return this;
    }

    @Override // e00.c
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override // e00.e
    public final int e(kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        return N(Y(), enumDescriptor);
    }

    @Override // e00.c
    public final long f(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return R(X(descriptor, i11));
    }

    @Override // e00.e
    public final int h() {
        return Q(Y());
    }

    @Override // e00.c
    public final int i(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return Q(X(descriptor, i11));
    }

    @Override // e00.e
    public final Void j() {
        return null;
    }

    @Override // e00.c
    public int k(kotlinx.serialization.descriptors.f fVar) {
        return e00.c.a.a(this, fVar);
    }

    @Override // e00.e
    public final long l() {
        return R(Y());
    }

    @Override // e00.c
    public final String m(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return U(X(descriptor, i11));
    }

    @Override // e00.c
    public final Object n(kotlinx.serialization.descriptors.f descriptor, int i11, final kotlinx.serialization.a deserializer, final Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return a0(X(descriptor, i11), new Function0<Object>() { // from class: kotlinx.serialization.internal.TaggedDecoder$decodeNullableSerializableElement$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.this$0.D() ? this.this$0.I(deserializer, obj) : this.this$0.j();
            }
        });
    }

    @Override // e00.c
    public boolean p() {
        return e00.c.a.b(this);
    }

    @Override // e00.e
    public final e00.e q(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return P(Y(), descriptor);
    }

    @Override // e00.c
    public final e00.e r(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return P(X(descriptor, i11), descriptor.h(i11));
    }

    @Override // e00.e
    public final short s() {
        return T(Y());
    }

    @Override // e00.e
    public final float t() {
        return O(Y());
    }

    @Override // e00.c
    public final float u(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return O(X(descriptor, i11));
    }

    @Override // e00.e
    public final double v() {
        return M(Y());
    }

    @Override // e00.e
    public final boolean w() {
        return J(Y());
    }

    @Override // e00.e
    public final char x() {
        return L(Y());
    }

    @Override // e00.c
    public final Object y(kotlinx.serialization.descriptors.f descriptor, int i11, final kotlinx.serialization.a deserializer, final Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        return a0(X(descriptor, i11), new Function0<Object>() { // from class: kotlinx.serialization.internal.TaggedDecoder$decodeSerializableElement$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.this$0.I(deserializer, obj);
            }
        });
    }

    @Override // e00.e
    public final String z() {
        return U(Y());
    }
}
