package com.transsion.transfer.androidasync.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
abstract class l extends com.transsion.transfer.androidasync.t implements com.transsion.transfer.androidasync.p, k, g.i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private j f55377h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.transsion.transfer.androidasync.j f55378i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected Headers f55379j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f55381l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f55382m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f55383n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.transsion.transfer.androidasync.s f55385p;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private bv.a f55376g = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f55380k = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f55384o = true;

    class a implements bv.a {
        a() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            l.this.R(exc);
        }
    }

    class b implements bv.a {
        b() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            if (l.this.e() == null) {
                l.this.M(new ConnectionClosedException("connection closed before headers received.", exc));
                return;
            }
            if (exc != null) {
                l lVar = l.this;
                if (!lVar.f55380k) {
                    lVar.M(new ConnectionClosedException("connection closed before response completed.", exc));
                    return;
                }
            }
            l.this.M(exc);
        }
    }

    class c extends bv.d.a {
        c() {
        }

        @Override // bv.d.a, bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            super.F(pVar, byteBufferList);
            l.this.f55378i.close();
        }
    }

    public l(j jVar) {
        this.f55377h = jVar;
    }

    private void T() {
        this.f55378i.t(new c());
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public com.transsion.transfer.androidasync.s H() {
        return this.f55385p;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.transsion.transfer.androidasync.q
    public void M(Exception exc) {
        super.M(exc);
        T();
        this.f55378i.o(null);
        this.f55378i.p(null);
        this.f55378i.s(null);
        this.f55380k = true;
    }

    protected void P() {
    }

    protected void Q() {
        cv.a aVarE = this.f55377h.e();
        if (aVarE != null) {
            aVarE.C(this.f55377h, this.f55385p, new a());
        } else {
            R(null);
        }
    }

    protected abstract void R(Exception exc);

    void S(com.transsion.transfer.androidasync.j jVar) {
        this.f55378i = jVar;
        if (jVar == null) {
            return;
        }
        jVar.s(this.f55376g);
    }

    @Override // com.transsion.transfer.androidasync.t, com.transsion.transfer.androidasync.p, com.transsion.transfer.androidasync.s
    public AsyncServer a() {
        return this.f55378i.a();
    }

    @Override // com.transsion.transfer.androidasync.http.k, com.transsion.transfer.androidasync.http.g.i
    public int b() {
        return this.f55381l;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public g.i c(int i11) {
        this.f55381l = i11;
        return this;
    }

    @Override // com.transsion.transfer.androidasync.t, com.transsion.transfer.androidasync.p
    public void close() {
        super.close();
        T();
    }

    @Override // com.transsion.transfer.androidasync.http.k, com.transsion.transfer.androidasync.http.g.i
    public Headers e() {
        return this.f55379j;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public g.i f(com.transsion.transfer.androidasync.s sVar) {
        this.f55385p = sVar;
        return this;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public g.i k(String str) {
        this.f55382m = str;
        return this;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public g.i m(com.transsion.transfer.androidasync.p pVar) {
        N(pVar);
        return this;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public String protocol() {
        return this.f55382m;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public com.transsion.transfer.androidasync.j socket() {
        return this.f55378i;
    }

    public String toString() {
        Headers headers = this.f55379j;
        if (headers == null) {
            return super.toString();
        }
        return headers.g(this.f55382m + " " + this.f55381l + " " + this.f55383n);
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public g.i u(String str) {
        this.f55383n = str;
        return this;
    }

    @Override // com.transsion.transfer.androidasync.t, com.transsion.transfer.androidasync.q, com.transsion.transfer.androidasync.p
    public String v() {
        String string;
        Multimap semicolonDelimited = Multimap.parseSemicolonDelimited(e().c(HttpHeaders.CONTENT_TYPE));
        if (semicolonDelimited == null || (string = semicolonDelimited.getString("charset")) == null || !Charset.isSupported(string)) {
            return null;
        }
        return string;
    }

    @Override // com.transsion.transfer.androidasync.http.g.i
    public g.i y(Headers headers) {
        this.f55379j = headers;
        return this;
    }
}
