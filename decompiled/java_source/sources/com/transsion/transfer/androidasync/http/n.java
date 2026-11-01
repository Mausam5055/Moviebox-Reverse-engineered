package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.text.TextUtils;
import com.transsion.transfer.androidasync.AsyncSSLSocketWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes6.dex */
public class n extends t {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected SSLContext f55389j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected TrustManager[] f55390k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected HostnameVerifier f55391l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected List f55392m;

    class a implements AsyncSSLSocketWrapper.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.b f55393a;

        a(bv.b bVar) {
            this.f55393a = bVar;
        }

        @Override // com.transsion.transfer.androidasync.AsyncSSLSocketWrapper.g
        public void a(Exception exc, com.transsion.transfer.androidasync.a aVar) {
            this.f55393a.a(exc, aVar);
        }
    }

    class b implements bv.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.b f55395a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f55396b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g.a f55397c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Uri f55398d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f55399e;

        class a implements bv.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.transsion.transfer.androidasync.j f55401a;

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.n$b$a$a, reason: collision with other inner class name */
            class C0676a implements com.transsion.transfer.androidasync.v.a {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                String f55403a;

                C0676a() {
                }

                @Override // com.transsion.transfer.androidasync.v.a
                public void a(String str) {
                    b.this.f55397c.f55361b.u(str);
                    if (this.f55403a != null) {
                        if (TextUtils.isEmpty(str.trim())) {
                            a.this.f55401a.t(null);
                            a.this.f55401a.s(null);
                            a aVar = a.this;
                            b bVar = b.this;
                            n.this.E(aVar.f55401a, bVar.f55397c, bVar.f55398d, bVar.f55399e, bVar.f55395a);
                            return;
                        }
                        return;
                    }
                    String strTrim = str.trim();
                    this.f55403a = strTrim;
                    if (strTrim.matches("HTTP/1.\\d 2\\d\\d .*")) {
                        return;
                    }
                    a.this.f55401a.t(null);
                    a.this.f55401a.s(null);
                    b.this.f55395a.a(new IOException("non 2xx status line: " + this.f55403a), a.this.f55401a);
                }
            }

            /* JADX INFO: renamed from: com.transsion.transfer.androidasync.http.n$b$a$b, reason: collision with other inner class name */
            class C0677b implements bv.a {
                C0677b() {
                }

                @Override // bv.a
                public void g(Exception exc) {
                    if (!a.this.f55401a.isOpen() && exc == null) {
                        exc = new IOException("socket closed before proxy connect response");
                    }
                    a aVar = a.this;
                    b.this.f55395a.a(exc, aVar.f55401a);
                }
            }

            a(com.transsion.transfer.androidasync.j jVar) {
                this.f55401a = jVar;
            }

            @Override // bv.a
            public void g(Exception exc) {
                if (exc != null) {
                    b.this.f55395a.a(exc, this.f55401a);
                    return;
                }
                com.transsion.transfer.androidasync.v vVar = new com.transsion.transfer.androidasync.v();
                vVar.a(new C0676a());
                this.f55401a.t(vVar);
                this.f55401a.s(new C0677b());
            }
        }

        b(bv.b bVar, boolean z10, g.a aVar, Uri uri, int i11) {
            this.f55395a = bVar;
            this.f55396b = z10;
            this.f55397c = aVar;
            this.f55398d = uri;
            this.f55399e = i11;
        }

        @Override // bv.b
        public void a(Exception exc, com.transsion.transfer.androidasync.j jVar) {
            if (exc != null) {
                this.f55395a.a(exc, jVar);
                return;
            }
            if (!this.f55396b) {
                n.this.E(jVar, this.f55397c, this.f55398d, this.f55399e, this.f55395a);
                return;
            }
            String str = String.format(Locale.ENGLISH, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n", this.f55398d.getHost(), Integer.valueOf(this.f55399e), this.f55398d.getHost());
            this.f55397c.f55361b.u("Proxying: " + str);
            com.transsion.transfer.androidasync.a0.h(jVar, str.getBytes(), new a(jVar));
        }
    }

    public n(AsyncHttpClient asyncHttpClient) {
        super(asyncHttpClient, "https", 443);
        this.f55392m = new ArrayList();
    }

    public void A(m mVar) {
        this.f55392m.add(mVar);
    }

    protected SSLEngine B(g.a aVar, String str, int i11) {
        SSLContext sSLContextD = D();
        Iterator it = this.f55392m.iterator();
        SSLEngine sSLEngineA = null;
        while (it.hasNext() && (sSLEngineA = ((m) it.next()).a(sSLContextD, str, i11)) == null) {
        }
        Iterator it2 = this.f55392m.iterator();
        while (it2.hasNext()) {
            ((m) it2.next()).b(sSLEngineA, aVar, str, i11);
        }
        return sSLEngineA;
    }

    protected AsyncSSLSocketWrapper.g C(g.a aVar, bv.b bVar) {
        return new a(bVar);
    }

    public SSLContext D() {
        SSLContext sSLContext = this.f55389j;
        return sSLContext != null ? sSLContext : AsyncSSLSocketWrapper.q();
    }

    protected void E(com.transsion.transfer.androidasync.j jVar, g.a aVar, Uri uri, int i11, bv.b bVar) {
        AsyncSSLSocketWrapper.w(jVar, uri.getHost(), i11, B(aVar, uri.getHost(), i11), this.f55390k, this.f55391l, true, C(aVar, bVar));
    }

    @Override // com.transsion.transfer.androidasync.http.t
    protected bv.b z(g.a aVar, Uri uri, int i11, boolean z10, bv.b bVar) {
        return new b(bVar, z10, aVar, uri, i11);
    }
}
