package com.transsion.shorttv.base.widget.shimmer;

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
    private final ValueAnimator.AnimatorUpdateListener f52956a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f52957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f52958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f52959d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f52960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.shorttv.base.widget.shimmer.a f52961f;

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
        this.f52957b = paint;
        this.f52958c = new Rect();
        this.f52959d = new Matrix();
        paint.setAntiAlias(true);
    }

    private float c(float f11, float f12, float f13) {
        return f11 + ((f12 - f11) * f13);
    }

    private void i() {
        com.transsion.shorttv.base.widget.shimmer.a aVar;
        Shader radialGradient;
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (iWidth == 0 || iHeight == 0 || (aVar = this.f52961f) == null) {
            return;
        }
        int iD = aVar.d(iWidth);
        int iA = this.f52961f.a(iHeight);
        com.transsion.shorttv.base.widget.shimmer.a aVar2 = this.f52961f;
        boolean z10 = true;
        if (aVar2.f52940g != 1) {
            int i11 = aVar2.f52937d;
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
            com.transsion.shorttv.base.widget.shimmer.a aVar3 = this.f52961f;
            radialGradient = new LinearGradient(0.0f, 0.0f, iD, f11, aVar3.f52935b, aVar3.f52934a, Shader.TileMode.CLAMP);
        } else {
            float f12 = iA / 2.0f;
            float fMax = (float) (((double) Math.max(iD, iA)) / Math.sqrt(2.0d));
            com.transsion.shorttv.base.widget.shimmer.a aVar4 = this.f52961f;
            radialGradient = new RadialGradient(iD / 2.0f, f12, fMax, aVar4.f52935b, aVar4.f52934a, Shader.TileMode.CLAMP);
        }
        this.f52957b.setShader(radialGradient);
    }

    private void j() {
        boolean zIsStarted;
        if (this.f52961f == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f52960e;
        if (valueAnimator != null) {
            zIsStarted = valueAnimator.isStarted();
            this.f52960e.cancel();
            this.f52960e.removeAllUpdateListeners();
        } else {
            zIsStarted = false;
        }
        com.transsion.shorttv.base.widget.shimmer.a aVar = this.f52961f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, (aVar.f52954u / aVar.f52953t) + 1.0f);
        this.f52960e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatMode(this.f52961f.f52952s);
        this.f52960e.setRepeatCount(this.f52961f.f52951r);
        ValueAnimator valueAnimator2 = this.f52960e;
        com.transsion.shorttv.base.widget.shimmer.a aVar2 = this.f52961f;
        valueAnimator2.setDuration(aVar2.f52953t + aVar2.f52954u);
        this.f52960e.addUpdateListener(this.f52956a);
        if (zIsStarted) {
            this.f52960e.start();
        }
    }

    public boolean a() {
        ValueAnimator valueAnimator = this.f52960e;
        return valueAnimator != null && valueAnimator.isStarted();
    }

    void b() {
        com.transsion.shorttv.base.widget.shimmer.a aVar;
        ValueAnimator valueAnimator = this.f52960e;
        if (valueAnimator == null || valueAnimator.isStarted() || (aVar = this.f52961f) == null || !aVar.f52949p || getCallback() == null) {
            return;
        }
        this.f52960e.start();
    }

    public void d(com.transsion.shorttv.base.widget.shimmer.a aVar) {
        this.f52961f = aVar;
        if (aVar != null) {
            this.f52957b.setXfermode(new PorterDuffXfermode(this.f52961f.f52950q ? PorterDuff.Mode.DST_IN : PorterDuff.Mode.SRC_IN));
        }
        i();
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float fC;
        float fC2;
        if (this.f52961f == null || this.f52957b.getShader() == null) {
            return;
        }
        float fTan = (float) Math.tan(Math.toRadians(this.f52961f.f52947n));
        float fHeight = this.f52958c.height() + (this.f52958c.width() * fTan);
        float fWidth = this.f52958c.width() + (fTan * this.f52958c.height());
        ValueAnimator valueAnimator = this.f52960e;
        float f11 = 0.0f;
        float animatedFraction = valueAnimator != null ? valueAnimator.getAnimatedFraction() : 0.0f;
        int i11 = this.f52961f.f52937d;
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
        this.f52959d.reset();
        this.f52959d.setRotate(this.f52961f.f52947n, this.f52958c.width() / 2.0f, this.f52958c.height() / 2.0f);
        this.f52959d.postTranslate(f11, fC);
        this.f52957b.getShader().setLocalMatrix(this.f52959d);
        canvas.drawRect(this.f52958c, this.f52957b);
    }

    public void e(Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimator = this.f52960e;
        if (valueAnimator != null) {
            ArrayList<Animator.AnimatorListener> listeners = valueAnimator.getListeners();
            if (listeners != null && listeners.size() > 0) {
                listeners.clear();
            }
            this.f52960e.addListener(animatorListener);
        }
    }

    public void f() {
        if (this.f52960e == null || a() || getCallback() == null) {
            return;
        }
        this.f52960e.start();
    }

    public void g(int i11, AnimatorListenerAdapter animatorListenerAdapter) {
        com.transsion.shorttv.base.widget.shimmer.a aVar;
        if (a() || getCallback() == null || (aVar = this.f52961f) == null) {
            return;
        }
        ValueAnimator valueAnimator = this.f52960e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        } else {
            this.f52960e = ValueAnimator.ofFloat(0.0f, (aVar.f52954u / aVar.f52953t) + 1.0f);
        }
        this.f52960e.setRepeatMode(this.f52961f.f52952s);
        this.f52960e.setRepeatCount(i11);
        ValueAnimator valueAnimator2 = this.f52960e;
        com.transsion.shorttv.base.widget.shimmer.a aVar2 = this.f52961f;
        valueAnimator2.setDuration(aVar2.f52953t + aVar2.f52954u);
        this.f52960e.addUpdateListener(this.f52956a);
        if (animatorListenerAdapter != null) {
            this.f52960e.addListener(animatorListenerAdapter);
        }
        this.f52960e.start();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        com.transsion.shorttv.base.widget.shimmer.a aVar = this.f52961f;
        return (aVar == null || !(aVar.f52948o || aVar.f52950q)) ? -1 : -3;
    }

    public void h() {
        if (this.f52960e == null || !a()) {
            return;
        }
        this.f52960e.end();
        this.f52960e.cancel();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f52958c.set(0, 0, rect.width(), rect.height());
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
