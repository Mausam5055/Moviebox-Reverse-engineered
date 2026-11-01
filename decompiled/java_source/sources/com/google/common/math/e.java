package com.google.common.math;

import com.google.common.base.m;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final double f30894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final double f30895b;

        private b(double d11, double d12) {
            this.f30894a = d11;
            this.f30895b = d12;
        }

        public e a(double d11) {
            m.d(!Double.isNaN(d11));
            return com.google.common.math.c.c(d11) ? new d(d11, this.f30895b - (this.f30894a * d11)) : new C0414e(this.f30894a);
        }
    }

    private static final class c extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f30896a = new c();

        private c() {
        }

        public String toString() {
            return "NaN";
        }
    }

    private static final class d extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final double f30897a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final double f30898b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e f30899c = null;

        d(double d11, double d12) {
            this.f30897a = d11;
            this.f30898b = d12;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f30897a), Double.valueOf(this.f30898b));
        }
    }

    /* JADX INFO: renamed from: com.google.common.math.e$e, reason: collision with other inner class name */
    private static final class C0414e extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final double f30900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        e f30901b = null;

        C0414e(double d11) {
            this.f30900a = d11;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f30900a));
        }
    }

    public static e a() {
        return c.f30896a;
    }

    public static e b(double d11) {
        m.d(com.google.common.math.c.c(d11));
        return new d(0.0d, d11);
    }

    public static b c(double d11, double d12) {
        m.d(com.google.common.math.c.c(d11) && com.google.common.math.c.c(d12));
        return new b(d11, d12);
    }

    public static e d(double d11) {
        m.d(com.google.common.math.c.c(d11));
        return new C0414e(d11);
    }
}
