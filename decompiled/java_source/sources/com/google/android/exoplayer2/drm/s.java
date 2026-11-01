package com.google.android.exoplayer2.drm;

import android.os.Handler;
import com.google.android.exoplayer2.util.p0;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public interface s {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f25012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.google.android.exoplayer2.source.o.b f25013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CopyOnWriteArrayList f25014c;

        /* JADX INFO: renamed from: com.google.android.exoplayer2.drm.s$a$a, reason: collision with other inner class name */
        private static final class C0366a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Handler f25015a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public s f25016b;

            public C0366a(Handler handler, s sVar) {
                this.f25015a = handler;
                this.f25016b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i11, com.google.android.exoplayer2.source.o.b bVar) {
            this.f25014c = copyOnWriteArrayList;
            this.f25012a = i11;
            this.f25013b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(s sVar) {
            sVar.B(this.f25012a, this.f25013b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(s sVar) {
            sVar.r(this.f25012a, this.f25013b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(s sVar) {
            sVar.F(this.f25012a, this.f25013b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(s sVar, int i11) {
            sVar.s(this.f25012a, this.f25013b);
            sVar.D(this.f25012a, this.f25013b, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(s sVar, Exception exc) {
            sVar.y(this.f25012a, this.f25013b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(s sVar) {
            sVar.E(this.f25012a, this.f25013b);
        }

        public void g(Handler handler, s sVar) {
            com.google.android.exoplayer2.util.a.e(handler);
            com.google.android.exoplayer2.util.a.e(sVar);
            this.f25014c.add(new C0366a(handler, sVar));
        }

        public void h() {
            for (C0366a c0366a : this.f25014c) {
                final s sVar = c0366a.f25016b;
                p0.K0(c0366a.f25015a, new Runnable() { // from class: com.google.android.exoplayer2.drm.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25010a.n(sVar);
                    }
                });
            }
        }

        public void i() {
            for (C0366a c0366a : this.f25014c) {
                final s sVar = c0366a.f25016b;
                p0.K0(c0366a.f25015a, new Runnable() { // from class: com.google.android.exoplayer2.drm.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25006a.o(sVar);
                    }
                });
            }
        }

        public void j() {
            for (C0366a c0366a : this.f25014c) {
                final s sVar = c0366a.f25016b;
                p0.K0(c0366a.f25015a, new Runnable() { // from class: com.google.android.exoplayer2.drm.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25008a.p(sVar);
                    }
                });
            }
        }

        public void k(final int i11) {
            for (C0366a c0366a : this.f25014c) {
                final s sVar = c0366a.f25016b;
                p0.K0(c0366a.f25015a, new Runnable() { // from class: com.google.android.exoplayer2.drm.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25003a.q(sVar, i11);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (C0366a c0366a : this.f25014c) {
                final s sVar = c0366a.f25016b;
                p0.K0(c0366a.f25015a, new Runnable() { // from class: com.google.android.exoplayer2.drm.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24998a.r(sVar, exc);
                    }
                });
            }
        }

        public void m() {
            for (C0366a c0366a : this.f25014c) {
                final s sVar = c0366a.f25016b;
                p0.K0(c0366a.f25015a, new Runnable() { // from class: com.google.android.exoplayer2.drm.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25001a.s(sVar);
                    }
                });
            }
        }

        public void t(s sVar) {
            for (C0366a c0366a : this.f25014c) {
                if (c0366a.f25016b == sVar) {
                    this.f25014c.remove(c0366a);
                }
            }
        }

        public a u(int i11, com.google.android.exoplayer2.source.o.b bVar) {
            return new a(this.f25014c, i11, bVar);
        }
    }

    void B(int i11, com.google.android.exoplayer2.source.o.b bVar);

    void D(int i11, com.google.android.exoplayer2.source.o.b bVar, int i12);

    void E(int i11, com.google.android.exoplayer2.source.o.b bVar);

    void F(int i11, com.google.android.exoplayer2.source.o.b bVar);

    void r(int i11, com.google.android.exoplayer2.source.o.b bVar);

    void s(int i11, com.google.android.exoplayer2.source.o.b bVar);

    void y(int i11, com.google.android.exoplayer2.source.o.b bVar, Exception exc);
}
