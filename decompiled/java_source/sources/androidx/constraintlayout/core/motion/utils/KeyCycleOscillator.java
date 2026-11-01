package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyCycleOscillator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.constraintlayout.core.motion.utils.b f6715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f6716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f6717c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6718d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6719e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6720f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList f6721g = new ArrayList();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f6722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f6723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f6724c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f6725d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f6726e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float[] f6727f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        double[] f6728g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float[] f6729h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        float[] f6730i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        float[] f6731j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float[] f6732k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f6733l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        androidx.constraintlayout.core.motion.utils.b f6734m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        double[] f6735n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        double[] f6736o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f6737p;

        a(int i11, String str, int i12, int i13) {
            g gVar = new g();
            this.f6723b = gVar;
            this.f6724c = 0;
            this.f6725d = 1;
            this.f6726e = 2;
            this.f6733l = i11;
            this.f6722a = i12;
            gVar.g(i11, str);
            this.f6727f = new float[i13];
            this.f6728g = new double[i13];
            this.f6729h = new float[i13];
            this.f6730i = new float[i13];
            this.f6731j = new float[i13];
            this.f6732k = new float[i13];
        }

        public double a(float f11) {
            androidx.constraintlayout.core.motion.utils.b bVar = this.f6734m;
            if (bVar != null) {
                double d11 = f11;
                bVar.g(d11, this.f6736o);
                this.f6734m.d(d11, this.f6735n);
            } else {
                double[] dArr = this.f6736o;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d12 = f11;
            double dE = this.f6723b.e(d12, this.f6735n[1]);
            double d13 = this.f6723b.d(d12, this.f6735n[1], this.f6736o[1]);
            double[] dArr2 = this.f6736o;
            return dArr2[0] + (dE * dArr2[2]) + (d13 * this.f6735n[2]);
        }

        public double b(float f11) {
            androidx.constraintlayout.core.motion.utils.b bVar = this.f6734m;
            if (bVar != null) {
                bVar.d(f11, this.f6735n);
            } else {
                double[] dArr = this.f6735n;
                dArr[0] = this.f6730i[0];
                dArr[1] = this.f6731j[0];
                dArr[2] = this.f6727f[0];
            }
            double[] dArr2 = this.f6735n;
            return dArr2[0] + (this.f6723b.e(f11, dArr2[1]) * this.f6735n[2]);
        }

        public void c(int i11, int i12, float f11, float f12, float f13, float f14) {
            this.f6728g[i11] = ((double) i12) / 100.0d;
            this.f6729h[i11] = f11;
            this.f6730i[i11] = f12;
            this.f6731j[i11] = f13;
            this.f6727f[i11] = f14;
        }

        public void d(float f11) {
            this.f6737p = f11;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f6728g.length, 3);
            float[] fArr = this.f6727f;
            this.f6735n = new double[fArr.length + 2];
            this.f6736o = new double[fArr.length + 2];
            if (this.f6728g[0] > 0.0d) {
                this.f6723b.a(0.0d, this.f6729h[0]);
            }
            double[] dArr2 = this.f6728g;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f6723b.a(1.0d, this.f6729h[length]);
            }
            for (int i11 = 0; i11 < dArr.length; i11++) {
                double[] dArr3 = dArr[i11];
                dArr3[0] = this.f6730i[i11];
                dArr3[1] = this.f6731j[i11];
                dArr3[2] = this.f6727f[i11];
                this.f6723b.a(this.f6728g[i11], this.f6729h[i11]);
            }
            this.f6723b.f();
            double[] dArr4 = this.f6728g;
            if (dArr4.length > 1) {
                this.f6734m = androidx.constraintlayout.core.motion.utils.b.a(0, dArr4, dArr);
            } else {
                this.f6734m = null;
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f6738a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f6739b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f6740c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f6741d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f6742e;

        public b(int i11, float f11, float f12, float f13, float f14) {
            this.f6738a = i11;
            this.f6739b = f14;
            this.f6740c = f12;
            this.f6741d = f11;
            this.f6742e = f13;
        }
    }

    public float a(float f11) {
        return (float) this.f6716b.b(f11);
    }

    public float b(float f11) {
        return (float) this.f6716b.a(f11);
    }

    protected void c(Object obj) {
    }

    public void d(int i11, int i12, String str, int i13, float f11, float f12, float f13, float f14) {
        this.f6721g.add(new b(i11, f11, f12, f13, f14));
        if (i13 != -1) {
            this.f6720f = i13;
        }
        this.f6718d = i12;
        this.f6719e = str;
    }

    public void e(int i11, int i12, String str, int i13, float f11, float f12, float f13, float f14, Object obj) {
        this.f6721g.add(new b(i11, f11, f12, f13, f14));
        if (i13 != -1) {
            this.f6720f = i13;
        }
        this.f6718d = i12;
        c(obj);
        this.f6719e = str;
    }

    public void f(String str) {
        this.f6717c = str;
    }

    public void g(float f11) {
        int size = this.f6721g.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f6721g, new Comparator<b>() { // from class: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(b bVar, b bVar2) {
                return Integer.compare(bVar.f6738a, bVar2.f6738a);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.f6716b = new a(this.f6718d, this.f6719e, this.f6720f, size);
        int i11 = 0;
        for (b bVar : this.f6721g) {
            float f12 = bVar.f6741d;
            dArr[i11] = ((double) f12) * 0.01d;
            double[] dArr3 = dArr2[i11];
            float f13 = bVar.f6739b;
            dArr3[0] = f13;
            float f14 = bVar.f6740c;
            dArr3[1] = f14;
            float f15 = bVar.f6742e;
            dArr3[2] = f15;
            this.f6716b.c(i11, bVar.f6738a, f12, f14, f15, f13);
            i11++;
            dArr2 = dArr2;
        }
        this.f6716b.d(f11);
        this.f6715a = androidx.constraintlayout.core.motion.utils.b.a(0, dArr, dArr2);
    }

    public boolean h() {
        return this.f6720f == 1;
    }

    public String toString() {
        String str = this.f6717c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (b bVar : this.f6721g) {
            str = str + "[" + bVar.f6738a + " , " + decimalFormat.format(bVar.f6739b) + "] ";
        }
        return str;
    }
}
