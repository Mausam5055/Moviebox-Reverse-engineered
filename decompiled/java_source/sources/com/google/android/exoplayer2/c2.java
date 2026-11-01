package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
final class c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.o.b f24821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f24822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f24823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f24824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f24825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f24826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f24827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f24828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f24829i;

    c2(com.google.android.exoplayer2.source.o.b bVar, long j11, long j12, long j13, long j14, boolean z10, boolean z11, boolean z12, boolean z13) {
        boolean z14 = true;
        com.google.android.exoplayer2.util.a.a(!z13 || z11);
        com.google.android.exoplayer2.util.a.a(!z12 || z11);
        if (z10 && (z11 || z12 || z13)) {
            z14 = false;
        }
        com.google.android.exoplayer2.util.a.a(z14);
        this.f24821a = bVar;
        this.f24822b = j11;
        this.f24823c = j12;
        this.f24824d = j13;
        this.f24825e = j14;
        this.f24826f = z10;
        this.f24827g = z11;
        this.f24828h = z12;
        this.f24829i = z13;
    }

    public c2 a(long j11) {
        return j11 == this.f24823c ? this : new c2(this.f24821a, this.f24822b, j11, this.f24824d, this.f24825e, this.f24826f, this.f24827g, this.f24828h, this.f24829i);
    }

    public c2 b(long j11) {
        return j11 == this.f24822b ? this : new c2(this.f24821a, j11, this.f24823c, this.f24824d, this.f24825e, this.f24826f, this.f24827g, this.f24828h, this.f24829i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c2.class != obj.getClass()) {
            return false;
        }
        c2 c2Var = (c2) obj;
        return this.f24822b == c2Var.f24822b && this.f24823c == c2Var.f24823c && this.f24824d == c2Var.f24824d && this.f24825e == c2Var.f24825e && this.f24826f == c2Var.f24826f && this.f24827g == c2Var.f24827g && this.f24828h == c2Var.f24828h && this.f24829i == c2Var.f24829i && com.google.android.exoplayer2.util.p0.c(this.f24821a, c2Var.f24821a);
    }

    public int hashCode() {
        return ((((((((((((((((527 + this.f24821a.hashCode()) * 31) + ((int) this.f24822b)) * 31) + ((int) this.f24823c)) * 31) + ((int) this.f24824d)) * 31) + ((int) this.f24825e)) * 31) + (this.f24826f ? 1 : 0)) * 31) + (this.f24827g ? 1 : 0)) * 31) + (this.f24828h ? 1 : 0)) * 31) + (this.f24829i ? 1 : 0);
    }
}
