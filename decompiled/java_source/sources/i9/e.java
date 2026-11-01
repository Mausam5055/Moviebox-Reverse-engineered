package i9;

import com.google.android.exoplayer2.util.p0;
import g9.b0;
import g9.c0;
import g9.e0;
import g9.m;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final e0 f65063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f65064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f65065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f65066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f65067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65068f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65069g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65070h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f65071i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65072j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f65073k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int[] f65074l;

    public e(int i11, int i12, long j11, int i13, e0 e0Var) {
        boolean z10 = true;
        if (i12 != 1 && i12 != 2) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.f65066d = j11;
        this.f65067e = i13;
        this.f65063a = e0Var;
        this.f65064b = d(i11, i12 == 2 ? 1667497984 : 1651965952);
        this.f65065c = i12 == 2 ? d(i11, 1650720768) : -1;
        this.f65073k = new long[512];
        this.f65074l = new int[512];
    }

    private static int d(int i11, int i12) {
        return (((i11 % 10) + 48) << 8) | ((i11 / 10) + 48) | i12;
    }

    private long e(int i11) {
        return (this.f65066d * ((long) i11)) / ((long) this.f65067e);
    }

    private c0 h(int i11) {
        return new c0(((long) this.f65074l[i11]) * g(), this.f65073k[i11]);
    }

    public void a() {
        this.f65070h++;
    }

    public void b(long j11) {
        if (this.f65072j == this.f65074l.length) {
            long[] jArr = this.f65073k;
            this.f65073k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.f65074l;
            this.f65074l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.f65073k;
        int i11 = this.f65072j;
        jArr2[i11] = j11;
        this.f65074l[i11] = this.f65071i;
        this.f65072j = i11 + 1;
    }

    public void c() {
        this.f65073k = Arrays.copyOf(this.f65073k, this.f65072j);
        this.f65074l = Arrays.copyOf(this.f65074l, this.f65072j);
    }

    public long f() {
        return e(this.f65070h);
    }

    public long g() {
        return e(1);
    }

    public b0.a i(long j11) {
        int iG = (int) (j11 / g());
        int iH = p0.h(this.f65074l, iG, true, true);
        if (this.f65074l[iH] == iG) {
            return new b0.a(h(iH));
        }
        c0 c0VarH = h(iH);
        int i11 = iH + 1;
        return i11 < this.f65073k.length ? new b0.a(c0VarH, h(i11)) : new b0.a(c0VarH);
    }

    public boolean j(int i11) {
        return this.f65064b == i11 || this.f65065c == i11;
    }

    public void k() {
        this.f65071i++;
    }

    public boolean l() {
        return Arrays.binarySearch(this.f65074l, this.f65070h) >= 0;
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
    public boolean m(m mVar) {
        int i11 = this.f65069g;
        int iB = i11 - this.f65063a.b(mVar, i11, false);
        this.f65069g = iB;
        boolean z10 = iB == 0;
        if (z10) {
            if (this.f65068f > 0) {
                this.f65063a.d(f(), l() ? 1 : 0, this.f65068f, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i11) {
        this.f65068f = i11;
        this.f65069g = i11;
    }

    public void o(long j11) {
        if (this.f65072j == 0) {
            this.f65070h = 0;
        } else {
            this.f65070h = this.f65074l[p0.i(this.f65073k, j11, true, true)];
        }
    }
}
