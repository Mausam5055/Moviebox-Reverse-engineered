package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonElementSerializer;

/* JADX INFO: loaded from: classes7.dex */
public final class l0 extends e00.b implements kotlinx.serialization.json.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f68327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final kotlinx.serialization.json.a f68328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WriteMode f68329c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.serialization.json.l[] f68330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f00.c f68331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlinx.serialization.json.f f68332f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f68333g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f68334h;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f68335a;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f68335a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l0(h0 output, kotlinx.serialization.json.a json, WriteMode mode, kotlinx.serialization.json.l[] modeReuseCache) {
        this(s.a(output, json), json, mode, modeReuseCache);
        Intrinsics.h(output, "output");
        Intrinsics.h(json, "json");
        Intrinsics.h(mode, "mode");
        Intrinsics.h(modeReuseCache, "modeReuseCache");
    }

    public l0(j composer, kotlinx.serialization.json.a json, WriteMode mode, kotlinx.serialization.json.l[] lVarArr) {
        Intrinsics.h(composer, "composer");
        Intrinsics.h(json, "json");
        Intrinsics.h(mode, "mode");
        this.f68327a = composer;
        this.f68328b = json;
        this.f68329c = mode;
        this.f68330d = lVarArr;
        this.f68331e = d().a();
        this.f68332f = d().e();
        int iOrdinal = mode.ordinal();
        if (lVarArr != null) {
            kotlinx.serialization.json.l lVar = lVarArr[iOrdinal];
            if (lVar == null && lVar == this) {
                return;
            }
            lVarArr[iOrdinal] = this;
        }
    }

    private final j K() {
        j jVar = this.f68327a;
        return jVar instanceof q ? jVar : new q(jVar.f68313a, this.f68333g);
    }

    private final void L(kotlinx.serialization.descriptors.f fVar) {
        this.f68327a.c();
        String str = this.f68334h;
        Intrinsics.e(str);
        G(str);
        this.f68327a.e(':');
        this.f68327a.o();
        G(fVar.i());
    }

    @Override // kotlinx.serialization.json.l
    public void A(kotlinx.serialization.json.h element) {
        Intrinsics.h(element, "element");
        e(JsonElementSerializer.f68224a, element);
    }

    @Override // e00.b, e00.f
    public void B(int i11) {
        if (this.f68333g) {
            G(String.valueOf(i11));
        } else {
            this.f68327a.h(i11);
        }
    }

    @Override // e00.b, e00.f
    public void G(String value) {
        Intrinsics.h(value, "value");
        this.f68327a.m(value);
    }

    @Override // e00.b
    public boolean H(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        int i12 = a.f68335a[this.f68329c.ordinal()];
        if (i12 != 1) {
            boolean z10 = false;
            if (i12 != 2) {
                if (i12 != 3) {
                    if (!this.f68327a.a()) {
                        this.f68327a.e(',');
                    }
                    this.f68327a.c();
                    G(descriptor.f(i11));
                    this.f68327a.e(':');
                    this.f68327a.o();
                } else {
                    if (i11 == 0) {
                        this.f68333g = true;
                    }
                    if (i11 == 1) {
                        this.f68327a.e(',');
                        this.f68327a.o();
                        this.f68333g = false;
                    }
                }
            } else if (this.f68327a.a()) {
                this.f68333g = true;
                this.f68327a.c();
            } else {
                if (i11 % 2 == 0) {
                    this.f68327a.e(',');
                    this.f68327a.c();
                    z10 = true;
                } else {
                    this.f68327a.e(':');
                    this.f68327a.o();
                }
                this.f68333g = z10;
            }
        } else {
            if (!this.f68327a.a()) {
                this.f68327a.e(',');
            }
            this.f68327a.c();
        }
        return true;
    }

    @Override // e00.f
    public f00.c a() {
        return this.f68331e;
    }

    @Override // e00.b, e00.f
    public e00.d b(kotlinx.serialization.descriptors.f descriptor) {
        kotlinx.serialization.json.l lVar;
        Intrinsics.h(descriptor, "descriptor");
        WriteMode writeModeB = q0.b(d(), descriptor);
        char c11 = writeModeB.begin;
        if (c11 != 0) {
            this.f68327a.e(c11);
            this.f68327a.b();
        }
        if (this.f68334h != null) {
            L(descriptor);
            this.f68334h = null;
        }
        if (this.f68329c == writeModeB) {
            return this;
        }
        kotlinx.serialization.json.l[] lVarArr = this.f68330d;
        return (lVarArr == null || (lVar = lVarArr[writeModeB.ordinal()]) == null) ? new l0(this.f68327a, d(), writeModeB, this.f68330d) : lVar;
    }

    @Override // e00.b, e00.d
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        if (this.f68329c.end != 0) {
            this.f68327a.p();
            this.f68327a.c();
            this.f68327a.e(this.f68329c.end);
        }
    }

    @Override // kotlinx.serialization.json.l
    public kotlinx.serialization.json.a d() {
        return this.f68328b;
    }

    @Override // e00.b, e00.f
    public void e(kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(serializer, "serializer");
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
        this.f68334h = strC;
        gVarB.serialize(this, obj);
    }

    @Override // e00.b, e00.f
    public void g(double d11) {
        if (this.f68333g) {
            G(String.valueOf(d11));
        } else {
            this.f68327a.f(d11);
        }
        if (this.f68332f.a()) {
            return;
        }
        if (Double.isInfinite(d11) || Double.isNaN(d11)) {
            throw w.b(Double.valueOf(d11), this.f68327a.f68313a.toString());
        }
    }

    @Override // e00.b, e00.f
    public void h(byte b11) {
        if (this.f68333g) {
            G(String.valueOf((int) b11));
        } else {
            this.f68327a.d(b11);
        }
    }

    @Override // e00.b, e00.d
    public void i(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.g serializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(serializer, "serializer");
        if (obj != null || this.f68332f.f()) {
            super.i(descriptor, i11, serializer, obj);
        }
    }

    @Override // e00.b, e00.f
    public void k(kotlinx.serialization.descriptors.f enumDescriptor, int i11) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        G(enumDescriptor.f(i11));
    }

    @Override // e00.b, e00.f
    public e00.f l(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return m0.a(descriptor) ? new l0(K(), d(), this.f68329c, (kotlinx.serialization.json.l[]) null) : super.l(descriptor);
    }

    @Override // e00.b, e00.f
    public void m(long j11) {
        if (this.f68333g) {
            G(String.valueOf(j11));
        } else {
            this.f68327a.i(j11);
        }
    }

    @Override // e00.b, e00.f
    public void o() {
        this.f68327a.j("null");
    }

    @Override // e00.b, e00.f
    public void q(short s11) {
        if (this.f68333g) {
            G(String.valueOf((int) s11));
        } else {
            this.f68327a.k(s11);
        }
    }

    @Override // e00.b, e00.f
    public void r(boolean z10) {
        if (this.f68333g) {
            G(String.valueOf(z10));
        } else {
            this.f68327a.l(z10);
        }
    }

    @Override // e00.b, e00.f
    public void t(float f11) {
        if (this.f68333g) {
            G(String.valueOf(f11));
        } else {
            this.f68327a.g(f11);
        }
        if (this.f68332f.a()) {
            return;
        }
        if (Float.isInfinite(f11) || Float.isNaN(f11)) {
            throw w.b(Float.valueOf(f11), this.f68327a.f68313a.toString());
        }
    }

    @Override // e00.b, e00.f
    public void u(char c11) {
        G(String.valueOf(c11));
    }

    @Override // e00.b, e00.d
    public boolean z(kotlinx.serialization.descriptors.f descriptor, int i11) {
        Intrinsics.h(descriptor, "descriptor");
        return this.f68332f.e();
    }
}
