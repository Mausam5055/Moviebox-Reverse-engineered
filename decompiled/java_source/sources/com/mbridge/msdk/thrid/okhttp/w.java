package com.mbridge.msdk.thrid.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final q f38377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f38378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final p f38379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final x f38380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Map<Class<?>, Object> f38381e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile c f38382f;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        q f38383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f38384b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        p.a f38385c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        x f38386d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Map<Class<?>, Object> f38387e;

        public a() {
            this.f38387e = Collections.emptyMap();
            this.f38384b = "GET";
            this.f38385c = new p.a();
        }

        a(w wVar) {
            this.f38387e = Collections.emptyMap();
            this.f38383a = wVar.f38377a;
            this.f38384b = wVar.f38378b;
            this.f38386d = wVar.f38380d;
            this.f38387e = wVar.f38381e.isEmpty() ? Collections.emptyMap() : new LinkedHashMap<>(wVar.f38381e);
            this.f38385c = wVar.f38379c.a();
        }

        public a a(c cVar) {
            String string = cVar.toString();
            return string.isEmpty() ? a(HttpHeaders.CACHE_CONTROL) : b(HttpHeaders.CACHE_CONTROL, string);
        }

        public a a(p pVar) {
            this.f38385c = pVar.a();
            return this;
        }

        public a a(q qVar) {
            if (qVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f38383a = qVar;
            return this;
        }

        public a a(x xVar) {
            return a("DELETE", xVar);
        }

        public a a(String str) {
            this.f38385c.b(str);
            return this;
        }

        public a a(String str, x xVar) {
            if (str == null) {
                throw new NullPointerException("method == null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (xVar != null && !com.mbridge.msdk.thrid.okhttp.internal.http.f.a(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (xVar != null || !com.mbridge.msdk.thrid.okhttp.internal.http.f.d(str)) {
                this.f38384b = str;
                this.f38386d = xVar;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        public a a(String str, String str2) {
            this.f38385c.a(str, str2);
            return this;
        }

        public w a() {
            if (this.f38383a != null) {
                return new w(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a b() {
            return a(com.mbridge.msdk.thrid.okhttp.internal.c.f37904d);
        }

        public a b(x xVar) {
            return a("PATCH", xVar);
        }

        public a b(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            return a(q.b(str));
        }

        public a b(String str, String str2) {
            this.f38385c.c(str, str2);
            return this;
        }

        public a c() {
            return a("GET", (x) null);
        }

        public a c(x xVar) {
            return a("POST", xVar);
        }

        public a d() {
            return a("HEAD", (x) null);
        }

        public a d(x xVar) {
            return a("PUT", xVar);
        }
    }

    w(a aVar) {
        this.f38377a = aVar.f38383a;
        this.f38378b = aVar.f38384b;
        this.f38379c = aVar.f38385c.a();
        this.f38380d = aVar.f38386d;
        this.f38381e = com.mbridge.msdk.thrid.okhttp.internal.c.a(aVar.f38387e);
    }

    public x a() {
        return this.f38380d;
    }

    public String a(String str) {
        return this.f38379c.b(str);
    }

    public c b() {
        c cVar = this.f38382f;
        if (cVar != null) {
            return cVar;
        }
        c cVarA = c.a(this.f38379c);
        this.f38382f = cVarA;
        return cVarA;
    }

    public p c() {
        return this.f38379c;
    }

    public boolean d() {
        return this.f38377a.h();
    }

    public String e() {
        return this.f38378b;
    }

    public a f() {
        return new a(this);
    }

    public q g() {
        return this.f38377a;
    }

    public String toString() {
        return "Request{method=" + this.f38378b + ", url=" + this.f38377a + ", tags=" + this.f38381e + '}';
    }
}
