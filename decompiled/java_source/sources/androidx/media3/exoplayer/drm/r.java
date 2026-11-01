package androidx.media3.exoplayer.drm;

import android.os.Handler;
import androidx.media3.common.util.a1;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface r {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.media3.exoplayer.source.r.b f11608b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CopyOnWriteArrayList f11609c;

        /* JADX INFO: renamed from: androidx.media3.exoplayer.drm.r$a$a, reason: collision with other inner class name */
        private static final class C0096a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Handler f11610a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public r f11611b;

            public C0096a(Handler handler, r rVar) {
                this.f11610a = handler;
                this.f11611b = rVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i11, androidx.media3.exoplayer.source.r.b bVar) {
            this.f11609c = copyOnWriteArrayList;
            this.f11607a = i11;
            this.f11608b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(r rVar) {
            rVar.q(this.f11607a, this.f11608b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(r rVar) {
            rVar.w(this.f11607a, this.f11608b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(r rVar) {
            rVar.A(this.f11607a, this.f11608b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(r rVar, int i11) {
            rVar.r(this.f11607a, this.f11608b, i11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(r rVar, Exception exc) {
            rVar.x(this.f11607a, this.f11608b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(r rVar) {
            rVar.G(this.f11607a, this.f11608b);
        }

        public void g(Handler handler, r rVar) {
            androidx.media3.common.util.a.e(handler);
            androidx.media3.common.util.a.e(rVar);
            this.f11609c.add(new C0096a(handler, rVar));
        }

        public void h() {
            for (C0096a c0096a : this.f11609c) {
                final r rVar = c0096a.f11611b;
                a1.b1(c0096a.f11610a, new Runnable() { // from class: androidx.media3.exoplayer.drm.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11605a.n(rVar);
                    }
                });
            }
        }

        public void i() {
            for (C0096a c0096a : this.f11609c) {
                final r rVar = c0096a.f11611b;
                a1.b1(c0096a.f11610a, new Runnable() { // from class: androidx.media3.exoplayer.drm.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11601a.o(rVar);
                    }
                });
            }
        }

        public void j() {
            for (C0096a c0096a : this.f11609c) {
                final r rVar = c0096a.f11611b;
                a1.b1(c0096a.f11610a, new Runnable() { // from class: androidx.media3.exoplayer.drm.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11603a.p(rVar);
                    }
                });
            }
        }

        public void k(final int i11) {
            for (C0096a c0096a : this.f11609c) {
                final r rVar = c0096a.f11611b;
                a1.b1(c0096a.f11610a, new Runnable() { // from class: androidx.media3.exoplayer.drm.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11596a.q(rVar, i11);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (C0096a c0096a : this.f11609c) {
                final r rVar = c0096a.f11611b;
                a1.b1(c0096a.f11610a, new Runnable() { // from class: androidx.media3.exoplayer.drm.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11589a.r(rVar, exc);
                    }
                });
            }
        }

        public void m() {
            for (C0096a c0096a : this.f11609c) {
                final r rVar = c0096a.f11611b;
                a1.b1(c0096a.f11610a, new Runnable() { // from class: androidx.media3.exoplayer.drm.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11599a.s(rVar);
                    }
                });
            }
        }

        public void t(r rVar) {
            for (C0096a c0096a : this.f11609c) {
                if (c0096a.f11611b == rVar) {
                    this.f11609c.remove(c0096a);
                }
            }
        }

        public a u(int i11, androidx.media3.exoplayer.source.r.b bVar) {
            return new a(this.f11609c, i11, bVar);
        }
    }

    void A(int i11, androidx.media3.exoplayer.source.r.b bVar);

    void G(int i11, androidx.media3.exoplayer.source.r.b bVar);

    void q(int i11, androidx.media3.exoplayer.source.r.b bVar);

    void r(int i11, androidx.media3.exoplayer.source.r.b bVar, int i12);

    void w(int i11, androidx.media3.exoplayer.source.r.b bVar);

    void x(int i11, androidx.media3.exoplayer.source.r.b bVar, Exception exc);
}
