package com.mbridge.msdk.thrid.okio;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class q extends f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient byte[][] f38473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient int[] f38474g;

    q(c cVar, int i11) {
        super(null);
        u.a(cVar.f38432b, 0L, i11);
        o oVar = cVar.f38431a;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            int i15 = oVar.f38466c;
            int i16 = oVar.f38465b;
            if (i15 == i16) {
                throw new AssertionError("s.limit == s.pos");
            }
            i13 += i15 - i16;
            i14++;
            oVar = oVar.f38469f;
        }
        this.f38473f = new byte[i14][];
        this.f38474g = new int[i14 * 2];
        o oVar2 = cVar.f38431a;
        int i17 = 0;
        while (i12 < i11) {
            byte[][] bArr = this.f38473f;
            bArr[i17] = oVar2.f38464a;
            int i18 = oVar2.f38466c;
            int i19 = oVar2.f38465b;
            i12 += i18 - i19;
            if (i12 > i11) {
                i12 = i11;
            }
            int[] iArr = this.f38474g;
            iArr[i17] = i12;
            iArr[bArr.length + i17] = i19;
            oVar2.f38467d = true;
            i17++;
            oVar2 = oVar2.f38469f;
        }
    }

    private int b(int i11) {
        int iBinarySearch = Arrays.binarySearch(this.f38474g, 0, this.f38473f.length, i11 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private f i() {
        return new f(g());
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public byte a(int i11) {
        u.a(this.f38474g[this.f38473f.length - 1], i11, 1L);
        int iB = b(i11);
        int i12 = iB == 0 ? 0 : this.f38474g[iB - 1];
        int[] iArr = this.f38474g;
        byte[][] bArr = this.f38473f;
        return bArr[iB][(i11 - i12) + iArr[bArr.length + iB]];
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f a(int i11, int i12) {
        return i().a(i11, i12);
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String a() {
        return i().a();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    void a(c cVar) {
        int length = this.f38473f.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            int[] iArr = this.f38474g;
            int i13 = iArr[length + i11];
            int i14 = iArr[i11];
            o oVar = new o(this.f38473f[i11], i13, (i13 + i14) - i12, true, false);
            o oVar2 = cVar.f38431a;
            if (oVar2 == null) {
                oVar.f38470g = oVar;
                oVar.f38469f = oVar;
                cVar.f38431a = oVar;
            } else {
                oVar2.f38470g.a(oVar);
            }
            i11++;
            i12 = i14;
        }
        cVar.f38432b += (long) i12;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public boolean a(int i11, f fVar, int i12, int i13) {
        if (i11 < 0 || i11 > e() - i13) {
            return false;
        }
        int iB = b(i11);
        while (i13 > 0) {
            int i14 = iB == 0 ? 0 : this.f38474g[iB - 1];
            int iMin = Math.min(i13, ((this.f38474g[iB] - i14) + i14) - i11);
            int[] iArr = this.f38474g;
            byte[][] bArr = this.f38473f;
            if (!fVar.a(i12, bArr[iB], (i11 - i14) + iArr[bArr.length + iB], iMin)) {
                return false;
            }
            i11 += iMin;
            i12 += iMin;
            i13 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public boolean a(int i11, byte[] bArr, int i12, int i13) {
        if (i11 < 0 || i11 > e() - i13 || i12 < 0 || i12 > bArr.length - i13) {
            return false;
        }
        int iB = b(i11);
        while (i13 > 0) {
            int i14 = iB == 0 ? 0 : this.f38474g[iB - 1];
            int iMin = Math.min(i13, ((this.f38474g[iB] - i14) + i14) - i11);
            int[] iArr = this.f38474g;
            byte[][] bArr2 = this.f38473f;
            if (!u.a(bArr2[iB], (i11 - i14) + iArr[bArr2.length + iB], bArr, i12, iMin)) {
                return false;
            }
            i11 += iMin;
            i12 += iMin;
            i13 -= iMin;
            iB++;
        }
        return true;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String b() {
        return i().b();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f c() {
        return i().c();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f d() {
        return i().d();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public int e() {
        return this.f38474g[this.f38473f.length - 1];
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.e() == e() && a(0, fVar, 0, e())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public f f() {
        return i().f();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public byte[] g() {
        int[] iArr = this.f38474g;
        byte[][] bArr = this.f38473f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            int[] iArr2 = this.f38474g;
            int i13 = iArr2[length + i11];
            int i14 = iArr2[i11];
            System.arraycopy(this.f38473f[i11], i13, bArr2, i12, i14 - i12);
            i11++;
            i12 = i14;
        }
        return bArr2;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String h() {
        return i().h();
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public int hashCode() {
        int i11 = this.f38437b;
        if (i11 != 0) {
            return i11;
        }
        int length = this.f38473f.length;
        int i12 = 0;
        int i13 = 1;
        int i14 = 0;
        while (i12 < length) {
            byte[] bArr = this.f38473f[i12];
            int[] iArr = this.f38474g;
            int i15 = iArr[length + i12];
            int i16 = iArr[i12];
            int i17 = (i16 - i14) + i15;
            while (i15 < i17) {
                i13 = (i13 * 31) + bArr[i15];
                i15++;
            }
            i12++;
            i14 = i16;
        }
        this.f38437b = i13;
        return i13;
    }

    @Override // com.mbridge.msdk.thrid.okio.f
    public String toString() {
        return i().toString();
    }
}
