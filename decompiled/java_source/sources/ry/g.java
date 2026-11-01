package ry;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f74760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f74761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74762c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f74763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f74764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74765f;

    public g(String str, String str2, int i11) {
        this.f74760a = str;
        this.f74761b = str2;
        this.f74762c = i11;
    }

    public final int a() {
        return this.f74765f;
    }

    public final int b() {
        return this.f74764e;
    }

    public final long c() {
        return this.f74763d;
    }

    public final void d(int i11) {
        this.f74765f = i11;
    }

    public final void e(int i11) {
        this.f74764e = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.c(this.f74760a, gVar.f74760a) && Intrinsics.c(this.f74761b, gVar.f74761b) && this.f74762c == gVar.f74762c;
    }

    public final void f(long j11) {
        this.f74763d = j11;
    }

    public int hashCode() {
        String str = this.f74760a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f74761b;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f74762c;
    }

    public String toString() {
        return "DownloadStat(url=" + this.f74760a + ", taskId=" + this.f74761b + ", status=" + this.f74762c + ")";
    }
}
