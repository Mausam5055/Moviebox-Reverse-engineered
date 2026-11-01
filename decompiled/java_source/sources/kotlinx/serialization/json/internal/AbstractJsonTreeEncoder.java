package kotlinx.serialization.json.internal;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.f1;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonNull;

/* JADX INFO: loaded from: classes7.dex */
abstract class AbstractJsonTreeEncoder extends f1 implements kotlinx.serialization.json.l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.json.a f68268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function1 f68269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final kotlinx.serialization.json.f f68270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f68271e;

    public static final class a extends e00.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f00.c f68272a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f68274c;

        a(String str) {
            this.f68274c = str;
            this.f68272a = AbstractJsonTreeEncoder.this.d().a();
        }

        @Override // e00.b, e00.f
        public void B(int i11) {
            K(Long.toString(((long) UInt.b(i11)) & 4294967295L, 10));
        }

        public final void K(String s11) {
            Intrinsics.h(s11, "s");
            AbstractJsonTreeEncoder.this.w0(this.f68274c, new kotlinx.serialization.json.o(s11, false));
        }

        @Override // e00.f
        public f00.c a() {
            return this.f68272a;
        }

        @Override // e00.b, e00.f
        public void h(byte b11) {
            K(UByte.f(UByte.b(b11)));
        }

        @Override // e00.b, e00.f
        public void m(long j11) {
            K(g.a(ULong.b(j11), 10));
        }

        @Override // e00.b, e00.f
        public void q(short s11) {
            K(UShort.f(UShort.b(s11)));
        }
    }

    private AbstractJsonTreeEncoder(kotlinx.serialization.json.a aVar, Function1 function1) {
        this.f68268b = aVar;
        this.f68269c = function1;
        this.f68270d = aVar.e();
    }

    public /* synthetic */ AbstractJsonTreeEncoder(kotlinx.serialization.json.a aVar, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, function1);
    }

    public static final /* synthetic */ String h0(AbstractJsonTreeEncoder abstractJsonTreeEncoder) {
        return (String) abstractJsonTreeEncoder.Y();
    }

    @Override // kotlinx.serialization.json.l
    public void A(kotlinx.serialization.json.h element) {
        Intrinsics.h(element, "element");
        e(JsonElementSerializer.f68224a, element);
    }

    @Override // kotlinx.serialization.internal.c2
    protected void X(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        this.f68269c.invoke(v0());
    }

    @Override // kotlinx.serialization.internal.c2, e00.f
    public final f00.c a() {
        return this.f68268b.a();
    }

    @Override // kotlinx.serialization.internal.c2, e00.f
    public e00.d b(kotlinx.serialization.descriptors.f descriptor) {
        AbstractJsonTreeEncoder c0Var;
        Intrinsics.h(descriptor, "descriptor");
        Function1<kotlinx.serialization.json.h, Unit> function1 = Z() == null ? this.f68269c : new Function1<kotlinx.serialization.json.h, Unit>() { // from class: kotlinx.serialization.json.internal.AbstractJsonTreeEncoder$beginStructure$consumer$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((kotlinx.serialization.json.h) obj);
                return Unit.f67061a;
            }

            public final void invoke(kotlinx.serialization.json.h node) {
                Intrinsics.h(node, "node");
                AbstractJsonTreeEncoder abstractJsonTreeEncoder = this.this$0;
                abstractJsonTreeEncoder.w0(AbstractJsonTreeEncoder.h0(abstractJsonTreeEncoder), node);
            }
        };
        kotlinx.serialization.descriptors.h hVarD = descriptor.d();
        if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.b.f68071a) ? true : hVarD instanceof kotlinx.serialization.descriptors.d) {
            c0Var = new e0(this.f68268b, function1);
        } else if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.c.f68072a)) {
            kotlinx.serialization.json.a aVar = this.f68268b;
            kotlinx.serialization.descriptors.f fVarA = q0.a(descriptor.h(0), aVar.a());
            kotlinx.serialization.descriptors.h hVarD2 = fVarA.d();
            if ((hVarD2 instanceof kotlinx.serialization.descriptors.e) || Intrinsics.c(hVarD2, kotlinx.serialization.descriptors.h.b.f68069a)) {
                c0Var = new g0(this.f68268b, function1);
            } else {
                if (!aVar.e().b()) {
                    throw w.d(fVarA);
                }
                c0Var = new e0(this.f68268b, function1);
            }
        } else {
            c0Var = new c0(this.f68268b, function1);
        }
        String str = this.f68271e;
        if (str != null) {
            Intrinsics.e(str);
            c0Var.w0(str, kotlinx.serialization.json.j.c(descriptor.i()));
            this.f68271e = null;
        }
        return c0Var;
    }

    @Override // kotlinx.serialization.json.l
    public final kotlinx.serialization.json.a d() {
        return this.f68268b;
    }

    @Override // kotlinx.serialization.internal.f1
    protected String d0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        return childName;
    }

    @Override // kotlinx.serialization.internal.c2, e00.f
    public void e(kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(serializer, "serializer");
        if (Z() == null && TreeJsonEncoderKt.b(q0.a(serializer.getDescriptor(), a()))) {
            z zVar = new z(this.f68268b, this.f68269c);
            zVar.e(serializer, obj);
            zVar.X(serializer.getDescriptor());
        } else {
            if (!(serializer instanceof kotlinx.serialization.internal.b) || d().e().k()) {
                serializer.serialize(this, obj);
                return;
            }
            kotlinx.serialization.internal.b bVar = (kotlinx.serialization.internal.b) serializer;
            String strC = i0.c(serializer.getDescriptor(), d());
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Any");
            kotlinx.serialization.g gVarB = kotlinx.serialization.d.b(bVar, this, obj);
            i0.f(bVar, gVarB, strC);
            i0.b(gVarB.getDescriptor().d());
            this.f68271e = strC;
            gVarB.serialize(this, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public void J(String tag, boolean z10) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.a(Boolean.valueOf(z10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public void K(String tag, byte b11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Byte.valueOf(b11)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public void L(String tag, char c11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.c(String.valueOf(c11)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public void M(String tag, double d11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Double.valueOf(d11)));
        if (this.f68270d.a()) {
            return;
        }
        if (Double.isInfinite(d11) || Double.isNaN(d11)) {
            throw w.c(Double.valueOf(d11), tag, v0().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public void N(String tag, kotlinx.serialization.descriptors.f enumDescriptor, int i11) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        w0(tag, kotlinx.serialization.json.j.c(enumDescriptor.f(i11)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public void O(String tag, float f11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Float.valueOf(f11)));
        if (this.f68270d.a()) {
            return;
        }
        if (Float.isInfinite(f11) || Float.isNaN(f11)) {
            throw w.c(Float.valueOf(f11), tag, v0().toString());
        }
    }

    @Override // kotlinx.serialization.internal.c2, e00.f
    public void o() {
        String str = (String) Z();
        if (str == null) {
            this.f68269c.invoke(JsonNull.f68226c);
        } else {
            T(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public e00.f P(String tag, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        return m0.a(inlineDescriptor) ? new a(tag) : super.P(tag, inlineDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public void Q(String tag, int i11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Integer.valueOf(i11)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public void R(String tag, long j11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Long.valueOf(j11)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public void T(String tag) {
        Intrinsics.h(tag, "tag");
        w0(tag, JsonNull.f68226c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public void U(String tag, short s11) {
        Intrinsics.h(tag, "tag");
        w0(tag, kotlinx.serialization.json.j.b(Short.valueOf(s11)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public void V(String tag, String value) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(value, "value");
        w0(tag, kotlinx.serialization.json.j.c(value));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.c2
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public void W(String tag, Object value) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(value, "value");
        w0(tag, kotlinx.serialization.json.j.c(value.toString()));
    }

    @Override // kotlinx.serialization.internal.c2, e00.f
    public void v() {
    }

    public abstract kotlinx.serialization.json.h v0();

    public abstract void w0(String str, kotlinx.serialization.json.h hVar);

    @Override // kotlinx.serialization.internal.c2, e00.d
    public boolean z(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return this.f68270d.e();
    }
}
