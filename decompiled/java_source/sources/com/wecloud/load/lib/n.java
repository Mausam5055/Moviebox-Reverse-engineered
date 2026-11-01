package com.wecloud.load.lib;

import androidx.collection.s;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class n {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f60852m = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f60853a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f60854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f60855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f60856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f60857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f60858f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f60859g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f60860h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f60861i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final long f60862j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final long f60863k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f60864l;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public n(String url, String method, boolean z10, int i11, String serverIp, String errorMessage, int i12, Map httpHeaders, String httpBody, long j11, long j12, String httpProtocol) {
        Intrinsics.h(url, "url");
        Intrinsics.h(method, "method");
        Intrinsics.h(serverIp, "serverIp");
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(httpHeaders, "httpHeaders");
        Intrinsics.h(httpBody, "httpBody");
        Intrinsics.h(httpProtocol, "httpProtocol");
        this.f60853a = url;
        this.f60854b = method;
        this.f60855c = z10;
        this.f60856d = i11;
        this.f60857e = serverIp;
        this.f60858f = errorMessage;
        this.f60859g = i12;
        this.f60860h = httpHeaders;
        this.f60861i = httpBody;
        this.f60862j = j11;
        this.f60863k = j12;
        this.f60864l = httpProtocol;
    }

    public final n a(String url, String method, boolean z10, int i11, String serverIp, String errorMessage, int i12, Map httpHeaders, String httpBody, long j11, long j12, String httpProtocol) {
        Intrinsics.h(url, "url");
        Intrinsics.h(method, "method");
        Intrinsics.h(serverIp, "serverIp");
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(httpHeaders, "httpHeaders");
        Intrinsics.h(httpBody, "httpBody");
        Intrinsics.h(httpProtocol, "httpProtocol");
        return new n(url, method, z10, i11, serverIp, errorMessage, i12, httpHeaders, httpBody, j11, j12, httpProtocol);
    }

    public final long c() {
        return this.f60863k;
    }

    public final int d() {
        return this.f60859g;
    }

    public final String e() {
        return this.f60858f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.c(this.f60853a, nVar.f60853a) && Intrinsics.c(this.f60854b, nVar.f60854b) && this.f60855c == nVar.f60855c && this.f60856d == nVar.f60856d && Intrinsics.c(this.f60857e, nVar.f60857e) && Intrinsics.c(this.f60858f, nVar.f60858f) && this.f60859g == nVar.f60859g && Intrinsics.c(this.f60860h, nVar.f60860h) && Intrinsics.c(this.f60861i, nVar.f60861i) && this.f60862j == nVar.f60862j && this.f60863k == nVar.f60863k && Intrinsics.c(this.f60864l, nVar.f60864l);
    }

    public final String f() {
        return this.f60861i;
    }

    public final Map g() {
        return this.f60860h;
    }

    public final String h() {
        return this.f60864l;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.f60853a.hashCode() * 31) + this.f60854b.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f60855c)) * 31) + this.f60856d) * 31) + this.f60857e.hashCode()) * 31) + this.f60858f.hashCode()) * 31) + this.f60859g) * 31) + this.f60860h.hashCode()) * 31) + this.f60861i.hashCode()) * 31) + s.a(this.f60862j)) * 31) + s.a(this.f60863k)) * 31) + this.f60864l.hashCode();
    }

    public final String i() {
        return this.f60854b;
    }

    public final long j() {
        return this.f60862j;
    }

    public final String k() {
        return this.f60857e;
    }

    public final int l() {
        return this.f60856d;
    }

    public final boolean m() {
        return this.f60855c;
    }

    public final String n() {
        return this.f60853a;
    }

    public String toString() {
        return "ProbeResult(url=" + this.f60853a + ", method=" + this.f60854b + ", success=" + this.f60855c + ", statusCode=" + this.f60856d + ", serverIp=" + this.f60857e + ", errorMessage=" + this.f60858f + ", errorCode=" + this.f60859g + ", httpHeaders=" + this.f60860h + ", httpBody=" + this.f60861i + ", requestTime=" + this.f60862j + ", duration=" + this.f60863k + ", httpProtocol=" + this.f60864l + ")";
    }
}
