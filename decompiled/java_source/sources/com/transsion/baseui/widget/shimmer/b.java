package com.transsion.baseui.widget.shimmer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ValueAnimator.AnimatorUpdateListener f43712a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f43713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f43714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f43715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f43716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.baseui.widget.shimmer.a f43717f;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            b.this.invalidateSelf();
        }
    }

    public b() {
        Paint paint = new Paint();
        this.f43713b = paint;
        this.f43714c = new Rect();
        this.f43715d = new Matrix();
        paint.setAntiAlias(true);
    }

    private float c(float f11, float f12, float f13) {
        return f11 + ((f12 - f11) * f13);
    }

    private void i() {
        com.transsion.baseui.widget.shimmer.a aVar;
        Shader radialGradient;
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (iWidth == 0 || iHeight == 0 || (aVar = this.f43717f) == null) {
            return;
        }
        int iD = aVar.d(iWidth);
        int iA = this.f43717f.a(iHeight);
        com.transsion.baseui.widget.shimmer.a aVar2 = this.f43717f;
        boolean z10 = true;
        if (aVar2.f43696g != 1) {
            int i11 = aVar2.f43693d;
            if (i11 != 1 && i11 != 3) {
                z10 = false;
            }
            if (z10) {
                iD = 0;
            }
            if (!z10) {
                iA = 0;
            }
            float f11 = iA;
            com.transsion.baseui.widget.shimmer.a aVar3 = this.f43717f;
            radialGradient = new LinearGradient(0.0f, 0.0f, iD, f11, aVar3.f43691b, aVar3.f43690a, Shader.TileMode.CLAMP);
        } else {
            float f12 = iA / 2.0f;
            float fMax = (float) (((double) Math.max(iD, iA)) / Math.sqrt(2.0d));
            com.transsion.baseui.widget.shimmer.a aVar4 = this.f43717f;
            radialGradient = new RadialGradient(iD / 2.0f, f12, fMax, aVar4.f43691b, aVar4.f43690a, Shader.TileMode.CLAMP);
        }
        this.f43713b.setShader(radialGradient);
    }

    private void j() {
        boolean zIsStarted;
        if (this.f43717f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f43716e;
        if (valueAnimator != null) {
            zIsStarted = valueAnimator.isStarted();
            this.f43716e.cancel();
            this.f43716e.removeAllUpdateListeners();
        } else {
            zIsStarted = false;
        }
        com.transsion.baseui.widget.shimmer.a aVar = this.f43717f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar.f43710u / aVar.f43709t) + 1.0f);
        this.f43716e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatMode(this.f43717f.f43708s);
        this.f43716e.setRepeatCount(this.f43717f.f43707r);
        ValueAnimator valueAnimator2 = this.f43716e;
        com.transsion.baseui.widget.shimmer.a aVar2 = this.f43717f;
        valueAnimator2.setDuration(aVar2.f43709t + aVar2.f43710u);
        this.f43716e.addUpdateListener(this.f43712a);
        if (zIsStarted) {
            this.f43716e.start();
        }
    }

    public boolean a() {
        ValueAnimator valueAnimator = this.f43716e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    void b() {
        com.transsion.baseui.widget.shimmer.a aVar;
        ValueAnimator valueAnimator = this.f43716e;
        if (valueAnimator == null || valueAnimator.isStarted() || (aVar = this.f43717f) == null || !aVar.f43705p || getCallback() == null) {
            return;
        }
        this.f43716e.start();
    }

    public void d(com.transsion.baseui.widget.shimmer.a aVar) {
        this.f43717f = aVar;
        if (aVar != null) {
            this.f43713b.setXfermode(new PorterDuffXfermode(this.f43717f.f43706q ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        i();
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float fC;
        float fC2;
        if (this.f43717f == null || this.f43713b.getShader() == null) {
            return;
        }
        float fTan = (float) Math.tan(Math.toRadians(this.f43717f.f43703n));
        float fHeight = this.f43714c.height() + (this.f43714c.width() * fTan);
        float fWidth = this.f43714c.width() + (fTan * this.f43714c.height());
        ValueAnimator valueAnimator = this.f43716e;
        float f11 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i11 = this.f43717f.f43693d;
        if (i11 != 1) {
            if (i11 == 2) {
                fC2 = c(fWidth, -fWidth, animatedFraction);
            } else if (i11 != 3) {
                fC2 = c(-fWidth, fWidth, animatedFraction);
            } else {
                fC = c(fHeight, -fHeight, animatedFraction);
            }
            f11 = fC2;
            fC = 0.0f;
        } else {
            fC = c(-fHeight, fHeight, animatedFraction);
        }
        this.f43715d.reset();
        this.f43715d.setRotate(this.f43717f.f43703n, this.f43714c.width() / 2.0f, this.f43714c.height() / 2.0f);
        this.f43715d.postTranslate(f11, fC);
        this.f43713b.getShader().setLocalMatrix(this.f43715d);
        canvas.drawRect(this.f43714c, this.f43713b);
    }

    public void e(Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimator = this.f43716e;
        if (valueAnimator != null) {
            ArrayList<Animator.AnimatorListener> listeners = valueAnimator.getListeners();
            if (listeners != null && listeners.size() > 0) {
                listeners.clear();
            }
            this.f43716e.addListener(animatorListener);
        }
    }

    public void f() {
        if (this.f43716e == null || a() || getCallback() == null) {
            return;
        }
        this.f43716e.start();
    }

    public void g(int i11, AnimatorListenerAdapter animatorListenerAdapter) {
        com.transsion.baseui.widget.shimmer.a aVar;
        if (a() || getCallback() == null || (aVar = this.f43717f) == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f43716e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        } else {
            this.f43716e = ValueAnimator.ofFloat(0.0f, (aVar.f43710u / aVar.f43709t) + 1.0f);
        }
        this.f43716e.setRepeatMode(this.f43717f.f43708s);
        this.f43716e.setRepeatCount(i11);
        ValueAnimator valueAnimator2 = this.f43716e;
        com.transsion.baseui.widget.shimmer.a aVar2 = this.f43717f;
        valueAnimator2.setDuration(aVar2.f43709t + aVar2.f43710u);
        this.f43716e.addUpdateListener(this.f43712a);
        if (animatorListenerAdapter != null) {
            this.f43716e.addListener(animatorListenerAdapter);
        }
        this.f43716e.start();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        com.transsion.baseui.widget.shimmer.a aVar = this.f43717f;
        return (aVar == null || !(aVar.f43704o || aVar.f43706q)) ? -1 : -3;
    }

    public void h() {
        if (this.f43716e == null || !a()) {
            return;
        }
        this.f43716e.end();
        this.f43716e.cancel();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f43714c.set(0, 0, rect.width(), rect.height());
        i();
        b();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
