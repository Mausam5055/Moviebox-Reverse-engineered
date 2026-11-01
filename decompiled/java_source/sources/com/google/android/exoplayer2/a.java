package com.google.android.exoplayer2;

import android.util.Pair;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a extends k3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t9.t f24471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f24472e;

    public a(boolean z10, t9.t tVar) {
        this.f24472e = z10;
        this.f24471d = tVar;
        this.f24470c = tVar.getLength();
    }

    public static Object B(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object C(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object E(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int H(int i11, boolean z10) {
        if (z10) {
            return this.f24471d.getNextIndex(i11);
        }
        if (i11 < this.f24470c - 1) {
            return i11 + 1;
        }
        return -1;
    }

    private int I(int i11, boolean z10) {
        if (z10) {
            return this.f24471d.getPreviousIndex(i11);
        }
        if (i11 > 0) {
            return i11 - 1;
        }
        return -1;
    }

    protected abstract int A(int i11);

    protected abstract Object D(int i11);

    protected abstract int F(int i11);

    protected abstract int G(int i11);

    protected abstract k3 J(int i11);

    @Override // com.google.android.exoplayer2.k3
    public int e(boolean z10) {
        if (this.f24470c == 0) {
            return -1;
        }
        if (this.f24472e) {
            z10 = false;
        }
        int firstIndex = z10 ? this.f24471d.getFirstIndex() : 0;
        while (J(firstIndex).u()) {
            firstIndex = H(firstIndex, z10);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return G(firstIndex) + J(firstIndex).e(z10);
    }

    @Override // com.google.android.exoplayer2.k3
    public final int f(Object obj) {
        int iF;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        if (iY == -1 || (iF = J(iY).f(objB)) == -1) {
            return -1;
        }
        return F(iY) + iF;
    }

    @Override // com.google.android.exoplayer2.k3
    public int g(boolean z10) {
        int i11 = this.f24470c;
        if (i11 == 0) {
            return -1;
        }
        if (this.f24472e) {
            z10 = false;
        }
        int lastIndex = z10 ? this.f24471d.getLastIndex() : i11 - 1;
        while (J(lastIndex).u()) {
            lastIndex = I(lastIndex, z10);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return G(lastIndex) + J(lastIndex).g(z10);
    }

    @Override // com.google.android.exoplayer2.k3
    public int i(int i11, int i12, boolean z10) {
        if (this.f24472e) {
            if (i12 == 1) {
                i12 = 2;
            }
            z10 = false;
        }
        int iA = A(i11);
        int iG = G(iA);
        int i13 = J(iA).i(i11 - iG, i12 != 2 ? i12 : 0, z10);
        if (i13 != -1) {
            return iG + i13;
        }
        int iH = H(iA, z10);
        while (iH != -1 && J(iH).u()) {
            iH = H(iH, z10);
        }
        if (iH != -1) {
            return G(iH) + J(iH).e(z10);
        }
        if (i12 == 2) {
            return e(z10);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.k3
    public final k3.b k(int i11, k3.b bVar, boolean z10) {
        int iZ = z(i11);
        int iG = G(iZ);
        J(iZ).k(i11 - F(iZ), bVar, z10);
        bVar.f25156c += iG;
        if (z10) {
            bVar.f25155b = E(D(iZ), com.google.android.exoplayer2.util.a.e(bVar.f25155b));
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.k3
    public final k3.b l(Object obj, k3.b bVar) {
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        int iG = G(iY);
        J(iY).l(objB, bVar);
        bVar.f25156c += iG;
        bVar.f25155b = obj;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.k3
    public int p(int i11, int i12, boolean z10) {
        if (this.f24472e) {
            if (i12 == 1) {
                i12 = 2;
            }
            z10 = false;
        }
        int iA = A(i11);
        int iG = G(iA);
        int iP = J(iA).p(i11 - iG, i12 != 2 ? i12 : 0, z10);
        if (iP != -1) {
            return iG + iP;
        }
        int I = I(iA, z10);
        while (I != -1 && J(I).u()) {
            I = I(I, z10);
        }
        if (I != -1) {
            return G(I) + J(I).g(z10);
        }
        if (i12 == 2) {
            return g(z10);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.k3
    public final Object q(int i11) {
        int iZ = z(i11);
        return E(D(iZ), J(iZ).q(i11 - F(iZ)));
    }

    @Override // com.google.android.exoplayer2.k3
    public final k3.d s(int i11, k3.d dVar, long j11) {
        int iA = A(i11);
        int iG = G(iA);
        int iF = F(iA);
        J(iA).s(i11 - iG, dVar, j11);
        Object objD = D(iA);
        if (!k3.d.f25165r.equals(dVar.f25169a)) {
            objD = E(objD, dVar.f25169a);
        }
        dVar.f25169a = objD;
        dVar.f25183o += iF;
        dVar.f25184p += iF;
        return dVar;
    }

    protected abstract int y(Object obj);

    protected abstract int z(int i11);
}
