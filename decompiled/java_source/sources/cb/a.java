package cb;

import ab.g;
import ab.h;
import ab.i;
import ab.k;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.color.b;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.y;
import xa.c;
import xa.d;

/* JADX INFO: loaded from: classes4.dex */
public class a extends i implements y.b {
    private static final int R = R$style.Widget_MaterialComponents_Tooltip;
    private static final int S = R$attr.tooltipStyle;
    private final Context A;
    private final Paint.FontMetrics B;
    private final y C;
    private final View.OnLayoutChangeListener D;
    private final Rect E;
    private int F;
    private int G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private int L;
    private float M;
    private float N;
    private final float O;
    private float P;
    private float Q;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private CharSequence f17107z;

    /* JADX INFO: renamed from: cb.a$a, reason: collision with other inner class name */
    class ViewOnLayoutChangeListenerC0164a implements View.OnLayoutChangeListener {
        ViewOnLayoutChangeListenerC0164a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            a.this.G0(view);
        }
    }

    private a(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        this.B = new Paint.FontMetrics();
        y yVar = new y(this);
        this.C = yVar;
        this.D = new ViewOnLayoutChangeListenerC0164a();
        this.E = new Rect();
        this.M = 1.0f;
        this.N = 1.0f;
        this.O = 0.5f;
        this.P = 0.5f;
        this.Q = 1.0f;
        this.A = context;
        yVar.g().density = context.getResources().getDisplayMetrics().density;
        yVar.g().setTextAlign(Paint.Align.CENTER);
    }

    private float A0() {
        CharSequence charSequence = this.f17107z;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.C.h(charSequence.toString());
    }

    private void B0(AttributeSet attributeSet, int i11, int i12) {
        TypedArray typedArrayI = b0.i(this.A, attributeSet, R$styleable.Tooltip, i11, i12, new int[0]);
        this.K = this.A.getResources().getDimensionPixelSize(R$dimen.mtrl_tooltip_arrowSize);
        boolean z10 = typedArrayI.getBoolean(R$styleable.Tooltip_showMarker, true);
        this.J = z10;
        if (z10) {
            setShapeAppearanceModel(G().v().s(x0()).m());
        } else {
            this.K = 0;
        }
        E0(typedArrayI.getText(R$styleable.Tooltip_android_text));
        d dVarH = c.h(this.A, typedArrayI, R$styleable.Tooltip_android_textAppearance);
        if (dVarH != null && typedArrayI.hasValue(R$styleable.Tooltip_android_textColor)) {
            dVarH.k(c.a(this.A, typedArrayI, R$styleable.Tooltip_android_textColor));
        }
        F0(dVarH);
        d0(ColorStateList.valueOf(typedArrayI.getColor(R$styleable.Tooltip_backgroundTint, b.i(z0.b.p(b.c(this.A, R.attr.colorBackground, a.class.getCanonicalName()), 229), z0.b.p(b.c(this.A, R$attr.colorOnBackground, a.class.getCanonicalName()), 153)))));
        n0(ColorStateList.valueOf(b.c(this.A, R$attr.colorSurface, a.class.getCanonicalName())));
        this.F = typedArrayI.getDimensionPixelSize(R$styleable.Tooltip_android_padding, 0);
        this.G = typedArrayI.getDimensionPixelSize(R$styleable.Tooltip_android_minWidth, 0);
        this.H = typedArrayI.getDimensionPixelSize(R$styleable.Tooltip_android_minHeight, 0);
        this.I = typedArrayI.getDimensionPixelSize(R$styleable.Tooltip_android_layout_margin, 0);
        typedArrayI.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.L = iArr[0];
        view.getWindowVisibleDisplayFrame(this.E);
    }

    private float t0() {
        int i11;
        if (((this.E.right - getBounds().right) - this.L) - this.I < 0) {
            i11 = ((this.E.right - getBounds().right) - this.L) - this.I;
        } else {
            if (((this.E.left - getBounds().left) - this.L) + this.I <= 0) {
                return 0.0f;
            }
            i11 = ((this.E.left - getBounds().left) - this.L) + this.I;
        }
        return i11;
    }

    private float u0() {
        this.C.g().getFontMetrics(this.B);
        Paint.FontMetrics fontMetrics = this.B;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float v0(Rect rect) {
        return rect.centerY() - u0();
    }

    public static a w0(Context context, AttributeSet attributeSet, int i11, int i12) {
        a aVar = new a(context, attributeSet, i11, i12);
        aVar.B0(attributeSet, i11, i12);
        return aVar;
    }

    private g x0() {
        float f11 = -t0();
        float fWidth = ((float) (((double) getBounds().width()) - (((double) this.K) * Math.sqrt(2.0d)))) / 2.0f;
        return new k(new h(this.K), Math.min(Math.max(f11, -fWidth), fWidth));
    }

    private void z0(Canvas canvas) {
        if (this.f17107z == null) {
            return;
        }
        Rect bounds = getBounds();
        int iV0 = (int) v0(bounds);
        if (this.C.e() != null) {
            this.C.g().drawableState = getState();
            this.C.n(this.A);
            this.C.g().setAlpha((int) (this.Q * 255.0f));
        }
        CharSequence charSequence = this.f17107z;
        canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), iV0, this.C.g());
    }

    public void C0(View view) {
        if (view == null) {
            return;
        }
        G0(view);
        view.addOnLayoutChangeListener(this.D);
    }

    public void D0(float f11) {
        this.P = 1.2f;
        this.M = f11;
        this.N = f11;
        this.Q = oa.a.b(0.0f, 1.0f, 0.19f, 1.0f, f11);
        invalidateSelf();
    }

    public void E0(CharSequence charSequence) {
        if (TextUtils.equals(this.f17107z, charSequence)) {
            return;
        }
        this.f17107z = charSequence;
        this.C.m(true);
        invalidateSelf();
    }

    public void F0(d dVar) {
        this.C.k(dVar, this.A);
    }

    @Override // com.google.android.material.internal.y.b
    public void a() {
        invalidateSelf();
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        float fT0 = t0();
        float f11 = (float) (-((((double) this.K) * Math.sqrt(2.0d)) - ((double) this.K)));
        canvas.scale(this.M, this.N, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.P));
        canvas.translate(fT0, f11);
        super.draw(canvas);
        z0(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.C.g().getTextSize(), this.H);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.F * 2) + A0(), this.G);
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.J) {
            setShapeAppearanceModel(G().v().s(x0()).m());
        }
    }

    @Override // ab.i, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    public void y0(View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.D);
    }
}
