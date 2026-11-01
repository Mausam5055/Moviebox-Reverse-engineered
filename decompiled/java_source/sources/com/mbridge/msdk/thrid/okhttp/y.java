package com.mbridge.msdk.thrid.okhttp;

import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public final class y implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final w f38391a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final u f38392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f38393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f38394d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final o f38395e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final p f38396f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final z f38397g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final y f38398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final y f38399i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final y f38400j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final long f38401k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final long f38402l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile c f38403m;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        w f38404a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        u f38405b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f38406c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f38407d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        o f38408e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        p.a f38409f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        z f38410g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        y f38411h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        y f38412i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        y f38413j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        long f38414k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        long f38415l;

        public a() {
            this.f38406c = -1;
            this.f38409f = new p.a();
        }

        a(y yVar) {
            this.f38406c = -1;
            this.f38404a = yVar.f38391a;
            this.f38405b = yVar.f38392b;
            this.f38406c = yVar.f38393c;
            this.f38407d = yVar.f38394d;
            this.f38408e = yVar.f38395e;
            this.f38409f = yVar.f38396f.a();
            this.f38410g = yVar.f38397g;
            this.f38411h = yVar.f38398h;
            this.f38412i = yVar.f38399i;
            this.f38413j = yVar.f38400j;
            this.f38414k = yVar.f38401k;
            this.f38415l = yVar.f38402l;
        }

        private void a(String str, y yVar) {
            if (yVar.f38397g != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (yVar.f38398h != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (yVar.f38399i != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (yVar.f38400j == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        private void b(y yVar) {
            if (yVar.f38397g != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public a a(int i11) {
            this.f38406c = i11;
            return this;
        }

        public a a(long j11) {
            this.f38415l = j11;
            return this;
        }

        public a a(o oVar) {
            this.f38408e = oVar;
            return this;
        }

        public a a(p pVar) {
            this.f38409f = pVar.a();
            return this;
        }

        public a a(u uVar) {
            this.f38405b = uVar;
            return this;
        }

        public a a(w wVar) {
            this.f38404a = wVar;
            return this;
        }

        public a a(y yVar) {
            if (yVar != null) {
                a("cacheResponse", yVar);
            }
            this.f38412i = yVar;
            return this;
        }

        public a a(z zVar) {
            this.f38410g = zVar;
            return this;
        }

        public a a(String str) {
            this.f38407d = str;
            return this;
        }

        public a a(String str, String str2) {
            this.f38409f.a(str, str2);
            return this;
        }

        public y a() {
            if (this.f38404a == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.f38405b == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.f38406c >= 0) {
                if (this.f38407d != null) {
                    return new y(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.f38406c);
        }

        public a b(long j11) {
            this.f38414k = j11;
            return this;
        }

        public a b(String str, String str2) {
            this.f38409f.c(str, str2);
            return this;
        }

        public a c(y yVar) {
            if (yVar != null) {
                a("networkResponse", yVar);
            }
            this.f38411h = yVar;
            return this;
        }

        public a d(y yVar) {
            if (yVar != null) {
                b(yVar);
            }
            this.f38413j = yVar;
            return this;
        }
    }

    y(a aVar) {
        this.f38391a = aVar.f38404a;
        this.f38392b = aVar.f38405b;
        this.f38393c = aVar.f38406c;
        this.f38394d = aVar.f38407d;
        this.f38395e = aVar.f38408e;
        this.f38396f = aVar.f38409f.a();
        this.f38397g = aVar.f38410g;
        this.f38398h = aVar.f38411h;
        this.f38399i = aVar.f38412i;
        this.f38400j = aVar.f38413j;
        this.f38401k = aVar.f38414k;
        this.f38402l = aVar.f38415l;
    }

    public String a(String str, String str2) {
        String strB = this.f38396f.b(str);
        return strB != null ? strB : str2;
    }

    public String b(String str) {
        return a(str, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        z zVar = this.f38397g;
        if (zVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        zVar.close();
    }

    public z d() {
        return this.f38397g;
    }

    public c h() {
        c cVar = this.f38403m;
        if (cVar != null) {
            return cVar;
        }
        c cVarA = c.a(this.f38396f);
        this.f38403m = cVarA;
        return cVarA;
    }

    public int k() {
        return this.f38393c;
    }

    public o l() {
        return this.f38395e;
    }

    public p m() {
        return this.f38396f;
    }

    public boolean n() {
        int i11 = this.f38393c;
        return i11 >= 200 && i11 < 300;
    }

    public a o() {
        return new a(this);
    }

    public y p() {
        return this.f38400j;
    }

    public long q() {
        return this.f38402l;
    }

    public w r() {
        return this.f38391a;
    }

    public long s() {
        return this.f38401k;
    }

    public String toString() {
        return "Response{protocol=" + this.f38392b + ", code=" + this.f38393c + ", message=" + this.f38394d + ", url=" + this.f38391a.g() + '}';
    }
}
