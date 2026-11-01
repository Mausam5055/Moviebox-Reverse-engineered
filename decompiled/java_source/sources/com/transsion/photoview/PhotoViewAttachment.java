package com.transsion.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;

/* JADX INFO: loaded from: classes6.dex */
public class PhotoViewAttachment implements View.OnTouchListener, View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ImageView f47862h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private GestureDetector f47863i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.transsion.photoview.b f47864j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private n f47865k;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View.OnClickListener f47871q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View.OnLongClickListener f47872r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private FlingRunnable f47873s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f47876v;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final com.transsion.photoview.c f47879y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Interpolator f47855a = new AccelerateDecelerateInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f47856b = 200;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f47857c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f47858d = 1.75f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f47859e = 3.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f47860f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f47861g = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Matrix f47866l = new Matrix();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Matrix f47867m = new Matrix();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Matrix f47868n = new Matrix();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RectF f47869o = new RectF();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float[] f47870p = new float[9];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f47874t = 2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f47875u = 2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f47877w = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ImageView.ScaleType f47878x = ImageView.ScaleType.FIT_CENTER;

    private class AnimatedZoomRunnable implements Runnable {
        private final float mFocalX;
        private final float mFocalY;
        private final long mStartTime = System.currentTimeMillis();
        private final float mZoomEnd;
        private final float mZoomStart;

        public AnimatedZoomRunnable(float f11, float f12, float f13, float f14) {
            this.mFocalX = f13;
            this.mFocalY = f14;
            this.mZoomStart = f11;
            this.mZoomEnd = f12;
        }

        private float interpolate() {
            return PhotoViewAttachment.this.f47855a.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.mStartTime) * 1.0f) / PhotoViewAttachment.this.f47856b));
        }

        @Override // java.lang.Runnable
        public void run() {
            float fInterpolate = interpolate();
            float f11 = this.mZoomStart;
            PhotoViewAttachment.this.f47879y.d((f11 + ((this.mZoomEnd - f11) * fInterpolate)) / PhotoViewAttachment.this.M(), this.mFocalX, this.mFocalY);
            if (fInterpolate < 1.0f) {
                com.transsion.photoview.a.a(PhotoViewAttachment.this.f47862h, this);
            }
        }
    }

    private class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final OverScroller mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = new OverScroller(context);
        }

        public void cancelFling() {
            this.mScroller.forceFinished(true);
        }

        public void fling(int i11, int i12, int i13, int i14) {
            int i15;
            int iRound;
            int i16;
            int iRound2;
            RectF rectFD = PhotoViewAttachment.this.D();
            if (rectFD == null) {
                return;
            }
            int iRound3 = Math.round(-rectFD.left);
            float f11 = i11;
            if (f11 < rectFD.width()) {
                iRound = Math.round(rectFD.width() - f11);
                i15 = 0;
            } else {
                i15 = iRound3;
                iRound = i15;
            }
            int iRound4 = Math.round(-rectFD.top);
            float f12 = i12;
            if (f12 < rectFD.height()) {
                iRound2 = Math.round(rectFD.height() - f12);
                i16 = 0;
            } else {
                i16 = iRound4;
                iRound2 = i16;
            }
            this.mCurrentX = iRound3;
            this.mCurrentY = iRound4;
            if (iRound3 == iRound && iRound4 == iRound2) {
                return;
            }
            this.mScroller.fling(iRound3, iRound4, i13, i14, i15, iRound, i16, iRound2, 0, 0);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                PhotoViewAttachment.this.f47868n.postTranslate(this.mCurrentX - currX, this.mCurrentY - currY);
                PhotoViewAttachment.this.A();
                this.mCurrentX = currX;
                this.mCurrentY = currY;
                com.transsion.photoview.a.a(PhotoViewAttachment.this.f47862h, this);
            }
        }
    }

    class a implements com.transsion.photoview.c {
        a() {
        }

        @Override // com.transsion.photoview.c
        public void b(float f11, float f12) {
            if (PhotoViewAttachment.this.f47864j.g()) {
                return;
            }
            PhotoViewAttachment.j(PhotoViewAttachment.this);
            PhotoViewAttachment.this.f47868n.postTranslate(f11, f12);
            PhotoViewAttachment.this.A();
            ViewParent parent = PhotoViewAttachment.this.f47862h.getParent();
            if (!PhotoViewAttachment.this.f47860f || PhotoViewAttachment.this.f47864j.g() || PhotoViewAttachment.this.f47861g) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((PhotoViewAttachment.this.f47874t == 2 || ((PhotoViewAttachment.this.f47874t == 0 && f11 >= 1.0f) || ((PhotoViewAttachment.this.f47874t == 1 && f11 <= -1.0f) || ((PhotoViewAttachment.this.f47875u == 0 && f12 >= 1.0f) || (PhotoViewAttachment.this.f47875u == 1 && f12 <= -1.0f))))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
                PhotoViewAttachment.this.f47865k.e(PhotoViewAttachment.this.M(), PhotoViewAttachment.this.f47864j.d(), PhotoViewAttachment.this.f47864j.e());
            }
        }

        @Override // com.transsion.photoview.c
        public void c(float f11, float f12, float f13, float f14, float f15) {
            if (PhotoViewAttachment.this.f47865k.h()) {
                return;
            }
            if (PhotoViewAttachment.this.M() < PhotoViewAttachment.this.f47859e || f11 < 1.0f) {
                PhotoViewAttachment.m(PhotoViewAttachment.this);
                PhotoViewAttachment.this.f47868n.postScale(f11, f11, f12, f13);
                PhotoViewAttachment.this.f47868n.postTranslate(f14, f15);
                PhotoViewAttachment.this.A();
            }
        }

        @Override // com.transsion.photoview.c
        public void d(float f11, float f12, float f13) {
            c(f11, f12, f13, 0.0f, 0.0f);
        }

        @Override // com.transsion.photoview.c
        public void e(float f11, float f12, float f13, float f14) {
            PhotoViewAttachment photoViewAttachment = PhotoViewAttachment.this;
            photoViewAttachment.f47873s = photoViewAttachment.new FlingRunnable(photoViewAttachment.f47862h.getContext());
            FlingRunnable flingRunnable = PhotoViewAttachment.this.f47873s;
            PhotoViewAttachment photoViewAttachment2 = PhotoViewAttachment.this;
            int I = photoViewAttachment2.I(photoViewAttachment2.f47862h);
            PhotoViewAttachment photoViewAttachment3 = PhotoViewAttachment.this;
            flingRunnable.fling(I, photoViewAttachment3.H(photoViewAttachment3.f47862h), (int) f13, (int) f14);
            PhotoViewAttachment.this.f47862h.post(PhotoViewAttachment.this.f47873s);
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f11, float f12) {
            PhotoViewAttachment.o(PhotoViewAttachment.this);
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (PhotoViewAttachment.this.f47872r != null) {
                PhotoViewAttachment.this.f47872r.onLongClick(PhotoViewAttachment.this.f47862h);
            }
        }
    }

    class c implements GestureDetector.OnDoubleTapListener {
        c() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float fM = PhotoViewAttachment.this.M();
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (fM < PhotoViewAttachment.this.K()) {
                    PhotoViewAttachment photoViewAttachment = PhotoViewAttachment.this;
                    photoViewAttachment.m0(photoViewAttachment.K(), x10, y10, true);
                } else if (fM < PhotoViewAttachment.this.K() || fM >= PhotoViewAttachment.this.J()) {
                    PhotoViewAttachment photoViewAttachment2 = PhotoViewAttachment.this;
                    photoViewAttachment2.m0(photoViewAttachment2.L(), x10, y10, true);
                } else {
                    PhotoViewAttachment photoViewAttachment3 = PhotoViewAttachment.this;
                    photoViewAttachment3.m0(photoViewAttachment3.J(), x10, y10, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (PhotoViewAttachment.this.f47871q != null) {
                PhotoViewAttachment.this.f47871q.onClick(PhotoViewAttachment.this.f47862h);
            }
            RectF rectFD = PhotoViewAttachment.this.D();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            PhotoViewAttachment.r(PhotoViewAttachment.this);
            if (rectFD == null) {
                return false;
            }
            if (!rectFD.contains(x10, y10)) {
                PhotoViewAttachment.k(PhotoViewAttachment.this);
                return false;
            }
            rectFD.width();
            rectFD.height();
            PhotoViewAttachment.l(PhotoViewAttachment.this);
            return true;
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f47883a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f47883a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47883a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47883a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47883a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public PhotoViewAttachment(ImageView imageView) {
        a aVar = new a();
        this.f47879y = aVar;
        this.f47862h = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f47876v = 0.0f;
        this.f47864j = new com.transsion.photoview.b(imageView.getContext(), aVar);
        Q(imageView);
        this.f47865k = new n(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        if (B()) {
            V(F());
        }
    }

    private boolean B() {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        RectF rectFE = E(F());
        if (rectFE == null) {
            return false;
        }
        float fHeight = rectFE.height();
        float fWidth = rectFE.width();
        float fH = H(this.f47862h);
        float f16 = 0.0f;
        if (fHeight <= fH) {
            int i11 = d.f47883a[this.f47878x.ordinal()];
            if (i11 != 2) {
                if (i11 != 3) {
                    f14 = (fH - fHeight) / 2.0f;
                    f15 = rectFE.top;
                } else {
                    f14 = fH - fHeight;
                    f15 = rectFE.top;
                }
                f11 = f14 - f15;
            } else {
                f11 = -rectFE.top;
            }
            this.f47875u = 2;
        } else {
            float f17 = rectFE.top;
            if (f17 > 0.0f) {
                this.f47875u = 0;
                f11 = -f17;
            } else {
                float f18 = rectFE.bottom;
                if (f18 < fH) {
                    this.f47875u = 1;
                    f11 = fH - f18;
                } else {
                    this.f47875u = -1;
                    f11 = 0.0f;
                }
            }
        }
        float fI = I(this.f47862h);
        if (fWidth <= fI) {
            int i12 = d.f47883a[this.f47878x.ordinal()];
            if (i12 != 2) {
                if (i12 != 3) {
                    f12 = (fI - fWidth) / 2.0f;
                    f13 = rectFE.left;
                } else {
                    f12 = fI - fWidth;
                    f13 = rectFE.left;
                }
                f16 = f12 - f13;
            } else {
                f16 = -rectFE.left;
            }
            this.f47874t = 2;
        } else {
            float f19 = rectFE.left;
            if (f19 > 0.0f) {
                this.f47874t = 0;
                f16 = -f19;
            } else {
                float f20 = rectFE.right;
                if (f20 < fI) {
                    f16 = fI - f20;
                    this.f47874t = 1;
                } else {
                    this.f47874t = -1;
                }
            }
        }
        this.f47868n.postTranslate(f16, f11);
        return true;
    }

    private RectF E(Matrix matrix) {
        Drawable drawable = this.f47862h.getDrawable();
        if (drawable == null) {
            return null;
        }
        this.f47869o.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrix.mapRect(this.f47869o);
        return this.f47869o;
    }

    private Matrix F() {
        this.f47867m.set(this.f47866l);
        this.f47867m.postConcat(this.f47868n);
        return this.f47867m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int H(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int I(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingStart()) - imageView.getPaddingEnd();
    }

    private float P(Matrix matrix, int i11) {
        matrix.getValues(this.f47870p);
        return this.f47870p[i11];
    }

    private void Q(ImageView imageView) {
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new b());
        this.f47863i = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new c());
    }

    private void S() {
        this.f47868n.reset();
        j0(this.f47876v);
        V(F());
        B();
    }

    private void V(Matrix matrix) {
        this.f47862h.setImageMatrix(matrix);
    }

    static /* bridge */ /* synthetic */ j j(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static /* bridge */ /* synthetic */ e k(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static /* bridge */ /* synthetic */ f l(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static /* bridge */ /* synthetic */ g m(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static /* bridge */ /* synthetic */ h o(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static /* bridge */ /* synthetic */ k r(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    private void u0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float fI = I(this.f47862h);
        float fH = H(this.f47862h);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f47866l.reset();
        float f11 = intrinsicWidth;
        float f12 = fI / f11;
        float f13 = intrinsicHeight;
        float f14 = fH / f13;
        ImageView.ScaleType scaleType = this.f47878x;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f47866l.postTranslate((fI - f11) / 2.0f, (fH - f13) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(f12, f14);
            this.f47866l.postScale(fMax, fMax);
            this.f47866l.postTranslate((fI - (f11 * fMax)) / 2.0f, (fH - (f13 * fMax)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min(1.0f, Math.min(f12, f14));
            this.f47866l.postScale(fMin, fMin);
            this.f47866l.postTranslate((fI - (f11 * fMin)) / 2.0f, (fH - (f13 * fMin)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f11, f13);
            RectF rectF2 = new RectF(0.0f, 0.0f, fI, fH);
            if (((int) this.f47876v) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f13, f11);
            }
            int i11 = d.f47883a[this.f47878x.ordinal()];
            if (i11 == 1) {
                this.f47866l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i11 == 2) {
                this.f47866l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i11 == 3) {
                this.f47866l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i11 == 4) {
                this.f47866l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        S();
    }

    private void z() {
        FlingRunnable flingRunnable = this.f47873s;
        if (flingRunnable != null) {
            flingRunnable.cancelFling();
            this.f47873s = null;
        }
    }

    public void C(Matrix matrix) {
        matrix.set(F());
    }

    public RectF D() {
        B();
        return E(F());
    }

    public Matrix G() {
        return this.f47867m;
    }

    public float J() {
        return this.f47859e;
    }

    public float K() {
        return this.f47858d;
    }

    public float L() {
        return this.f47857c;
    }

    public float M() {
        return (float) Math.sqrt(((float) Math.pow(P(this.f47868n, 0), 2.0d)) + ((float) Math.pow(P(this.f47868n, 3), 2.0d)));
    }

    public ImageView.ScaleType N() {
        return this.f47878x;
    }

    public void O(Matrix matrix) {
        matrix.set(this.f47868n);
    }

    public boolean R() {
        return this.f47877w;
    }

    public void T(boolean z10) {
        this.f47860f = z10;
    }

    public boolean U(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        if (this.f47862h.getDrawable() == null) {
            return false;
        }
        this.f47868n.set(matrix);
        A();
        return true;
    }

    public void W(float f11) {
        o.a(this.f47857c, this.f47858d, f11);
        this.f47859e = f11;
    }

    public void X(float f11) {
        o.a(this.f47857c, f11, this.f47859e);
        this.f47858d = f11;
    }

    public void Y(float f11) {
        o.a(f11, this.f47858d, this.f47859e);
        this.f47857c = f11;
    }

    public void Z(View.OnClickListener onClickListener) {
        this.f47871q = onClickListener;
    }

    public void a0(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f47863i.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void b0(View.OnLongClickListener onLongClickListener) {
        this.f47872r = onLongClickListener;
    }

    public void c0(com.transsion.photoview.d dVar) {
    }

    public void d0(e eVar) {
    }

    public void e0(f fVar) {
    }

    public void f0(g gVar) {
    }

    public void g0(h hVar) {
    }

    public void h0(j jVar) {
    }

    public void i0(k kVar) {
    }

    public void j0(float f11) {
        this.f47868n.postRotate(f11 % 360.0f);
        A();
    }

    public void k0(float f11) {
        this.f47868n.setRotate(f11 % 360.0f);
        A();
    }

    public void l0(float f11) {
        n0(f11, false);
    }

    public void m0(float f11, float f12, float f13, boolean z10) {
        if (f11 < this.f47857c || f11 > this.f47859e) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z10) {
            this.f47862h.post(new AnimatedZoomRunnable(M(), f11, f12, f13));
        } else {
            this.f47868n.setScale(f11, f11, f12, f13);
            A();
        }
    }

    public void n0(float f11, boolean z10) {
        m0(f11, this.f47862h.getRight() / 2.0f, this.f47862h.getBottom() / 2.0f, z10);
    }

    public void o0(float f11, float f12, float f13) {
        o.a(f11, f12, f13);
        this.f47857c = f11;
        this.f47858d = f12;
        this.f47859e = f13;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        if (i11 == i15 && i12 == i16 && i13 == i17 && i14 == i18) {
            return;
        }
        u0(this.f47862h.getDrawable());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006f  */
    /* JADX WARN: Code duplicated, block: B:32:0x0087  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ba  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        com.transsion.photoview.b bVar;
        boolean z11;
        GestureDetector gestureDetector;
        boolean zG;
        boolean zF;
        boolean z12;
        boolean z13;
        RectF rectFD;
        boolean z14 = false;
        if (!this.f47877w || !o.d((ImageView) view)) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                if (M() < this.f47857c) {
                    RectF rectFD2 = D();
                    if (rectFD2 != null) {
                        view.post(new AnimatedZoomRunnable(M(), this.f47857c, rectFD2.centerX(), rectFD2.centerY()));
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (M() <= this.f47859e || (rectFD = D()) == null) {
                    z10 = false;
                } else {
                    view.post(new AnimatedZoomRunnable(M(), this.f47859e, rectFD.centerX(), rectFD.centerY()));
                    z10 = true;
                }
                this.f47865k.d();
            }
            bVar = this.f47864j;
            if (bVar != null) {
                zG = bVar.g();
                zF = this.f47864j.f();
                boolean zH = this.f47864j.h(motionEvent);
                if (!zG || this.f47864j.g()) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (!zF || this.f47864j.f()) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                if (z12 && z13) {
                    z14 = true;
                }
                this.f47861g = z14;
                z11 = zH;
            } else {
                z11 = z10;
            }
            gestureDetector = this.f47863i;
            if (gestureDetector == null && gestureDetector.onTouchEvent(motionEvent)) {
                return true;
            }
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        z();
        z10 = false;
        bVar = this.f47864j;
        if (bVar != null) {
            zG = bVar.g();
            zF = this.f47864j.f();
            boolean zH2 = this.f47864j.h(motionEvent);
            if (zG) {
                z12 = false;
            } else {
                z12 = false;
            }
            if (zF) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (z12) {
                z14 = true;
            }
            this.f47861g = z14;
            z11 = zH2;
        } else {
            z11 = z10;
        }
        gestureDetector = this.f47863i;
        return gestureDetector == null ? z11 : z11;
    }

    public void p0(ImageView.ScaleType scaleType) {
        if (!o.e(scaleType) || scaleType == this.f47878x) {
            return;
        }
        this.f47878x = scaleType;
        t0();
    }

    public void q0(i iVar) {
        n nVar = this.f47865k;
        if (nVar != null) {
            nVar.k(iVar);
        }
    }

    public void r0(int i11) {
        this.f47856b = i11;
    }

    public void s0(boolean z10) {
        this.f47877w = z10;
        t0();
    }

    public void t0() {
        if (this.f47877w) {
            u0(this.f47862h.getDrawable());
        } else {
            S();
        }
    }
}
