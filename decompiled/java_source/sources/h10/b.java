package h10;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes7.dex */
final class b extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f64055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f64056d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f64057e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f64058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64059g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f64060h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private b f64061i;

    b(x xVar, d dVar, b bVar) {
        this(xVar, true, dVar, bVar);
    }

    b(x xVar, boolean z10, d dVar, b bVar) {
        super(458752);
        this.f64055c = xVar;
        this.f64056d = z10;
        this.f64057e = dVar;
        int i11 = dVar.f64068b;
        this.f64058f = i11 == 0 ? -1 : i11 - 2;
        this.f64060h = bVar;
        if (bVar != null) {
            bVar.f64061i = this;
        }
    }

    static int g(String str, b[] bVarArr, int i11) {
        int iF = (i11 * 2) + 7;
        for (int i12 = 0; i12 < i11; i12++) {
            b bVar = bVarArr[i12];
            iF += bVar == null ? 0 : bVar.f(str) - 8;
        }
        return iF;
    }

    static void i(int i11, b[] bVarArr, int i12, d dVar) {
        int iF = (i12 * 2) + 1;
        for (int i13 = 0; i13 < i12; i13++) {
            b bVar = bVarArr[i13];
            iF += bVar == null ? 0 : bVar.f(null) - 8;
        }
        dVar.k(i11);
        dVar.i(iF);
        dVar.g(i12);
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = 0;
            b bVar2 = null;
            for (b bVar3 = bVarArr[i14]; bVar3 != null; bVar3 = bVar3.f64060h) {
                bVar3.d();
                i15++;
                bVar2 = bVar3;
            }
            dVar.k(i15);
            while (bVar2 != null) {
                d dVar2 = bVar2.f64057e;
                dVar.h(dVar2.f64067a, 0, dVar2.f64068b);
                bVar2 = bVar2.f64061i;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // h10.a
    public void a(String str, Object obj) {
        this.f64059g++;
        if (this.f64056d) {
            this.f64057e.k(this.f64055c.D(str));
        }
        if (obj instanceof String) {
            this.f64057e.e(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, this.f64055c.D((String) obj));
            return;
        }
        if (obj instanceof Byte) {
            this.f64057e.e(66, this.f64055c.l(((Byte) obj).byteValue()).f64230a);
            return;
        }
        if (obj instanceof Boolean) {
            this.f64057e.e(90, this.f64055c.l(((Boolean) obj).booleanValue() ? 1 : 0).f64230a);
            return;
        }
        if (obj instanceof Character) {
            this.f64057e.e(67, this.f64055c.l(((Character) obj).charValue()).f64230a);
            return;
        }
        if (obj instanceof Short) {
            this.f64057e.e(83, this.f64055c.l(((Short) obj).shortValue()).f64230a);
            return;
        }
        if (obj instanceof y) {
            this.f64057e.e(99, this.f64055c.D(((y) obj).e()));
            return;
        }
        int i11 = 0;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            this.f64057e.e(91, bArr.length);
            int length = bArr.length;
            while (i11 < length) {
                this.f64057e.e(66, this.f64055c.l(bArr[i11]).f64230a);
                i11++;
            }
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            this.f64057e.e(91, zArr.length);
            int length2 = zArr.length;
            while (i11 < length2) {
                this.f64057e.e(90, this.f64055c.l(zArr[i11] ? 1 : 0).f64230a);
                i11++;
            }
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            this.f64057e.e(91, sArr.length);
            int length3 = sArr.length;
            while (i11 < length3) {
                this.f64057e.e(83, this.f64055c.l(sArr[i11]).f64230a);
                i11++;
            }
            return;
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            this.f64057e.e(91, cArr.length);
            int length4 = cArr.length;
            while (i11 < length4) {
                this.f64057e.e(67, this.f64055c.l(cArr[i11]).f64230a);
                i11++;
            }
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            this.f64057e.e(91, iArr.length);
            int length5 = iArr.length;
            while (i11 < length5) {
                this.f64057e.e(73, this.f64055c.l(iArr[i11]).f64230a);
                i11++;
            }
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            this.f64057e.e(91, jArr.length);
            int length6 = jArr.length;
            while (i11 < length6) {
                this.f64057e.e(74, this.f64055c.p(jArr[i11]).f64230a);
                i11++;
            }
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            this.f64057e.e(91, fArr.length);
            int length7 = fArr.length;
            while (i11 < length7) {
                this.f64057e.e(70, this.f64055c.k(fArr[i11]).f64230a);
                i11++;
            }
            return;
        }
        if (!(obj instanceof double[])) {
            w wVarD = this.f64055c.d(obj);
            this.f64057e.e(".s.IFJDCS".charAt(wVarD.f64231b), wVarD.f64230a);
            return;
        }
        double[] dArr = (double[]) obj;
        this.f64057e.e(91, dArr.length);
        int length8 = dArr.length;
        while (i11 < length8) {
            this.f64057e.e(68, this.f64055c.f(dArr[i11]).f64230a);
            i11++;
        }
    }

    @Override // h10.a
    public a b(String str, String str2) {
        this.f64059g++;
        if (this.f64056d) {
            this.f64057e.k(this.f64055c.D(str));
        }
        this.f64057e.e(64, this.f64055c.D(str2)).k(0);
        return new b(this.f64055c, this.f64057e, null);
    }

    @Override // h10.a
    public a c(String str) {
        this.f64059g++;
        if (this.f64056d) {
            this.f64057e.k(this.f64055c.D(str));
        }
        this.f64057e.e(91, 0);
        return new b(this.f64055c, false, this.f64057e, null);
    }

    @Override // h10.a
    public void d() {
        int i11 = this.f64058f;
        if (i11 != -1) {
            byte[] bArr = this.f64057e.f64067a;
            int i12 = this.f64059g;
            bArr[i11] = (byte) (i12 >>> 8);
            bArr[i11 + 1] = (byte) i12;
        }
    }

    @Override // h10.a
    public void e(String str, String str2, String str3) {
        this.f64059g++;
        if (this.f64056d) {
            this.f64057e.k(this.f64055c.D(str));
        }
        this.f64057e.e(101, this.f64055c.D(str2)).k(this.f64055c.D(str3));
    }

    int f(String str) {
        if (str != null) {
            this.f64055c.D(str);
        }
        int i11 = 8;
        for (b bVar = this; bVar != null; bVar = bVar.f64060h) {
            i11 += bVar.f64057e.f64068b;
        }
        return i11;
    }

    void h(int i11, d dVar) {
        int i12 = 2;
        int i13 = 0;
        b bVar = null;
        for (b bVar2 = this; bVar2 != null; bVar2 = bVar2.f64060h) {
            bVar2.d();
            i12 += bVar2.f64057e.f64068b;
            i13++;
            bVar = bVar2;
        }
        dVar.k(i11);
        dVar.i(i12);
        dVar.k(i13);
        while (bVar != null) {
            d dVar2 = bVar.f64057e;
            dVar.h(dVar2.f64067a, 0, dVar2.f64068b);
            bVar = bVar.f64061i;
        }
    }
}
