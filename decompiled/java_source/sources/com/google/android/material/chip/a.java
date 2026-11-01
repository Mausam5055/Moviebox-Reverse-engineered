package com.google.android.material.chip;

import ab.i;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import com.google.android.material.internal.y;
import com.tn.lib.view.FlowLayout;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import oa.h;
import xa.c;
import xa.d;
import ya.b;

/* JADX INFO: loaded from: classes4.dex */
public class a extends i implements Drawable.Callback, y.b {
    private static final int[] J0 = {R.attr.state_enabled};
    private static final ShapeDrawable K0 = new ShapeDrawable(new OvalShape());
    private ColorStateList A;
    private PorterDuff.Mode A0;
    private float B;
    private int[] B0;
    private float C;
    private boolean C0;
    private ColorStateList D;
    private ColorStateList D0;
    private float E;
    private WeakReference E0;
    private ColorStateList F;
    private TextUtils.TruncateAt F0;
    private CharSequence G;
    private boolean G0;
    private boolean H;
    private int H0;
    private Drawable I;
    private boolean I0;
    private ColorStateList J;
    private float K;
    private boolean L;
    private boolean M;
    private Drawable N;
    private Drawable O;
    private ColorStateList P;
    private float Q;
    private CharSequence R;
    private boolean S;
    private boolean T;
    private Drawable U;
    private ColorStateList V;
    private h W;
    private h X;
    private float Y;
    private float Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private float f28710a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private float f28711b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private float f28712c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private float f28713d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private float f28714e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private float f28715f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private final Context f28716g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private final Paint f28717h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private final Paint f28718i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private final Paint.FontMetrics f28719j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private final RectF f28720k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private final PointF f28721l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private final Path f28722m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private final y f28723n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private int f28724o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f28725p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private int f28726q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f28727r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private int f28728s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private int f28729t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private boolean f28730u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private int f28731v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private int f28732w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private ColorFilter f28733x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private PorterDuffColorFilter f28734y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ColorStateList f28735z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private ColorStateList f28736z0;

    /* JADX INFO: renamed from: com.google.android.material.chip.a$a, reason: collision with other inner class name */
    public interface InterfaceC0393a {
        void onChipDrawableSizeChange();
    }

    private a(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.C = -1.0f;
        this.f28717h0 = new Paint(1);
        this.f28719j0 = new Paint.FontMetrics();
        this.f28720k0 = new RectF();
        this.f28721l0 = new PointF();
        this.f28722m0 = new Path();
        this.f28732w0 = 255;
        this.A0 = PorterDuff.Mode.SRC_IN;
        this.E0 = new WeakReference(null);
        S(context);
        this.f28716g0 = context;
        y yVar = new y(this);
        this.f28723n0 = yVar;
        this.G = "";
        yVar.g().density = context.getResources().getDisplayMetrics().density;
        this.f28718i0 = null;
        int[] iArr = J0;
        setState(iArr);
        v2(iArr);
        this.G0 = true;
        if (b.f78956a) {
            K0.setTint(-1);
        }
    }

