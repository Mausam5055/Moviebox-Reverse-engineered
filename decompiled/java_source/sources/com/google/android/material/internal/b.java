package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static final boolean f29143t0 = false;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final Paint f29144u0 = null;
    private Typeface A;
    private Typeface B;
    private Typeface C;
    private xa.a D;
    private xa.a E;
    private CharSequence G;
    private CharSequence H;
    private boolean I;
    private boolean K;
    private Bitmap L;
    private Paint M;
    private float N;
    private float O;
    private float P;
    private float Q;
    private float R;
    private int S;
    private int[] T;
    private boolean U;
    private final TextPaint V;
    private final TextPaint W;
    private TimeInterpolator X;
    private TimeInterpolator Y;
    private float Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f29145a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private float f29146a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f29147b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private float f29148b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f29149c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private ColorStateList f29150c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f29151d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private float f29152d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f29153e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private float f29154e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29155f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private float f29156f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f29157g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private ColorStateList f29158g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Rect f29159h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private float f29160h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f29161i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private float f29162i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private float f29164j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private StaticLayout f29166k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private float f29168l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private float f29170m0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ColorStateList f29171n;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private float f29172n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ColorStateList f29173o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private CharSequence f29174o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29175p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f29177q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f29179r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f29181s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f29183t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f29184u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f29185v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Typeface f29186w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Typeface f29187x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Typeface f29188y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Typeface f29189z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f29163j = 16;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f29165k = 16;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f29167l = 15.0f;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f29169m = 15.0f;
    private TextUtils.TruncateAt F = TextUtils.TruncateAt.END;
    private boolean J = true;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f29176p0 = 1;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private float f29178q0 = 0.0f;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private float f29180r0 = 1.0f;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f29182s0 = StaticLayoutBuilderCompat.f29120n;

    class a implements xa.a.InterfaceC0960a {
        a() {
        }

        @Override // xa.a.InterfaceC0960a
        public void a(Typeface typeface) {
            b.this.m0(typeface);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.internal.b$b, reason: collision with other inner class name */
    class C0398b implements xa.a.InterfaceC0960a {
        C0398b() {
        }

        @Override // xa.a.InterfaceC0960a
        public void a(Typeface typeface) {
            b.this.x0(typeface);
        }
    }

    public b(View view) {
        this.f29145a = view;
        TextPaint textPaint = new TextPaint(129);
        this.V = textPaint;
        this.W = new TextPaint(textPaint);
        this.f29159h = new Rect();
        this.f29157g = new Rect();
        this.f29161i = new RectF();
        this.f29153e = e();
        Z(view.getContext().getResources().getConfiguration());
    }

    private void D0(float f11) {
        h(f11);
        boolean z10 = f29143t0 && this.N != 1.0f;
        this.K = z10;
        if (z10) {
            n();
        }
        ViewCompat.postInvalidateOnAnimation(this.f29145a);
    }

    private Layout.Alignment M() {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f29163j, this.I ? 1 : 0) & 7;
        if (absoluteGravity == 1) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (absoluteGravity != 5) {
            return this.I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return this.I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
    }

    private void P(TextPaint textPaint) {
        textPaint.setTextSize(this.f29169m);
        textPaint.setTypeface(this.f29186w);
        textPaint.setLetterSpacing(this.f29160h0);
    }

    private boolean P0() {
        return this.f29176p0 > 1 && (!this.I || this.f29149c) && !this.K;
    }

    private void Q(TextPaint textPaint) {
        textPaint.setTextSize(this.f29167l);
        textPaint.setTypeface(this.f29189z);
        textPaint.setLetterSpacing(this.f29162i0);
    }

    private void S(float f11) {
        if (this.f29149c) {
            this.f29161i.set(f11 < this.f29153e ? this.f29157g : this.f29159h);
            return;
        }
        this.f29161i.left = Y(this.f29157g.left, this.f29159h.left, f11, this.X);
        this.f29161i.top = Y(this.f29177q, this.f29179r, f11, this.X);
        this.f29161i.right = Y(this.f29157g.right, this.f29159h.right, f11, this.X);
        this.f29161i.bottom = Y(this.f29157g.bottom, this.f29159h.bottom, f11, this.X);
    }

    private static boolean T(float f11, float f12) {
        return Math.abs(f11 - f12) < 1.0E-5f;
    }

    private boolean U() {
        return ViewCompat.getLayoutDirection(this.f29145a) == 1;
    }

    private boolean X(CharSequence charSequence, boolean z10) {
        return (z10 ? androidx.core.text.u.f8256d : androidx.core.text.u.f8255c).a(charSequence, 0, charSequence.length());
    }

    private static float Y(float f11, float f12, float f13, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f13 = timeInterpolator.getInterpolation(f13);
        }
        return oa.a.a(f11, f12, f13);
    }

    private static int a(int i11, int i12, float f11) {
        float f12 = 1.0f - f11;
        return Color.argb(Math.round((Color.alpha(i11) * f12) + (Color.alpha(i12) * f11)), Math.round((Color.red(i11) * f12) + (Color.red(i12) * f11)), Math.round((Color.green(i11) * f12) + (Color.green(i12) * f11)), Math.round((Color.blue(i11) * f12) + (Color.blue(i12) * f11)));
    }

    private float a0(TextPaint textPaint, CharSequence charSequence) {
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    private void b(boolean z10) {
        StaticLayout staticLayout;
        i(1.0f, z10);
        CharSequence charSequence = this.H;
        if (charSequence != null && (staticLayout = this.f29166k0) != null) {
            this.f29174o0 = TextUtils.ellipsize(charSequence, this.V, staticLayout.getWidth(), this.F);
        }
        CharSequence charSequence2 = this.f29174o0;
        float fA0 = 0.0f;
        if (charSequence2 != null) {
            this.f29168l0 = a0(this.V, charSequence2);
        } else {
            this.f29168l0 = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f29165k, this.I ? 1 : 0);
        int i11 = absoluteGravity & 112;
        if (i11 == 48) {
            this.f29179r = this.f29159h.top;
        } else if (i11 != 80) {
            this.f29179r = this.f29159h.centerY() - ((this.V.descent() - this.V.ascent()) / 2.0f);
        } else {
            this.f29179r = this.f29159h.bottom + this.V.ascent();
        }
        int i12 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i12 == 1) {
            this.f29183t = this.f29159h.centerX() - (this.f29168l0 / 2.0f);
        } else if (i12 != 5) {
            this.f29183t = this.f29159h.left;
        } else {
            this.f29183t = this.f29159h.right - this.f29168l0;
        }
        i(0.0f, z10);
        StaticLayout staticLayout2 = this.f29166k0;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f29166k0;
        if (staticLayout3 == null || this.f29176p0 <= 1) {
            CharSequence charSequence3 = this.H;
            if (charSequence3 != null) {
                fA0 = a0(this.V, charSequence3);
            }
        } else {
            fA0 = staticLayout3.getWidth();
        }
        StaticLayout staticLayout4 = this.f29166k0;
        this.f29175p = staticLayout4 != null ? staticLayout4.getLineCount() : 0;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f29163j, this.I ? 1 : 0);
        int i13 = absoluteGravity2 & 112;
        if (i13 == 48) {
            this.f29177q = this.f29157g.top;
        } else if (i13 != 80) {
            this.f29177q = this.f29157g.centerY() - (height / 2.0f);
        } else {
            this.f29177q = (this.f29157g.bottom - height) + this.V.descent();
        }
        int i14 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i14 == 1) {
            this.f29181s = this.f29157g.centerX() - (fA0 / 2.0f);
        } else if (i14 != 5) {
            this.f29181s = this.f29157g.left;
        } else {
            this.f29181s = this.f29157g.right - fA0;
        }
        j();
        D0(this.f29147b);
    }

    private void c() {
        g(this.f29147b);
    }

    private float d(float f11) {
        float f12 = this.f29153e;
        return f11 <= f12 ? oa.a.b(1.0f, 0.0f, this.f29151d, f12, f11) : oa.a.b(0.0f, 1.0f, f12, 1.0f, f11);
    }

    private static boolean d0(Rect rect, int i11, int i12, int i13, int i14) {
        return rect.left == i11 && rect.top == i12 && rect.right == i13 && rect.bottom == i14;
    }

    private float e() {
        float f11 = this.f29151d;
        return f11 + ((1.0f - f11) * 0.5f);
    }

    private boolean f(CharSequence charSequence) {
        boolean zU = U();
        return this.J ? X(charSequence, zU) : zU;
    }

    private void g(float f11) {
        float f12;
        S(f11);
        if (!this.f29149c) {
            this.f29184u = Y(this.f29181s, this.f29183t, f11, this.X);
            this.f29185v = Y(this.f29177q, this.f29179r, f11, this.X);
            D0(f11);
            f12 = f11;
        } else if (f11 < this.f29153e) {
            this.f29184u = this.f29181s;
            this.f29185v = this.f29177q;
            D0(0.0f);
            f12 = 0.0f;
        } else {
            this.f29184u = this.f29183t;
            this.f29185v = this.f29179r - Math.max(0, this.f29155f);
            D0(1.0f);
            f12 = 1.0f;
        }
        TimeInterpolator timeInterpolator = oa.a.f70919b;
        i0(1.0f - Y(0.0f, 1.0f, 1.0f - f11, timeInterpolator));
        t0(Y(1.0f, 0.0f, f11, timeInterpolator));
        if (this.f29173o != this.f29171n) {
            this.V.setColor(a(y(), w(), f12));
        } else {
            this.V.setColor(w());
        }
        int i11 = Build.VERSION.SDK_INT;
        float f13 = this.f29160h0;
        float f14 = this.f29162i0;
        if (f13 != f14) {
            this.V.setLetterSpacing(Y(f14, f13, f11, timeInterpolator));
        } else {
            this.V.setLetterSpacing(f13);
        }
        this.P = Y(this.f29152d0, this.Z, f11, null);
        this.Q = Y(this.f29154e0, this.f29146a0, f11, null);
        this.R = Y(this.f29156f0, this.f29148b0, f11, null);
        int iA = a(x(this.f29158g0), x(this.f29150c0), f11);
        this.S = iA;
        this.V.setShadowLayer(this.P, this.Q, this.R, iA);
        if (this.f29149c) {
            this.V.setAlpha((int) (d(f11) * this.V.getAlpha()));
            if (i11 >= 31) {
                TextPaint textPaint = this.V;
                textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.b.a(this.S, textPaint.getAlpha()));
            }
        }
        ViewCompat.postInvalidateOnAnimation(this.f29145a);
    }

    private void h(float f11) {
        i(f11, false);
    }

    private void i(float f11, boolean z10) {
        float f12;
        float f13;
        Typeface typeface;
        if (this.G == null) {
            return;
        }
        float fWidth = this.f29159h.width();
        float fWidth2 = this.f29157g.width();
        if (T(f11, 1.0f)) {
            f12 = this.f29169m;
            f13 = this.f29160h0;
            this.N = 1.0f;
            typeface = this.f29186w;
        } else {
            float f14 = this.f29167l;
            float f15 = this.f29162i0;
            Typeface typeface2 = this.f29189z;
            if (T(f11, 0.0f)) {
                this.N = 1.0f;
            } else {
                this.N = Y(this.f29167l, this.f29169m, f11, this.Y) / this.f29167l;
            }
            float f16 = this.f29169m / this.f29167l;
            fWidth = (z10 || this.f29149c || fWidth2 * f16 <= fWidth) ? fWidth2 : Math.min(fWidth / f16, fWidth2);
            f12 = f14;
            f13 = f15;
            typeface = typeface2;
        }
        boolean z11 = false;
        if (fWidth > 0.0f) {
            boolean z12 = this.O != f12;
            boolean z13 = this.f29164j0 != f13;
            boolean z14 = this.C != typeface;
            StaticLayout staticLayout = this.f29166k0;
            boolean z15 = z12 || z13 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z14 || this.U;
            this.O = f12;
            this.f29164j0 = f13;
            this.C = typeface;
            this.U = false;
            this.V.setLinearText(this.N != 1.0f);
            z11 = z15;
        }
        if (this.H == null || z11) {
            this.V.setTextSize(this.O);
            this.V.setTypeface(this.C);
            this.V.setLetterSpacing(this.f29164j0);
            this.I = f(this.G);
            StaticLayout staticLayoutK = k(P0() ? this.f29176p0 : 1, fWidth, this.I);
            this.f29166k0 = staticLayoutK;
            this.H = staticLayoutK.getText();
        }
    }

    private void i0(float f11) {
        this.f29170m0 = f11;
        ViewCompat.postInvalidateOnAnimation(this.f29145a);
    }

    private void j() {
        Bitmap bitmap = this.L;
        if (bitmap != null) {
            bitmap.recycle();
            this.L = null;
        }
    }

    private StaticLayout k(int i11, float f11, boolean z10) {
        StaticLayout staticLayoutA = null;
        try {
            staticLayoutA = StaticLayoutBuilderCompat.b(this.G, this.V, (int) f11).d(this.F).g(z10).c(i11 == 1 ? Layout.Alignment.ALIGN_NORMAL : M()).f(false).i(i11).h(this.f29178q0, this.f29180r0).e(this.f29182s0).j(null).a();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e11) {
            Log.e("CollapsingTextHelper", e11.getCause().getMessage(), e11);
        }
        return (StaticLayout) androidx.core.util.i.g(staticLayoutA);
    }

    private void m(Canvas canvas, float f11, float f12) {
        int alpha = this.V.getAlpha();
        canvas.translate(f11, f12);
        if (!this.f29149c) {
            this.V.setAlpha((int) (this.f29172n0 * alpha));
            if (Build.VERSION.SDK_INT >= 31) {
                TextPaint textPaint = this.V;
                textPaint.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.b.a(this.S, textPaint.getAlpha()));
            }
            this.f29166k0.draw(canvas);
        }
        if (!this.f29149c) {
            this.V.setAlpha((int) (this.f29170m0 * alpha));
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 31) {
            TextPaint textPaint2 = this.V;
            textPaint2.setShadowLayer(this.P, this.Q, this.R, com.google.android.material.color.b.a(this.S, textPaint2.getAlpha()));
        }
        int lineBaseline = this.f29166k0.getLineBaseline(0);
        CharSequence charSequence = this.f29174o0;
        float f13 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f13, this.V);
        if (i11 >= 31) {
            this.V.setShadowLayer(this.P, this.Q, this.R, this.S);
        }
        if (this.f29149c) {
            return;
        }
        String strTrim = this.f29174o0.toString().trim();
        if (strTrim.endsWith("…")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.V.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.f29166k0.getLineEnd(0), str.length()), 0.0f, f13, (Paint) this.V);
    }

    private void n() {
        if (this.L != null || this.f29157g.isEmpty() || TextUtils.isEmpty(this.H)) {
            return;
        }
        g(0.0f);
        int width = this.f29166k0.getWidth();
        int height = this.f29166k0.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.L = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.f29166k0.draw(new Canvas(this.L));
        if (this.M == null) {
            this.M = new Paint(3);
        }
    }

    private boolean n0(Typeface typeface) {
        xa.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        if (this.f29188y == typeface) {
            return false;
        }
        this.f29188y = typeface;
        Typeface typefaceB = xa.h.b(this.f29145a.getContext().getResources().getConfiguration(), typeface);
        this.f29187x = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.f29188y;
        }
        this.f29186w = typefaceB;
        return true;
    }

    private float s(int i11, int i12) {
        if (i12 == 17 || (i12 & 7) == 1) {
            return (i11 / 2.0f) - (this.f29168l0 / 2.0f);
        }
        if ((i12 & GravityCompat.END) == 8388613 || (i12 & 5) == 5) {
            return this.I ? this.f29159h.left : this.f29159h.right - this.f29168l0;
        }
        return this.I ? this.f29159h.right - this.f29168l0 : this.f29159h.left;
    }

    private float t(RectF rectF, int i11, int i12) {
        if (i12 == 17 || (i12 & 7) == 1) {
            return (i11 / 2.0f) + (this.f29168l0 / 2.0f);
        }
        if ((i12 & GravityCompat.END) == 8388613 || (i12 & 5) == 5) {
            return this.I ? rectF.left + this.f29168l0 : this.f29159h.right;
        }
        return this.I ? this.f29159h.right : rectF.left + this.f29168l0;
    }

    private void t0(float f11) {
        this.f29172n0 = f11;
        ViewCompat.postInvalidateOnAnimation(this.f29145a);
    }

    private int x(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.T;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    private int y() {
        return x(this.f29171n);
    }

    private boolean y0(Typeface typeface) {
        xa.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
        }
        if (this.B == typeface) {
            return false;
        }
        this.B = typeface;
        Typeface typefaceB = xa.h.b(this.f29145a.getContext().getResources().getConfiguration(), typeface);
        this.A = typefaceB;
        if (typefaceB == null) {
            typefaceB = this.B;
        }
        this.f29189z = typefaceB;
        return true;
    }

    public float A() {
        Q(this.W);
        return (-this.W.ascent()) + this.W.descent();
    }

    public void A0(boolean z10) {
        this.f29149c = z10;
    }

    public int B() {
        return this.f29163j;
    }

    public void B0(float f11) {
        this.f29151d = f11;
        this.f29153e = e();
    }

    public float C() {
        Q(this.W);
        return -this.W.ascent();
    }

    public void C0(int i11) {
        this.f29182s0 = i11;
    }

    public float D() {
        return this.f29167l;
    }

    public Typeface E() {
        Typeface typeface = this.f29189z;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void E0(float f11) {
        this.f29178q0 = f11;
    }

    public float F() {
        return this.f29147b;
    }

    public void F0(float f11) {
        this.f29180r0 = f11;
    }

    public float G() {
        return this.f29153e;
    }

    public void G0(int i11) {
        if (i11 != this.f29176p0) {
            this.f29176p0 = i11;
            j();
            b0();
        }
    }

    public int H() {
        return this.f29182s0;
    }

    public void H0(TimeInterpolator timeInterpolator) {
        this.X = timeInterpolator;
        b0();
    }

    public int I() {
        StaticLayout staticLayout = this.f29166k0;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public void I0(boolean z10) {
        this.J = z10;
    }

    public float J() {
        return this.f29166k0.getSpacingAdd();
    }

    public final boolean J0(int[] iArr) {
        this.T = iArr;
        if (!W()) {
            return false;
        }
        b0();
        return true;
    }

    public float K() {
        return this.f29166k0.getSpacingMultiplier();
    }

    public void K0(x xVar) {
        if (xVar != null) {
            c0(true);
        }
    }

    public int L() {
        return this.f29176p0;
    }

    public void L0(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.G, charSequence)) {
            this.G = charSequence;
            this.H = null;
            j();
            b0();
        }
    }

    public void M0(TimeInterpolator timeInterpolator) {
        this.Y = timeInterpolator;
        b0();
    }

    public TimeInterpolator N() {
        return this.X;
    }

    public void N0(TextUtils.TruncateAt truncateAt) {
        this.F = truncateAt;
        b0();
    }

    public CharSequence O() {
        return this.G;
    }

    public void O0(Typeface typeface) {
        boolean zN0 = n0(typeface);
        boolean zY0 = y0(typeface);
        if (zN0 || zY0) {
            b0();
        }
    }

    public TextUtils.TruncateAt R() {
        return this.F;
    }

    public boolean V() {
        return this.J;
    }

    public final boolean W() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f29173o;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f29171n) != null && colorStateList.isStateful());
    }

    public void Z(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f29188y;
            if (typeface != null) {
                this.f29187x = xa.h.b(configuration, typeface);
            }
            Typeface typeface2 = this.B;
            if (typeface2 != null) {
                this.A = xa.h.b(configuration, typeface2);
            }
            Typeface typeface3 = this.f29187x;
            if (typeface3 == null) {
                typeface3 = this.f29188y;
            }
            this.f29186w = typeface3;
            Typeface typeface4 = this.A;
            if (typeface4 == null) {
                typeface4 = this.B;
            }
            this.f29189z = typeface4;
            c0(true);
        }
    }

    public void b0() {
        c0(false);
    }

    public void c0(boolean z10) {
        if ((this.f29145a.getHeight() <= 0 || this.f29145a.getWidth() <= 0) && !z10) {
            return;
        }
        b(z10);
        c();
    }

    public void e0(ColorStateList colorStateList) {
        if (this.f29173o == colorStateList && this.f29171n == colorStateList) {
            return;
        }
        this.f29173o = colorStateList;
        this.f29171n = colorStateList;
        b0();
    }

    public void f0(int i11, int i12, int i13, int i14) {
        if (d0(this.f29159h, i11, i12, i13, i14)) {
            return;
        }
        this.f29159h.set(i11, i12, i13, i14);
        this.U = true;
    }

    public void g0(Rect rect) {
        f0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void h0(int i11) {
        xa.d dVar = new xa.d(this.f29145a.getContext(), i11);
        if (dVar.i() != null) {
            this.f29173o = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f29169m = dVar.j();
        }
        ColorStateList colorStateList = dVar.f78158c;
        if (colorStateList != null) {
            this.f29150c0 = colorStateList;
        }
        this.f29146a0 = dVar.f78163h;
        this.f29148b0 = dVar.f78164i;
        this.Z = dVar.f78165j;
        this.f29160h0 = dVar.f78167l;
        xa.a aVar = this.E;
        if (aVar != null) {
            aVar.c();
        }
        this.E = new xa.a(new a(), dVar.e());
        dVar.h(this.f29145a.getContext(), this.E);
        b0();
    }

    public void j0(ColorStateList colorStateList) {
        if (this.f29173o != colorStateList) {
            this.f29173o = colorStateList;
            b0();
        }
    }

    public void k0(int i11) {
        if (this.f29165k != i11) {
            this.f29165k = i11;
            b0();
        }
    }

    public void l(Canvas canvas) {
        int iSave = canvas.save();
        if (this.H == null || this.f29161i.width() <= 0.0f || this.f29161i.height() <= 0.0f) {
            return;
        }
        this.V.setTextSize(this.O);
        float f11 = this.f29184u;
        float f12 = this.f29185v;
        boolean z10 = this.K && this.L != null;
        float f13 = this.N;
        if (f13 != 1.0f && !this.f29149c) {
            canvas.scale(f13, f13, f11, f12);
        }
        if (z10) {
            canvas.drawBitmap(this.L, f11, f12, this.M);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!P0() || (this.f29149c && this.f29147b <= this.f29153e)) {
            canvas.translate(f11, f12);
            this.f29166k0.draw(canvas);
        } else {
            m(canvas, this.f29184u - this.f29166k0.getLineStart(0), f12);
        }
        canvas.restoreToCount(iSave);
    }

    public void l0(float f11) {
        if (this.f29169m != f11) {
            this.f29169m = f11;
            b0();
        }
    }

    public void m0(Typeface typeface) {
        if (n0(typeface)) {
            b0();
        }
    }

    public void o(RectF rectF, int i11, int i12) {
        this.I = f(this.G);
        rectF.left = Math.max(s(i11, i12), this.f29159h.left);
        rectF.top = this.f29159h.top;
        rectF.right = Math.min(t(rectF, i11, i12), this.f29159h.right);
        rectF.bottom = this.f29159h.top + r();
    }

    public void o0(int i11) {
        this.f29155f = i11;
    }

    public ColorStateList p() {
        return this.f29173o;
    }

    public void p0(int i11, int i12, int i13, int i14) {
        if (d0(this.f29157g, i11, i12, i13, i14)) {
            return;
        }
        this.f29157g.set(i11, i12, i13, i14);
        this.U = true;
    }

    public int q() {
        return this.f29165k;
    }

    public void q0(Rect rect) {
        p0(rect.left, rect.top, rect.right, rect.bottom);
    }

    public float r() {
        P(this.W);
        return -this.W.ascent();
    }

    public void r0(float f11) {
        if (this.f29162i0 != f11) {
            this.f29162i0 = f11;
            b0();
        }
    }

    public void s0(int i11) {
        xa.d dVar = new xa.d(this.f29145a.getContext(), i11);
        if (dVar.i() != null) {
            this.f29171n = dVar.i();
        }
        if (dVar.j() != 0.0f) {
            this.f29167l = dVar.j();
        }
        ColorStateList colorStateList = dVar.f78158c;
        if (colorStateList != null) {
            this.f29158g0 = colorStateList;
        }
        this.f29154e0 = dVar.f78163h;
        this.f29156f0 = dVar.f78164i;
        this.f29152d0 = dVar.f78165j;
        this.f29162i0 = dVar.f78167l;
        xa.a aVar = this.D;
        if (aVar != null) {
            aVar.c();
        }
        this.D = new xa.a(new C0398b(), dVar.e());
        dVar.h(this.f29145a.getContext(), this.D);
        b0();
    }

    public float u() {
        return this.f29169m;
    }

    public void u0(ColorStateList colorStateList) {
        if (this.f29171n != colorStateList) {
            this.f29171n = colorStateList;
            b0();
        }
    }

    public Typeface v() {
        Typeface typeface = this.f29186w;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public void v0(int i11) {
        if (this.f29163j != i11) {
            this.f29163j = i11;
            b0();
        }
    }

    public int w() {
        return x(this.f29173o);
    }

    public void w0(float f11) {
        if (this.f29167l != f11) {
            this.f29167l = f11;
            b0();
        }
    }

    public void x0(Typeface typeface) {
        if (y0(typeface)) {
            b0();
        }
    }

    public int z() {
        return this.f29175p;
    }

    public void z0(float f11) {
        float fA = d1.a.a(f11, 0.0f, 1.0f);
        if (fA != this.f29147b) {
            this.f29147b = fA;
            c();
        }
    }
}
