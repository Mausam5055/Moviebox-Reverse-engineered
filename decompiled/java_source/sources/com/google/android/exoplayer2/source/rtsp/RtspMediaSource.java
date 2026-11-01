package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.m1;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.v1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class RtspMediaSource extends com.google.android.exoplayer2.source.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v1 f26287h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final c.a f26288i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f26289j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Uri f26290k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final SocketFactory f26291l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f26292m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f26294o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f26295p;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f26293n = C.TIME_UNSET;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f26296q = true;

    public static final class Factory implements com.google.android.exoplayer2.source.o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f26297a = 8000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f26298b = "ExoPlayerLib/2.17.1";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SocketFactory f26299c = SocketFactory.getDefault();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f26300d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f26301e;

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public RtspMediaSource a(v1 v1Var) {
            com.google.android.exoplayer2.util.a.e(v1Var.f27709b);
            return new RtspMediaSource(v1Var, this.f26300d ? new j0(this.f26297a) : new l0(this.f26297a), this.f26298b, this.f26299c, this.f26301e);
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Factory b(com.google.android.exoplayer2.drm.x xVar) {
            return this;
        }

        @Override // com.google.android.exoplayer2.source.o.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Factory c(com.google.android.exoplayer2.upstream.z zVar) {
            return this;
        }
    }

    public static final class RtspPlaybackException extends IOException {
        public RtspPlaybackException(String str) {
            super(str);
        }

        public RtspPlaybackException(String str, Throwable th2) {
            super(str, th2);
        }

        public RtspPlaybackException(Throwable th2) {
            super(th2);
        }
    }

    class a implements p.c {
        a() {
        }

        @Override // com.google.android.exoplayer2.source.rtsp.p.c
        public void a() {
            RtspMediaSource.this.f26294o = false;
            RtspMediaSource.this.J();
        }

        @Override // com.google.android.exoplayer2.source.rtsp.p.c
        public void b(d0 d0Var) {
            RtspMediaSource.this.f26293n = p0.B0(d0Var.a());
            RtspMediaSource.this.f26294o = !d0Var.c();
            RtspMediaSource.this.f26295p = d0Var.c();
            RtspMediaSource.this.f26296q = false;
            RtspMediaSource.this.J();
        }
    }

    class b extends com.google.android.exoplayer2.source.j {
        b(RtspMediaSource rtspMediaSource, k3 k3Var) {
            super(k3Var);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.b k(int i11, k3.b bVar, boolean z10) {
            super.k(i11, bVar, z10);
            bVar.f25159f = true;
            return bVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.k3
        public k3.d s(int i11, k3.d dVar, long j11) {
            super.s(i11, dVar, j11);
            dVar.f25180l = true;
            return dVar;
        }
    }

    static {
        m1.a("goog.exo.rtsp");
    }

    RtspMediaSource(v1 v1Var, c.a aVar, String str, SocketFactory socketFactory, boolean z10) {
        this.f26287h = v1Var;
        this.f26288i = aVar;
        this.f26289j = str;
        this.f26290k = ((v1.h) com.google.android.exoplayer2.util.a.e(v1Var.f27709b)).f27772a;
        this.f26291l = socketFactory;
        this.f26292m = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        k3 uVar = new t9.u(this.f26293n, this.f26294o, false, this.f26295p, null, this.f26287h);
        if (this.f26296q) {
            uVar = new b(this, uVar);
        }
        C(uVar);
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void B(com.google.android.exoplayer2.upstream.k0 k0Var) {
        J();
    }

    @Override // com.google.android.exoplayer2.source.a
    protected void D() {
    }

    @Override // com.google.android.exoplayer2.source.o
    public v1 a() {
        return this.f26287h;
    }

    @Override // com.google.android.exoplayer2.source.o
    public com.google.android.exoplayer2.source.n d(com.google.android.exoplayer2.source.o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j11) {
        return new p(bVar2, this.f26288i, this.f26290k, new a(), this.f26289j, this.f26291l, this.f26292m);
    }

    @Override // com.google.android.exoplayer2.source.o
    public void k(com.google.android.exoplayer2.source.n nVar) {
        ((p) nVar).M();
    }

    @Override // com.google.android.exoplayer2.source.o
    public void maybeThrowSourceInfoRefreshError() {
    }
}
