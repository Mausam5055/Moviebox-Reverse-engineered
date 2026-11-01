package com.google.android.exoplayer2.upstream.cache;

import java.util.Comparator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
public final class q implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f27383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TreeSet f27384b = new TreeSet(new Comparator() { // from class: com.google.android.exoplayer2.upstream.cache.p
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return q.g((h) obj, (h) obj2);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f27385c;

    public q(long j11) {
        this.f27383a = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(h hVar, h hVar2) {
        long j11 = hVar.f27342f;
        long j12 = hVar2.f27342f;
        if (j11 - j12 == 0) {
            return hVar.compareTo(hVar2);
        }
        return j11 < j12 ? -1 : 1;
    }

    private void h(Cache cache, long j11) {
        while (this.f27385c + j11 > this.f27383a && !this.f27384b.isEmpty()) {
            cache.h((h) this.f27384b.first());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.b
    public boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void b(Cache cache, h hVar) {
        this.f27384b.add(hVar);
        this.f27385c += hVar.f27339c;
        h(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.b
    public void c(Cache cache, String str, long j11, long j12) {
        if (j12 != -1) {
            h(cache, j12);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void d(Cache cache, h hVar) {
        this.f27384b.remove(hVar);
        this.f27385c -= hVar.f27339c;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void e(Cache cache, h hVar, h hVar2) {
        d(cache, hVar);
        b(cache, hVar2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.b
    public void onCacheInitialized() {
    }
}
