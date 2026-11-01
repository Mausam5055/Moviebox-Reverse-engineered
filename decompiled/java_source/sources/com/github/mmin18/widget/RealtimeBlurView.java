package com.github.mmin18.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import com.github.mmin18.realtimeblurview.R$styleable;

/* JADX INFO: loaded from: classes3.dex */
public class RealtimeBlurView extends View {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static int f24140p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static int f24141q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static StopException f24142r = new StopException(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f24143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f24145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f24146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f24147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Bitmap f24148f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap f24149g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Canvas f24150h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f24151i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f24152j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Rect f24153k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Rect f24154l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f24155m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f24156n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f24157o;

    private static class StopException extends RuntimeException {
        private StopException() {
        }

        /* synthetic */ StopException(a aVar) {
            this();
        }
    }

    class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            int[] iArr = new int[2];
            Bitmap bitmap = RealtimeBlurView.this.f24149g;
            View view = RealtimeBlurView.this.f24155m;
            if (view != null && RealtimeBlurView.this.isShown() && RealtimeBlurView.this.l()) {
                boolean z10 = RealtimeBlurView.this.f24149g != bitmap;
                view.getLocationOnScreen(iArr);
                int i11 = -iArr[0];
                int i12 = -iArr[1];
                RealtimeBlurView.this.getLocationOnScreen(iArr);
                int i13 = i11 + iArr[0];
                int i14 = i12 + iArr[1];
                RealtimeBlurView.this.f24148f.eraseColor(RealtimeBlurView.this.f24144b & 16777215);
                int iSave = RealtimeBlurView.this.f24150h.save();
                RealtimeBlurView.this.f24151i = true;
                RealtimeBlurView.g();
                try {
                    RealtimeBlurView.this.f24150h.scale((RealtimeBlurView.this.f24148f.getWidth() * 1.0f) / RealtimeBlurView.this.getWidth(), (RealtimeBlurView.this.f24148f.getHeight() * 1.0f) / RealtimeBlurView.this.getHeight());
                    RealtimeBlurView.this.f24150h.translate(-i13, -i14);
                    if (view.getBackground() != null) {
                        view.getBackground().draw(RealtimeBlurView.this.f24150h);
                    }
                    view.draw(RealtimeBlurView.this.f24150h);
                } catch (StopException unused) {
                } finally {
                    RealtimeBlurView.this.f24151i = false;
                    RealtimeBlurView.h();
                    RealtimeBlurView.this.f24150h.restoreToCount(iSave);
                }
                RealtimeBlurView realtimeBlurView = RealtimeBlurView.this;
                realtimeBlurView.j(realtimeBlurView.f24148f, RealtimeBlurView.this.f24149g);
                if (z10 || RealtimeBlurView.this.f24156n) {
                    RealtimeBlurView.this.invalidate();
                }
            }
            return true;
        }
    }

    public RealtimeBlurView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24153k = new Rect();
        this.f24154l = new Rect();
        this.f24157o = new a();
        this.f24146d = getBlurImpl();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RealtimeBlurView);
        this.f24145c = typedArrayObtainStyledAttributes.getDimension(R$styleable.RealtimeBlurView_realtimeBlurRadius, TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        this.f24143a = typedArrayObtainStyledAttributes.getFloat(R$styleable.RealtimeBlurView_realtimeDownsampleFactor, 4.0f);
        this.f24144b = typedArrayObtainStyledAttributes.getColor(R$styleable.RealtimeBlurView_realtimeOverlayColor, -1426063361);
        typedArrayObtainStyledAttributes.recycle();
        this.f24152j = new Paint();
    }

    static /* synthetic */ int g() {
        int i11 = f24140p;
        f24140p = i11 + 1;
        return i11;
    }

    static /* synthetic */ int h() {
        int i11 = f24140p;
        f24140p = i11 - 1;
        return i11;
    }

    private void n() {
        Bitmap bitmap = this.f24148f;
        if (bitmap != null) {
            bitmap.recycle();
            this.f24148f = null;
        }
        Bitmap bitmap2 = this.f24149g;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f24149g = null;
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f24151i) {
            throw f24142r;
        }
        if (f24140p > 0) {
            return;
        }
        super.draw(canvas);
    }

    protected View getActivityDecorView() {
        Context context = getContext();
        for (int i11 = 0; i11 < 4 && context != null && !(context instanceof Activity) && (context instanceof ContextWrapper); i11++) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView();
        }
        return null;
    }

    protected c getBlurImpl() {
        if (f24141q == 0) {
            try {
                com.github.mmin18.widget.a aVar = new com.github.mmin18.widget.a();
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                aVar.b(getContext(), bitmapCreateBitmap, 4.0f);
                aVar.release();
                bitmapCreateBitmap.recycle();
                f24141q = 3;
            } catch (Throwable unused) {
            }
        }
        if (f24141q == 0) {
            try {
                getClass().getClassLoader().loadClass("androidx.renderscript.RenderScript");
                b bVar = new b();
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                bVar.b(getContext(), bitmapCreateBitmap2, 4.0f);
                bVar.release();
                bitmapCreateBitmap2.recycle();
                f24141q = 1;
            } catch (Throwable unused2) {
            }
        }
        if (f24141q == 0) {
            try {
                getClass().getClassLoader().loadClass("androidx.renderscript.RenderScript");
                e eVar = new e();
                Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888);
                eVar.b(getContext(), bitmapCreateBitmap3, 4.0f);
                eVar.release();
                bitmapCreateBitmap3.recycle();
                f24141q = 2;
            } catch (Throwable unused3) {
            }
        }
        if (f24141q == 0) {
            f24141q = -1;
        }
        int i11 = f24141q;
        if (i11 == 1) {
            return new b();
        }
        if (i11 != 2) {
            return i11 != 3 ? new d() : new com.github.mmin18.widget.a();
        }
        return new e();
    }

    protected void j(Bitmap bitmap, Bitmap bitmap2) {
        this.f24146d.a(bitmap, bitmap2);
    }

    protected void k(Canvas canvas, Bitmap bitmap, int i11) {
        if (bitmap != null) {
            this.f24153k.right = bitmap.getWidth();
            this.f24153k.bottom = bitmap.getHeight();
            this.f24154l.right = getWidth();
            this.f24154l.bottom = getHeight();
            canvas.drawBitmap(bitmap, this.f24153k, this.f24154l, (Paint) null);
        }
        this.f24152j.setColor(i11);
        canvas.drawRect(this.f24154l, this.f24152j);
    }

    protected boolean l() {
        Bitmap bitmap;
        float f11 = this.f24145c;
        if (f11 == 0.0f) {
            m();
            return false;
        }
        float f12 = this.f24143a;
        float f13 = f11 / f12;
        if (f13 > 25.0f) {
            f12 = (f12 * f13) / 25.0f;
            f13 = 25.0f;
        }
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(1, (int) (width / f12));
        int iMax2 = Math.max(1, (int) (height / f12));
        boolean z10 = this.f24147e;
        if (this.f24150h == null || (bitmap = this.f24149g) == null || bitmap.getWidth() != iMax || this.f24149g.getHeight() != iMax2) {
            n();
            try {
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax2, config);
                this.f24148f = bitmapCreateBitmap;
                if (bitmapCreateBitmap == null) {
                    m();
                    return false;
                }
                this.f24150h = new Canvas(this.f24148f);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iMax, iMax2, config);
                this.f24149g = bitmapCreateBitmap2;
                if (bitmapCreateBitmap2 == null) {
                    m();
                    return false;
                }
                z10 = true;
            } catch (OutOfMemoryError unused) {
                m();
                return false;
            } catch (Throwable unused2) {
                m();
                return false;
            }
        }
        if (z10) {
            if (!this.f24146d.b(getContext(), this.f24148f, f13)) {
                return false;
            }
            this.f24147e = false;
        }
        return true;
    }

    protected void m() {
        n();
        this.f24146d.release();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        View activityDecorView = getActivityDecorView();
        this.f24155m = activityDecorView;
        if (activityDecorView == null) {
            this.f24156n = false;
            return;
        }
        activityDecorView.getViewTreeObserver().addOnPreDrawListener(this.f24157o);
        boolean z10 = this.f24155m.getRootView() != getRootView();
        this.f24156n = z10;
        if (z10) {
            this.f24155m.postInvalidate();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        View view = this.f24155m;
        if (view != null) {
            view.getViewTreeObserver().removeOnPreDrawListener(this.f24157o);
        }
        m();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        k(canvas, this.f24149g, this.f24144b);
    }

    public void setBlurRadius(float f11) {
        if (this.f24145c != f11) {
            this.f24145c = f11;
            this.f24147e = true;
            invalidate();
        }
    }

    public void setDownsampleFactor(float f11) {
        if (f11 <= 0.0f) {
            throw new IllegalArgumentException("Downsample factor must be greater than 0.");
        }
        if (this.f24143a != f11) {
            this.f24143a = f11;
            this.f24147e = true;
            n();
            invalidate();
        }
    }

    public void setOverlayColor(int i11) {
        if (this.f24144b != i11) {
            this.f24144b = i11;
            invalidate();
        }
    }
}
