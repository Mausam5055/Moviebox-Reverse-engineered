package androidx.media3.exoplayer;

import android.util.Pair;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends androidx.media3.common.e0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f10987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g2.v f10988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f10989g;

    public a(boolean z10, g2.v vVar) {
        this.f10989g = z10;
        this.f10988f = vVar;
        this.f10987e = vVar.getLength();
    }

    private int B(int i11, boolean z10) {
        if (z10) {
            return this.f10988f.getNextIndex(i11);
        }
        if (i11 < this.f10987e - 1) {
            return i11 + 1;
        }
        return -1;
    }

    private int C(int i11, boolean z10) {
        if (z10) {
            return this.f10988f.getPreviousIndex(i11);
        }
        if (i11 > 0) {
            return i11 - 1;
        }
        return -1;
    }

    public static Object v(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object w(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object y(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    protected abstract int A(int i11);

    protected abstract androidx.media3.common.e0 D(int i11);

    @Override // androidx.media3.common.e0
    public int a(boolean z10) {
        if (this.f10987e == 0) {
            return -1;
        }
        if (this.f10989g) {
            z10 = false;
        }
        int firstIndex = z10 ? this.f10988f.getFirstIndex() : 0;
        while (D(firstIndex).q()) {
            firstIndex = B(firstIndex, z10);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return A(firstIndex) + D(firstIndex).a(z10);
    }

    @Override // androidx.media3.common.e0
    public final int b(Object obj) {
        int iB;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objW = w(obj);
        Object objV = v(obj);
        int iS = s(objW);
        if (iS == -1 || (iB = D(iS).b(objV)) == -1) {
            return -1;
        }
        return z(iS) + iB;
    }

    @Override // androidx.media3.common.e0
    public int c(boolean z10) {
        int i11 = this.f10987e;
        if (i11 == 0) {
            return -1;
        }
        if (this.f10989g) {
            z10 = false;
        }
        int lastIndex = z10 ? this.f10988f.getLastIndex() : i11 - 1;
        while (D(lastIndex).q()) {
            lastIndex = C(lastIndex, z10);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return A(lastIndex) + D(lastIndex).c(z10);
    }

    @Override // androidx.media3.common.e0
    public int e(int i11, int i12, boolean z10) {
        if (this.f10989g) {
            if (i12 == 1) {
                i12 = 2;
            }
            z10 = false;
        }
        int iU = u(i11);
        int iA = A(iU);
        int iE = D(iU).e(i11 - iA, i12 != 2 ? i12 : 0, z10);
        if (iE != -1) {
            return iA + iE;
        }
        int iB = B(iU, z10);
        while (iB != -1 && D(iB).q()) {
            iB = B(iB, z10);
        }
        if (iB != -1) {
            return A(iB) + D(iB).a(z10);
        }
        if (i12 == 2) {
            return a(z10);
        }
        return -1;
    }

    @Override // androidx.media3.common.e0
    public final androidx.media3.common.e0.b g(int i11, androidx.media3.common.e0.b bVar, boolean z10) {
        int iT = t(i11);
        int iA = A(iT);
        D(iT).g(i11 - z(iT), bVar, z10);
        bVar.f9936c += iA;
        if (z10) {
            bVar.f9935b = y(x(iT), androidx.media3.common.util.a.e(bVar.f9935b));
        }
        return bVar;
    }

    @Override // androidx.media3.common.e0
    public final androidx.media3.common.e0.b h(Object obj, androidx.media3.common.e0.b bVar) {
        Object objW = w(obj);
        Object objV = v(obj);
        int iS = s(objW);
        int iA = A(iS);
        D(iS).h(objV, bVar);
        bVar.f9936c += iA;
        bVar.f9935b = obj;
        return bVar;
    }

    @Override // androidx.media3.common.e0
    public int l(int i11, int i12, boolean z10) {
        if (this.f10989g) {
            if (i12 == 1) {
                i12 = 2;
            }
            z10 = false;
        }
        int iU = u(i11);
        int iA = A(iU);
        int iL = D(iU).l(i11 - iA, i12 != 2 ? i12 : 0, z10);
        if (iL != -1) {
            return iA + iL;
        }
        int iC = C(iU, z10);
        while (iC != -1 && D(iC).q()) {
            iC = C(iC, z10);
        }
        if (iC != -1) {
            return A(iC) + D(iC).c(z10);
        }
        if (i12 == 2) {
            return c(z10);
        }
        return -1;
    }

    @Override // androidx.media3.common.e0
    public final Object m(int i11) {
        int iT = t(i11);
        return y(x(iT), D(iT).m(i11 - z(iT)));
    }

    @Override // androidx.media3.common.e0
    public final androidx.media3.common.e0.c o(int i11, androidx.media3.common.e0.c cVar, long j11) {
        int iU = u(i11);
        int iA = A(iU);
        int iZ = z(iU);
        D(iU).o(i11 - iA, cVar, j11);
        Object objX = x(iU);
        if (!androidx.media3.common.e0.c.f9941q.equals(cVar.f9951a)) {
            objX = y(objX, cVar.f9951a);
        }
        cVar.f9951a = objX;
        cVar.f9964n += iZ;
        cVar.f9965o += iZ;
        return cVar;
    }

    protected abstract int s(Object obj);

    protected abstract int t(int i11);

    protected abstract int u(int i11);

    protected abstract Object x(int i11);

    protected abstract int z(int i11);
}
