package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class h extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    double f6795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    double f6796e;

    h(String str) {
        this.f6769a = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.f6795d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i11 = iIndexOf2 + 1;
        this.f6796e = Double.parseDouble(str.substring(i11, str.indexOf(44, i11)).trim());
    }

    private double d(double d11) {
        double d12 = this.f6796e;
        if (d11 < d12) {
            double d13 = this.f6795d;
            return ((d13 * d12) * d12) / ((((d12 - d11) * d13) + d11) * ((d13 * (d12 - d11)) + d11));
        }
        double d14 = this.f6795d;
        return (((d12 - 1.0d) * d14) * (d12 - 1.0d)) / (((((-d14) * (d12 - d11)) - d11) + 1.0d) * ((((-d14) * (d12 - d11)) - d11) + 1.0d));
    }

    private double e(double d11) {
        double d12 = this.f6796e;
        return d11 < d12 ? (d12 * d11) / (d11 + (this.f6795d * (d12 - d11))) : ((1.0d - d12) * (d11 - 1.0d)) / ((1.0d - d11) - (this.f6795d * (d12 - d11)));
    }

    @Override // androidx.constraintlayout.core.motion.utils.c
    public double a(double d11) {
        return e(d11);
    }

    @Override // androidx.constraintlayout.core.motion.utils.c
    public double b(double d11) {
        return d(d11);
    }
}
