package h10;

/* JADX INFO: loaded from: classes7.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f64175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected r f64176b;

    public r(int i11) {
        this(i11, null);
    }

    public r(int i11, r rVar) {
        if (i11 != 393216 && i11 != 327680 && i11 != 262144 && i11 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f64175a = i11;
        this.f64176b = rVar;
    }

    public abstract void A(int i11, int i12, q qVar, q... qVarArr);

    public abstract a B(int i11, z zVar, String str, boolean z10);

    public abstract void C(q qVar, q qVar2, q qVar3, String str);

    public abstract a D(int i11, z zVar, String str, boolean z10);

    public abstract void E(int i11, String str);

    public abstract void F(int i11, int i12);

    public abstract void a(int i11, boolean z10);

    public abstract a b(String str, boolean z10);

    public abstract a c();

    public abstract void d(c cVar);

    public abstract void e();

    public abstract void f();

    public abstract void g(int i11, String str, String str2, String str3);

    public abstract void h(int i11, int i12, Object[] objArr, int i13, Object[] objArr2);

    public abstract void i(int i11, int i12);

    public abstract void j(int i11);

    public abstract a k(int i11, z zVar, String str, boolean z10);

    public abstract void l(int i11, int i12);

    public abstract void m(String str, String str2, o oVar, Object... objArr);

    public abstract void n(int i11, q qVar);

    public abstract void o(q qVar);

    public abstract void p(Object obj);

    public abstract void q(int i11, q qVar);

    public abstract void r(String str, String str2, String str3, q qVar, q qVar2, int i11);

    public abstract a s(int i11, z zVar, q[] qVarArr, q[] qVarArr2, int[] iArr, String str, boolean z10);

    public abstract void t(q qVar, int[] iArr, q[] qVarArr);

    public abstract void u(int i11, int i12);

    public void v(int i11, String str, String str2, String str3) {
        if (this.f64175a >= 327680) {
            w(i11, str, str2, str3, i11 == 185);
            return;
        }
        r rVar = this.f64176b;
        if (rVar != null) {
            rVar.v(i11, str, str2, str3);
        }
    }

    public abstract void w(int i11, String str, String str2, String str3, boolean z10);

    public abstract void x(String str, int i11);

    public abstract void y(String str, int i11);

    public abstract a z(int i11, String str, boolean z10);
}
