package com.journeyapps.barcodescanner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.google.zxing.client.android.R$id;
import com.google.zxing.client.android.R$styleable;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.journeyapps.barcodescanner.camera.PreviewScalingStrategy;
import com.journeyapps.barcodescanner.camera.i;
import com.journeyapps.barcodescanner.camera.j;
import com.journeyapps.barcodescanner.camera.l;
import com.journeyapps.barcodescanner.camera.m;
import com.journeyapps.barcodescanner.camera.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import xe.o;
import xe.p;
import xe.q;
import xe.s;

/* JADX INFO: loaded from: classes4.dex */
public class CameraPreview extends ViewGroup {
    private static final String A = "CameraPreview";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CameraInstance f33878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindowManager f33879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f33880c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f33881d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SurfaceView f33882e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextureView f33883f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33884g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private p f33885h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f33886i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f33887j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private m f33888k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CameraSettings f33889l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private q f33890m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private q f33891n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Rect f33892o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private q f33893p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Rect f33894q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Rect f33895r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private q f33896s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private double f33897t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PreviewScalingStrategy f33898u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f33899v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final SurfaceHolder.Callback f33900w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Handler.Callback f33901x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o f33902y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final f f33903z;

    class a implements TextureView.SurfaceTextureListener {
        a() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i11, int i12) {
            onSurfaceTextureSizeChanged(surfaceTexture, i11, i12);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i11, int i12) {
            CameraPreview.this.f33893p = new q(i11, i12);
            CameraPreview.this.w();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    class b implements SurfaceHolder.Callback {
        b() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
            if (surfaceHolder == null) {
                Log.e(CameraPreview.A, "*** WARNING *** surfaceChanged() gave us a null surface!");
                return;
            }
            CameraPreview.this.f33893p = new q(i12, i13);
            CameraPreview.this.w();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            CameraPreview.this.f33893p = null;
        }
    }

