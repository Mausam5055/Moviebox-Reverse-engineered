package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.video.i;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes3.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f27915m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f27916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SensorManager f27917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Sensor f27918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.exoplayer2.video.spherical.b f27919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f27920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f27921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g f27922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SurfaceTexture f27923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Surface f27924i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27925j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f27926k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f27927l;

    final class a implements GLSurfaceView.Renderer, h.a, com.google.android.exoplayer2.video.spherical.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g f27928a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float[] f27931d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float[] f27932e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float[] f27933f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f27934g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f27935h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f27929b = new float[16];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float[] f27930c = new float[16];

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final float[] f27936i = new float[16];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final float[] f27937j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f27931d = fArr;
            float[] fArr2 = new float[16];
            this.f27932e = fArr2;
            float[] fArr3 = new float[16];
            this.f27933f = fArr3;
            this.f27928a = gVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f27935h = 3.1415927f;
        }

        private float c(float f11) {
            if (f11 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f11))) * 2.0d);
            }
            return 90.0f;
        }

        private void d() {
            Matrix.setRotateM(this.f27932e, 0, -this.f27934g, (float) Math.cos(this.f27935h), (float) Math.sin(this.f27935h), 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.b.a
        public synchronized void a(float[] fArr, float f11) {
            float[] fArr2 = this.f27931d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f27935h = -f11;
            d();
        }

        @Override // com.google.android.exoplayer2.video.spherical.h.a
        public synchronized void b(PointF pointF) {
            this.f27934g = pointF.y;
            d();
            Matrix.setRotateM(this.f27933f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f27937j, 0, this.f27931d, 0, this.f27933f, 0);
                Matrix.multiplyMM(this.f27936i, 0, this.f27932e, 0, this.f27937j, 0);
            }
            Matrix.multiplyMM(this.f27930c, 0, this.f27929b, 0, this.f27936i, 0);
            this.f27928a.d(this.f27930c, false);
        }

        @Override // com.google.android.exoplayer2.video.spherical.h.a
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i11, int i12) {
            GLES20.glViewport(0, 0, i11, i12);
            float f11 = i11 / i12;
            Matrix.perspectiveM(this.f27929b, 0, c(f11), f11, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.f(this.f27928a.e());
        }
    }

    public interface b {
        void p(Surface surface);

        void q(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27916a = new CopyOnWriteArrayList();
        this.f27920e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) com.google.android.exoplayer2.util.a.e(context.getSystemService("sensor"));
        this.f27917b = sensorManager;
        Sensor defaultSensor = p0.f27626a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f27918c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f27922g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f27921f = hVar;
        this.f27919d = new com.google.android.exoplayer2.video.spherical.b(((WindowManager) com.google.android.exoplayer2.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f27925j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        Surface surface = this.f27924i;
        if (surface != null) {
            Iterator it = this.f27916a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).p(surface);
            }
        }
        g(this.f27923h, surface);
        this.f27923h = null;
        this.f27924i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f27923h;
        Surface surface = this.f27924i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f27923h = surfaceTexture;
        this.f27924i = surface2;
        Iterator it = this.f27916a.iterator();
        while (it.hasNext()) {
            ((b) it.next()).q(surface2);
        }
        g(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(final SurfaceTexture surfaceTexture) {
        this.f27920e.post(new Runnable() { // from class: ma.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f69430a.e(surfaceTexture);
            }
        });
    }

    private static void g(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void h() {
        boolean z10 = this.f27925j && this.f27926k;
        Sensor sensor = this.f27918c;
        if (sensor == null || z10 == this.f27927l) {
            return;
        }
        if (z10) {
            this.f27917b.registerListener(this.f27919d, sensor, 0);
        } else {
            this.f27917b.unregisterListener(this.f27919d);
        }
        this.f27927l = z10;
    }

    public void addVideoSurfaceListener(b bVar) {
        this.f27916a.add(bVar);
    }

    public ma.a getCameraMotionListener() {
        return this.f27922g;
    }

    public i getVideoFrameMetadataListener() {
        return this.f27922g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f27924i;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f27920e.post(new Runnable() { // from class: ma.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f69432a.d();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f27926k = false;
        h();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f27926k = true;
        h();
    }

    public void removeVideoSurfaceListener(b bVar) {
        this.f27916a.remove(bVar);
    }

    public void setDefaultStereoMode(int i11) {
        this.f27922g.h(i11);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f27925j = z10;
        h();
    }
}
