package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes3.dex */
abstract class n {

    public static abstract class a {
        public abstract n a();

        abstract a b(r8.c cVar);

        abstract a c(r8.d dVar);

        abstract a d(r8.g gVar);

        public abstract a e(o oVar);

        public abstract a f(String str);
    }

    n() {
    }

    public static a a() {
        return new c.b();
    }

    public abstract r8.c b();

    abstract r8.d c();

    public byte[] d() {
        return (byte[]) e().apply(c().c());
    }

    abstract r8.g e();

    public abstract o f();

    public abstract String g();
}
