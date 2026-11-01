package com.transsion.shorttv_pugc.base.widget.shimmer;

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

/* JADX INFO: loaded from: classes6.dex */
public final class b extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ValueAnimator.AnimatorUpdateListener f53936a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f53937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f53938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f53939d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f53940e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.shorttv_pugc.base.widget.shimmer.a f53941f;

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
        this.f53937b = paint;
        this.f53938c = new Rect();
        this.f53939d = new Matrix();
        paint.setAntiAlias(true);
    }

    private float c(float f11, float f12, float f13) {
        return f11 + ((f12 - f11) * f13);
    }

    private void i() {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar;
        Shader radialGradient;
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (iWidth == 0 || iHeight == 0 || (aVar = this.f53941f) == null) {
            return;
        }
        int iD = aVar.d(iWidth);
        int iA = this.f53941f.a(iHeight);
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar2 = this.f53941f;
        boolean z10 = true;
        if (aVar2.f53920g != 1) {
            int i11 = aVar2.f53917d;
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
            com.transsion.shorttv_pugc.base.widget.shimmer.a aVar3 = this.f53941f;
            radialGradient = new LinearGradient(0.0f, 0.0f, iD, f11, aVar3.f53915b, aVar3.f53914a, Shader.TileMode.CLAMP);
        } else {
            float f12 = iA / 2.0f;
            float fMax = (float) (((double) Math.max(iD, iA)) / Math.sqrt(2.0d));
            com.transsion.shorttv_pugc.base.widget.shimmer.a aVar4 = this.f53941f;
            radialGradient = new RadialGradient(iD / 2.0f, f12, fMax, aVar4.f53915b, aVar4.f53914a, Shader.TileMode.CLAMP);
        }
        this.f53937b.setShader(radialGradient);
    }

    private void j() {
        boolean zIsStarted;
        if (this.f53941f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f53940e;
        if (valueAnimator != null) {
            zIsStarted = valueAnimator.isStarted();
            this.f53940e.cancel();
            this.f53940e.removeAllUpdateListeners();
        } else {
            zIsStarted = false;
        }
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar = this.f53941f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar.f53934u / aVar.f53933t) + 1.0f);
        this.f53940e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatMode(this.f53941f.f53932s);
        this.f53940e.setRepeatCount(this.f53941f.f53931r);
        ValueAnimator valueAnimator2 = this.f53940e;
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar2 = this.f53941f;
        valueAnimator2.setDuration(aVar2.f53933t + aVar2.f53934u);
        this.f53940e.addUpdateListener(this.f53936a);
        if (zIsStarted) {
            this.f53940e.start();
        }
    }

    public boolean a() {
        ValueAnimator valueAnimator = this.f53940e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    void b() {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar;
        ValueAnimator valueAnimator = this.f53940e;
        if (valueAnimator == null || valueAnimator.isStarted() || (aVar = this.f53941f) == null || !aVar.f53929p || getCallback() == null) {
            return;
        }
        this.f53940e.start();
    }

    public void d(com.transsion.shorttv_pugc.base.widget.shimmer.a aVar) {
        this.f53941f = aVar;
        if (aVar != null) {
            this.f53937b.setXfermode(new PorterDuffXfermode(this.f53941f.f53930q ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        i();
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float fC;
        float fC2;
        if (this.f53941f == null || this.f53937b.getShader() == null) {
            return;
        }
        float fTan = (float) Math.tan(Math.toRadians(this.f53941f.f53927n));
        float fHeight = this.f53938c.height() + (this.f53938c.width() * fTan);
        float fWidth = this.f53938c.width() + (fTan * this.f53938c.height());
        ValueAnimator valueAnimator = this.f53940e;
        float f11 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i11 = this.f53941f.f53917d;
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
        this.f53939d.reset();
        this.f53939d.setRotate(this.f53941f.f53927n, this.f53938c.width() / 2.0f, this.f53938c.height() / 2.0f);
        this.f53939d.postTranslate(f11, fC);
        this.f53937b.getShader().setLocalMatrix(this.f53939d);
        canvas.drawRect(this.f53938c, this.f53937b);
    }

    public void e(Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimator = this.f53940e;
        if (valueAnimator != null) {
            ArrayList<Animator.AnimatorListener> listeners = valueAnimator.getListeners();
            if (listeners != null && listeners.size() > 0) {
                listeners.clear();
            }
            this.f53940e.addListener(animatorListener);
        }
    }

    public void f() {
        if (this.f53940e == null || a() || getCallback() == null) {
            return;
        }
        this.f53940e.start();
    }

    public void g(int i11, AnimatorListenerAdapter animatorListenerAdapter) {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar;
        if (a() || getCallback() == null || (aVar = this.f53941f) == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f53940e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        } else {
            this.f53940e = ValueAnimator.ofFloat(0.0f, (aVar.f53934u / aVar.f53933t) + 1.0f);
        }
        this.f53940e.setRepeatMode(this.f53941f.f53932s);
        this.f53940e.setRepeatCount(i11);
        ValueAnimator valueAnimator2 = this.f53940e;
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar2 = this.f53941f;
        valueAnimator2.setDuration(aVar2.f53933t + aVar2.f53934u);
        this.f53940e.addUpdateListener(this.f53936a);
        if (animatorListenerAdapter != null) {
            this.f53940e.addListener(animatorListenerAdapter);
        }
        this.f53940e.start();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        com.transsion.shorttv_pugc.base.widget.shimmer.a aVar = this.f53941f;
        return (aVar == null || !(aVar.f53928o || aVar.f53930q)) ? -1 : -3;
    }

    public void h() {
        if (this.f53940e == null || !a()) {
            return;
        }
        this.f53940e.end();
        this.f53940e.cancel();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f53938c.set(0, 0, rect.width(), rect.height());
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
