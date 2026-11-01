package com.transsion.transfer.androidasync.http;

/* JADX INFO: loaded from: classes6.dex */
public interface g {

    public static class a extends e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public bv.b f55352c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public com.transsion.transfer.androidasync.future.a f55353d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f55354e;
    }

    public static class b extends d {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public com.transsion.transfer.androidasync.p f55355j;
    }

    public static class c extends a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.transsion.transfer.androidasync.j f55356f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public i f55357g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public bv.a f55358h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public bv.a f55359i;
    }

    public static class d extends f {
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.transsion.transfer.androidasync.util.e f55360a = new com.transsion.transfer.androidasync.util.e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public j f55361b;
    }

    public static class f extends c {
    }

    /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.g$g, reason: collision with other inner class name */
    public static class C0675g extends h {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Exception f55362k;
    }

    public static class h extends b {
    }

    public interface i {
        com.transsion.transfer.androidasync.s H();

        int b();

        i c(int i11);

        Headers e();

        i f(com.transsion.transfer.androidasync.s sVar);

        i k(String str);

        i m(com.transsion.transfer.androidasync.p pVar);

        String protocol();

        com.transsion.transfer.androidasync.j socket();

        i u(String str);

        i y(Headers headers);
    }

    void a(e eVar);

    void b(C0675g c0675g);

    void c(f fVar);

    void d(b bVar);

    com.transsion.transfer.androidasync.future.a e(a aVar);

    boolean f(c cVar);

    void g(d dVar);

    j h(h hVar);
}
