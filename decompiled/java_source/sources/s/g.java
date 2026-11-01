package s;

import androidx.compose.runtime.a2;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.o1;
import java.util.Arrays;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f74818i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f74819j = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74821b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74823d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f74826g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f74827h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d[] f74820a = new d[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f74822c = new int[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object[] f74824e = new Object[16];

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class b implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f74828a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f74829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f74830c;

        public b() {
        }

        @Override // s.e
        public Object a(int i11) {
            return g.this.f74824e[this.f74830c + i11];
        }

        @Override // s.e
        public int b(int i11) {
            return g.this.f74822c[this.f74829b + i11];
        }

        public final d c() {
            d dVar = g.this.f74820a[this.f74828a];
            Intrinsics.e(dVar);
            return dVar;
        }

        public final boolean d() {
            if (this.f74828a >= g.this.f74821b) {
                return false;
            }
            d dVarC = c();
            this.f74829b += dVarC.b();
            this.f74830c += dVarC.d();
            int i11 = this.f74828a + 1;
            this.f74828a = i11;
            return i11 < g.this.f74821b;
        }
    }

    public static final class c {
        public static g a(g gVar) {
            return gVar;
        }

        public static final d b(g gVar) {
            return gVar.v();
        }

        public static final void c(g gVar, int i11, int i12) {
            int i13 = 1 << i11;
            if (!((gVar.f74826g & i13) == 0)) {
                o1.b("Already pushed argument " + b(gVar).e(i11));
            }
            gVar.f74826g |= i13;
            gVar.f74822c[gVar.z(i11)] = i12;
        }

        public static final void d(g gVar, int i11, Object obj) {
            int i12 = 1 << i11;
            if (!((gVar.f74827h & i12) == 0)) {
                o1.b("Already pushed argument " + b(gVar).f(i11));
            }
            gVar.f74827h |= i12;
            gVar.f74824e[gVar.A(i11)] = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int A(int i11) {
        return (this.f74825f - v().d()) + i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int n(int i11) {
        if (i11 == 0) {
            return 0;
        }
        return (-1) >>> (32 - i11);
    }

    private final int o(int i11, int i12) {
        return RangesKt.f(i11 + RangesKt.i(i11, 1024), i12);
    }

    private final void p(int i11) {
        int[] iArr = this.f74822c;
        int length = iArr.length;
        if (i11 > length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, o(length, i11));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f74822c = iArrCopyOf;
        }
    }

    private final void q(int i11) {
        Object[] objArr = this.f74824e;
        int length = objArr.length;
        if (i11 > length) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, o(length, i11));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f74824e = objArrCopyOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final d v() {
        d dVar = this.f74820a[this.f74821b - 1];
        Intrinsics.e(dVar);
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int z(int i11) {
        return (this.f74823d - v().b()) + i11;
    }

    public final void m() {
        this.f74821b = 0;
        this.f74823d = 0;
        ArraysKt.w(this.f74824e, null, 0, this.f74825f);
        this.f74825f = 0;
    }

    public final void r(androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
        if (u()) {
            b bVar = new b();
            do {
                bVar.c().a(bVar, fVar, m2Var, a2Var);
            } while (bVar.d());
        }
        m();
    }

    public final int s() {
        return this.f74821b;
    }

    public final boolean t() {
        return s() == 0;
    }

    public String toString() {
        return super.toString();
    }

    public final boolean u() {
        return s() != 0;
    }

    public final void w(g gVar) {
        if (t()) {
            throw new NoSuchElementException("Cannot pop(), because the stack is empty.");
        }
        d[] dVarArr = this.f74820a;
        int i11 = this.f74821b - 1;
        this.f74821b = i11;
        d dVar = dVarArr[i11];
        Intrinsics.e(dVar);
        this.f74820a[this.f74821b] = null;
        gVar.y(dVar);
        int i12 = this.f74825f;
        int i13 = gVar.f74825f;
        int iD = dVar.d();
        for (int i14 = 0; i14 < iD; i14++) {
            i13--;
            i12--;
            Object[] objArr = gVar.f74824e;
            Object[] objArr2 = this.f74824e;
            objArr[i13] = objArr2[i12];
            objArr2[i12] = null;
        }
        int i15 = this.f74823d;
        int i16 = gVar.f74823d;
        int iB = dVar.b();
        for (int i17 = 0; i17 < iB; i17++) {
            i16--;
            i15--;
            int[] iArr = gVar.f74822c;
            int[] iArr2 = this.f74822c;
            iArr[i16] = iArr2[i15];
            iArr2[i15] = 0;
        }
        this.f74825f -= dVar.d();
        this.f74823d -= dVar.b();
    }

    public final void x(d dVar) {
        if (!(dVar.b() == 0 && dVar.d() == 0)) {
            o1.a("Cannot push " + dVar + " without arguments because it expects " + dVar.b() + " ints and " + dVar.d() + " objects.");
        }
        y(dVar);
    }

    public final void y(d dVar) {
        this.f74826g = 0;
        this.f74827h = 0;
        int i11 = this.f74821b;
        if (i11 == this.f74820a.length) {
            Object[] objArrCopyOf = Arrays.copyOf(this.f74820a, this.f74821b + RangesKt.i(i11, 1024));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f74820a = (d[]) objArrCopyOf;
        }
        p(this.f74823d + dVar.b());
        q(this.f74825f + dVar.d());
        d[] dVarArr = this.f74820a;
        int i12 = this.f74821b;
        this.f74821b = i12 + 1;
        dVarArr[i12] = dVar;
        this.f74823d += dVar.b();
        this.f74825f += dVar.d();
    }
}
