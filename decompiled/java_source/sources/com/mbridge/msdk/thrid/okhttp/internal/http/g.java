package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements r.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<r> f37992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.internal.connection.g f37993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f37994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.internal.connection.c f37995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f37996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w f37997f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.d f37998g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n f37999h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f38000i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f38001j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f38002k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f38003l;

    public g(List<r> list, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, c cVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2, int i11, w wVar, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar, int i12, int i13, int i14) {
        this.f37992a = list;
        this.f37995d = cVar2;
        this.f37993b = gVar;
        this.f37994c = cVar;
        this.f37996e = i11;
        this.f37997f = wVar;
        this.f37998g = dVar;
        this.f37999h = nVar;
        this.f38000i = i12;
        this.f38001j = i13;
        this.f38002k = i14;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public int a() {
        return this.f38000i;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public y a(w wVar) throws IOException {
        return a(wVar, this.f37993b, this.f37994c, this.f37995d);
    }

    public y a(w wVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, c cVar, com.mbridge.msdk.thrid.okhttp.internal.connection.c cVar2) throws IOException {
        if (this.f37996e >= this.f37992a.size()) {
            throw new AssertionError();
        }
        this.f38003l++;
        if (this.f37994c != null && !this.f37995d.a(wVar.g())) {
            throw new IllegalStateException("network interceptor " + this.f37992a.get(this.f37996e - 1) + " must retain the same host and port");
        }
        if (this.f37994c != null && this.f38003l > 1) {
            throw new IllegalStateException("network interceptor " + this.f37992a.get(this.f37996e - 1) + " must call proceed() exactly once");
        }
        g gVar2 = new g(this.f37992a, gVar, cVar, cVar2, this.f37996e + 1, wVar, this.f37998g, this.f37999h, this.f38000i, this.f38001j, this.f38002k);
        r rVar = this.f37992a.get(this.f37996e);
        y yVarA = rVar.a(gVar2);
        if (cVar != null && this.f37996e + 1 < this.f37992a.size() && gVar2.f38003l != 1) {
            throw new IllegalStateException("network interceptor " + rVar + " must call proceed() exactly once");
        }
        if (yVarA == null) {
            throw new NullPointerException("interceptor " + rVar + " returned null");
        }
        if (yVarA.d() != null) {
            return yVarA;
        }
        throw new IllegalStateException("interceptor " + rVar + " returned a response with no body");
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public int b() {
        return this.f38001j;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public int c() {
        return this.f38002k;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r.a
    public w d() {
        return this.f37997f;
    }

    public com.mbridge.msdk.thrid.okhttp.d e() {
        return this.f37998g;
    }

    public com.mbridge.msdk.thrid.okhttp.g f() {
        return this.f37995d;
    }

    public n g() {
        return this.f37999h;
    }

    public c h() {
        return this.f37994c;
    }

    public com.mbridge.msdk.thrid.okhttp.internal.connection.g i() {
        return this.f37993b;
    }
}
