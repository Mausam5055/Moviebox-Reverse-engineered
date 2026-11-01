package com.google.common.math;

import com.google.common.primitives.Doubles;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f30910a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double f30911b = 0.0d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private double f30912c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f30913d = Double.NaN;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f30914e = Double.NaN;

    static double g(double d11, double d12) {
        if (Doubles.f(d11)) {
            return d12;
        }
        if (Doubles.f(d12) || d11 == d12) {
            return d11;
        }
        return Double.NaN;
    }

    public void a(double d11) {
        long j11 = this.f30910a;
        if (j11 == 0) {
            this.f30910a = 1L;
            this.f30911b = d11;
            this.f30913d = d11;
            this.f30914e = d11;
            if (Doubles.f(d11)) {
                return;
            }
            this.f30912c = Double.NaN;
            return;
        }
        this.f30910a = j11 + 1;
        if (Doubles.f(d11) && Doubles.f(this.f30911b)) {
            double d12 = this.f30911b;
            double d13 = d11 - d12;
            double d14 = d12 + (d13 / this.f30910a);
            this.f30911b = d14;
            this.f30912c += d13 * (d11 - d14);
        } else {
            this.f30911b = g(this.f30911b, d11);
            this.f30912c = Double.NaN;
        }
        this.f30913d = Math.min(this.f30913d, d11);
        this.f30914e = Math.max(this.f30914e, d11);
    }

    public void b(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(((Number) it.next()).doubleValue());
        }
    }

    public void c(Iterator it) {
        while (it.hasNext()) {
            a(((Number) it.next()).doubleValue());
        }
    }

    public void d(double... dArr) {
        for (double d11 : dArr) {
            a(d11);
        }
    }

    public void e(int... iArr) {
        for (int i11 : iArr) {
            a(i11);
        }
    }

    public void f(long... jArr) {
        for (long j11 : jArr) {
            a(j11);
        }
    }

    public Stats h() {
        return new Stats(this.f30910a, this.f30911b, this.f30912c, this.f30913d, this.f30914e);
    }
}