    class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == R$id.zxing_prewiew_size_ready) {
                CameraPreview.this.r((q) message.obj);
                return true;
            }
            if (i11 != R$id.zxing_camera_error) {
                if (i11 != R$id.zxing_camera_closed) {
                    return false;
                }
                CameraPreview.this.f33903z.b();
                return false;
            }
            Exception exc = (Exception) message.obj;
            if (!CameraPreview.this.q()) {
                return false;
            }
            CameraPreview.this.pause();
            CameraPreview.this.f33903z.c(exc);
            return false;
        }
    }

    class d implements o {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            CameraPreview.this.t();
        }

        @Override // xe.o
        public void a(int i11) {
            CameraPreview.this.f33880c.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f33931a.c();
                }
            }, 250L);
        }
    }

    class e implements f {
        e() {
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void a() {
            Iterator it = CameraPreview.this.f33887j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).a();
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void b() {
            Iterator it = CameraPreview.this.f33887j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).b();
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void c(Exception exc) {
            Iterator it = CameraPreview.this.f33887j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).c(exc);
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void d() {
            Iterator it = CameraPreview.this.f33887j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).d();
            }
        }

        @Override // com.journeyapps.barcodescanner.CameraPreview.f
        public void e() {
            Iterator it = CameraPreview.this.f33887j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).e();
            }
        }
    }

    public interface f {
        void a();

        void b();

        void c(Exception exc);

        void d();

        void e();
    }

    public CameraPreview(Context context) {
        super(context);
        this.f33881d = false;
        this.f33884g = false;
        this.f33886i = -1;
        this.f33887j = new ArrayList();
        this.f33889l = new CameraSettings();
        this.f33894q = null;
        this.f33895r = null;
        this.f33896s = null;
        this.f33897t = 0.1d;
        this.f33898u = null;
        this.f33899v = false;
        this.f33900w = new b();
        this.f33901x = new c();
        this.f33902y = new d();
        this.f33903z = new e();
        o(context, null, 0, 0);
    }

    public CameraPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33881d = false;
        this.f33884g = false;
        this.f33886i = -1;
        this.f33887j = new ArrayList();
        this.f33889l = new CameraSettings();
        this.f33894q = null;
        this.f33895r = null;
        this.f33896s = null;
        this.f33897t = 0.1d;
        this.f33898u = null;
        this.f33899v = false;
        this.f33900w = new b();
        this.f33901x = new c();
        this.f33902y = new d();
        this.f33903z = new e();
        o(context, attributeSet, 0, 0);
    }

    public CameraPreview(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f33881d = false;
        this.f33884g = false;
        this.f33886i = -1;
        this.f33887j = new ArrayList();
        this.f33889l = new CameraSettings();
        this.f33894q = null;
        this.f33895r = null;
        this.f33896s = null;
        this.f33897t = 0.1d;
        this.f33898u = null;
        this.f33899v = false;
        this.f33900w = new b();
        this.f33901x = new c();
        this.f33902y = new d();
        this.f33903z = new e();
        o(context, attributeSet, i11, 0);
    }

    private int getDisplayRotation() {
        return this.f33879b.getDefaultDisplay().getRotation();
    }

    private void i() {
        q qVar;
        m mVar;
        q qVar2 = this.f33890m;
        if (qVar2 == null || (qVar = this.f33891n) == null || (mVar = this.f33888k) == null) {
            this.f33895r = null;
            this.f33894q = null;
            this.f33892o = null;
            throw new IllegalStateException("containerSize or previewSize is not set yet");
        }
        int i11 = qVar.f78234a;
        int i12 = qVar.f78235b;
        int i13 = qVar2.f78234a;
        int i14 = qVar2.f78235b;
        Rect rectD = mVar.d(qVar);
        if (rectD.width() <= 0 || rectD.height() <= 0) {
            return;
        }
        this.f33892o = rectD;
        this.f33894q = j(new Rect(0, 0, i13, i14), this.f33892o);
        Rect rect = new Rect(this.f33894q);
        Rect rect2 = this.f33892o;
        rect.offset(-rect2.left, -rect2.top);
        Rect rect3 = new Rect((rect.left * i11) / this.f33892o.width(), (rect.top * i12) / this.f33892o.height(), (rect.right * i11) / this.f33892o.width(), (rect.bottom * i12) / this.f33892o.height());
        this.f33895r = rect3;
        if (rect3.width() > 0 && this.f33895r.height() > 0) {
            this.f33903z.a();
            return;
        }
        this.f33895r = null;
        this.f33894q = null;
        Log.w(A, "Preview frame is too small");
    }

    private void l(q qVar) {
        this.f33890m = qVar;
        CameraInstance cameraInstance = this.f33878a;
        if (cameraInstance == null || cameraInstance.p() != null) {
            return;
        }
        m mVar = new m(getDisplayRotation(), qVar);
        this.f33888k = mVar;
        mVar.e(getPreviewScalingStrategy());
        this.f33878a.A(this.f33888k);
        this.f33878a.o();
        boolean z10 = this.f33899v;
        if (z10) {
            this.f33878a.D(z10);
        }
    }

    private void n() {
        if (this.f33878a != null) {
            Log.w(A, "initCamera called twice");
            return;
        }
        CameraInstance cameraInstanceM = m();
        this.f33878a = cameraInstanceM;
        cameraInstanceM.B(this.f33880c);
        this.f33878a.x();
        this.f33886i = getDisplayRotation();
    }

    private void o(Context context, AttributeSet attributeSet, int i11, int i12) {
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        p(attributeSet);
        this.f33879b = (WindowManager) context.getSystemService("window");
        this.f33880c = new Handler(this.f33901x);
        this.f33885h = new p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(q qVar) {
        this.f33891n = qVar;
        if (this.f33890m != null) {
            i();
            requestLayout();
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (!q() || getDisplayRotation() == this.f33886i) {
            return;
        }
        pause();
        resume();
    }

    private void u() {
        if (this.f33881d) {
            TextureView textureView = new TextureView(getContext());
            this.f33883f = textureView;
            textureView.setSurfaceTextureListener(x());
            addView(this.f33883f);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.f33882e = surfaceView;
        surfaceView.getHolder().addCallback(this.f33900w);
        addView(this.f33882e);
    }

    private void v(j jVar) {
        if (this.f33884g || this.f33878a == null) {
            return;
        }
        this.f33878a.C(jVar);
        this.f33878a.E();
        this.f33884g = true;
        s();
        this.f33903z.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        Rect rect;
        q qVar = this.f33893p;
        if (qVar == null || this.f33891n == null || (rect = this.f33892o) == null) {
            return;
        }
        if (this.f33882e != null && qVar.equals(new q(rect.width(), this.f33892o.height()))) {
            v(new j(this.f33882e.getHolder()));
            return;
        }
        TextureView textureView = this.f33883f;
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            return;
        }
        if (this.f33891n != null) {
            this.f33883f.setTransform(k(new q(this.f33883f.getWidth(), this.f33883f.getHeight()), this.f33891n));
        }
        v(new j(this.f33883f.getSurfaceTexture()));
    }

    private TextureView.SurfaceTextureListener x() {
        return new a();
    }

    public void addStateListener(f fVar) {
        this.f33887j.add(fVar);
    }

    public void changeCameraParameters(i iVar) {
        CameraInstance cameraInstance = this.f33878a;
        if (cameraInstance != null) {
            cameraInstance.m(iVar);
        }
    }

    public CameraInstance getCameraInstance() {
        return this.f33878a;
    }

    public CameraSettings getCameraSettings() {
        return this.f33889l;
    }

    public Rect getFramingRect() {
        return this.f33894q;
    }

    public q getFramingRectSize() {
        return this.f33896s;
    }

    public double getMarginFraction() {
        return this.f33897t;
    }

    public Rect getPreviewFramingRect() {
        return this.f33895r;
    }

    public PreviewScalingStrategy getPreviewScalingStrategy() {
        PreviewScalingStrategy previewScalingStrategy = this.f33898u;
        if (previewScalingStrategy != null) {
            return previewScalingStrategy;
        }
        return this.f33883f != null ? new l() : new n();
    }

    public q getPreviewSize() {
        return this.f33891n;
    }

    public boolean isCameraClosed() {
        CameraInstance cameraInstance = this.f33878a;
        return cameraInstance == null || cameraInstance.r();
    }

    public boolean isPreviewActive() {
        return this.f33884g;
    }

    public boolean isUseTextureView() {
        return this.f33881d;
    }

    protected Rect j(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect);
        rect3.intersect(rect2);
        if (this.f33896s != null) {
            rect3.inset(Math.max(0, (rect3.width() - this.f33896s.f78234a) / 2), Math.max(0, (rect3.height() - this.f33896s.f78235b) / 2));
            return rect3;
        }
        int iMin = (int) Math.min(((double) rect3.width()) * this.f33897t, ((double) rect3.height()) * this.f33897t);
        rect3.inset(iMin, iMin);
        if (rect3.height() > rect3.width()) {
            rect3.inset(0, (rect3.height() - rect3.width()) / 2);
        }
        return rect3;
    }

    protected Matrix k(q qVar, q qVar2) {
        float f11;
        float f12 = qVar.f78234a / qVar.f78235b;
        float f13 = qVar2.f78234a / qVar2.f78235b;
        float f14 = 1.0f;
        if (f12 < f13) {
            float f15 = f13 / f12;
            f11 = 1.0f;
            f14 = f15;
        } else {
            f11 = f12 / f13;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f14, f11);
        int i11 = qVar.f78234a;
        int i12 = qVar.f78235b;
        matrix.postTranslate((i11 - (i11 * f14)) / 2.0f, (i12 - (i12 * f11)) / 2.0f);
        return matrix;
    }

    protected CameraInstance m() {
        CameraInstance cameraInstance = new CameraInstance(getContext());
        cameraInstance.z(this.f33889l);
        return cameraInstance;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        l(new q(i13 - i11, i14 - i12));
        SurfaceView surfaceView = this.f33882e;
        if (surfaceView == null) {
            TextureView textureView = this.f33883f;
            if (textureView != null) {
                textureView.layout(0, 0, getWidth(), getHeight());
                return;
            }
            return;
        }
        Rect rect = this.f33892o;
        if (rect == null) {
            surfaceView.layout(0, 0, getWidth(), getHeight());
        } else {
            surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
        setTorch(bundle.getBoolean("torch"));
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", parcelableOnSaveInstanceState);
        bundle.putBoolean("torch", this.f33899v);
        return bundle;
    }

    protected void p(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.zxing_camera_preview);
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.zxing_camera_preview_zxing_framing_rect_width, -1.0f);
        int dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.zxing_camera_preview_zxing_framing_rect_height, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.f33896s = new q(dimension, dimension2);
        }
        this.f33881d = typedArrayObtainStyledAttributes.getBoolean(R$styleable.zxing_camera_preview_zxing_use_texture_view, true);
        int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.zxing_camera_preview_zxing_preview_scaling_strategy, -1);
        if (integer == 1) {
            this.f33898u = new l();
        } else if (integer == 2) {
            this.f33898u = new n();
        } else if (integer == 3) {
            this.f33898u = new com.journeyapps.barcodescanner.camera.o();
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void pause() {
        TextureView textureView;
        SurfaceView surfaceView;
        s.a();
        this.f33886i = -1;
        CameraInstance cameraInstance = this.f33878a;
        if (cameraInstance != null) {
            cameraInstance.n();
            this.f33878a = null;
            this.f33884g = false;
        } else {
            this.f33880c.sendEmptyMessage(R$id.zxing_camera_closed);
        }
        if (this.f33893p == null && (surfaceView = this.f33882e) != null) {
            surfaceView.getHolder().removeCallback(this.f33900w);
        }
        if (this.f33893p == null && (textureView = this.f33883f) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f33890m = null;
        this.f33891n = null;
        this.f33895r = null;
        this.f33885h.f();
        this.f33903z.d();
    }

    public void pauseAndWait() {
        CameraInstance cameraInstance = getCameraInstance();
        pause();
        long jNanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.r() && System.nanoTime() - jNanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    protected boolean q() {
        return this.f33878a != null;
    }

    public void resume() {
        s.a();
        n();
        if (this.f33893p != null) {
            w();
        } else {
            SurfaceView surfaceView = this.f33882e;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.f33900w);
            } else {
                TextureView textureView = this.f33883f;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        x().onSurfaceTextureAvailable(this.f33883f.getSurfaceTexture(), this.f33883f.getWidth(), this.f33883f.getHeight());
                    } else {
                        this.f33883f.setSurfaceTextureListener(x());
                    }
                }
            }
        }
        requestLayout();
        this.f33885h.e(getContext(), this.f33902y);
    }

    protected void s() {
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.f33889l = cameraSettings;
    }

    public void setFramingRectSize(q qVar) {
        this.f33896s = qVar;
    }

    public void setMarginFraction(double d11) {
        if (d11 >= 0.5d) {
            throw new IllegalArgumentException("The margin fraction must be less than 0.5");
        }
        this.f33897t = d11;
    }

    public void setPreviewScalingStrategy(PreviewScalingStrategy previewScalingStrategy) {
        this.f33898u = previewScalingStrategy;
    }

    public void setTorch(boolean z10) {
        this.f33899v = z10;
        CameraInstance cameraInstance = this.f33878a;
        if (cameraInstance != null) {
            cameraInstance.D(z10);
        }
    }

    public void setUseTextureView(boolean z10) {
        this.f33881d = z10;
    }
}
