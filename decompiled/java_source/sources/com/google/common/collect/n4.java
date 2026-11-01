package com.google.common.collect;

import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class n4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f30827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Comparator f30828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object[] f30829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f30830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f30831e;

    private n4(Comparator comparator, int i11) {
        this.f30828b = (Comparator) com.google.common.base.m.p(comparator, "comparator");
        this.f30827a = i11;
        com.google.common.base.m.f(i11 >= 0, "k (%s) must be >= 0", i11);
        com.google.common.base.m.f(i11 <= 1073741823, "k (%s) must be <= Integer.MAX_VALUE / 2", i11);
        this.f30829c = new Object[com.google.common.math.d.b(i11, 2)];
        this.f30830d = 0;
        this.f30831e = null;
    }

    public static n4 a(int i11, Comparator comparator) {
        return new n4(comparator, i11);
    }

    private int d(int i11, int i12, int i13) {
        Object objA = m3.a(this.f30829c[i13]);
        Object[] objArr = this.f30829c;
        objArr[i13] = objArr[i12];
        int i14 = i11;
        while (i11 < i12) {
            if (this.f30828b.compare(m3.a(this.f30829c[i11]), objA) < 0) {
                e(i14, i11);
                i14++;
            }
            i11++;
        }
        Object[] objArr2 = this.f30829c;
        objArr2[i12] = objArr2[i14];
        objArr2[i14] = objA;
        return i14;
    }

    private void e(int i11, int i12) {
        Object[] objArr = this.f30829c;
        Object obj = objArr[i11];
        objArr[i11] = objArr[i12];
        objArr[i12] = obj;
    }

    private void g() {
        int i11 = (this.f30827a * 2) - 1;
        int iF = com.google.common.math.d.f(i11, RoundingMode.CEILING) * 3;
        int iMax = 0;
        int i12 = 0;
        int i13 = 0;
        while (iMax < i11) {
            int iD = d(iMax, i11, ((iMax + i11) + 1) >>> 1);
            int i14 = this.f30827a;
            if (iD <= i14) {
                if (iD >= i14) {
                    break;
                }
                iMax = Math.max(iD, iMax + 1);
                i13 = iD;
            } else {
                i11 = iD - 1;
            }
            i12++;
            if (i12 >= iF) {
                Arrays.sort(this.f30829c, iMax, i11 + 1, this.f30828b);
                break;
            }
        }
        this.f30830d = this.f30827a;
        this.f30831e = m3.a(this.f30829c[i13]);
        while (true) {
            i13++;
            if (i13 >= this.f30827a) {
                return;
            }
            if (this.f30828b.compare(m3.a(this.f30829c[i13]), m3.a(this.f30831e)) > 0) {
                this.f30831e = this.f30829c[i13];
            }
        }
    }

    public void b(Object obj) {
        int i11 = this.f30827a;
        if (i11 == 0) {
            return;
        }
        int i12 = this.f30830d;
        if (i12 == 0) {
            this.f30829c[0] = obj;
            this.f30831e = obj;
            this.f30830d = 1;
            return;
        }
        if (i12 < i11) {
            Object[] objArr = this.f30829c;
            this.f30830d = i12 + 1;
            objArr[i12] = obj;
            if (this.f30828b.compare(obj, m3.a(this.f30831e)) > 0) {
                this.f30831e = obj;
                return;
            }
            return;
        }
        if (this.f30828b.compare(obj, m3.a(this.f30831e)) < 0) {
            Object[] objArr2 = this.f30829c;
            int i13 = this.f30830d;
            int i14 = i13 + 1;
            this.f30830d = i14;
            objArr2[i13] = obj;
            if (i14 == this.f30827a * 2) {
                g();
            }
        }
    }

    public void c(Iterator it) {
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public List f() {
        Object[] objArr = this.f30829c;
        Arrays.sort(objArr, 0, this.f30830d, this.f30828b);
        int i11 = this.f30830d;
        int i12 = this.f30827a;
        if (i11 > i12) {
            Object[] objArr2 = this.f30829c;
            Arrays.fill(objArr2, i12, objArr2.length, (Object) null);
            int i13 = this.f30827a;
            this.f30830d = i13;
            this.f30831e = this.f30829c[i13 - 1];
        }
        return Collections.unmodifiableList(Arrays.asList(Arrays.copyOf(objArr, this.f30830d)));
    }
}
