package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class ProgressBar extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Runnable f35846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f35847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f35848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f35849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f35850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f35851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f35852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f35853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Drawable f35854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f35855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f35856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f35857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f35858m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f35859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f35860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Drawable f35861p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Rect f35862q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Drawable f35863r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f35864s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f35865t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f35866u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f35867v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f35868w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f35869x;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ProgressBar.this.invalidate();
        }
    }

    public ProgressBar(Context context) {
        super(context);
        this.f35846a = new a();
        this.f35852g = 25L;
        this.f35853h = new Handler(Looper.getMainLooper());
        this.f35856k = false;
        this.f35859n = 0.95f;
        this.f35860o = false;
        this.f35862q = new Rect();
        a(context);
    }

    public ProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35846a = new a();
        this.f35852g = 25L;
        this.f35853h = new Handler(Looper.getMainLooper());
        this.f35856k = false;
        this.f35859n = 0.95f;
        this.f35860o = false;
        this.f35862q = new Rect();
        a(context);
    }

    private void a(Context context) {
        setWillNotDraw(false);
    }

    private void a(Canvas canvas, float f11) {
        Drawable drawable;
        Drawable drawable2;
        if (this.f35865t) {
            float f12 = this.f35851f;
            float f13 = this.f35864s * 0.5f;
            int i11 = (int) ((1.0f - (f12 / f13)) * 255.0f);
            if (i11 < 0) {
                i11 = 0;
            }
            if (f12 > f13) {
                setVisible(false);
            }
            Drawable drawable3 = this.f35863r;
            if (drawable3 != null) {
                drawable3.setAlpha(i11);
            }
            Drawable drawable4 = this.f35850e;
            if (drawable4 != null) {
                drawable4.setAlpha(i11);
            }
            Drawable drawable5 = this.f35861p;
            if (drawable5 != null) {
                drawable5.setAlpha(i11);
            }
            canvas.save();
            canvas.translate(this.f35851f, 0.0f);
        }
        if (this.f35863r != null && this.f35861p != null) {
            int iWidth = (int) (this.f35862q.width() - (this.f35861p.getIntrinsicWidth() * 0.05f));
            Drawable drawable6 = this.f35863r;
            drawable6.setBounds(0, 0, iWidth, drawable6.getIntrinsicHeight());
            this.f35863r.draw(canvas);
        }
        if (this.f35865t && (drawable2 = this.f35850e) != null && this.f35861p != null) {
            int intrinsicWidth = drawable2.getIntrinsicWidth();
            Drawable drawable7 = this.f35850e;
            drawable7.setBounds(0, 0, intrinsicWidth, drawable7.getIntrinsicHeight());
            canvas.save();
            canvas.translate(-intrinsicWidth, 0.0f);
            this.f35850e.draw(canvas);
            canvas.restore();
        }
        if (this.f35861p != null) {
            canvas.save();
            canvas.translate(this.f35862q.width() - getWidth(), 0.0f);
            this.f35861p.draw(canvas);
            canvas.restore();
        }
        if (!this.f35865t && Math.abs(this.f35847b - this.f35859n) < 1.0E-5f && (drawable = this.f35854i) != null) {
            int i12 = (int) (this.f35855j + (f11 * 0.2f * this.f35864s));
            this.f35855j = i12;
            if (i12 + drawable.getIntrinsicWidth() >= this.f35862q.width()) {
                this.f35855j = -this.f35854i.getIntrinsicWidth();
            }
            canvas.save();
            canvas.translate(this.f35855j, 0.0f);
            this.f35854i.draw(canvas);
            canvas.restore();
        }
        if (this.f35865t) {
            canvas.restore();
        }
    }

    private float getVelocity() {
        if (this.f35865t) {
            return this.f35857l ? 1.0f : 0.4f;
        }
        if (this.f35869x >= 2000) {
            return 0.05f;
        }
        if (this.f35867v == 1) {
            return this.f35857l ? 1.0f : 0.4f;
        }
        if (this.f35866u == 1) {
            return this.f35857l ? 0.4f : 0.2f;
        }
        return this.f35857l ? 0.2f : 0.05f;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (!this.f35856k) {
            this.f35856k = true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = this.f35860o ? 0L : jCurrentTimeMillis - this.f35858m;
        this.f35849d = Math.abs(j11 / 1000.0f);
        this.f35858m = jCurrentTimeMillis;
        this.f35869x += j11;
        float velocity = getVelocity();
        this.f35848c = velocity;
        float f11 = this.f35847b + (velocity * this.f35849d);
        this.f35847b = f11;
        if (!this.f35865t) {
            float f12 = this.f35859n;
            if (f11 > f12) {
                this.f35847b = f12;
            }
        }
        this.f35862q.right = (int) (this.f35847b * this.f35864s);
        this.f35853h.removeCallbacksAndMessages(null);
        this.f35853h.postDelayed(this.f35846a, this.f35852g);
        super.draw(canvas);
        a(canvas, this.f35849d);
    }

    @Override // android.view.View
    public Bitmap getDrawingCache(boolean z10) {
        return null;
    }

    public float getProgress() {
        return this.f35847b;
    }

    public void initResource(boolean z10) {
        if (z10 || (this.f35854i == null && this.f35861p == null && this.f35863r == null && this.f35850e == null)) {
            Drawable drawable = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_highlight", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f35854i = drawable;
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f35854i.getIntrinsicHeight());
            }
            Drawable drawable2 = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_head", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f35861p = drawable2;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f35861p.getIntrinsicHeight());
            }
            this.f35863r = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_tail", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f35850e = getResources().getDrawable(getResources().getIdentifier("mbridge_cm_end_animation", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        this.f35864s = getMeasuredWidth();
    }

    public void onThemeChange() {
        if (this.f35856k) {
            initResource(true);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        Drawable drawable = this.f35854i;
        if (drawable != null) {
            drawable.setBounds(0, 0, (int) (((double) drawable.getIntrinsicWidth()) * 1.5d), getHeight());
        }
        Drawable drawable2 = this.f35861p;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, getWidth(), getHeight());
        }
    }

    public void setPaused(boolean z10) {
        this.f35860o = z10;
        if (z10) {
            return;
        }
        this.f35858m = System.currentTimeMillis();
    }

    public void setProgress(float f11, boolean z10) {
        if (!z10 || f11 < 1.0f) {
            return;
        }
        startEndAnimation();
    }

    public void setProgressBarListener(c cVar) {
    }

    public void setProgressState(int i11) {
        if (i11 == 5) {
            this.f35866u = 1;
            this.f35867v = 0;
            this.f35868w = 0;
            this.f35869x = 0L;
            return;
        }
        if (i11 == 6) {
            this.f35867v = 1;
            if (this.f35868w == 1) {
                startEndAnimation();
            }
            this.f35869x = 0L;
            return;
        }
        if (i11 == 7) {
            startEndAnimation();
        } else {
            if (i11 != 8) {
                return;
            }
            this.f35868w = 1;
            if (this.f35867v == 1) {
                startEndAnimation();
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        super.setVisibility(i11);
    }

    public void setVisible(boolean z10) {
        if (!z10) {
            setVisibility(4);
            return;
        }
        this.f35857l = true;
        this.f35858m = System.currentTimeMillis();
        this.f35849d = 0.0f;
        this.f35869x = 0L;
        this.f35865t = false;
        this.f35851f = 0.0f;
        this.f35847b = 0.0f;
        this.f35864s = getMeasuredWidth();
        this.f35860o = false;
        this.f35866u = 0;
        this.f35867v = 0;
        this.f35868w = 0;
        Drawable drawable = this.f35854i;
        if (drawable != null) {
            this.f35855j = -drawable.getIntrinsicWidth();
        } else {
            this.f35855j = 0;
        }
        Drawable drawable2 = this.f35863r;
        if (drawable2 != null) {
            drawable2.setAlpha(255);
        }
        Drawable drawable3 = this.f35850e;
        if (drawable3 != null) {
            drawable3.setAlpha(255);
        }
        Drawable drawable4 = this.f35861p;
        if (drawable4 != null) {
            drawable4.setAlpha(255);
        }
        setVisibility(0);
        invalidate();
    }

    public void startEndAnimation() {
        if (this.f35865t) {
            return;
        }
        this.f35865t = true;
        this.f35851f = 0.0f;
    }
}
