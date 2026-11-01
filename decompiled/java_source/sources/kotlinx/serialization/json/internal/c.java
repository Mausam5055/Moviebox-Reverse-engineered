package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.internal.e1;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes7.dex */
abstract class c extends e1 implements kotlinx.serialization.json.g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final kotlinx.serialization.json.a f68292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.serialization.json.h f68293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final kotlinx.serialization.json.f f68294e;

    private c(kotlinx.serialization.json.a aVar, kotlinx.serialization.json.h hVar) {
        this.f68292c = aVar;
        this.f68293d = hVar;
        this.f68294e = d().e();
    }

    public /* synthetic */ c(kotlinx.serialization.json.a aVar, kotlinx.serialization.json.h hVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, hVar);
    }

    private final kotlinx.serialization.json.o f0(kotlinx.serialization.json.u uVar, String str) {
        kotlinx.serialization.json.o oVar = uVar instanceof kotlinx.serialization.json.o ? (kotlinx.serialization.json.o) uVar : null;
        if (oVar != null) {
            return oVar;
        }
        throw w.e(-1, "Unexpected 'null' when " + str + " was expected");
    }

    private final kotlinx.serialization.json.h h0() {
        kotlinx.serialization.json.h hVarG0;
        String str = (String) W();
        return (str == null || (hVarG0 = g0(str)) == null) ? v0() : hVarG0;
    }

    private final Void w0(String str) {
        throw w.f(-1, "Failed to parse '" + str + '\'', h0().toString());
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, e00.e
    public boolean D() {
        return !(h0() instanceof JsonNull);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, e00.e
    public Object G(kotlinx.serialization.a deserializer) {
        Intrinsics.h(deserializer, "deserializer");
        return i0.d(this, deserializer);
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, e00.e, e00.c
    public f00.c a() {
        return d().a();
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, e00.e
    public e00.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        kotlinx.serialization.json.h hVarH0 = h0();
        kotlinx.serialization.descriptors.h hVarD = descriptor.d();
        if (Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.b.f68071a) ? true : hVarD instanceof kotlinx.serialization.descriptors.d) {
            kotlinx.serialization.json.a aVarD = d();
            if (hVarH0 instanceof kotlinx.serialization.json.b) {
                return new d0(aVarD, (kotlinx.serialization.json.b) hVarH0);
            }
            throw w.e(-1, "Expected " + Reflection.b(kotlinx.serialization.json.b.class) + " as the serialized body of " + descriptor.i() + ", but had " + Reflection.b(hVarH0.getClass()));
        }
        if (!Intrinsics.c(hVarD, kotlinx.serialization.descriptors.i.c.f68072a)) {
            kotlinx.serialization.json.a aVarD2 = d();
            if (hVarH0 instanceof JsonObject) {
                return new JsonTreeDecoder(aVarD2, (JsonObject) hVarH0, null, null, 12, null);
            }
            throw w.e(-1, "Expected " + Reflection.b(JsonObject.class) + " as the serialized body of " + descriptor.i() + ", but had " + Reflection.b(hVarH0.getClass()));
        }
        kotlinx.serialization.json.a aVarD3 = d();
        kotlinx.serialization.descriptors.f fVarA = q0.a(descriptor.h(0), aVarD3.a());
        kotlinx.serialization.descriptors.h hVarD2 = fVarA.d();
        if ((hVarD2 instanceof kotlinx.serialization.descriptors.e) || Intrinsics.c(hVarD2, kotlinx.serialization.descriptors.h.b.f68069a)) {
            kotlinx.serialization.json.a aVarD4 = d();
            if (hVarH0 instanceof JsonObject) {
                return new f0(aVarD4, (JsonObject) hVarH0);
            }
            throw w.e(-1, "Expected " + Reflection.b(JsonObject.class) + " as the serialized body of " + descriptor.i() + ", but had " + Reflection.b(hVarH0.getClass()));
        }
        if (!aVarD3.e().b()) {
            throw w.d(fVarA);
        }
        kotlinx.serialization.json.a aVarD5 = d();
        if (hVarH0 instanceof kotlinx.serialization.json.b) {
            return new d0(aVarD5, (kotlinx.serialization.json.b) hVarH0);
        }
        throw w.e(-1, "Expected " + Reflection.b(kotlinx.serialization.json.b.class) + " as the serialized body of " + descriptor.i() + ", but had " + Reflection.b(hVarH0.getClass()));
    }

    @Override // kotlinx.serialization.internal.e1
    protected String b0(String parentName, String childName) {
        Intrinsics.h(parentName, "parentName");
        Intrinsics.h(childName, "childName");
        return childName;
    }

    @Override // kotlinx.serialization.internal.TaggedDecoder, e00.c
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.json.g
    public kotlinx.serialization.json.a d() {
        return this.f68292c;
    }

    @Override // kotlinx.serialization.json.g
    public kotlinx.serialization.json.h g() {
        return h0();
    }

    protected abstract kotlinx.serialization.json.h g0(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public boolean J(String tag) {
        Intrinsics.h(tag, "tag");
        kotlinx.serialization.json.u uVarU0 = u0(tag);
        if (!d().e().l() && f0(uVarU0, "boolean").c()) {
            throw w.f(-1, "Boolean literal for key '" + tag + "' should be unquoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.", h0().toString());
        }
        try {
            Boolean boolE = kotlinx.serialization.json.j.e(uVarU0);
            if (boolE != null) {
                return boolE.booleanValue();
            }
            throw new IllegalArgumentException();
        } catch (IllegalArgumentException unused) {
            w0("boolean");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public byte K(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            int iJ = kotlinx.serialization.json.j.j(u0(tag));
            Byte bValueOf = (-128 > iJ || iJ > 127) ? null : Byte.valueOf((byte) iJ);
            if (bValueOf != null) {
                return bValueOf.byteValue();
            }
            w0("byte");
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            w0("byte");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public char L(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            return StringsKt.x1(u0(tag).a());
        } catch (IllegalArgumentException unused) {
            w0("char");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public double M(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            double dG = kotlinx.serialization.json.j.g(u0(tag));
            if (d().e().a() || !(Double.isInfinite(dG) || Double.isNaN(dG))) {
                return dG;
            }
            throw w.a(Double.valueOf(dG), tag, h0().toString());
        } catch (IllegalArgumentException unused) {
            w0("double");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public int N(String tag, kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        return JsonNamesMapKt.f(enumDescriptor, d(), u0(tag).a(), null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public float O(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            float fI = kotlinx.serialization.json.j.i(u0(tag));
            if (d().e().a() || !(Float.isInfinite(fI) || Float.isNaN(fI))) {
                return fI;
            }
            throw w.a(Float.valueOf(fI), tag, h0().toString());
        } catch (IllegalArgumentException unused) {
            w0("float");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public e00.e P(String tag, kotlinx.serialization.descriptors.f inlineDescriptor) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(inlineDescriptor, "inlineDescriptor");
        return m0.a(inlineDescriptor) ? new v(new n0(u0(tag).a()), d()) : super.P(tag, inlineDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public int Q(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            return kotlinx.serialization.json.j.j(u0(tag));
        } catch (IllegalArgumentException unused) {
            w0("int");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public long R(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            return kotlinx.serialization.json.j.m(u0(tag));
        } catch (IllegalArgumentException unused) {
            w0("long");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public boolean S(String tag) {
        Intrinsics.h(tag, "tag");
        return g0(tag) != JsonNull.f68226c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public short T(String tag) {
        Intrinsics.h(tag, "tag");
        try {
            int iJ = kotlinx.serialization.json.j.j(u0(tag));
            Short shValueOf = (-32768 > iJ || iJ > 32767) ? null : Short.valueOf((short) iJ);
            if (shValueOf != null) {
                return shValueOf.shortValue();
            }
            w0("short");
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            w0("short");
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.TaggedDecoder
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public String U(String tag) {
        Intrinsics.h(tag, "tag");
        kotlinx.serialization.json.u uVarU0 = u0(tag);
        if (d().e().l() || f0(uVarU0, "string").c()) {
            if (uVarU0 instanceof JsonNull) {
                throw w.f(-1, "Unexpected 'null' value instead of string literal", h0().toString());
            }
            return uVarU0.a();
        }
        throw w.f(-1, "String literal for key '" + tag + "' should be quoted.\nUse 'isLenient = true' in 'Json {}` builder to accept non-compliant JSON.", h0().toString());
    }

    protected final kotlinx.serialization.json.u u0(String tag) {
        Intrinsics.h(tag, "tag");
        kotlinx.serialization.json.h hVarG0 = g0(tag);
        kotlinx.serialization.json.u uVar = hVarG0 instanceof kotlinx.serialization.json.u ? (kotlinx.serialization.json.u) hVarG0 : null;
        if (uVar != null) {
            return uVar;
        }
        throw w.f(-1, "Expected JsonPrimitive at " + tag + ", found " + hVarG0, h0().toString());
    }

    public abstract kotlinx.serialization.json.h v0();
}
