package androidx.media3.exoplayer;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.media3.exoplayer.source.r.b f13388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f13389b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f13390c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f13391d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f13392e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f13393f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f13394g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f13395h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f13396i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f13397j;

    z2(androidx.media3.exoplayer.source.r.b bVar, long j11, long j12, long j13, long j14, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15 = true;
        androidx.media3.common.util.a.a(!z14 || z12);
        androidx.media3.common.util.a.a(!z13 || z12);
        if (z11 && (z12 || z13 || z14)) {
            z15 = false;
        }
        androidx.media3.common.util.a.a(z15);
        this.f13388a = bVar;
        this.f13389b = j11;
        this.f13390c = j12;
        this.f13391d = j13;
        this.f13392e = j14;
        this.f13393f = z10;
        this.f13394g = z11;
        this.f13395h = z12;
        this.f13396i = z13;
        this.f13397j = z14;
    }

    public z2 a(long j11) {
        return j11 == this.f13390c ? this : new z2(this.f13388a, this.f13389b, j11, this.f13391d, this.f13392e, this.f13393f, this.f13394g, this.f13395h, this.f13396i, this.f13397j);
    }

    public z2 b(long j11) {
        return j11 == this.f13389b ? this : new z2(this.f13388a, j11, this.f13390c, this.f13391d, this.f13392e, this.f13393f, this.f13394g, this.f13395h, this.f13396i, this.f13397j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z2.class != obj.getClass()) {
            return false;
        }
        z2 z2Var = (z2) obj;
        return this.f13389b == z2Var.f13389b && this.f13390c == z2Var.f13390c && this.f13391d == z2Var.f13391d && this.f13392e == z2Var.f13392e && this.f13393f == z2Var.f13393f && this.f13394g == z2Var.f13394g && this.f13395h == z2Var.f13395h && this.f13396i == z2Var.f13396i && this.f13397j == z2Var.f13397j && Objects.equals(this.f13388a, z2Var.f13388a);
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.f13388a.hashCode()) * 31) + ((int) this.f13389b)) * 31) + ((int) this.f13390c)) * 31) + ((int) this.f13391d)) * 31) + ((int) this.f13392e)) * 31) + (this.f13393f ? 1 : 0)) * 31) + (this.f13394g ? 1 : 0)) * 31) + (this.f13395h ? 1 : 0)) * 31) + (this.f13396i ? 1 : 0)) * 31) + (this.f13397j ? 1 : 0);
    }
}
