package h10;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import okhttp3.internal.http2.Settings;
import org.mvel2.asm.ClassTooLargeException;

/* JADX INFO: loaded from: classes7.dex */
public class g extends f {
    private int A;
    private d B;
    private c C;
    private int D;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x f64079d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64081f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64082g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f64084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private m f64085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private m f64086k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private s f64087l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private s f64088m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f64089n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d f64090o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64091p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f64092q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f64093r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f64094s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private d f64095t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private b f64096u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private b f64097v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private b f64098w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private b f64099x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private u f64100y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f64101z;

    public g(int i11) {
        this(null, i11);
    }

    public g(e eVar, int i11) {
        super(458752);
        this.f64079d = eVar == null ? new x(this) : new x(this, eVar);
        if ((i11 & 2) != 0) {
            this.D = 4;
        } else if ((i11 & 1) != 0) {
            this.D = 1;
        } else {
            this.D = 0;
        }
    }

    private c[] n() {
        c.a aVar = new c.a();
        aVar.b(this.C);
        for (m mVar = this.f64085j; mVar != null; mVar = (m) mVar.f64129b) {
            mVar.e(aVar);
        }
        for (s sVar = this.f64087l; sVar != null; sVar = (s) sVar.f64176b) {
            sVar.I(aVar);
        }
        return aVar.d();
    }

    private byte[] q(byte[] bArr, boolean z10) {
        c[] cVarArrN = n();
        this.f64085j = null;
        this.f64086k = null;
        this.f64087l = null;
        this.f64088m = null;
        this.f64096u = null;
        this.f64097v = null;
        this.f64098w = null;
        this.f64099x = null;
        this.f64100y = null;
        this.f64101z = 0;
        this.A = 0;
        this.B = null;
        this.C = null;
        this.D = z10 ? 3 : 0;
        new e(bArr, 0, false).a(this, cVarArrN, (z10 ? 8 : 0) | 256);
        return r();
    }

