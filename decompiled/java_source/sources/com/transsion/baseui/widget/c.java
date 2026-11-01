package com.transsion.baseui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.style.ImageSpan;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends ImageSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f43608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference f43609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference f43610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Animatable f43611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Rect f43612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Handler f43613f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f43614g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f43615h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f43616i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ViewTreeObserver f43617j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f43618k;

    public static final class a implements Drawable.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f43620b;

        a(TextView textView) {
            this.f43620b = textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:12:0x001c A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:13:0x001e  */
        public static final void b(c cVar, TextView textView) {
            Unit unit;
            if (cVar.f43615h) {
                cVar.f43614g = null;
                return;
            }
            Rect rect = cVar.f43612e;
            if (rect != null) {
                if (textView != null) {
                    textView.invalidate(rect);
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    if (textView != null) {
                        textView.invalidate();
                        Unit unit2 = Unit.f67061a;
                    }
                }
            } else if (textView != null) {
                textView.invalidate();
                Unit unit3 = Unit.f67061a;
            }
            cVar.f43614g = null;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable who) {
            Intrinsics.h(who, "who");
            if (c.this.f43615h) {
                return;
            }
            Runnable runnable = c.this.f43614g;
            if (runnable != null) {
                c.this.f43613f.removeCallbacks(runnable);
            }
            final c cVar = c.this;
            final TextView textView = this.f43620b;
            cVar.f43614g = new Runnable() { // from class: com.transsion.baseui.widget.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.a.b(cVar, textView);
                }
            };
            Handler handler = c.this.f43613f;
            Runnable runnable2 = c.this.f43614g;
            Intrinsics.e(runnable2);
            handler.postDelayed(runnable2, 16L);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable who, Runnable what, long j11) {
            Intrinsics.h(who, "who");
            Intrinsics.h(what, "what");
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable who, Runnable what) {
            Intrinsics.h(who, "who");
            Intrinsics.h(what, "what");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public c(Drawable drawable, final TextView textView, int i11, int i12) {
        super(drawable, i11);
        Intrinsics.h(drawable, "drawable");
        this.f43608a = i12;
        this.f43609b = textView != null ? new WeakReference(textView) : null;
        this.f43610c = new WeakReference(drawable);
        this.f43613f = new Handler(Looper.getMainLooper());
        a aVar = new a(textView);
        this.f43616i = aVar;
        this.f43618k = new ViewTreeObserver.OnPreDrawListener() { // from class: com.transsion.baseui.widget.a
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return c.i(this.f43604a, textView);
            }
        };
        if (drawable instanceof Animatable) {
            this.f43611d = (Animatable) drawable;
            drawable.setCallback(aVar);
            l();
            j();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void g(Drawable drawable) {
        if (drawable instanceof Animatable) {
            if (!Intrinsics.c(drawable.getCallback(), this.f43616i)) {
                drawable.setCallback(this.f43616i);
            }
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                return;
            }
            animatable.start();
        }
    }

    private final TextView h() {
        WeakReference weakReference = this.f43609b;
        if (weakReference != null) {
            return (TextView) weakReference.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean i(c cVar, TextView textView) {
        Drawable drawable = (Drawable) cVar.f43610c.get();
        if (!(drawable instanceof Animatable) || ((Animatable) drawable).isRunning() || cVar.f43615h || textView == null || textView.getVisibility() != 0 || !textView.isShown()) {
            return true;
        }
        cVar.g(drawable);
        return true;
    }

    private final void j() {
        ViewTreeObserver viewTreeObserver;
        TextView textViewH = h();
        if (textViewH == null || (viewTreeObserver = textViewH.getViewTreeObserver()) == null) {
            return;
        }
        if (!viewTreeObserver.isAlive()) {
            viewTreeObserver = null;
        }
        if (viewTreeObserver != null) {
            this.f43617j = viewTreeObserver;
            viewTreeObserver.addOnPreDrawListener(this.f43618k);
        }
    }

    private final void l() {
        TextView textViewH;
        TextView textViewH2;
        Object obj = (Drawable) this.f43610c.get();
        if ((obj instanceof Animatable) && (textViewH = h()) != null && textViewH.getVisibility() == 0 && (textViewH2 = h()) != null && textViewH2.isShown()) {
            Animatable animatable = (Animatable) obj;
            if (animatable.isRunning()) {
                return;
            }
            animatable.start();
        }
    }

    private final void n() {
        ViewTreeObserver viewTreeObserver = this.f43617j;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                viewTreeObserver = null;
            }
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnPreDrawListener(this.f43618k);
            }
        }
        this.f43617j = null;
    }

    private final void o(float f11, int i11, int i12, int i13, Paint paint, Drawable drawable) {
        int iHeight;
        int verticalAlignment = getVerticalAlignment();
        if (verticalAlignment == 0) {
            iHeight = i13 - drawable.getBounds().bottom;
        } else if (verticalAlignment != 1) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i14 = fontMetricsInt.descent;
            iHeight = ((i12 + i14) - ((i14 - fontMetricsInt.ascent) / 2)) - (drawable.getBounds().height() / 2);
        } else {
            iHeight = (i12 - drawable.getBounds().bottom) + paint.getFontMetricsInt().descent;
        }
        int i15 = (int) f11;
        this.f43612e = new Rect(i15, iHeight, drawable.getBounds().width() + i15, drawable.getBounds().height() + iHeight);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0087  */
    /* JADX WARN: Code duplicated, block: B:32:0x0090  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int i11, int i12, float f11, int i13, int i14, int i15, Paint paint) {
        int iHeight;
        Animatable animatable;
        TextView textViewH;
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(text, "text");
        Intrinsics.h(paint, "paint");
        Drawable drawable = (Drawable) this.f43610c.get();
        if (drawable == 0) {
            return;
        }
        if (this.f43615h) {
            o(f11, i13, i14, i15, paint, drawable);
            return;
        }
        o(f11, i13, i14, i15, paint, drawable);
        if (drawable instanceof Animatable) {
            TextView textViewH2 = h();
            boolean z10 = textViewH2 != null && textViewH2.getVisibility() == 0 && (textViewH = h()) != null && textViewH.isShown();
            if (z10 && !Intrinsics.c(drawable.getCallback(), this.f43616i)) {
                drawable.setCallback(this.f43616i);
            }
            if (z10) {
                Animatable animatable2 = (Animatable) drawable;
                if (!animatable2.isRunning()) {
                    animatable2.start();
                } else if (!z10) {
                    animatable = (Animatable) drawable;
                    if (animatable.isRunning()) {
                        animatable.stop();
                    }
                }
            } else if (!z10) {
                animatable = (Animatable) drawable;
                if (animatable.isRunning()) {
                    animatable.stop();
                }
            }
        }
        canvas.save();
        int verticalAlignment = getVerticalAlignment();
        if (verticalAlignment == 0) {
            iHeight = i15 - drawable.getBounds().bottom;
        } else if (verticalAlignment != 1) {
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int i16 = fontMetricsInt.descent;
            iHeight = ((i14 + i16) - ((i16 - fontMetricsInt.ascent) / 2)) - (drawable.getBounds().height() / 2);
        } else {
            iHeight = (i14 - drawable.getBounds().bottom) + paint.getFontMetricsInt().descent;
        }
        canvas.translate(f11, iHeight);
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int i11, int i12, Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.h(paint, "paint");
        Intrinsics.h(text, "text");
        Drawable drawable = (Drawable) this.f43610c.get();
        if (drawable == null) {
            return 0;
        }
        Rect bounds = drawable.getBounds();
        Intrinsics.g(bounds, "getBounds(...)");
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int verticalAlignment = getVerticalAlignment();
            if (verticalAlignment == 0 || verticalAlignment == 1) {
                fontMetricsInt.ascent = fontMetricsInt2.ascent;
                fontMetricsInt.descent = fontMetricsInt2.descent;
                fontMetricsInt.top = fontMetricsInt2.top;
                fontMetricsInt.bottom = fontMetricsInt2.bottom;
            } else {
                int iHeight = bounds.height() / 2;
                int i13 = (fontMetricsInt2.descent - fontMetricsInt2.ascent) / 4;
                int i14 = (-iHeight) - i13;
                fontMetricsInt.ascent = i14;
                fontMetricsInt.top = i14;
                int i15 = iHeight - i13;
                fontMetricsInt.bottom = i15;
                fontMetricsInt.descent = i15;
            }
        }
        return bounds.right + this.f43608a;
    }

    public final void k() {
        this.f43615h = false;
        Drawable drawable = (Drawable) this.f43610c.get();
        if (drawable != null && !Intrinsics.c(drawable.getCallback(), this.f43616i)) {
            drawable.setCallback(this.f43616i);
        }
        l();
        j();
    }

    public final void m() {
        this.f43615h = true;
        Runnable runnable = this.f43614g;
        if (runnable != null) {
            this.f43613f.removeCallbacks(runnable);
            this.f43614g = null;
        }
        n();
        Animatable animatable = this.f43611d;
        if (animatable != null) {
            animatable.stop();
        }
        Drawable drawable = (Drawable) this.f43610c.get();
        if (drawable == null || !Intrinsics.c(drawable.getCallback(), this.f43616i)) {
            return;
        }
        drawable.setCallback(null);
    }
}