    private float A0() {
        this.f28723n0.g().getFontMetrics(this.f28719j0);
        Paint.FontMetrics fontMetrics = this.f28719j0;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private static boolean B1(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private boolean C0() {
        return this.T && this.U != null && this.S;
    }

    private static boolean C1(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public static a D0(Context context, AttributeSet attributeSet, int i11, int i12) {
        a aVar = new a(context, attributeSet, i11, i12);
        aVar.E1(attributeSet, i11, i12);
        return aVar;
    }

    private static boolean D1(d dVar) {
        return (dVar == null || dVar.i() == null || !dVar.i().isStateful()) ? false : true;
    }

    private void E0(Canvas canvas, Rect rect) {
        if (X2()) {
            t0(rect, this.f28720k0);
            RectF rectF = this.f28720k0;
            float f11 = rectF.left;
            float f12 = rectF.top;
            canvas.translate(f11, f12);
            this.U.setBounds(0, 0, (int) this.f28720k0.width(), (int) this.f28720k0.height());
            this.U.draw(canvas);
            canvas.translate(-f11, -f12);
        }
    }

    private void E1(AttributeSet attributeSet, int i11, int i12) {
        TypedArray typedArrayI = b0.i(this.f28716g0, attributeSet, R$styleable.Chip, i11, i12, new int[0]);
        this.I0 = typedArrayI.hasValue(R$styleable.Chip_shapeAppearance);
        l2(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_chipSurfaceColor));
        P1(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_chipBackgroundColor));
        d2(typedArrayI.getDimension(R$styleable.Chip_chipMinHeight, 0.0f));
        if (typedArrayI.hasValue(R$styleable.Chip_chipCornerRadius)) {
            R1(typedArrayI.getDimension(R$styleable.Chip_chipCornerRadius, 0.0f));
        }
        h2(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_chipStrokeColor));
        j2(typedArrayI.getDimension(R$styleable.Chip_chipStrokeWidth, 0.0f));
        I2(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_rippleColor));
        N2(typedArrayI.getText(R$styleable.Chip_android_text));
        d dVarH = c.h(this.f28716g0, typedArrayI, R$styleable.Chip_android_textAppearance);
        dVarH.l(typedArrayI.getDimension(R$styleable.Chip_android_textSize, dVarH.j()));
        O2(dVarH);
        int i13 = typedArrayI.getInt(R$styleable.Chip_android_ellipsize, 0);
        if (i13 == 1) {
            A2(TextUtils.TruncateAt.START);
        } else if (i13 == 2) {
            A2(TextUtils.TruncateAt.MIDDLE);
        } else if (i13 == 3) {
            A2(TextUtils.TruncateAt.END);
        }
        c2(typedArrayI.getBoolean(R$styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            c2(typedArrayI.getBoolean(R$styleable.Chip_chipIconEnabled, false));
        }
        V1(c.e(this.f28716g0, typedArrayI, R$styleable.Chip_chipIcon));
        if (typedArrayI.hasValue(R$styleable.Chip_chipIconTint)) {
            Z1(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_chipIconTint));
        }
        X1(typedArrayI.getDimension(R$styleable.Chip_chipIconSize, -1.0f));
        y2(typedArrayI.getBoolean(R$styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            y2(typedArrayI.getBoolean(R$styleable.Chip_closeIconEnabled, false));
        }
        m2(c.e(this.f28716g0, typedArrayI, R$styleable.Chip_closeIcon));
        w2(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_closeIconTint));
        r2(typedArrayI.getDimension(R$styleable.Chip_closeIconSize, 0.0f));
        H1(typedArrayI.getBoolean(R$styleable.Chip_android_checkable, false));
        O1(typedArrayI.getBoolean(R$styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            O1(typedArrayI.getBoolean(R$styleable.Chip_checkedIconEnabled, false));
        }
        J1(c.e(this.f28716g0, typedArrayI, R$styleable.Chip_checkedIcon));
        if (typedArrayI.hasValue(R$styleable.Chip_checkedIconTint)) {
            L1(c.a(this.f28716g0, typedArrayI, R$styleable.Chip_checkedIconTint));
        }
        L2(h.c(this.f28716g0, typedArrayI, R$styleable.Chip_showMotionSpec));
        B2(h.c(this.f28716g0, typedArrayI, R$styleable.Chip_hideMotionSpec));
        f2(typedArrayI.getDimension(R$styleable.Chip_chipStartPadding, 0.0f));
        F2(typedArrayI.getDimension(R$styleable.Chip_iconStartPadding, 0.0f));
        D2(typedArrayI.getDimension(R$styleable.Chip_iconEndPadding, 0.0f));
        T2(typedArrayI.getDimension(R$styleable.Chip_textStartPadding, 0.0f));
        Q2(typedArrayI.getDimension(R$styleable.Chip_textEndPadding, 0.0f));
        t2(typedArrayI.getDimension(R$styleable.Chip_closeIconStartPadding, 0.0f));
        o2(typedArrayI.getDimension(R$styleable.Chip_closeIconEndPadding, 0.0f));
        T1(typedArrayI.getDimension(R$styleable.Chip_chipEndPadding, 0.0f));
        H2(typedArrayI.getDimensionPixelSize(R$styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayI.recycle();
    }

    private void F0(Canvas canvas, Rect rect) {
        if (this.I0) {
            return;
        }
        this.f28717h0.setColor(this.f28725p0);
        this.f28717h0.setStyle(Paint.Style.FILL);
        this.f28717h0.setColorFilter(t1());
        this.f28720k0.set(rect);
        canvas.drawRoundRect(this.f28720k0, Q0(), Q0(), this.f28717h0);
    }

    private void G0(Canvas canvas, Rect rect) {
        if (Y2()) {
            t0(rect, this.f28720k0);
            RectF rectF = this.f28720k0;
            float f11 = rectF.left;
            float f12 = rectF.top;
            canvas.translate(f11, f12);
            this.I.setBounds(0, 0, (int) this.f28720k0.width(), (int) this.f28720k0.height());
            this.I.draw(canvas);
            canvas.translate(-f11, -f12);
        }
    }

    private boolean G1(int[] iArr, int[] iArr2) {
        boolean z10;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f28735z;
        int iL = l(colorStateList != null ? colorStateList.getColorForState(iArr, this.f28724o0) : 0);
        boolean state = true;
        if (this.f28724o0 != iL) {
            this.f28724o0 = iL;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.A;
        int iL2 = l(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f28725p0) : 0);
        if (this.f28725p0 != iL2) {
            this.f28725p0 = iL2;
            zOnStateChange = true;
        }
        int i11 = com.google.android.material.color.b.i(iL, iL2);
        if ((this.f28726q0 != i11) | (z() == null)) {
            this.f28726q0 = i11;
            d0(ColorStateList.valueOf(i11));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.D;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f28727r0) : 0;
        if (this.f28727r0 != colorForState) {
            this.f28727r0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.D0 == null || !b.e(iArr)) ? 0 : this.D0.getColorForState(iArr, this.f28728s0);
        if (this.f28728s0 != colorForState2) {
            this.f28728s0 = colorForState2;
            if (this.C0) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.f28723n0.e() == null || this.f28723n0.e().i() == null) ? 0 : this.f28723n0.e().i().getColorForState(iArr, this.f28729t0);
        if (this.f28729t0 != colorForState3) {
            this.f28729t0 = colorForState3;
            zOnStateChange = true;
        }
        boolean z11 = v1(getState(), R.attr.state_checked) && this.S;
        if (this.f28730u0 == z11 || this.U == null) {
            z10 = false;
        } else {
            float fU0 = u0();
            this.f28730u0 = z11;
            if (fU0 != u0()) {
                zOnStateChange = true;
                z10 = true;
            } else {
                z10 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList4 = this.f28736z0;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f28731v0) : 0;
        if (this.f28731v0 != colorForState4) {
            this.f28731v0 = colorForState4;
            this.f28734y0 = com.google.android.material.drawable.d.o(this, this.f28736z0, this.A0);
        } else {
            state = zOnStateChange;
        }
        if (C1(this.I)) {
            state |= this.I.setState(iArr);
        }
        if (C1(this.U)) {
            state |= this.U.setState(iArr);
        }
        if (C1(this.N)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.N.setState(iArr3);
        }
        if (b.f78956a && C1(this.O)) {
            state |= this.O.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z10) {
            F1();
        }
        return state;
    }

    private void H0(Canvas canvas, Rect rect) {
        if (this.E <= 0.0f || this.I0) {
            return;
        }
        this.f28717h0.setColor(this.f28727r0);
        this.f28717h0.setStyle(Paint.Style.STROKE);
        if (!this.I0) {
            this.f28717h0.setColorFilter(t1());
        }
        RectF rectF = this.f28720k0;
        float f11 = rect.left;
        float f12 = this.E;
        rectF.set(f11 + (f12 / 2.0f), rect.top + (f12 / 2.0f), rect.right - (f12 / 2.0f), rect.bottom - (f12 / 2.0f));
        float f13 = this.C - (this.E / 2.0f);
        canvas.drawRoundRect(this.f28720k0, f13, f13, this.f28717h0);
    }

    private void I0(Canvas canvas, Rect rect) {
        if (this.I0) {
            return;
        }
        this.f28717h0.setColor(this.f28724o0);
        this.f28717h0.setStyle(Paint.Style.FILL);
        this.f28720k0.set(rect);
        canvas.drawRoundRect(this.f28720k0, Q0(), Q0(), this.f28717h0);
    }

    private void J0(Canvas canvas, Rect rect) {
        if (Z2()) {
            w0(rect, this.f28720k0);
            RectF rectF = this.f28720k0;
            float f11 = rectF.left;
            float f12 = rectF.top;
            canvas.translate(f11, f12);
            this.N.setBounds(0, 0, (int) this.f28720k0.width(), (int) this.f28720k0.height());
            if (b.f78956a) {
                this.O.setBounds(this.N.getBounds());
                this.O.jumpToCurrentState();
                this.O.draw(canvas);
            } else {
                this.N.draw(canvas);
            }
            canvas.translate(-f11, -f12);
        }
    }

    private void K0(Canvas canvas, Rect rect) {
        this.f28717h0.setColor(this.f28728s0);
        this.f28717h0.setStyle(Paint.Style.FILL);
        this.f28720k0.set(rect);
        if (!this.I0) {
            canvas.drawRoundRect(this.f28720k0, Q0(), Q0(), this.f28717h0);
        } else {
            h(new RectF(rect), this.f28722m0);
            super.s(canvas, this.f28717h0, this.f28722m0, w());
        }
    }

    private void L0(Canvas canvas, Rect rect) {
        Paint paint = this.f28718i0;
        if (paint != null) {
            paint.setColor(z0.b.p(ViewCompat.MEASURED_STATE_MASK, 127));
            canvas.drawRect(rect, this.f28718i0);
            if (Y2() || X2()) {
                t0(rect, this.f28720k0);
                canvas.drawRect(this.f28720k0, this.f28718i0);
            }
            if (this.G != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.f28718i0);
            }
            if (Z2()) {
                w0(rect, this.f28720k0);
                canvas.drawRect(this.f28720k0, this.f28718i0);
            }
            this.f28718i0.setColor(z0.b.p(FlowLayout.SPACING_AUTO, 127));
            v0(rect, this.f28720k0);
            canvas.drawRect(this.f28720k0, this.f28718i0);
            this.f28718i0.setColor(z0.b.p(-16711936, 127));
            x0(rect, this.f28720k0);
            canvas.drawRect(this.f28720k0, this.f28718i0);
        }
    }

    private void M0(Canvas canvas, Rect rect) {
        if (this.G != null) {
            Paint.Align alignB0 = B0(rect, this.f28721l0);
            z0(rect, this.f28720k0);
            if (this.f28723n0.e() != null) {
                this.f28723n0.g().drawableState = getState();
                this.f28723n0.n(this.f28716g0);
            }
            this.f28723n0.g().setTextAlign(alignB0);
            int iSave = 0;
            boolean z10 = Math.round(this.f28723n0.h(p1().toString())) > Math.round(this.f28720k0.width());
            if (z10) {
                iSave = canvas.save();
                canvas.clipRect(this.f28720k0);
            }
            CharSequence charSequenceEllipsize = this.G;
            if (z10 && this.F0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f28723n0.g(), this.f28720k0.width(), this.F0);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.f28721l0;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.f28723n0.g());
            if (z10) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean X2() {
        return this.T && this.U != null && this.f28730u0;
    }

    private boolean Y2() {
        return this.H && this.I != null;
    }

    private boolean Z2() {
        return this.M && this.N != null;
    }

    private void a3(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void b3() {
        this.D0 = this.C0 ? b.d(this.F) : null;
    }

    private void c3() {
        this.O = new RippleDrawable(b.d(n1()), this.N, K0);
    }

    private float h1() {
        Drawable drawable = this.f28730u0 ? this.U : this.I;
        float fCeil = this.K;
        if (fCeil <= 0.0f && drawable != null) {
            fCeil = (float) Math.ceil(f0.g(this.f28716g0, 24));
            if (drawable.getIntrinsicHeight() <= fCeil) {
                return drawable.getIntrinsicHeight();
            }
        }
        return fCeil;
    }

    private float i1() {
        Drawable drawable = this.f28730u0 ? this.U : this.I;
        float f11 = this.K;
        return (f11 > 0.0f || drawable == null) ? f11 : drawable.getIntrinsicWidth();
    }

    private void l2(ColorStateList colorStateList) {
        if (this.f28735z != colorStateList) {
            this.f28735z = colorStateList;
            onStateChange(getState());
        }
    }

    private void s0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        a1.a.m(drawable, a1.a.f(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.N) {
            if (drawable.isStateful()) {
                drawable.setState(e1());
            }
            a1.a.o(drawable, this.P);
            return;
        }
        Drawable drawable2 = this.I;
        if (drawable == drawable2 && this.L) {
            a1.a.o(drawable2, this.J);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    private void t0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Y2() || X2()) {
            float f11 = this.Y + this.Z;
            float fI1 = i1();
            if (a1.a.f(this) == 0) {
                float f12 = rect.left + f11;
                rectF.left = f12;
                rectF.right = f12 + fI1;
            } else {
                float f13 = rect.right - f11;
                rectF.right = f13;
                rectF.left = f13 - fI1;
            }
            float fH1 = h1();
            float fExactCenterY = rect.exactCenterY() - (fH1 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fH1;
        }
    }

    private ColorFilter t1() {
        ColorFilter colorFilter = this.f28733x0;
        return colorFilter != null ? colorFilter : this.f28734y0;
    }

    private void v0(Rect rect, RectF rectF) {
        rectF.set(rect);
        if (Z2()) {
            float f11 = this.f28715f0 + this.f28714e0 + this.Q + this.f28713d0 + this.f28712c0;
            if (a1.a.f(this) == 0) {
                rectF.right = rect.right - f11;
            } else {
                rectF.left = rect.left + f11;
            }
        }
    }

    private static boolean v1(int[] iArr, int i11) {
        if (iArr == null) {
            return false;
        }
        for (int i12 : iArr) {
            if (i12 == i11) {
                return true;
            }
        }
        return false;
    }

    private void w0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Z2()) {
            float f11 = this.f28715f0 + this.f28714e0;
            if (a1.a.f(this) == 0) {
                float f12 = rect.right - f11;
                rectF.right = f12;
                rectF.left = f12 - this.Q;
            } else {
                float f13 = rect.left + f11;
                rectF.left = f13;
                rectF.right = f13 + this.Q;
            }
            float fExactCenterY = rect.exactCenterY();
            float f14 = this.Q;
            float f15 = fExactCenterY - (f14 / 2.0f);
            rectF.top = f15;
            rectF.bottom = f15 + f14;
        }
    }

    private void x0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (Z2()) {
            float f11 = this.f28715f0 + this.f28714e0 + this.Q + this.f28713d0 + this.f28712c0;
            if (a1.a.f(this) == 0) {
                float f12 = rect.right;
                rectF.right = f12;
                rectF.left = f12 - f11;
            } else {
                int i11 = rect.left;
                rectF.left = i11;
                rectF.right = i11 + f11;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private void z0(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (this.G != null) {
            float fU0 = this.Y + u0() + this.f28711b0;
            float fY0 = this.f28715f0 + y0() + this.f28712c0;
            if (a1.a.f(this) == 0) {
                rectF.left = rect.left + fU0;
                rectF.right = rect.right - fY0;
            } else {
                rectF.left = rect.left + fY0;
                rectF.right = rect.right - fU0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    public boolean A1() {
        return this.M;
    }

    public void A2(TextUtils.TruncateAt truncateAt) {
        this.F0 = truncateAt;
    }

    Paint.Align B0(Rect rect, PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.G != null) {
            float fU0 = this.Y + u0() + this.f28711b0;
            if (a1.a.f(this) == 0) {
                pointF.x = rect.left + fU0;
            } else {
                pointF.x = rect.right - fU0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - A0();
        }
        return align;
    }

    public void B2(h hVar) {
        this.X = hVar;
    }

    public void C2(int i11) {
        B2(h.d(this.f28716g0, i11));
    }

    public void D2(float f11) {
        if (this.f28710a0 != f11) {
            float fU0 = u0();
            this.f28710a0 = f11;
            float fU1 = u0();
            invalidateSelf();
            if (fU0 != fU1) {
                F1();
            }
        }
    }

    public void E2(int i11) {
        D2(this.f28716g0.getResources().getDimension(i11));
    }

    protected void F1() {
        InterfaceC0393a interfaceC0393a = (InterfaceC0393a) this.E0.get();
        if (interfaceC0393a != null) {
            interfaceC0393a.onChipDrawableSizeChange();
        }
    }

    public void F2(float f11) {
        if (this.Z != f11) {
            float fU0 = u0();
            this.Z = f11;
            float fU1 = u0();
            invalidateSelf();
            if (fU0 != fU1) {
                F1();
            }
        }
    }

    public void G2(int i11) {
        F2(this.f28716g0.getResources().getDimension(i11));
    }

    public void H1(boolean z10) {
        if (this.S != z10) {
            this.S = z10;
            float fU0 = u0();
            if (!z10 && this.f28730u0) {
                this.f28730u0 = false;
            }
            float fU1 = u0();
            invalidateSelf();
            if (fU0 != fU1) {
                F1();
            }
        }
    }

    public void H2(int i11) {
        this.H0 = i11;
    }

    public void I1(int i11) {
        H1(this.f28716g0.getResources().getBoolean(i11));
    }

    public void I2(ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            b3();
            onStateChange(getState());
        }
    }

    public void J1(Drawable drawable) {
        if (this.U != drawable) {
            float fU0 = u0();
            this.U = drawable;
            float fU1 = u0();
            a3(this.U);
            s0(this.U);
            invalidateSelf();
            if (fU0 != fU1) {
                F1();
            }
        }
    }

    public void J2(int i11) {
        I2(g.a.a(this.f28716g0, i11));
    }

    public void K1(int i11) {
        J1(g.a.b(this.f28716g0, i11));
    }

    void K2(boolean z10) {
        this.G0 = z10;
    }

    public void L1(ColorStateList colorStateList) {
        if (this.V != colorStateList) {
            this.V = colorStateList;
            if (C0()) {
                a1.a.o(this.U, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void L2(h hVar) {
        this.W = hVar;
    }

    public void M1(int i11) {
        L1(g.a.a(this.f28716g0, i11));
    }

    public void M2(int i11) {
        L2(h.d(this.f28716g0, i11));
    }

    public Drawable N0() {
        return this.U;
    }

    public void N1(int i11) {
        O1(this.f28716g0.getResources().getBoolean(i11));
    }

    public void N2(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.G, charSequence)) {
            return;
        }
        this.G = charSequence;
        this.f28723n0.m(true);
        invalidateSelf();
        F1();
    }

    public ColorStateList O0() {
        return this.V;
    }

    public void O1(boolean z10) {
        if (this.T != z10) {
            boolean zX2 = X2();
            this.T = z10;
            boolean zX3 = X2();
            if (zX2 != zX3) {
                if (zX3) {
                    s0(this.U);
                } else {
                    a3(this.U);
                }
                invalidateSelf();
                F1();
            }
        }
    }

    public void O2(d dVar) {
        this.f28723n0.k(dVar, this.f28716g0);
    }

    public ColorStateList P0() {
        return this.A;
    }

    public void P1(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            onStateChange(getState());
        }
    }

    public void P2(int i11) {
        O2(new d(this.f28716g0, i11));
    }

    public float Q0() {
        return this.I0 ? L() : this.C;
    }

    public void Q1(int i11) {
        P1(g.a.a(this.f28716g0, i11));
    }

    public void Q2(float f11) {
        if (this.f28712c0 != f11) {
            this.f28712c0 = f11;
            invalidateSelf();
            F1();
        }
    }

    public float R0() {
        return this.f28715f0;
    }

    public void R1(float f11) {
        if (this.C != f11) {
            this.C = f11;
            setShapeAppearanceModel(G().w(f11));
        }
    }

    public void R2(int i11) {
        Q2(this.f28716g0.getResources().getDimension(i11));
    }

    public Drawable S0() {
        Drawable drawable = this.I;
        if (drawable != null) {
            return a1.a.q(drawable);
        }
        return null;
    }

    public void S1(int i11) {
        R1(this.f28716g0.getResources().getDimension(i11));
    }

    public void S2(float f11) {
        d dVarQ1 = q1();
        if (dVarQ1 != null) {
            dVarQ1.l(f11);
            this.f28723n0.g().setTextSize(f11);
            a();
        }
    }

    public float T0() {
        return this.K;
    }

    public void T1(float f11) {
        if (this.f28715f0 != f11) {
            this.f28715f0 = f11;
            invalidateSelf();
            F1();
        }
    }

    public void T2(float f11) {
        if (this.f28711b0 != f11) {
            this.f28711b0 = f11;
            invalidateSelf();
            F1();
        }
    }

    public ColorStateList U0() {
        return this.J;
    }

    public void U1(int i11) {
        T1(this.f28716g0.getResources().getDimension(i11));
    }

    public void U2(int i11) {
        T2(this.f28716g0.getResources().getDimension(i11));
    }

    public float V0() {
        return this.B;
    }

    public void V1(Drawable drawable) {
        Drawable drawableS0 = S0();
        if (drawableS0 != drawable) {
            float fU0 = u0();
            this.I = drawable != null ? a1.a.r(drawable).mutate() : null;
            float fU1 = u0();
            a3(drawableS0);
            if (Y2()) {
                s0(this.I);
            }
            invalidateSelf();
            if (fU0 != fU1) {
                F1();
            }
        }
    }

    public void V2(boolean z10) {
        if (this.C0 != z10) {
            this.C0 = z10;
            b3();
            onStateChange(getState());
        }
    }

    public float W0() {
        return this.Y;
    }

    public void W1(int i11) {
        V1(g.a.b(this.f28716g0, i11));
    }

    boolean W2() {
        return this.G0;
    }

    public ColorStateList X0() {
        return this.D;
    }

    public void X1(float f11) {
        if (this.K != f11) {
            float fU0 = u0();
            this.K = f11;
            float fU1 = u0();
            invalidateSelf();
            if (fU0 != fU1) {
                F1();
            }
        }
    }

    public float Y0() {
        return this.E;
    }

    public void Y1(int i11) {
        X1(this.f28716g0.getResources().getDimension(i11));
    }

    public Drawable Z0() {
        Drawable drawable = this.N;
        if (drawable != null) {
            return a1.a.q(drawable);
        }
        return null;
    }

    public void Z1(ColorStateList colorStateList) {
        this.L = true;
        if (this.J != colorStateList) {
            this.J = colorStateList;
            if (Y2()) {
                a1.a.o(this.I, colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.internal.y.b
    public void a() {
        F1();
        invalidateSelf();
    }

    public CharSequence a1() {
        return this.R;
    }

    public void a2(int i11) {
        Z1(g.a.a(this.f28716g0, i11));
    }

    public float b1() {
        return this.f28714e0;
    }

    public void b2(int i11) {
        c2(this.f28716g0.getResources().getBoolean(i11));
    }

    public float c1() {
        return this.Q;
    }

    public void c2(boolean z10) {
        if (this.H != z10) {
            boolean zY2 = Y2();
            this.H = z10;
            boolean zY3 = Y2();
            if (zY2 != zY3) {
                if (zY3) {
                    s0(this.I);
                } else {
                    a3(this.I);
                }
                invalidateSelf();
                F1();
            }
        }
    }

    public float d1() {
        return this.f28713d0;
    }

    public void d2(float f11) {
        if (this.B != f11) {
            this.B = f11;
            invalidateSelf();
            F1();
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i11 = this.f28732w0;
        int iA = i11 < 255 ? pa.a.a(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i11) : 0;
        I0(canvas, bounds);
        F0(canvas, bounds);
        if (this.I0) {
            super.draw(canvas);
        }
        H0(canvas, bounds);
        K0(canvas, bounds);
        G0(canvas, bounds);
        E0(canvas, bounds);
        if (this.G0) {
            M0(canvas, bounds);
        }
        J0(canvas, bounds);
        L0(canvas, bounds);
        if (this.f28732w0 < 255) {
            canvas.restoreToCount(iA);
        }
    }

    public int[] e1() {
        return this.B0;
    }

    public void e2(int i11) {
        d2(this.f28716g0.getResources().getDimension(i11));
    }

    public ColorStateList f1() {
        return this.P;
    }

    public void f2(float f11) {
        if (this.Y != f11) {
            this.Y = f11;
            invalidateSelf();
            F1();
        }
    }

    public void g1(RectF rectF) {
        x0(getBounds(), rectF);
    }

    public void g2(int i11) {
        f2(this.f28716g0.getResources().getDimension(i11));
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f28732w0;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f28733x0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.B;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.Y + u0() + this.f28711b0 + this.f28723n0.h(p1().toString()) + this.f28712c0 + y0() + this.f28715f0), this.H0);
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.I0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.C);
        } else {
            outline.setRoundRect(bounds, this.C);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public void h2(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (this.I0) {
                n0(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void i2(int i11) {
        h2(g.a.a(this.f28716g0, i11));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return B1(this.f28735z) || B1(this.A) || B1(this.D) || (this.C0 && B1(this.D0)) || D1(this.f28723n0.e()) || C0() || C1(this.I) || C1(this.U) || B1(this.f28736z0);
    }

    public TextUtils.TruncateAt j1() {
        return this.F0;
    }

    public void j2(float f11) {
        if (this.E != f11) {
            this.E = f11;
            this.f28717h0.setStrokeWidth(f11);
            if (this.I0) {
                super.o0(f11);
            }
            invalidateSelf();
        }
    }

    public h k1() {
        return this.X;
    }

    public void k2(int i11) {
        j2(this.f28716g0.getResources().getDimension(i11));
    }

    public float l1() {
        return this.f28710a0;
    }

    public float m1() {
        return this.Z;
    }

    public void m2(Drawable drawable) {
        Drawable drawableZ0 = Z0();
        if (drawableZ0 != drawable) {
            float fY0 = y0();
            this.N = drawable != null ? a1.a.r(drawable).mutate() : null;
            if (b.f78956a) {
                c3();
            }
            float fY1 = y0();
            a3(drawableZ0);
            if (Z2()) {
                s0(this.N);
            }
            invalidateSelf();
            if (fY0 != fY1) {
                F1();
            }
        }
    }

    public ColorStateList n1() {
        return this.F;
    }

    public void n2(CharSequence charSequence) {
        if (this.R != charSequence) {
            this.R = androidx.core.text.a.c().j(charSequence);
            invalidateSelf();
        }
    }

    public h o1() {
        return this.W;
    }

    public void o2(float f11) {
        if (this.f28714e0 != f11) {
            this.f28714e0 = f11;
            invalidateSelf();
            if (Z2()) {
                F1();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i11) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i11);
        if (Y2()) {
            zOnLayoutDirectionChanged |= a1.a.m(this.I, i11);
        }
        if (X2()) {
            zOnLayoutDirectionChanged |= a1.a.m(this.U, i11);
        }
        if (Z2()) {
            zOnLayoutDirectionChanged |= a1.a.m(this.N, i11);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i11) {
        boolean zOnLevelChange = super.onLevelChange(i11);
        if (Y2()) {
            zOnLevelChange |= this.I.setLevel(i11);
        }
        if (X2()) {
            zOnLevelChange |= this.U.setLevel(i11);
        }
        if (Z2()) {
            zOnLevelChange |= this.N.setLevel(i11);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.I0) {
            super.onStateChange(iArr);
        }
        return G1(iArr, e1());
    }

    public CharSequence p1() {
        return this.G;
    }

    public void p2(int i11) {
        o2(this.f28716g0.getResources().getDimension(i11));
    }

    public d q1() {
        return this.f28723n0.e();
    }

    public void q2(int i11) {
        m2(g.a.b(this.f28716g0, i11));
    }

    public float r1() {
        return this.f28712c0;
    }

    public void r2(float f11) {
        if (this.Q != f11) {
            this.Q = f11;
            invalidateSelf();
            if (Z2()) {
                F1();
            }
        }
    }

    public float s1() {
        return this.f28711b0;
    }

    public void s2(int i11) {
        r2(this.f28716g0.getResources().getDimension(i11));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j11) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j11);
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        if (this.f28732w0 != i11) {
            this.f28732w0 = i11;
            invalidateSelf();
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f28733x0 != colorFilter) {
            this.f28733x0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        if (this.f28736z0 != colorStateList) {
            this.f28736z0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.A0 != mode) {
            this.A0 = mode;
            this.f28734y0 = com.google.android.material.drawable.d.o(this, this.f28736z0, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        if (Y2()) {
            visible |= this.I.setVisible(z10, z11);
        }
        if (X2()) {
            visible |= this.U.setVisible(z10, z11);
        }
        if (Z2()) {
            visible |= this.N.setVisible(z10, z11);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public void t2(float f11) {
        if (this.f28713d0 != f11) {
            this.f28713d0 = f11;
            invalidateSelf();
            if (Z2()) {
                F1();
            }
        }
    }

    float u0() {
        if (Y2() || X2()) {
            return this.Z + i1() + this.f28710a0;
        }
        return 0.0f;
    }

    public boolean u1() {
        return this.C0;
    }

    public void u2(int i11) {
        t2(this.f28716g0.getResources().getDimension(i11));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public boolean v2(int[] iArr) {
        if (Arrays.equals(this.B0, iArr)) {
            return false;
        }
        this.B0 = iArr;
        if (Z2()) {
            return G1(getState(), iArr);
        }
        return false;
    }

    public boolean w1() {
        return this.S;
    }

    public void w2(ColorStateList colorStateList) {
        if (this.P != colorStateList) {
            this.P = colorStateList;
            if (Z2()) {
                a1.a.o(this.N, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public boolean x1() {
        return this.T;
    }

    public void x2(int i11) {
        w2(g.a.a(this.f28716g0, i11));
    }

    float y0() {
        if (Z2()) {
            return this.f28713d0 + this.Q + this.f28714e0;
        }
        return 0.0f;
    }

    public boolean y1() {
        return this.H;
    }

    public void y2(boolean z10) {
        if (this.M != z10) {
            boolean zZ2 = Z2();
            this.M = z10;
            boolean zZ3 = Z2();
            if (zZ2 != zZ3) {
                if (zZ3) {
                    s0(this.N);
                } else {
                    a3(this.N);
                }
                invalidateSelf();
                F1();
            }
        }
    }

    public boolean z1() {
        return C1(this.N);
    }

    public void z2(InterfaceC0393a interfaceC0393a) {
        this.E0 = new WeakReference(interfaceC0393a);
    }
}