    @Override // h10.f
    public final void a(int i11, int i12, String str, String str2, String str3, String[] strArr) {
        this.f64078c = i11;
        this.f64080e = i12;
        x xVar = this.f64079d;
        int i13 = i11 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f64081f = xVar.f0(i13, str);
        if (str2 != null) {
            this.f64093r = this.f64079d.D(str2);
        }
        this.f64082g = str3 == null ? 0 : this.f64079d.e(str3).f64230a;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.f64083h = length;
            this.f64084i = new int[length];
            for (int i14 = 0; i14 < this.f64083h; i14++) {
                this.f64084i[i14] = this.f64079d.e(strArr[i14]).f64230a;
            }
        }
        if (this.D != 1 || i13 < 51) {
            return;
        }
        this.D = 2;
    }

    @Override // h10.f
    public final a b(String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f64079d.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64079d, dVar, this.f64096u);
            this.f64096u = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64079d, dVar, this.f64097v);
        this.f64097v = bVar2;
        return bVar2;
    }

    @Override // h10.f
    public final void c(c cVar) {
        cVar.f64064c = this.C;
        this.C = cVar;
    }

    @Override // h10.f
    public final void d() {
    }

    @Override // h10.f
    public final l e(int i11, String str, String str2, String str3, Object obj) {
        m mVar = new m(this.f64079d, i11, str, str2, str3, obj);
        if (this.f64085j == null) {
            this.f64085j = mVar;
        } else {
            this.f64086k.f64129b = mVar;
        }
        this.f64086k = mVar;
        return mVar;
    }

    @Override // h10.f
    public final void f(String str, String str2, String str3, int i11) {
        if (this.f64090o == null) {
            this.f64090o = new d();
        }
        w wVarE = this.f64079d.e(str);
        if (wVarE.f64236g == 0) {
            this.f64089n++;
            this.f64090o.k(wVarE.f64230a);
            this.f64090o.k(str2 == null ? 0 : this.f64079d.e(str2).f64230a);
            this.f64090o.k(str3 != null ? this.f64079d.D(str3) : 0);
            this.f64090o.k(i11);
            wVarE.f64236g = this.f64089n;
        }
    }

    @Override // h10.f
    public final r g(int i11, String str, String str2, String str3, String[] strArr) {
        s sVar = new s(this.f64079d, i11, str, str2, str3, strArr, this.D);
        if (this.f64087l == null) {
            this.f64087l = sVar;
        } else {
            this.f64088m.f64176b = sVar;
        }
        this.f64088m = sVar;
        return sVar;
    }

    @Override // h10.f
    public final t h(String str, int i11, String str2) {
        x xVar = this.f64079d;
        u uVar = new u(xVar, xVar.y(str).f64230a, i11, str2 == null ? 0 : this.f64079d.D(str2));
        this.f64100y = uVar;
        return uVar;
    }

    @Override // h10.f
    public void i(String str) {
        this.f64101z = this.f64079d.e(str).f64230a;
    }

    @Override // h10.f
    public void j(String str) {
        if (this.B == null) {
            this.B = new d();
        }
        this.A++;
        this.B.k(this.f64079d.e(str).f64230a);
    }

    @Override // h10.f
    public final void k(String str, String str2, String str3) {
        this.f64091p = this.f64079d.e(str).f64230a;
        if (str2 == null || str3 == null) {
            return;
        }
        this.f64092q = this.f64079d.z(str2, str3);
    }

    @Override // h10.f
    public final void l(String str, String str2) {
        if (str != null) {
            this.f64094s = this.f64079d.D(str);
        }
        if (str2 != null) {
            this.f64095t = new d().a(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override // h10.f
    public final a m(int i11, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i11, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f64079d.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f64079d, dVar, this.f64098w);
            this.f64098w = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f64079d, dVar, this.f64099x);
        this.f64099x = bVar2;
        return bVar2;
    }

    protected ClassLoader o() {
        return getClass().getClassLoader();
    }

    protected String p(String str, String str2) {
        ClassLoader classLoaderO = o();
        try {
            Class<?> cls = Class.forName(str.replace('/', '.'), false, classLoaderO);
            try {
                Class<?> cls2 = Class.forName(str2.replace('/', '.'), false, classLoaderO);
                if (cls.isAssignableFrom(cls2)) {
                    return str;
                }
                if (cls2.isAssignableFrom(cls)) {
                    return str2;
                }
                if (cls.isInterface() || cls2.isInterface()) {
                    return "java/lang/Object";
                }
                do {
                    cls = cls.getSuperclass();
                } while (!cls.isAssignableFrom(cls2));
                return cls.getName().replace('.', '/');
            } catch (ClassNotFoundException e11) {
                throw new TypeNotPresentException(str2, e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new TypeNotPresentException(str, e12);
        }
    }

    public byte[] r() {
        int iJ;
        int i11;
        int i12;
        int iA = (this.f64083h * 2) + 24;
        int i13 = 0;
        for (m mVar = this.f64085j; mVar != null; mVar = (m) mVar.f64129b) {
            i13++;
            iA += mVar.f();
        }
        int i14 = 0;
        for (s sVar = this.f64087l; sVar != null; sVar = (s) sVar.f64176b) {
            i14++;
            iA += sVar.L();
        }
        d dVar = this.f64090o;
        if (dVar != null) {
            iA += dVar.f64068b + 8;
            this.f64079d.D("InnerClasses");
            iJ = 1;
        } else {
            iJ = 0;
        }
        if (this.f64091p != 0) {
            iJ++;
            iA += 10;
            this.f64079d.D("EnclosingMethod");
        }
        if ((this.f64080e & 4096) != 0 && (this.f64078c & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 49) {
            iJ++;
            iA += 6;
            this.f64079d.D("Synthetic");
        }
        if (this.f64093r != 0) {
            iJ++;
            iA += 8;
            this.f64079d.D(RequestParameters.SIGNATURE);
        }
        if (this.f64094s != 0) {
            iJ++;
            iA += 8;
            this.f64079d.D("SourceFile");
        }
        d dVar2 = this.f64095t;
        if (dVar2 != null) {
            iJ++;
            iA += dVar2.f64068b + 6;
            this.f64079d.D("SourceDebugExtension");
        }
        if ((this.f64080e & 131072) != 0) {
            iJ++;
            iA += 6;
            this.f64079d.D("Deprecated");
        }
        b bVar = this.f64096u;
        if (bVar != null) {
            iJ++;
            iA += bVar.f("RuntimeVisibleAnnotations");
        }
        b bVar2 = this.f64097v;
        if (bVar2 != null) {
            iJ++;
            iA += bVar2.f("RuntimeInvisibleAnnotations");
        }
        b bVar3 = this.f64098w;
        if (bVar3 != null) {
            iJ++;
            iA += bVar3.f("RuntimeVisibleTypeAnnotations");
        }
        b bVar4 = this.f64099x;
        if (bVar4 != null) {
            iJ++;
            iA += bVar4.f("RuntimeInvisibleTypeAnnotations");
        }
        if (this.f64079d.L() > 0) {
            iJ++;
            iA += this.f64079d.L();
        }
        u uVar = this.f64100y;
        if (uVar != null) {
            iJ += uVar.j();
            iA += this.f64100y.i();
        }
        if (this.f64101z != 0) {
            iJ++;
            iA += 8;
            this.f64079d.D("NestHost");
        }
        d dVar3 = this.B;
        if (dVar3 != null) {
            iJ++;
            iA += dVar3.f64068b + 8;
            this.f64079d.D("NestMembers");
        }
        c cVar = this.C;
        if (cVar != null) {
            int iC = iJ + cVar.c();
            iA += this.C.a(this.f64079d);
            iJ = iC;
        }
        int iQ = iA + this.f64079d.Q();
        int iP = this.f64079d.P();
        if (iP > 65535) {
            throw new ClassTooLargeException(this.f64079d.O(), iP);
        }
        d dVar4 = new d(iQ);
        dVar4.i(-889275714).i(this.f64078c);
        this.f64079d.e0(dVar4);
        dVar4.k((~((this.f64078c & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 49 ? 4096 : 0)) & this.f64080e).k(this.f64081f).k(this.f64082g);
        dVar4.k(this.f64083h);
        for (int i15 = 0; i15 < this.f64083h; i15++) {
            dVar4.k(this.f64084i[i15]);
        }
        dVar4.k(i13);
        for (m mVar2 = this.f64085j; mVar2 != null; mVar2 = (m) mVar2.f64129b) {
            mVar2.g(dVar4);
        }
        dVar4.k(i14);
        boolean zO = false;
        boolean zN = false;
        for (s sVar2 = this.f64087l; sVar2 != null; sVar2 = (s) sVar2.f64176b) {
            zO |= sVar2.O();
            zN |= sVar2.N();
            sVar2.S(dVar4);
        }
        dVar4.k(iJ);
        if (this.f64090o != null) {
            d dVarK = dVar4.k(this.f64079d.D("InnerClasses")).i(this.f64090o.f64068b + 2).k(this.f64089n);
            d dVar5 = this.f64090o;
            dVarK.h(dVar5.f64067a, 0, dVar5.f64068b);
        }
        if (this.f64091p != 0) {
            dVar4.k(this.f64079d.D("EnclosingMethod")).i(4).k(this.f64091p).k(this.f64092q);
        }
        if ((this.f64080e & 4096) != 0 && (this.f64078c & Settings.DEFAULT_INITIAL_WINDOW_SIZE) < 49) {
            dVar4.k(this.f64079d.D("Synthetic")).i(0);
        }
        if (this.f64093r != 0) {
            i11 = 2;
            dVar4.k(this.f64079d.D(RequestParameters.SIGNATURE)).i(2).k(this.f64093r);
        } else {
            i11 = 2;
        }
        if (this.f64094s != 0) {
            dVar4.k(this.f64079d.D("SourceFile")).i(i11).k(this.f64094s);
        }
        d dVar6 = this.f64095t;
        if (dVar6 != null) {
            int i16 = dVar6.f64068b;
            i12 = 0;
            dVar4.k(this.f64079d.D("SourceDebugExtension")).i(i16).h(this.f64095t.f64067a, 0, i16);
        } else {
            i12 = 0;
        }
        if ((this.f64080e & 131072) != 0) {
            dVar4.k(this.f64079d.D("Deprecated")).i(i12);
        }
        b bVar5 = this.f64096u;
        if (bVar5 != null) {
            bVar5.h(this.f64079d.D("RuntimeVisibleAnnotations"), dVar4);
        }
        b bVar6 = this.f64097v;
        if (bVar6 != null) {
            bVar6.h(this.f64079d.D("RuntimeInvisibleAnnotations"), dVar4);
        }
        b bVar7 = this.f64098w;
        if (bVar7 != null) {
            bVar7.h(this.f64079d.D("RuntimeVisibleTypeAnnotations"), dVar4);
        }
        b bVar8 = this.f64099x;
        if (bVar8 != null) {
            bVar8.h(this.f64079d.D("RuntimeInvisibleTypeAnnotations"), dVar4);
        }
        this.f64079d.d0(dVar4);
        u uVar2 = this.f64100y;
        if (uVar2 != null) {
            uVar2.k(dVar4);
        }
        if (this.f64101z != 0) {
            dVar4.k(this.f64079d.D("NestHost")).i(2).k(this.f64101z);
        }
        if (this.B != null) {
            d dVarK2 = dVar4.k(this.f64079d.D("NestMembers")).i(this.B.f64068b + 2).k(this.A);
            d dVar7 = this.B;
            dVarK2.h(dVar7.f64067a, 0, dVar7.f64068b);
        }
        c cVar2 = this.C;
        if (cVar2 != null) {
            cVar2.e(this.f64079d, dVar4);
        }
        return zN ? q(dVar4.f64067a, zO) : dVar4.f64067a;
    }
}
