package com.transsion.player.shorttv.preload;

import androidx.collection.s;
import androidx.media3.exoplayer.offline.DownloadRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f48510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DownloadRequest f48511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f48512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f48513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f48514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f48515g;

    public a(String id2, String url, DownloadRequest request, long j11, long j12, long j13, boolean z10) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(url, "url");
        Intrinsics.h(request, "request");
        this.f48509a = id2;
        this.f48510b = url;
        this.f48511c = request;
        this.f48512d = j11;
        this.f48513e = j12;
        this.f48514f = j13;
        this.f48515g = z10;
    }

    public final long a() {
        return this.f48512d;
    }

    public final long b() {
        return this.f48513e;
    }

    public final String c() {
        return this.f48509a;
    }

    public final long d() {
        return this.f48514f;
    }

    public final DownloadRequest e() {
        return this.f48511c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f48509a, aVar.f48509a) && Intrinsics.c(this.f48510b, aVar.f48510b) && Intrinsics.c(this.f48511c, aVar.f48511c) && this.f48512d == aVar.f48512d && this.f48513e == aVar.f48513e && this.f48514f == aVar.f48514f && this.f48515g == aVar.f48515g;
    }

    public final boolean f() {
        return this.f48515g;
    }

    public final void g(long j11) {
        this.f48512d = j11;
    }

    public final void h(long j11) {
        this.f48513e = j11;
    }

    public int hashCode() {
        return (((((((((((this.f48509a.hashCode() * 31) + this.f48510b.hashCode()) * 31) + this.f48511c.hashCode()) * 31) + s.a(this.f48512d)) * 31) + s.a(this.f48513e)) * 31) + s.a(this.f48514f)) * 31) + androidx.compose.foundation.e.a(this.f48515g);
    }

    public final void i(long j11) {
        this.f48514f = j11;
    }

    public String toString() {
        return "VideoDownloadBean(id=" + this.f48509a + ", url=" + this.f48510b + ", request=" + this.f48511c + ", contentLength=" + this.f48512d + ", downloadLength=" + this.f48513e + ", maxLength=" + this.f48514f + ", isAdd=" + this.f48515g + ")";
    }
}
