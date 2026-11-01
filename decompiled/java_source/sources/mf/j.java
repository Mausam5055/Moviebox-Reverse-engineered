package mf;

import com.tencent.tinker.android.dex.v;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final nf.a f69539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final com.tencent.tinker.android.dex.j f69540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final of.c f69541c;

    public j(nf.a aVar, com.tencent.tinker.android.dex.j jVar, of.c cVar) {
        this.f69539a = aVar;
        this.f69540b = jVar;
        this.f69541c = cVar;
    }

    private void b(com.tencent.tinker.android.dex.j.h hVar, int i11, int[] iArr, int[] iArr2, int[] iArr3) {
        int i12;
        int i13 = 1;
        int length = iArr.length;
        int length2 = iArr2.length;
        int length3 = iArr3.length;
        int i14 = (i11 + length2) - length;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            if (i19 >= i11 && i18 >= i14) {
                break;
            }
            if (i17 < length2 && iArr2[i17] == i18) {
                k(g(this.f69539a.a()));
                i17 += i13;
            } else if (i16 >= length3 || iArr3[i16] != i18) {
                if (Arrays.binarySearch(iArr, i19) >= 0) {
                    f(this.f69541c, i19, d(i19, g(hVar)));
                    i12 = 1;
                    i19++;
                    i15++;
                } else if (Arrays.binarySearch(iArr3, i19) >= 0) {
                    f(this.f69541c, i19, d(i19, g(hVar)));
                    i12 = 1;
                    i19++;
                } else if (i19 < i11) {
                    Comparable comparableA = a(this.f69541c, g(hVar));
                    int i20 = i16;
                    j(this.f69541c, i19, d(i19, comparableA), i18, k(comparableA));
                    i19++;
                    i18++;
                    i13 = 1;
                    i15 = i15;
                    i16 = i20;
                    i17 = i17;
                } else {
                    i13 = 1;
                }
                i13 = i12;
            } else {
                k(g(this.f69539a.a()));
                i16 += i13;
            }
            i18 += i13;
        }
        if (i17 == length2 && i15 == length && i16 == length3) {
            h();
            return;
        }
        Integer numValueOf = Integer.valueOf(i17);
        Integer numValueOf2 = Integer.valueOf(length2);
        Integer numValueOf3 = Integer.valueOf(i15);
        Integer numValueOf4 = Integer.valueOf(length);
        Integer numValueOf5 = Integer.valueOf(i16);
        Integer numValueOf6 = Integer.valueOf(length3);
        Object[] objArr = new Object[6];
        objArr[0] = numValueOf;
        objArr[i13] = numValueOf2;
        objArr[2] = numValueOf3;
        objArr[3] = numValueOf4;
        objArr[4] = numValueOf5;
        objArr[5] = numValueOf6;
        throw new IllegalStateException(String.format("bad patch operation sequence. addCounter: %d, addCount: %d, delCounter: %d, delCount: %d, replaceCounter: %d, replaceCount:%d", objArr));
    }

    private int d(int i11, Comparable comparable) {
        return comparable instanceof v.a.AbstractC0583a ? ((v.a.AbstractC0583a) comparable).f40685a : i11;
    }

    private int[] i(int i11) {
        int[] iArr = new int[i11];
        int iD = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            iD += this.f69539a.a().D();
            iArr[i12] = iD;
        }
        return iArr;
    }

    protected Comparable a(of.a aVar, Comparable comparable) {
        return comparable;
    }

    public void c() {
        com.tencent.tinker.android.dex.j.h hVar;
        int i11;
        int[] iArrI = i(this.f69539a.a().H());
        int[] iArrI2 = i(this.f69539a.a().H());
        int[] iArrI3 = i(this.f69539a.a().H());
        v.a aVarE = e(this.f69540b);
        if (aVarE.b()) {
            com.tencent.tinker.android.dex.j.h hVarM = this.f69540b.m(aVarE);
            i11 = aVarE.f40682c;
            hVar = hVarM;
        } else {
            hVar = null;
            i11 = 0;
        }
        b(hVar, i11, iArrI, iArrI2, iArrI3);
    }

    protected abstract v.a e(com.tencent.tinker.android.dex.j jVar);

    protected void f(of.c cVar, int i11, int i12) {
    }

    protected abstract Comparable g(ff.a aVar);

    protected void h() {
    }

    protected void j(of.c cVar, int i11, int i12, int i13, int i14) {
    }

    protected abstract int k(Comparable comparable);
}
