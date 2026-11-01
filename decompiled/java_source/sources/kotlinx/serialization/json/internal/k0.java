package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.MissingFieldException;

/* JADX INFO: loaded from: classes7.dex */
public class k0 extends e00.a implements kotlinx.serialization.json.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlinx.serialization.json.a f68317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WriteMode f68318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final kotlinx.serialization.json.internal.a f68319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f00.c f68320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f68322f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlinx.serialization.json.f f68323g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final JsonElementMarker f68324h;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f68325a;

        public a(String str) {
            this.f68325a = str;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f68326a;

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
            try {
                iArr[WriteMode.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f68326a = iArr;
        }
    }

    public k0(kotlinx.serialization.json.a json, WriteMode mode, kotlinx.serialization.json.internal.a lexer, kotlinx.serialization.descriptors.f descriptor, a aVar) {
        Intrinsics.h(json, "json");
        Intrinsics.h(mode, "mode");
        Intrinsics.h(lexer, "lexer");
        Intrinsics.h(descriptor, "descriptor");
        this.f68317a = json;
        this.f68318b = mode;
        this.f68319c = lexer;
        this.f68320d = json.a();
        this.f68321e = -1;
        this.f68322f = aVar;
        kotlinx.serialization.json.f fVarE = json.e();
        this.f68323g = fVarE;
        this.f68324h = fVarE.f() ? null : new JsonElementMarker(descriptor);
    }

    private final void K() {
        if (this.f68319c.E() != 4) {
            return;
        }
        kotlinx.serialization.json.internal.a.y(this.f68319c, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean L(kotlinx.serialization.descriptors.f fVar, int i11) {
        String strF;
        kotlinx.serialization.json.a aVar = this.f68317a;
        kotlinx.serialization.descriptors.f fVarH = fVar.h(i11);
        if (!fVarH.b() && !this.f68319c.M()) {
            return true;
        }
        if (!Intrinsics.c(fVarH.d(), kotlinx.serialization.descriptors.h.b.f68069a) || (strF = this.f68319c.F(this.f68323g.l())) == null || JsonNamesMapKt.d(fVarH, aVar, strF) != -3) {
            return false;
        }
        this.f68319c.q();
        return true;
    }

    private final int M() {
        boolean zL = this.f68319c.L();
        if (!this.f68319c.f()) {
            if (!zL) {
                return -1;
            }
            kotlinx.serialization.json.internal.a.y(this.f68319c, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i11 = this.f68321e;
        if (i11 != -1 && !zL) {
            kotlinx.serialization.json.internal.a.y(this.f68319c, "Expected end of the array or comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        int i12 = i11 + 1;
        this.f68321e = i12;
        return i12;
    }

    private final int N() {
        int i11 = this.f68321e;
        boolean zL = false;
        boolean z10 = i11 % 2 != 0;
        if (!z10) {
            this.f68319c.o(':');
        } else if (i11 != -1) {
            zL = this.f68319c.L();
        }
        if (!this.f68319c.f()) {
            if (!zL) {
                return -1;
            }
            kotlinx.serialization.json.internal.a.y(this.f68319c, "Expected '}', but had ',' instead", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        if (z10) {
            if (this.f68321e == -1) {
                kotlinx.serialization.json.internal.a aVar = this.f68319c;
                int i12 = aVar.f68286a;
                if (zL) {
                    kotlinx.serialization.json.internal.a.y(aVar, "Unexpected trailing comma", i12, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            } else {
                kotlinx.serialization.json.internal.a aVar2 = this.f68319c;
                int i13 = aVar2.f68286a;
                if (!zL) {
                    kotlinx.serialization.json.internal.a.y(aVar2, "Expected comma after the key-value pair", i13, null, 4, null);
                    throw new KotlinNothingValueException();
                }
            }
        }
        int i14 = this.f68321e + 1;
        this.f68321e = i14;
        return i14;
    }

    private final int O(kotlinx.serialization.descriptors.f fVar) {
        boolean zL;
        boolean zL2 = this.f68319c.L();
        while (this.f68319c.f()) {
            String strP = P();
            this.f68319c.o(':');
            int iD = JsonNamesMapKt.d(fVar, this.f68317a, strP);
            boolean z10 = false;
            if (iD == -3) {
                z10 = true;
                zL = false;
            } else {
                if (!this.f68323g.d() || !L(fVar, iD)) {
                    JsonElementMarker jsonElementMarker = this.f68324h;
                    if (jsonElementMarker != null) {
                        jsonElementMarker.c(iD);
                    }
                    return iD;
                }
                zL = this.f68319c.L();
            }
            zL2 = z10 ? Q(strP) : zL;
        }
        if (zL2) {
            kotlinx.serialization.json.internal.a.y(this.f68319c, "Unexpected trailing comma", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        JsonElementMarker jsonElementMarker2 = this.f68324h;
        if (jsonElementMarker2 != null) {
            return jsonElementMarker2.d();
        }
        return -1;
    }

    private final String P() {
        return this.f68323g.l() ? this.f68319c.t() : this.f68319c.k();
    }

    private final boolean Q(String str) {
        if (this.f68323g.g() || S(this.f68322f, str)) {
            this.f68319c.H(this.f68323g.l());
        } else {
            this.f68319c.A(str);
        }
        return this.f68319c.L();
    }

    private final void R(kotlinx.serialization.descriptors.f fVar) {
        while (o(fVar) != -1) {
        }
    }

    private final boolean S(a aVar, String str) {
        if (aVar == null || !Intrinsics.c(aVar.f68325a, str)) {
            return false;
        }
        aVar.f68325a = null;
        return true;
    }

    @Override // e00.a, e00.e
    public boolean D() {
        JsonElementMarker jsonElementMarker = this.f68324h;
        return !(jsonElementMarker != null ? jsonElementMarker.b() : false) && this.f68319c.M();
    }

    @Override // e00.a, e00.e
    public Object G(kotlinx.serialization.a deserializer) {
        Intrinsics.h(deserializer, "deserializer");
        try {
            if ((deserializer instanceof kotlinx.serialization.internal.b) && !this.f68317a.e().k()) {
                String strC = i0.c(deserializer.getDescriptor(), this.f68317a);
                String strL = this.f68319c.l(strC, this.f68323g.l());
                kotlinx.serialization.a aVarC = strL != null ? ((kotlinx.serialization.internal.b) deserializer).c(this, strL) : null;
                if (aVarC == null) {
                    return i0.d(this, deserializer);
                }
                this.f68322f = new a(strC);
                return aVarC.deserialize(this);
            }
            return deserializer.deserialize(this);
        } catch (MissingFieldException e11) {
            throw new MissingFieldException(e11.getMissingFields(), e11.getMessage() + " at path: " + this.f68319c.f68287b.a(), e11);
        }
    }

    @Override // e00.a, e00.e
    public byte H() {
        long jP = this.f68319c.p();
        byte b11 = (byte) jP;
        if (jP == b11) {
            return b11;
        }
        kotlinx.serialization.json.internal.a.y(this.f68319c, "Failed to parse byte for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // e00.e, e00.c
    public f00.c a() {
        return this.f68320d;
    }

    @Override // e00.a, e00.e
    public e00.c b(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        WriteMode writeModeB = q0.b(this.f68317a, descriptor);
        this.f68319c.f68287b.c(descriptor);
        this.f68319c.o(writeModeB.begin);
        K();
        int i11 = b.f68326a[writeModeB.ordinal()];
        if (i11 == 1 || i11 == 2 || i11 == 3) {
            return new k0(this.f68317a, writeModeB, this.f68319c, descriptor, this.f68322f);
        }
        return (this.f68318b == writeModeB && this.f68317a.e().f()) ? this : new k0(this.f68317a, writeModeB, this.f68319c, descriptor, this.f68322f);
    }

    @Override // e00.a, e00.c
    public void c(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        if (this.f68317a.e().g() && descriptor.e() == 0) {
            R(descriptor);
        }
        this.f68319c.o(this.f68318b.end);
        this.f68319c.f68287b.b();
    }

    @Override // kotlinx.serialization.json.g
    public final kotlinx.serialization.json.a d() {
        return this.f68317a;
    }

    @Override // e00.a, e00.e
    public int e(kotlinx.serialization.descriptors.f enumDescriptor) {
        Intrinsics.h(enumDescriptor, "enumDescriptor");
        return JsonNamesMapKt.e(enumDescriptor, this.f68317a, z(), " at path " + this.f68319c.f68287b.a());
    }

    @Override // kotlinx.serialization.json.g
    public kotlinx.serialization.json.h g() {
        return new JsonTreeReader(this.f68317a.e(), this.f68319c).e();
    }

    @Override // e00.a, e00.e
    public int h() {
        long jP = this.f68319c.p();
        int i11 = (int) jP;
        if (jP == i11) {
            return i11;
        }
        kotlinx.serialization.json.internal.a.y(this.f68319c, "Failed to parse int for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // e00.a, e00.e
    public Void j() {
        return null;
    }

    @Override // e00.a, e00.e
    public long l() {
        return this.f68319c.p();
    }

    @Override // e00.c
    public int o(kotlinx.serialization.descriptors.f descriptor) {
        int iN;
        Intrinsics.h(descriptor, "descriptor");
        int i11 = b.f68326a[this.f68318b.ordinal()];
        if (i11 != 2) {
            iN = i11 != 4 ? M() : O(descriptor);
        } else {
            iN = N();
        }
        if (this.f68318b != WriteMode.MAP) {
            this.f68319c.f68287b.g(iN);
        }
        return iN;
    }

    @Override // e00.a, e00.e
    public e00.e q(kotlinx.serialization.descriptors.f descriptor) {
        Intrinsics.h(descriptor, "descriptor");
        return m0.a(descriptor) ? new v(this.f68319c, this.f68317a) : super.q(descriptor);
    }

    @Override // e00.a, e00.e
    public short s() {
        long jP = this.f68319c.p();
        short s11 = (short) jP;
        if (jP == s11) {
            return s11;
        }
        kotlinx.serialization.json.internal.a.y(this.f68319c, "Failed to parse short for input '" + jP + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // e00.a, e00.e
    public float t() {
        kotlinx.serialization.json.internal.a aVar = this.f68319c;
        String strS = aVar.s();
        try {
            float f11 = Float.parseFloat(strS);
            if (this.f68317a.e().a() || !(Float.isInfinite(f11) || Float.isNaN(f11))) {
                return f11;
            }
            w.j(this.f68319c, Float.valueOf(f11));
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            kotlinx.serialization.json.internal.a.y(aVar, "Failed to parse type 'float' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // e00.a, e00.e
    public double v() {
        kotlinx.serialization.json.internal.a aVar = this.f68319c;
        String strS = aVar.s();
        try {
            double d11 = Double.parseDouble(strS);
            if (this.f68317a.e().a() || !(Double.isInfinite(d11) || Double.isNaN(d11))) {
                return d11;
            }
            w.j(this.f68319c, Double.valueOf(d11));
            throw new KotlinNothingValueException();
        } catch (IllegalArgumentException unused) {
            kotlinx.serialization.json.internal.a.y(aVar, "Failed to parse type 'double' for input '" + strS + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // e00.a, e00.e
    public boolean w() {
        return this.f68323g.l() ? this.f68319c.i() : this.f68319c.g();
    }

    @Override // e00.a, e00.e
    public char x() {
        String strS = this.f68319c.s();
        if (strS.length() == 1) {
            return strS.charAt(0);
        }
        kotlinx.serialization.json.internal.a.y(this.f68319c, "Expected single char, but got '" + strS + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // e00.a, e00.c
    public Object y(kotlinx.serialization.descriptors.f descriptor, int i11, kotlinx.serialization.a deserializer, Object obj) {
        Intrinsics.h(descriptor, "descriptor");
        Intrinsics.h(deserializer, "deserializer");
        boolean z10 = this.f68318b == WriteMode.MAP && (i11 & 1) == 0;
        if (z10) {
            this.f68319c.f68287b.d();
        }
        Object objY = super.y(descriptor, i11, deserializer, obj);
        if (z10) {
            this.f68319c.f68287b.f(objY);
        }
        return objY;
    }

    @Override // e00.a, e00.e
    public String z() {
        return this.f68323g.l() ? this.f68319c.t() : this.f68319c.q();
    }
}
