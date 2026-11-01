package androidx.media3.exoplayer.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.media3.common.r;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.o0;
import androidx.media3.common.util.u;
import androidx.media3.exoplayer.video.t;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class g implements t, k2.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f13292i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SurfaceTexture f13293j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f13296m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f13284a = new AtomicBoolean();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f13285b = new AtomicBoolean(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f13286c = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f13287d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o0 f13288e = new o0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final o0 f13289f = new o0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float[] f13290g = new float[16];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f13291h = new float[16];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile int f13294k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f13295l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(SurfaceTexture surfaceTexture) {
        this.f13284a.set(true);
    }

    private void i(byte[] bArr, int i11, long j11) {
        byte[] bArr2 = this.f13296m;
        int i12 = this.f13295l;
        this.f13296m = bArr;
        if (i11 == -1) {
            i11 = this.f13294k;
        }
        this.f13295l = i11;
        if (i12 == i11 && Arrays.equals(bArr2, this.f13296m)) {
            return;
        }
        byte[] bArr3 = this.f13296m;
        c cVarA = bArr3 != null ? d.a(bArr3, this.f13295l) : null;
        if (cVarA == null || !e.c(cVarA)) {
            cVarA = c.b(this.f13295l);
        }
        this.f13289f.a(j11, cVarA);
    }

    @Override // k2.a
    public void a(long j11, float[] fArr) {
        this.f13287d.e(j11, fArr);
    }

    @Override // k2.a
    public void b() {
        this.f13288e.c();
        this.f13287d.d();
        this.f13285b.set(true);
    }

    public void d(float[] fArr, boolean z10) {
        GLES20.glClear(16384);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e11) {
            u.d("SceneRenderer", "Failed to draw a frame", e11);
        }
        if (this.f13284a.compareAndSet(true, false)) {
            ((SurfaceTexture) androidx.media3.common.util.a.e(this.f13293j)).updateTexImage();
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e12) {
                u.d("SceneRenderer", "Failed to draw a frame", e12);
            }
            if (this.f13285b.compareAndSet(true, false)) {
                GlUtil.k(this.f13290g);
            }
            long timestamp = this.f13293j.getTimestamp();
            Long l11 = (Long) this.f13288e.g(timestamp);
            if (l11 != null) {
                this.f13287d.c(this.f13290g, l11.longValue());
            }
            c cVar = (c) this.f13289f.j(timestamp);
            if (cVar != null) {
                this.f13286c.d(cVar);
            }
        }
        Matrix.multiplyMM(this.f13291h, 0, fArr, 0, this.f13290g, 0);
        this.f13286c.a(this.f13292i, this.f13291h, z10);
    }

    public SurfaceTexture e() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.b();
            this.f13286c.b();
            GlUtil.b();
            this.f13292i = GlUtil.f();
        } catch (GlUtil.GlException e11) {
            u.d("SceneRenderer", "Failed to initialize the renderer", e11);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f13292i);
        this.f13293j = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: androidx.media3.exoplayer.video.spherical.f
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f13283a.g(surfaceTexture2);
            }
        });
        return this.f13293j;
    }

    @Override // androidx.media3.exoplayer.video.t
    public void f(long j11, long j12, r rVar, MediaFormat mediaFormat) {
        this.f13288e.a(j12, Long.valueOf(j11));
        i(rVar.A, rVar.B, j12);
    }

    public void h(int i11) {
        this.f13294k = i11;
    }
}
