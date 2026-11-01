package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypedArray f2045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f2046c;

    private j0(Context context, TypedArray typedArray) {
        this.f2044a = context;
        this.f2045b = typedArray;
    }

    public static j0 t(Context context, int i11, int[] iArr) {
        return new j0(context, context.obtainStyledAttributes(i11, iArr));
    }

    public static j0 u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new j0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static j0 v(Context context, AttributeSet attributeSet, int[] iArr, int i11, int i12) {
        return new j0(context, context.obtainStyledAttributes(attributeSet, iArr, i11, i12));
    }

    public boolean a(int i11, boolean z10) {
        return this.f2045b.getBoolean(i11, z10);
    }

    public int b(int i11, int i12) {
        return this.f2045b.getColor(i11, i12);
    }

    public ColorStateList c(int i11) {
        int resourceId;
        ColorStateList colorStateListA;
        return (!this.f2045b.hasValue(i11) || (resourceId = this.f2045b.getResourceId(i11, 0)) == 0 || (colorStateListA = g.a.a(this.f2044a, resourceId)) == null) ? this.f2045b.getColorStateList(i11) : colorStateListA;
    }

    public float d(int i11, float f11) {
        return this.f2045b.getDimension(i11, f11);
    }

    public int e(int i11, int i12) {
        return this.f2045b.getDimensionPixelOffset(i11, i12);
    }

    public int f(int i11, int i12) {
        return this.f2045b.getDimensionPixelSize(i11, i12);
    }

    public Drawable g(int i11) {
        int resourceId;
        return (!this.f2045b.hasValue(i11) || (resourceId = this.f2045b.getResourceId(i11, 0)) == 0) ? this.f2045b.getDrawable(i11) : g.a.b(this.f2044a, resourceId);
    }

    public Drawable h(int i11) {
        int resourceId;
        if (!this.f2045b.hasValue(i11) || (resourceId = this.f2045b.getResourceId(i11, 0)) == 0) {
            return null;
        }
        return f.b().d(this.f2044a, resourceId, true);
    }

    public float i(int i11, float f11) {
        return this.f2045b.getFloat(i11, f11);
    }

    public Typeface j(int i11, int i12, y0.h.e eVar) {
        int resourceId = this.f2045b.getResourceId(i11, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f2046c == null) {
            this.f2046c = new TypedValue();
        }
        return y0.h.h(this.f2044a, resourceId, this.f2046c, i12, eVar);
    }

    public int k(int i11, int i12) {
        return this.f2045b.getInt(i11, i12);
    }

    public int l(int i11, int i12) {
        return this.f2045b.getInteger(i11, i12);
    }

    public int m(int i11, int i12) {
        return this.f2045b.getLayoutDimension(i11, i12);
    }

    public int n(int i11, int i12) {
        return this.f2045b.getResourceId(i11, i12);
    }

    public String o(int i11) {
        return this.f2045b.getString(i11);
    }

    public CharSequence p(int i11) {
        return this.f2045b.getText(i11);
    }

    public CharSequence[] q(int i11) {
        return this.f2045b.getTextArray(i11);
    }

    public TypedArray r() {
        return this.f2045b;
    }

    public boolean s(int i11) {
        return this.f2045b.hasValue(i11);
    }

    public TypedValue w(int i11) {
        return this.f2045b.peekValue(i11);
    }

    public void x() {
        this.f2045b.recycle();
    }
}
