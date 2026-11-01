package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes3.dex */
public abstract class q {

    public static abstract class a {
        public abstract q a();

        public abstract a b(ComplianceData complianceData);

        public abstract a c(Integer num);

        public abstract a d(long j11);

        public abstract a e(long j11);

        public abstract a f(n nVar);

        public abstract a g(NetworkConnectionInfo networkConnectionInfo);

        abstract a h(byte[] bArr);

        abstract a i(String str);

        public abstract a j(long j11);
    }

    private static a a() {
        return new j.b();
    }

    public static a k(String str) {
        return a().i(str);
    }

    public static a l(byte[] bArr) {
        return a().h(bArr);
    }

    public abstract ComplianceData b();

    public abstract Integer c();

    public abstract long d();

    public abstract long e();

    public abstract n f();

    public abstract NetworkConnectionInfo g();

    public abstract byte[] h();

    public abstract String i();

    public abstract long j();
}
