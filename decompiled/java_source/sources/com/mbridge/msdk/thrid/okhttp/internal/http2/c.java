package com.mbridge.msdk.thrid.okhttp.internal.http2;

import okhttp3.internal.http2.Header;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f38053d = com.mbridge.msdk.thrid.okio.f.c(":");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f38054e = com.mbridge.msdk.thrid.okio.f.c(Header.RESPONSE_STATUS_UTF8);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f38055f = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_METHOD_UTF8);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f38056g = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_PATH_UTF8);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f38057h = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_SCHEME_UTF8);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final com.mbridge.msdk.thrid.okio.f f38058i = com.mbridge.msdk.thrid.okio.f.c(Header.TARGET_AUTHORITY_UTF8);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okio.f f38059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.mbridge.msdk.thrid.okio.f f38060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f38061c;

    interface a {
    }

    public c(com.mbridge.msdk.thrid.okio.f fVar, com.mbridge.msdk.thrid.okio.f fVar2) {
        this.f38059a = fVar;
        this.f38060b = fVar2;
        this.f38061c = fVar.e() + 32 + fVar2.e();
    }

    public c(com.mbridge.msdk.thrid.okio.f fVar, String str) {
        this(fVar, com.mbridge.msdk.thrid.okio.f.c(str));
    }

    public c(String str, String str2) {
        this(com.mbridge.msdk.thrid.okio.f.c(str), com.mbridge.msdk.thrid.okio.f.c(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f38059a.equals(cVar.f38059a) && this.f38060b.equals(cVar.f38060b);
    }

    public int hashCode() {
        return ((this.f38059a.hashCode() + 527) * 31) + this.f38060b.hashCode();
    }

    public String toString() {
        return com.mbridge.msdk.thrid.okhttp.internal.c.a("%s: %s", this.f38059a.h(), this.f38060b.h());
    }
}
