package com.transsion.transfer.androidasync.http.server;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.HttpUtil;
import com.transsion.transfer.androidasync.http.Protocol;
import com.transsion.transfer.androidasync.t;
import com.transsion.transfer.androidasync.v;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c extends t implements com.transsion.transfer.androidasync.http.server.b, bv.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f55440g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.transsion.transfer.androidasync.j f55442i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f55446m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    cv.a f55447n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Headers f55441h = new Headers();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HashMap f55443j = new HashMap();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private bv.a f55444k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    v.a f55445l = new b();

    class a implements bv.a {
        a() {
        }

        @Override // bv.a
        public void g(Exception exc) {
            c.this.g(exc);
        }
    }

    class b implements v.a {
        b() {
        }

        @Override // com.transsion.transfer.androidasync.v.a
        public void a(String str) {
            if (c.this.f55440g == null) {
                c.this.f55440g = str;
                if (c.this.f55440g.contains("HTTP/")) {
                    return;
                }
                c.this.W();
                c.this.f55442i.t(new bv.d.a());
                c.this.M(new IOException("data/header received was not not http"));
                return;
            }
            if (!"\r".equals(str)) {
                c.this.f55441h.b(str);
                return;
            }
            c cVar = c.this;
            com.transsion.transfer.androidasync.p pVarC = HttpUtil.c(cVar.f55442i, Protocol.HTTP_1_1, cVar.f55441h, true);
            c cVar2 = c.this;
            cVar2.f55447n = cVar2.U(cVar2.f55441h);
            c cVar3 = c.this;
            if (cVar3.f55447n == null) {
                cVar3.f55447n = HttpUtil.b(pVarC, cVar3.f55444k, c.this.f55441h);
                c cVar4 = c.this;
                if (cVar4.f55447n == null) {
                    cVar4.f55447n = cVar4.X(cVar4.f55441h);
                    c cVar5 = c.this;
                    if (cVar5.f55447n == null) {
                        cVar5.f55447n = new s(cVar5.f55441h.c(HttpHeaders.CONTENT_TYPE));
                    }
                }
            }
            c cVar6 = c.this;
            cVar6.f55447n.r(pVarC, cVar6.f55444k);
            c.this.V();
        }
    }

    @Override // com.transsion.transfer.androidasync.http.server.b
    public String B() {
        return this.f55446m;
    }

    @Override // com.transsion.transfer.androidasync.http.server.b
    public cv.a D() {
        return this.f55447n;
    }

    @Override // com.transsion.transfer.androidasync.q, com.transsion.transfer.androidasync.p
    public bv.d I() {
        return this.f55442i.I();
    }

    public String T() {
        return this.f55440g;
    }

    protected cv.a U(Headers headers) {
        return null;
    }

    protected abstract void V();

    protected void W() {
        System.out.println("not http!");
    }

    protected cv.a X(Headers headers) {
        return null;
    }

    void Y(com.transsion.transfer.androidasync.j jVar) {
        this.f55442i = jVar;
        v vVar = new v();
        this.f55442i.t(vVar);
        vVar.a(this.f55445l);
        this.f55442i.s(new bv.a.C0149a());
    }

    public void g(Exception exc) {
        M(exc);
    }

    @Override // com.transsion.transfer.androidasync.http.server.b
    public Headers getHeaders() {
        return this.f55441h;
    }

    @Override // com.transsion.transfer.androidasync.http.server.b
    public com.transsion.transfer.androidasync.j getSocket() {
        return this.f55442i;
    }

    @Override // com.transsion.transfer.androidasync.t, com.transsion.transfer.androidasync.p
    public boolean isPaused() {
        return this.f55442i.isPaused();
    }

    @Override // com.transsion.transfer.androidasync.t, com.transsion.transfer.androidasync.p
    public void pause() {
        this.f55442i.pause();
    }

    @Override // com.transsion.transfer.androidasync.t, com.transsion.transfer.androidasync.p
    public void resume() {
        this.f55442i.resume();
    }

    @Override // com.transsion.transfer.androidasync.q, com.transsion.transfer.androidasync.p
    public void t(bv.d dVar) {
        this.f55442i.t(dVar);
    }

    public String toString() {
        Headers headers = this.f55441h;
        return headers == null ? super.toString() : headers.g(this.f55440g);
    }
}
