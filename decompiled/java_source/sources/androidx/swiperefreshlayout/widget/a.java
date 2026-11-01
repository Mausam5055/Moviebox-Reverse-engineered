package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import androidx.swiperefreshlayout.R$styleable;

/* JADX INFO: loaded from: classes2.dex */
class a extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation.AnimationListener f14945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f14946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f14947c;

    /* JADX INFO: renamed from: androidx.swiperefreshlayout.widget.a$a, reason: collision with other inner class name */
    private static class C0123a extends OvalShape {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Paint f14948a = new Paint();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f14949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f14950c;

        C0123a(a aVar, int i11) {
            this.f14950c = aVar;
            this.f14949b = i11;
            a((int) rect().width());
        }

        private void a(int i11) {
            float f11 = i11 / 2;
            this.f14948a.setShader(new RadialGradient(f11, f11, this.f14949b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width = this.f14950c.getWidth() / 2;
            float f11 = width;
            float height = this.f14950c.getHeight() / 2;
            canvas.drawCircle(f11, height, f11, this.f14948a);
            canvas.drawCircle(f11, height, width - this.f14949b, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f11, float f12) {
            super.onResize(f11, f12);
            a((int) f11);
        }
    }

    a(Context context) {
        ShapeDrawable shapeDrawable;
        super(context);
        float f11 = getContext().getResources().getDisplayMetrics().density;
        int i11 = (int) (1.75f * f11);
        int i12 = (int) (0.0f * f11);
        this.f14946b = (int) (3.5f * f11);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(R$styleable.SwipeRefreshLayout);
        this.f14947c = typedArrayObtainStyledAttributes.getColor(R$styleable.SwipeRefreshLayout_swipeRefreshLayoutProgressSpinnerBackgroundColor, -328966);
        typedArrayObtainStyledAttributes.recycle();
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f11 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C0123a(this, this.f14946b));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f14946b, i12, i11, 503316480);
            int i13 = this.f14946b;
            setPadding(i13, i13, i13, i13);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(this.f14947c);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    private boolean a() {
        return true;
    }

    public void b(Animation.AnimationListener animationListener) {
        this.f14945a = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f14945a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f14945a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f14946b * 2), getMeasuredHeight() + (this.f14946b * 2));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i11);
            this.f14947c = i11;
        }
    }
}
