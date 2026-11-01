package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public interface r {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Handler f24735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final r f24736b;

        public a(Handler handler, r rVar) {
            this.f24735a = rVar != null ? (Handler) com.google.android.exoplayer2.util.a.e(handler) : null;
            this.f24736b = rVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void A(int i11, long j11, long j12) {
            ((r) p0.j(this.f24736b)).h(i11, j11, j12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(Exception exc) {
            ((r) p0.j(this.f24736b)).g(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(Exception exc) {
            ((r) p0.j(this.f24736b)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(String str, long j11, long j12) {
            ((r) p0.j(this.f24736b)).onAudioDecoderInitialized(str, j11, j12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void u(String str) {
            ((r) p0.j(this.f24736b)).c(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void v(com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            ((r) p0.j(this.f24736b)).o(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void w(com.google.android.exoplayer2.decoder.e eVar) {
            ((r) p0.j(this.f24736b)).j(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void x(o1 o1Var, com.google.android.exoplayer2.decoder.g gVar) {
            ((r) p0.j(this.f24736b)).y(o1Var);
            ((r) p0.j(this.f24736b)).t(o1Var, gVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void y(long j11) {
            ((r) p0.j(this.f24736b)).d(j11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void z(boolean z10) {
            ((r) p0.j(this.f24736b)).onSkipSilenceEnabledChanged(z10);
        }

        public void B(final long j11) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24718a.y(j11);
                    }
                });
            }
        }

        public void C(final boolean z10) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24733a.z(z10);
                    }
                });
            }
        }

        public void D(final int i11, final long j11, final long j12) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24729a.A(i11, j11, j12);
                    }
                });
            }
        }

        public void k(final Exception exc) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24716a.r(exc);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24727a.s(exc);
                    }
                });
            }
        }

        public void m(final String str, final long j11, final long j12) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24712a.t(str, j11, j12);
                    }
                });
            }
        }

        public void n(final String str) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24703a.u(str);
                    }
                });
            }
        }

        public void o(final com.google.android.exoplayer2.decoder.e eVar) {
            eVar.c();
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24722a.v(eVar);
                    }
                });
            }
        }

        public void p(final com.google.android.exoplayer2.decoder.e eVar) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24720a.w(eVar);
                    }
                });
            }
        }

        public void q(final o1 o1Var, final com.google.android.exoplayer2.decoder.g gVar) {
            Handler handler = this.f24735a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24724a.x(o1Var, gVar);
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

    void j(com.google.android.exoplayer2.decoder.e eVar);

    void o(com.google.android.exoplayer2.decoder.e eVar);

    void onAudioDecoderInitialized(String str, long j11, long j12);

    void onSkipSilenceEnabledChanged(boolean z10);

    void t(o1 o1Var, com.google.android.exoplayer2.decoder.g gVar);

    void y(o1 o1Var);
}
