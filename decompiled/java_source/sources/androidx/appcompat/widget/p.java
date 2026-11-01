package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class p {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final RectF f2085l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ConcurrentHashMap f2086m = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2087a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2088b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f2089c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2090d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f2091e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f2092f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f2093g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextPaint f2094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextView f2095i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f2096j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final d f2097k;

    private static final class a {
        @NonNull
        static StaticLayout a(@NonNull CharSequence charSequence, @NonNull Layout.Alignment alignment, int i11, int i12, @NonNull TextView textView, @NonNull TextPaint textPaint, @NonNull d dVar) {
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i11);
            StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            if (i12 == -1) {
                i12 = Integer.MAX_VALUE;
            }
            hyphenationFrequency.setMaxLines(i12);
            try {
                dVar.a(builderObtain, textView);
            } catch (ClassCastException unused) {
                Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
            }
            return builderObtain.build();
        }
    }

    private static class b extends d {
        b() {
        }

        @Override // androidx.appcompat.widget.p.d
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) p.m(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    private static class c extends b {
        c() {
        }

        @Override // androidx.appcompat.widget.p.b, androidx.appcompat.widget.p.d
        void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.p.d
        boolean b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    private static class d {
        d() {
        }

        abstract void a(StaticLayout.Builder builder, TextView textView);

        boolean b(TextView textView) {
            return ((Boolean) p.m(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    p(TextView textView) {
        this.f2095i = textView;
        this.f2096j = textView.getContext();
        if (Build.VERSION.SDK_INT >= 29) {
            this.f2097k = new c();
        } else {
            this.f2097k = new b();
        }
    }

    private int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i11 : iArr) {
            if (i11 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i11)) < 0) {
                arrayList.add(Integer.valueOf(i11));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i12 = 0; i12 < size; i12++) {
            iArr2[i12] = ((Integer) arrayList.get(i12)).intValue();
        }
        return iArr2;
    }

    private void c() {
        this.f2087a = 0;
        this.f2090d = -1.0f;
        this.f2091e = -1.0f;
        this.f2089c = -1.0f;
        this.f2092f = new int[0];
        this.f2088b = false;
    }

    private int e(RectF rectF) {
        int length = this.f2092f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i11 = 1;
        int i12 = length - 1;
        int i13 = 0;
        while (i11 <= i12) {
            int i14 = (i11 + i12) / 2;
            if (x(this.f2092f[i14], rectF)) {
                int i15 = i14 + 1;
                i13 = i11;
                i11 = i15;
            } else {
                i13 = i14 - 1;
                i12 = i13;
            }
        }
        return this.f2092f[i13];
    }

    private static Method k(String str) {
        try {
            Method declaredMethod = (Method) f2086m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, null)) != null) {
                declaredMethod.setAccessible(true);
                f2086m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e11) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e11);
            return null;
        }
    }

    static Object m(Object obj, String str, Object obj2) {
        try {
            return k(str).invoke(obj, null);
        } catch (Exception e11) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e11);
            return obj2;
        }
    }

    private void s(float f11) {
        if (f11 != this.f2095i.getPaint().getTextSize()) {
            this.f2095i.getPaint().setTextSize(f11);
            boolean zIsInLayout = this.f2095i.isInLayout();
            if (this.f2095i.getLayout() != null) {
                this.f2088b = false;
                try {
                    Method methodK = k("nullLayouts");
                    if (methodK != null) {
                        methodK.invoke(this.f2095i, null);
                    }
                } catch (Exception e11) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e11);
                }
                if (zIsInLayout) {
                    this.f2095i.forceLayout();
                } else {
                    this.f2095i.requestLayout();
                }
                this.f2095i.invalidate();
            }
        }
    }

    private boolean u() {
        if (y() && this.f2087a == 1) {
            if (!this.f2093g || this.f2092f.length == 0) {
                int iFloor = ((int) Math.floor((this.f2091e - this.f2090d) / this.f2089c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i11 = 0; i11 < iFloor; i11++) {
                    iArr[i11] = Math.round(this.f2090d + (i11 * this.f2089c));
                }
                this.f2092f = b(iArr);
            }
            this.f2088b = true;
        } else {
            this.f2088b = false;
        }
        return this.f2088b;
    }

    private void v(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11] = typedArray.getDimensionPixelSize(i11, -1);
            }
            this.f2092f = b(iArr);
            w();
        }
    }

    private boolean w() {
        int[] iArr = this.f2092f;
        int length = iArr.length;
        boolean z10 = length > 0;
        this.f2093g = z10;
        if (z10) {
            this.f2087a = 1;
            this.f2090d = iArr[0];
            this.f2091e = iArr[length - 1];
            this.f2089c = -1.0f;
        }
        return z10;
    }

    private boolean x(int i11, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f2095i.getText();
        TransformationMethod transformationMethod = this.f2095i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f2095i)) != null) {
            text = transformation;
        }
        int maxLines = this.f2095i.getMaxLines();
        l(i11);
        StaticLayout staticLayoutD = d(text, (Layout.Alignment) m(this.f2095i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (staticLayoutD.getLineCount() <= maxLines && staticLayoutD.getLineEnd(staticLayoutD.getLineCount() - 1) == text.length())) && ((float) staticLayoutD.getHeight()) <= rectF.bottom;
    }

    private boolean y() {
        return !(this.f2095i instanceof AppCompatEditText);
    }

    private void z(float f11, float f12, float f13) {
        if (f11 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f11 + "px) is less or equal to (0px)");
        }
        if (f12 <= f11) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f12 + "px) is less or equal to minimum auto-size text size (" + f11 + "px)");
        }
        if (f13 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f13 + "px) is less or equal to (0px)");
        }
        this.f2087a = 1;
        this.f2090d = f11;
        this.f2091e = f12;
        this.f2089c = f13;
        this.f2093g = false;
    }

    void a() {
        if (n()) {
            if (this.f2088b) {
                if (this.f2095i.getMeasuredHeight() <= 0 || this.f2095i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f2097k.b(this.f2095i) ? 1048576 : (this.f2095i.getMeasuredWidth() - this.f2095i.getTotalPaddingLeft()) - this.f2095i.getTotalPaddingRight();
                int height = (this.f2095i.getHeight() - this.f2095i.getCompoundPaddingBottom()) - this.f2095i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f2085l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fE = e(rectF);
                        if (fE != this.f2095i.getTextSize()) {
                            t(0, fE);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            this.f2088b = true;
        }
    }

    StaticLayout d(CharSequence charSequence, Layout.Alignment alignment, int i11, int i12) {
        return a.a(charSequence, alignment, i11, i12, this.f2095i, this.f2094h, this.f2097k);
    }

    int f() {
        return Math.round(this.f2091e);
    }

    int g() {
        return Math.round(this.f2090d);
    }

    int h() {
        return Math.round(this.f2089c);
    }

    int[] i() {
        return this.f2092f;
    }

    int j() {
        return this.f2087a;
    }

    void l(int i11) {
        TextPaint textPaint = this.f2094h;
        if (textPaint == null) {
            this.f2094h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f2094h.set(this.f2095i.getPaint());
        this.f2094h.setTextSize(i11);
    }

    boolean n() {
        return y() && this.f2087a != 0;
    }

    void o(AttributeSet attributeSet, int i11) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f2096j.obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i11, 0);
        TextView textView = this.f2095i;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), R$styleable.AppCompatTextView, attributeSet, typedArrayObtainStyledAttributes, i11, 0);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeTextType)) {
            this.f2087a = typedArrayObtainStyledAttributes.getInt(R$styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(R$styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            v(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!y()) {
            this.f2087a = 0;
            return;
        }
        if (this.f2087a == 1) {
            if (!this.f2093g) {
                DisplayMetrics displayMetrics = this.f2096j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                z(dimension2, dimension3, dimension);
            }
            u();
        }
    }

    void p(int i11, int i12, int i13, int i14) {
        if (y()) {
            DisplayMetrics displayMetrics = this.f2096j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(i14, i11, displayMetrics), TypedValue.applyDimension(i14, i12, displayMetrics), TypedValue.applyDimension(i14, i13, displayMetrics));
            if (u()) {
                a();
            }
        }
    }

    void q(int[] iArr, int i11) {
        if (y()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i11 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f2096j.getResources().getDisplayMetrics();
                    for (int i12 = 0; i12 < length; i12++) {
                        iArrCopyOf[i12] = Math.round(TypedValue.applyDimension(i11, iArr[i12], displayMetrics));
                    }
                }
                this.f2092f = b(iArrCopyOf);
                if (!w()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f2093g = false;
            }
            if (u()) {
                a();
            }
        }
    }

    void r(int i11) {
        if (y()) {
            if (i11 == 0) {
                c();
                return;
            }
            if (i11 != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i11);
            }
            DisplayMetrics displayMetrics = this.f2096j.getResources().getDisplayMetrics();
            z(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (u()) {
                a();
            }
        }
    }

    void t(int i11, float f11) {
        Context context = this.f2096j;
        s(TypedValue.applyDimension(i11, f11, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
