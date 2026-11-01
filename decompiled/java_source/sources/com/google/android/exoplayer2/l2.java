package com.google.android.exoplayer2;

import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class l2 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final com.google.android.exoplayer2.source.o.b f25242s = new com.google.android.exoplayer2.source.o.b(new Object());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k3 f25243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.o.b f25244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f25245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f25246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f25247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ExoPlaybackException f25248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f25249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t9.x f25250h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final la.r f25251i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f25252j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.o.b f25253k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f25254l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f25255m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final n2 f25256n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f25257o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile long f25258p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile long f25259q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile long f25260r;

    public l2(k3 k3Var, com.google.android.exoplayer2.source.o.b bVar, long j11, long j12, int i11, ExoPlaybackException exoPlaybackException, boolean z10, t9.x xVar, la.r rVar, List list, com.google.android.exoplayer2.source.o.b bVar2, boolean z11, int i12, n2 n2Var, long j13, long j14, long j15, boolean z12) {
        this.f25243a = k3Var;
        this.f25244b = bVar;
        this.f25245c = j11;
        this.f25246d = j12;
        this.f25247e = i11;
        this.f25248f = exoPlaybackException;
        this.f25249g = z10;
        this.f25250h = xVar;
        this.f25251i = rVar;
        this.f25252j = list;
        this.f25253k = bVar2;
        this.f25254l = z11;
        this.f25255m = i12;
        this.f25256n = n2Var;
        this.f25258p = j13;
        this.f25259q = j14;
        this.f25260r = j15;
        this.f25257o = z12;
    }

    public static l2 j(la.r rVar) {
        k3 k3Var = k3.f25151a;
        com.google.android.exoplayer2.source.o.b bVar = f25242s;
        return new l2(k3Var, bVar, C.TIME_UNSET, 0L, 1, null, false, t9.x.f76163d, rVar, ImmutableList.of(), bVar, false, 0, n2.f25473d, 0L, 0L, 0L, false);
    }

    public static com.google.android.exoplayer2.source.o.b k() {
        return f25242s;
    }

    public l2 a(boolean z10) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, this.f25247e, this.f25248f, z10, this.f25250h, this.f25251i, this.f25252j, this.f25253k, this.f25254l, this.f25255m, this.f25256n, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }

    public l2 b(com.google.android.exoplayer2.source.o.b bVar) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, this.f25247e, this.f25248f, this.f25249g, this.f25250h, this.f25251i, this.f25252j, bVar, this.f25254l, this.f25255m, this.f25256n, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }

    public l2 c(com.google.android.exoplayer2.source.o.b bVar, long j11, long j12, long j13, long j14, t9.x xVar, la.r rVar, List list) {
        return new l2(this.f25243a, bVar, j12, j13, this.f25247e, this.f25248f, this.f25249g, xVar, rVar, list, this.f25253k, this.f25254l, this.f25255m, this.f25256n, this.f25258p, j14, j11, this.f25257o);
    }

    public l2 d(boolean z10, int i11) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, this.f25247e, this.f25248f, this.f25249g, this.f25250h, this.f25251i, this.f25252j, this.f25253k, z10, i11, this.f25256n, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }

    public l2 e(ExoPlaybackException exoPlaybackException) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, this.f25247e, exoPlaybackException, this.f25249g, this.f25250h, this.f25251i, this.f25252j, this.f25253k, this.f25254l, this.f25255m, this.f25256n, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }

    public l2 f(n2 n2Var) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, this.f25247e, this.f25248f, this.f25249g, this.f25250h, this.f25251i, this.f25252j, this.f25253k, this.f25254l, this.f25255m, n2Var, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }

    public l2 g(int i11) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, i11, this.f25248f, this.f25249g, this.f25250h, this.f25251i, this.f25252j, this.f25253k, this.f25254l, this.f25255m, this.f25256n, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }

    public l2 h(boolean z10) {
        return new l2(this.f25243a, this.f25244b, this.f25245c, this.f25246d, this.f25247e, this.f25248f, this.f25249g, this.f25250h, this.f25251i, this.f25252j, this.f25253k, this.f25254l, this.f25255m, this.f25256n, this.f25258p, this.f25259q, this.f25260r, z10);
    }

    public l2 i(k3 k3Var) {
        return new l2(k3Var, this.f25244b, this.f25245c, this.f25246d, this.f25247e, this.f25248f, this.f25249g, this.f25250h, this.f25251i, this.f25252j, this.f25253k, this.f25254l, this.f25255m, this.f25256n, this.f25258p, this.f25259q, this.f25260r, this.f25257o);
    }
}
