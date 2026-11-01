package androidx.media3.datasource.cache;

import java.util.Comparator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f10864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TreeSet f10865b = new TreeSet(new Comparator() { // from class: androidx.media3.datasource.cache.p
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return q.g((h) obj, (h) obj2);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f10866c;

    public q(long j11) {
        this.f10864a = j11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(h hVar, h hVar2) {
        long j11 = hVar.f10823f;
        long j12 = hVar2.f10823f;
        if (j11 - j12 == 0) {
            return hVar.compareTo(hVar2);
        }
        return j11 < j12 ? -1 : 1;
    }

    private void h(Cache cache, long j11) {
        while (this.f10866c + j11 > this.f10864a && !this.f10865b.isEmpty()) {
            cache.f((h) this.f10865b.first());
        }
    }

    @Override // androidx.media3.datasource.cache.b
    public boolean a() {
        return true;
    }

    @Override // androidx.media3.datasource.cache.Cache.a
    public void b(Cache cache, h hVar, h hVar2) {
        e(cache, hVar);
        c(cache, hVar2);
    }

    @Override // androidx.media3.datasource.cache.Cache.a
    public void c(Cache cache, h hVar) {
        this.f10865b.add(hVar);
        this.f10866c += hVar.f10820c;
        h(cache, 0L);
    }

    @Override // androidx.media3.datasource.cache.b
    public void d(Cache cache, String str, long j11, long j12) {
        if (j12 != -1) {
            h(cache, j12);
        }
    }

    @Override // androidx.media3.datasource.cache.Cache.a
    public void e(Cache cache, h hVar) {
        this.f10865b.remove(hVar);
        this.f10866c -= hVar.f10820c;
    }

    @Override // androidx.media3.datasource.cache.b
    public void onCacheInitialized() {
    }
}
