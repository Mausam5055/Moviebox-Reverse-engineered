package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

/* JADX INFO: loaded from: classes4.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f32976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d[] f32977b;

    f(c cVar) {
        this.f32976a = new c(cVar);
        this.f32977b = new d[(cVar.e() - cVar.g()) + 1];
    }

    final c a() {
        return this.f32976a;
    }

    final d b(int i11) {
        return this.f32977b[e(i11)];
    }

    final d c(int i11) {
        d dVar;
        d dVar2;
        d dVarB = b(i11);
        if (dVarB != null) {
            return dVarB;
        }
        for (int i12 = 1; i12 < 5; i12++) {
            int iE = e(i11) - i12;
            if (iE >= 0 && (dVar2 = this.f32977b[iE]) != null) {
                return dVar2;
            }
            int iE2 = e(i11) + i12;
            d[] dVarArr = this.f32977b;
            if (iE2 < dVarArr.length && (dVar = dVarArr[iE2]) != null) {
                return dVar;
            }
        }
        return null;
    }

    final d[] d() {
        return this.f32977b;
    }

    final int e(int i11) {
        return i11 - this.f32976a.g();
    }

    final void f(int i11, d dVar) {
        this.f32977b[e(i11)] = dVar;
    }

    public String toString() {
        Formatter formatter = new Formatter();
        try {
            int i11 = 0;
            for (d dVar : this.f32977b) {
                if (dVar == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i11));
                    i11++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i11), Integer.valueOf(dVar.c()), Integer.valueOf(dVar.e()));
                    i11++;
                }
            }
            String string = formatter.toString();
            formatter.close();
            return string;
        } catch (Throwable th2) {
            try {
                formatter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
