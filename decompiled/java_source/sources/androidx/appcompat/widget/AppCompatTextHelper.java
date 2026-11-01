package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class AppCompatTextHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f1717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h0 f1718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h0 f1719c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h0 f1720d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h0 f1721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h0 f1722f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private h0 f1723g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private h0 f1724h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final p f1725i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1726j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f1727k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Typeface f1728l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f1729m;

    class a extends y0.h.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1730a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WeakReference f1732c;

        a(int i11, int i12, WeakReference weakReference) {
            this.f1730a = i11;
            this.f1731b = i12;
            this.f1732c = weakReference;
        }

        @Override // y0.h.e
        /* JADX INFO: renamed from: h */
        public void f(int i11) {
        }

        @Override // y0.h.e
        /* JADX INFO: renamed from: i */
        public void g(Typeface typeface) {
            int i11;
            if (Build.VERSION.SDK_INT >= 28 && (i11 = this.f1730a) != -1) {
                typeface = e.a(typeface, i11, (this.f1731b & 2) != 0);
            }
            AppCompatTextHelper.this.n(this.f1732c, typeface);
        }
    }

    static class b {
        static Locale a(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    static class c {
        static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    static class d {
        static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        static void b(TextView textView, int i11, int i12, int i13, int i14) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i11, i12, i13, i14);
        }

        static void c(TextView textView, int[] iArr, int i11) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i11);
        }

        static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    static class e {
        static Typeface a(Typeface typeface, int i11, boolean z10) {
            return Typeface.create(typeface, i11, z10);
        }
    }

    AppCompatTextHelper(TextView textView) {
        this.f1717a = textView;
        this.f1725i = new p(textView);
    }

    private void B(int i11, float f11) {
        this.f1725i.t(i11, f11);
    }

    private void C(Context context, j0 j0Var) {
        String strO;
        this.f1726j = j0Var.k(R$styleable.TextAppearance_android_textStyle, this.f1726j);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28) {
            int iK = j0Var.k(R$styleable.TextAppearance_android_textFontWeight, -1);
            this.f1727k = iK;
            if (iK != -1) {
                this.f1726j &= 2;
            }
        }
        if (!j0Var.s(R$styleable.TextAppearance_android_fontFamily) && !j0Var.s(R$styleable.TextAppearance_fontFamily)) {
            if (j0Var.s(R$styleable.TextAppearance_android_typeface)) {
                this.f1729m = false;
                int iK2 = j0Var.k(R$styleable.TextAppearance_android_typeface, 1);
                if (iK2 == 1) {
                    this.f1728l = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.f1728l = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.f1728l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1728l = null;
        int i12 = j0Var.s(R$styleable.TextAppearance_fontFamily) ? R$styleable.TextAppearance_fontFamily : R$styleable.TextAppearance_android_fontFamily;
        int i13 = this.f1727k;
        int i14 = this.f1726j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceJ = j0Var.j(i12, this.f1726j, new a(i13, i14, new WeakReference(this.f1717a)));
                if (typefaceJ != null) {
                    if (i11 < 28 || this.f1727k == -1) {
                        this.f1728l = typefaceJ;
                    } else {
                        this.f1728l = e.a(Typeface.create(typefaceJ, 0), this.f1727k, (this.f1726j & 2) != 0);
                    }
                }
                this.f1729m = this.f1728l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1728l != null || (strO = j0Var.o(i12)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1727k == -1) {
            this.f1728l = Typeface.create(strO, this.f1726j);
        } else {
            this.f1728l = e.a(Typeface.create(strO, 0), this.f1727k, (this.f1726j & 2) != 0);
        }
    }

    private void a(Drawable drawable, h0 h0Var) {
        if (drawable == null || h0Var == null) {
            return;
        }
        f.i(drawable, h0Var, this.f1717a.getDrawableState());
    }

    private static h0 d(Context context, f fVar, int i11) {
        ColorStateList colorStateListF = fVar.f(context, i11);
        if (colorStateListF == null) {
            return null;
        }
        h0 h0Var = new h0();
        h0Var.f2037d = true;
        h0Var.f2034a = colorStateListF;
        return h0Var;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.f1717a.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            TextView textView = this.f1717a;
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.f1717a.getCompoundDrawablesRelative();
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            this.f1717a.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative2[2], drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.f1717a.getCompoundDrawables();
        TextView textView2 = this.f1717a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        h0 h0Var = this.f1724h;
        this.f1718b = h0Var;
        this.f1719c = h0Var;
        this.f1720d = h0Var;
        this.f1721e = h0Var;
        this.f1722f = h0Var;
        this.f1723g = h0Var;
    }

    void A(int i11, float f11) {
        if (u0.f2123c || l()) {
            return;
        }
        B(i11, f11);
    }

    void b() {
        if (this.f1718b != null || this.f1719c != null || this.f1720d != null || this.f1721e != null) {
            Drawable[] compoundDrawables = this.f1717a.getCompoundDrawables();
            a(compoundDrawables[0], this.f1718b);
            a(compoundDrawables[1], this.f1719c);
            a(compoundDrawables[2], this.f1720d);
            a(compoundDrawables[3], this.f1721e);
        }
        if (this.f1722f == null && this.f1723g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.f1717a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f1722f);
        a(compoundDrawablesRelative[2], this.f1723g);
    }

    void c() {
        this.f1725i.a();
    }

    int e() {
        return this.f1725i.f();
    }

    int f() {
        return this.f1725i.g();
    }

    int g() {
        return this.f1725i.h();
    }

    int[] h() {
        return this.f1725i.i();
    }

    int i() {
        return this.f1725i.j();
    }

    ColorStateList j() {
        h0 h0Var = this.f1724h;
        if (h0Var != null) {
            return h0Var.f2034a;
        }
        return null;
    }

    PorterDuff.Mode k() {
        h0 h0Var = this.f1724h;
        if (h0Var != null) {
            return h0Var.f2035b;
        }
        return null;
    }

    boolean l() {
        return this.f1725i.n();
    }

    /* JADX WARN: Code duplicated, block: B:128:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:130:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:133:0x02c1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:134:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:137:? A[RETURN, SYNTHETIC] */
    void m(AttributeSet attributeSet, int i11) {
        boolean zA;
        boolean z10;
        String strO;
        String strO2;
        boolean z11;
        float f11;
        int iA;
        Context context = this.f1717a.getContext();
        f fVarB = f.b();
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.AppCompatTextHelper, i11, 0);
        TextView textView = this.f1717a;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), R$styleable.AppCompatTextHelper, attributeSet, j0VarV.r(), i11, 0);
        int iN = j0VarV.n(R$styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.f1718b = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableTop)) {
            this.f1719c = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableRight)) {
            this.f1720d = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.f1721e = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableStart)) {
            this.f1722f = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (j0VarV.s(R$styleable.AppCompatTextHelper_android_drawableEnd)) {
            this.f1723g = d(context, fVarB, j0VarV.n(R$styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        j0VarV.x();
        boolean z12 = this.f1717a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iN != -1) {
            j0 j0VarT = j0.t(context, iN, R$styleable.TextAppearance);
            if (z12 || !j0VarT.s(R$styleable.TextAppearance_textAllCaps)) {
                zA = false;
                z10 = false;
            } else {
                zA = j0VarT.a(R$styleable.TextAppearance_textAllCaps, false);
                z10 = true;
            }
            C(context, j0VarT);
            int i12 = Build.VERSION.SDK_INT;
            strO2 = j0VarT.s(R$styleable.TextAppearance_textLocale) ? j0VarT.o(R$styleable.TextAppearance_textLocale) : null;
            strO = (i12 < 26 || !j0VarT.s(R$styleable.TextAppearance_fontVariationSettings)) ? null : j0VarT.o(R$styleable.TextAppearance_fontVariationSettings);
            j0VarT.x();
        } else {
            zA = false;
            z10 = false;
            strO = null;
            strO2 = null;
        }
        j0 j0VarV2 = j0.v(context, attributeSet, R$styleable.TextAppearance, i11, 0);
        if (z12 || !j0VarV2.s(R$styleable.TextAppearance_textAllCaps)) {
            z11 = z10;
        } else {
            zA = j0VarV2.a(R$styleable.TextAppearance_textAllCaps, false);
            z11 = true;
        }
        int i13 = Build.VERSION.SDK_INT;
        if (j0VarV2.s(R$styleable.TextAppearance_textLocale)) {
            strO2 = j0VarV2.o(R$styleable.TextAppearance_textLocale);
        }
        if (i13 >= 26 && j0VarV2.s(R$styleable.TextAppearance_fontVariationSettings)) {
            strO = j0VarV2.o(R$styleable.TextAppearance_fontVariationSettings);
        }
        if (i13 >= 28 && j0VarV2.s(R$styleable.TextAppearance_android_textSize) && j0VarV2.f(R$styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f1717a.setTextSize(0, 0.0f);
        }
        C(context, j0VarV2);
        j0VarV2.x();
        if (!z12 && z11) {
            s(zA);
        }
        Typeface typeface = this.f1728l;
        if (typeface != null) {
            if (this.f1727k == -1) {
                this.f1717a.setTypeface(typeface, this.f1726j);
            } else {
                this.f1717a.setTypeface(typeface);
            }
        }
        if (strO != null) {
            d.d(this.f1717a, strO);
        }
        if (strO2 != null) {
            if (i13 >= 24) {
                c.b(this.f1717a, c.a(strO2));
            } else {
                this.f1717a.setTextLocale(b.a(strO2.split(",")[0]));
            }
        }
        this.f1725i.o(attributeSet, i11);
        if (u0.f2123c && this.f1725i.j() != 0) {
            int[] iArrI = this.f1725i.i();
            if (iArrI.length > 0) {
                if (d.a(this.f1717a) != -1.0f) {
                    d.b(this.f1717a, this.f1725i.g(), this.f1725i.f(), this.f1725i.h(), 0);
                } else {
                    d.c(this.f1717a, iArrI, 0);
                }
            }
        }
        j0 j0VarU = j0.u(context, attributeSet, R$styleable.AppCompatTextView);
        int iN2 = j0VarU.n(R$styleable.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawableC = iN2 != -1 ? fVarB.c(context, iN2) : null;
        int iN3 = j0VarU.n(R$styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableC2 = iN3 != -1 ? fVarB.c(context, iN3) : null;
        int iN4 = j0VarU.n(R$styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableC3 = iN4 != -1 ? fVarB.c(context, iN4) : null;
        int iN5 = j0VarU.n(R$styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableC4 = iN5 != -1 ? fVarB.c(context, iN5) : null;
        int iN6 = j0VarU.n(R$styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableC5 = iN6 != -1 ? fVarB.c(context, iN6) : null;
        int iN7 = j0VarU.n(R$styleable.AppCompatTextView_drawableEndCompat, -1);
        y(drawableC, drawableC2, drawableC3, drawableC4, drawableC5, iN7 != -1 ? fVarB.c(context, iN7) : null);
        if (j0VarU.s(R$styleable.AppCompatTextView_drawableTint)) {
            androidx.core.widget.m.i(this.f1717a, j0VarU.c(R$styleable.AppCompatTextView_drawableTint));
        }
        if (j0VarU.s(R$styleable.AppCompatTextView_drawableTintMode)) {
            androidx.core.widget.m.j(this.f1717a, y.e(j0VarU.k(R$styleable.AppCompatTextView_drawableTintMode, -1), null));
        }
        int iF = j0VarU.f(R$styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int iF2 = j0VarU.f(R$styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        if (j0VarU.s(R$styleable.AppCompatTextView_lineHeight)) {
            TypedValue typedValueW = j0VarU.w(R$styleable.AppCompatTextView_lineHeight);
            if (typedValueW == null || typedValueW.type != 5) {
                f11 = j0VarU.f(R$styleable.AppCompatTextView_lineHeight, -1);
            } else {
                iA = androidx.core.util.n.a(typedValueW.data);
                f11 = TypedValue.complexToFloat(typedValueW.data);
            }
            j0VarU.x();
            if (iF != -1) {
                androidx.core.widget.m.l(this.f1717a, iF);
            }
            if (iF2 != -1) {
                androidx.core.widget.m.m(this.f1717a, iF2);
            }
            if (f11 != -1.0f) {
                if (iA == -1) {
                    androidx.core.widget.m.n(this.f1717a, (int) f11);
                } else {
                    androidx.core.widget.m.o(this.f1717a, iA, f11);
                }
            }
        }
        f11 = -1.0f;
        iA = -1;
        j0VarU.x();
        if (iF != -1) {
            androidx.core.widget.m.l(this.f1717a, iF);
        }
        if (iF2 != -1) {
            androidx.core.widget.m.m(this.f1717a, iF2);
        }
        if (f11 != -1.0f) {
            if (iA == -1) {
                androidx.core.widget.m.n(this.f1717a, (int) f11);
            } else {
                androidx.core.widget.m.o(this.f1717a, iA, f11);
            }
        }
    }

    void n(WeakReference weakReference, final Typeface typeface) {
        if (this.f1729m) {
            this.f1728l = typeface;
            final TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (!textView.isAttachedToWindow()) {
                    textView.setTypeface(typeface, this.f1726j);
                } else {
                    final int i11 = this.f1726j;
                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            textView.setTypeface(typeface, i11);
                        }
                    });
                }
            }
        }
    }

    void o(boolean z10, int i11, int i12, int i13, int i14) {
        if (u0.f2123c) {
            return;
        }
        c();
    }

    void p() {
        b();
    }

    void q(Context context, int i11) {
        String strO;
        j0 j0VarT = j0.t(context, i11, R$styleable.TextAppearance);
        if (j0VarT.s(R$styleable.TextAppearance_textAllCaps)) {
            s(j0VarT.a(R$styleable.TextAppearance_textAllCaps, false));
        }
        int i12 = Build.VERSION.SDK_INT;
        if (j0VarT.s(R$styleable.TextAppearance_android_textSize) && j0VarT.f(R$styleable.TextAppearance_android_textSize, -1) == 0) {
            this.f1717a.setTextSize(0, 0.0f);
        }
        C(context, j0VarT);
        if (i12 >= 26 && j0VarT.s(R$styleable.TextAppearance_fontVariationSettings) && (strO = j0VarT.o(R$styleable.TextAppearance_fontVariationSettings)) != null) {
            d.d(this.f1717a, strO);
        }
        j0VarT.x();
        Typeface typeface = this.f1728l;
        if (typeface != null) {
            this.f1717a.setTypeface(typeface, this.f1726j);
        }
    }

    void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
    }

    void s(boolean z10) {
        this.f1717a.setAllCaps(z10);
    }

    void t(int i11, int i12, int i13, int i14) {
        this.f1725i.p(i11, i12, i13, i14);
    }

    void u(int[] iArr, int i11) {
        this.f1725i.q(iArr, i11);
    }

    void v(int i11) {
        this.f1725i.r(i11);
    }

    void w(ColorStateList colorStateList) {
        if (this.f1724h == null) {
            this.f1724h = new h0();
        }
        h0 h0Var = this.f1724h;
        h0Var.f2034a = colorStateList;
        h0Var.f2037d = colorStateList != null;
        z();
    }

    void x(PorterDuff.Mode mode) {
        if (this.f1724h == null) {
            this.f1724h = new h0();
        }
        h0 h0Var = this.f1724h;
        h0Var.f2035b = mode;
        h0Var.f2036c = mode != null;
        z();
    }
}
