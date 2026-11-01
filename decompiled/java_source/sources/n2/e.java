package n2;

import androidx.media3.common.util.a1;
import java.util.Arrays;
import l2.m0;
import l2.n0;
import l2.s;
import l2.s0;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f70153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s0 f70154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f70155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f70156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f70157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f70158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f70159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f70160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f70161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f70162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f70163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f70164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long[] f70165m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int[] f70166n;

    public e(int i11, d dVar, s0 s0Var) {
        this.f70153a = dVar;
        int iB = dVar.b();
        boolean z10 = true;
        if (iB != 1 && iB != 2) {
            z10 = false;
        }
        androidx.media3.common.util.a.a(z10);
        this.f70155c = d(i11, iB == 2 ? 1667497984 : 1651965952);
        this.f70157e = dVar.a();
        this.f70154b = s0Var;
        this.f70156d = iB == 2 ? d(i11, 1650720768) : -1;
        this.f70164l = -1L;
        this.f70165m = new long[512];
        this.f70166n = new int[512];
        this.f70158f = dVar.f70150e;
    }

    private static int d(int i11, int i12) {
        return (((i11 % 10) + 48) << 8) | ((i11 / 10) + 48) | i12;
    }

    private long e(int i11) {
        return (this.f70157e * ((long) i11)) / ((long) this.f70158f);
    }

    private n0 h(int i11) {
        return new n0(((long) this.f70166n[i11]) * g(), this.f70165m[i11]);
    }

    public void a() {
        this.f70161i++;
    }

    public void b(long j11, boolean z10) {
        if (this.f70164l == -1) {
            this.f70164l = j11;
        }
        if (z10) {
            if (this.f70163k == this.f70166n.length) {
                long[] jArr = this.f70165m;
                this.f70165m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.f70166n;
                this.f70166n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.f70165m;
            int i11 = this.f70163k;
            jArr2[i11] = j11;
            this.f70166n[i11] = this.f70162j;
            this.f70163k = i11 + 1;
        }
        this.f70162j++;
    }

    public void c() {
        int i11;
        this.f70165m = Arrays.copyOf(this.f70165m, this.f70163k);
        this.f70166n = Arrays.copyOf(this.f70166n, this.f70163k);
        if (!k() || this.f70153a.f70152g == 0 || (i11 = this.f70163k) <= 0) {
            return;
        }
        this.f70158f = i11;
    }

    public long f() {
        return e(this.f70161i);
    }

    public long g() {
        return e(1);
    }

    public m0.a i(long j11) {
        if (this.f70163k == 0) {
            return new m0.a(new n0(0L, this.f70164l));
        }
        int iG = (int) (j11 / g());
        int iG2 = a1.g(this.f70166n, iG, true, true);
        if (this.f70166n[iG2] == iG) {
            return new m0.a(h(iG2));
        }
        n0 n0VarH = h(iG2);
        int i11 = iG2 + 1;
        return i11 < this.f70165m.length ? new m0.a(n0VarH, h(i11)) : new m0.a(n0VarH);
    }

    public boolean j(int i11) {
        return this.f70155c == i11 || this.f70156d == i11;
    }

    public boolean k() {
        return (this.f70155c & 1651965952) == 1651965952;
    }

    public boolean l() {
        return Arrays.binarySearch(this.f70166n, this.f70161i) >= 0;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean m(s sVar) {
        int i11 = this.f70160h;
        int iE = i11 - this.f70154b.e(sVar, i11, false);
        this.f70160h = iE;
        boolean z10 = iE == 0;
        if (z10) {
            if (this.f70159g > 0) {
                this.f70154b.d(f(), l() ? 1 : 0, this.f70159g, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i11) {
        this.f70159g = i11;
        this.f70160h = i11;
    }

    public void o(long j11) {
        if (this.f70163k == 0) {
            this.f70161i = 0;
        } else {
            this.f70161i = this.f70166n[a1.h(this.f70165m, j11, true, true)];
        }
    }
}
