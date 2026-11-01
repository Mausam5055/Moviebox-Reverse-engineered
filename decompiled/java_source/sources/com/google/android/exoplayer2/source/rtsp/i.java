package com.google.android.exoplayer2.source.rtsp;

import java.util.Comparator;
import java.util.TreeSet;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes3.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TreeSet f26419a = new TreeSet(new Comparator() { // from class: com.google.android.exoplayer2.source.rtsp.h
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return i.d((i.a) obj, (i.a) obj2);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f26420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f26421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f26422d;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final g f26423a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f26424b;

        public a(g gVar, long j11) {
            this.f26423a = gVar;
            this.f26424b = j11;
        }
    }

    public i() {
        g();
    }

    private synchronized void b(a aVar) {
        this.f26420b = aVar.f26423a.f26379g;
        this.f26419a.add(aVar);
    }

    private static int c(int i11, int i12) {
        int iMin;
        int i13 = i11 - i12;
        if (Math.abs(i13) <= 1000 || (iMin = (Math.min(i11, i12) - Math.max(i11, i12)) + Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 1000) {
            return i13;
        }
        return i11 < i12 ? iMin : -iMin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int d(a aVar, a aVar2) {
        return c(aVar.f26423a.f26379g, aVar2.f26423a.f26379g);
    }

    public synchronized boolean e(g gVar, long j11) {
        if (this.f26419a.size() >= 5000) {
            throw new IllegalStateException("Queue size limit of 5000 reached.");
        }
        int i11 = gVar.f26379g;
        if (!this.f26422d) {
            g();
            this.f26421c = g.c(i11);
            this.f26422d = true;
            b(new a(gVar, j11));
            return true;
        }
        if (Math.abs(c(i11, g.b(this.f26420b))) < 1000) {
            if (c(i11, this.f26421c) <= 0) {
                return false;
            }
            b(new a(gVar, j11));
            return true;
        }
        this.f26421c = g.c(i11);
        this.f26419a.clear();
        b(new a(gVar, j11));
        return true;
    }

    public synchronized g f(long j11) {
        if (this.f26419a.isEmpty()) {
            return null;
        }
        a aVar = (a) this.f26419a.first();
        int i11 = aVar.f26423a.f26379g;
        if (i11 != g.b(this.f26421c) && j11 < aVar.f26424b) {
            return null;
        }
        this.f26419a.pollFirst();
        this.f26421c = i11;
        return aVar.f26423a;
    }

    public synchronized void g() {
        this.f26419a.clear();
        this.f26422d = false;
        this.f26421c = -1;
        this.f26420b = -1;
    }
}
