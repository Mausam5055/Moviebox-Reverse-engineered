package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.video.i;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
final class g implements i, ma.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f27986i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SurfaceTexture f27987j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f27990m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f27978a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f27979b = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f27980c = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f27981d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k0 f27982e = new k0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k0 f27983f = new k0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float[] f27984g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f27985h = new float[16];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile int f27988k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f27989l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(SurfaceTexture surfaceTexture) {
        this.f27978a.set(true);
    }

    private void i(byte[] bArr, int i11, long j11) {
        byte[] bArr2 = this.f27990m;
        int i12 = this.f27989l;
        this.f27990m = bArr;
        if (i11 == -1) {
            i11 = this.f27988k;
        }
        this.f27989l = i11;
        if (i12 == i11 && Arrays.equals(bArr2, this.f27990m)) {
            return;
        }
        byte[] bArr3 = this.f27990m;
        c cVarA = bArr3 != null ? d.a(bArr3, this.f27989l) : null;
        if (cVarA == null || !e.c(cVarA)) {
            cVarA = c.b(this.f27989l);
        }
        this.f27983f.a(j11, cVarA);
    }

    @Override // ma.a
    public void a(long j11, float[] fArr) {
        this.f27981d.e(j11, fArr);
    }

    @Override // ma.a
    public void b() {
        this.f27982e.c();
        this.f27981d.d();
        this.f27979b.set(true);
    }

    public void d(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        GlUtil.c();
        if (this.f27978a.compareAndSet(true, false)) {
            ((SurfaceTexture) com.google.android.exoplayer2.util.a.e(this.f27987j)).updateTexImage();
            GlUtil.c();
            if (this.f27979b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f27984g, 0);
            }
            long timestamp = this.f27987j.getTimestamp();
            Long l11 = (Long) this.f27982e.g(timestamp);
            if (l11 != null) {
                this.f27981d.c(this.f27984g, l11.longValue());
            }
            c cVar = (c) this.f27983f.j(timestamp);
            if (cVar != null) {
                this.f27980c.d(cVar);
            }
        }
        Matrix.multiplyMM(this.f27985h, 0, fArr, 0, this.f27984g, 0);
        this.f27980c.a(this.f27986i, this.f27985h, z10);
    }

    public SurfaceTexture e() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        GlUtil.c();
        this.f27980c.b();
        GlUtil.c();
        this.f27986i = GlUtil.f();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f27986i);
        this.f27987j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.video.spherical.f
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f27977a.g(surfaceTexture2);
            }
        });
        return this.f27987j;
    }

    @Override // com.google.android.exoplayer2.video.i
    public void f(long j11, long j12, o1 o1Var, MediaFormat mediaFormat) {
        this.f27982e.a(j12, Long.valueOf(j11));
        i(o1Var.f25506v, o1Var.f25507w, j12);
    }

    public void h(int i11) {
        this.f27988k = i11;
    }
}
