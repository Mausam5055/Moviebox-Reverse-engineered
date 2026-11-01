package androidx.media3.exoplayer.audio;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public interface x {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f11243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final x f11244b;

        public a(Handler handler, x xVar) {
            this.f11243a = xVar != null ? (Handler) androidx.media3.common.util.a.e(handler) : null;
            this.f11244b = xVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(String str) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void B(androidx.media3.exoplayer.j jVar) {
            jVar.c();
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).t(jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void C(androidx.media3.exoplayer.j jVar) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).n(jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void D(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).s(rVar, kVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void E(long j11) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).d(j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void F(boolean z10) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).onSkipSilenceEnabledChanged(z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void G(int i11, long j11, long j12) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).h(i11, j11, j12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(Exception exc) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).g(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(Exception exc) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(AudioSink.a aVar) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).j(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(AudioSink.a aVar) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).k(aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(String str, long j11, long j12) {
            ((x) androidx.media3.common.util.a1.i(this.f11244b)).onAudioDecoderInitialized(str, j11, j12);
        }

        public void H(final long j11) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11234a.E(j11);
                    }
                });
            }
        }

        public void I(final boolean z10) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11211a.F(z10);
                    }
                });
            }
        }

        public void J(final int i11, final long j11, final long j12) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11236a.G(i11, j11, j12);
                    }
                });
            }
        }

        public void m(final Exception exc) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11208a.v(exc);
                    }
                });
            }
        }

        public void n(final Exception exc) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11226a.w(exc);
                    }
                });
            }
        }

        public void o(final AudioSink.a aVar) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11214a.x(aVar);
                    }
                });
            }
        }

        public void p(final AudioSink.a aVar) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11240a.y(aVar);
                    }
                });
            }
        }

        public void q(final String str, final long j11, final long j12) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11218a.z(str, j11, j12);
                    }
                });
            }
        }

        public void r(final String str) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11222a.A(str);
                    }
                });
            }
        }

        public void s(final androidx.media3.exoplayer.j jVar) {
            jVar.c();
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11231a.B(jVar);
                    }
                });
            }
        }

        public void t(final androidx.media3.exoplayer.j jVar) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11224a.C(jVar);
                    }
                });
            }
        }

        public void u(final androidx.media3.common.r rVar, final androidx.media3.exoplayer.k kVar) {
            Handler handler = this.f11243a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11228a.D(rVar, kVar);
                    }
                });
            }
        }
    }

    void a(Exception exc);

    void c(String str);

    void d(long j11);

    void g(Exception exc);

    void h(int i11, long j11, long j12);

    void j(AudioSink.a aVar);

    void k(AudioSink.a aVar);

    void n(androidx.media3.exoplayer.j jVar);

    void onAudioDecoderInitialized(String str, long j11, long j12);

    void onSkipSilenceEnabledChanged(boolean z10);

    void s(androidx.media3.common.r rVar, androidx.media3.exoplayer.k kVar);

    void t(androidx.media3.exoplayer.j jVar);
}
