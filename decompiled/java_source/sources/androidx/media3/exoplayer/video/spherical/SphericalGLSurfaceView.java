package androidx.media3.exoplayer.video.spherical;

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
import androidx.media3.common.util.GlUtil;
import androidx.media3.exoplayer.video.t;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public final class SphericalGLSurfaceView extends GLSurfaceView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f13221m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList f13222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SensorManager f13223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Sensor f13224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.exoplayer.video.spherical.b f13225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f13226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f13227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g f13228g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SurfaceTexture f13229h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Surface f13230i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f13231j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f13232k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f13233l;

    final class a implements GLSurfaceView.Renderer, h.a, androidx.media3.exoplayer.video.spherical.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final g f13234a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float[] f13237d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float[] f13238e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float[] f13239f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f13240g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f13241h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float[] f13235b = new float[16];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float[] f13236c = new float[16];

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final float[] f13242i = new float[16];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final float[] f13243j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f13237d = fArr;
            float[] fArr2 = new float[16];
            this.f13238e = fArr2;
            float[] fArr3 = new float[16];
            this.f13239f = fArr3;
            this.f13234a = gVar;
            GlUtil.k(fArr);
            GlUtil.k(fArr2);
            GlUtil.k(fArr3);
            this.f13241h = 3.1415927f;
        }

        private float c(float f11) {
            if (f11 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f11))) * 2.0d);
            }
            return 90.0f;
        }

        private void d() {
            Matrix.setRotateM(this.f13238e, 0, -this.f13240g, (float) Math.cos(this.f13241h), (float) Math.sin(this.f13241h), 0.0f);
        }

        @Override // androidx.media3.exoplayer.video.spherical.b.a
        public synchronized void a(float[] fArr, float f11) {
            float[] fArr2 = this.f13237d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f13241h = -f11;
            d();
        }

        @Override // androidx.media3.exoplayer.video.spherical.h.a
        public synchronized void b(PointF pointF) {
            this.f13240g = pointF.y;
            d();
            Matrix.setRotateM(this.f13239f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f13243j, 0, this.f13237d, 0, this.f13239f, 0);
                Matrix.multiplyMM(this.f13242i, 0, this.f13238e, 0, this.f13243j, 0);
            }
            Matrix.multiplyMM(this.f13236c, 0, this.f13235b, 0, this.f13242i, 0);
            this.f13234a.d(this.f13236c, false);
        }

        @Override // androidx.media3.exoplayer.video.spherical.h.a
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i11, int i12) {
            GLES20.glViewport(0, 0, i11, i12);
            float f11 = i11 / i12;
            Matrix.perspectiveM(this.f13235b, 0, c(f11), f11, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.f(this.f13234a.e());
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
        this.f13222a = new CopyOnWriteArrayList();
        this.f13226e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) androidx.media3.common.util.a.e(context.getSystemService("sensor"));
        this.f13223b = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.f13224c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f13228g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f13227f = hVar;
        this.f13225d = new androidx.media3.exoplayer.video.spherical.b(((WindowManager) androidx.media3.common.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f13231j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        Surface surface = this.f13230i;
        if (surface != null) {
            Iterator it = this.f13222a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).p(surface);
            }
        }
        g(this.f13229h, surface);
        this.f13229h = null;
        this.f13230i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f13229h;
        Surface surface = this.f13230i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f13229h = surfaceTexture;
        this.f13230i = surface2;
        Iterator it = this.f13222a.iterator();
        while (it.hasNext()) {
            ((b) it.next()).q(surface2);
        }
        g(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(final SurfaceTexture surfaceTexture) {
        this.f13226e.post(new Runnable() { // from class: k2.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f66576a.e(surfaceTexture);
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
        boolean z10 = this.f13231j && this.f13232k;
        Sensor sensor = this.f13224c;
        if (sensor == null || z10 == this.f13233l) {
            return;
        }
        if (z10) {
            this.f13223b.registerListener(this.f13225d, sensor, 0);
        } else {
            this.f13223b.unregisterListener(this.f13225d);
        }
        this.f13233l = z10;
    }

    public void addVideoSurfaceListener(b bVar) {
        this.f13222a.add(bVar);
    }

    public k2.a getCameraMotionListener() {
        return this.f13228g;
    }

    public t getVideoFrameMetadataListener() {
        return this.f13228g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f13230i;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13226e.post(new Runnable() { // from class: k2.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f66575a.d();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.f13232k = false;
        h();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.f13232k = true;
        h();
    }

    public void removeVideoSurfaceListener(b bVar) {
        this.f13222a.remove(bVar);
    }

    public void setDefaultStereoMode(int i11) {
        this.f13228g.h(i11);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f13231j = z10;
        h();
    }
}
