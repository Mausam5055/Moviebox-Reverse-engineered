package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TypedValue f1743a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TypedValue f1744b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f1745c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TypedValue f1746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TypedValue f1747e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TypedValue f1748f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f1749g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f1750h;

    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f1749g = new Rect();
    }

    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1747e == null) {
            this.f1747e = new TypedValue();
        }
        return this.f1747e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1748f == null) {
            this.f1748f = new TypedValue();
        }
        return this.f1748f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1745c == null) {
            this.f1745c = new TypedValue();
        }
        return this.f1745c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1746d == null) {
            this.f1746d = new TypedValue();
        }
        return this.f1746d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1743a == null) {
            this.f1743a = new TypedValue();
        }
        return this.f1743a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1744b == null) {
            this.f1744b = new TypedValue();
        }
        return this.f1744b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f1750h;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f1750h;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        boolean z10;
        int i13;
        int i14;
        float fraction;
        int i15;
        int i16;
        float fraction2;
        int i17;
        int i18;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z11 = true;
        boolean z12 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        if (mode != Integer.MIN_VALUE) {
            z10 = false;
        } else {
            TypedValue typedValue = z12 ? this.f1746d : this.f1745c;
            if (typedValue == null || (i17 = typedValue.type) == 0) {
                z10 = false;
            } else {
                if (i17 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i17 == 6) {
                        int i19 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i19, i19);
                    } else {
                        i18 = 0;
                    }
                    if (i18 > 0) {
                        Rect rect = this.f1749g;
                        i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i18 - (rect.left + rect.right), View.MeasureSpec.getSize(i11)), 1073741824);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                i18 = (int) fraction3;
                if (i18 > 0) {
                    Rect rect2 = this.f1749g;
                    i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i18 - (rect2.left + rect2.right), View.MeasureSpec.getSize(i11)), 1073741824);
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z12 ? this.f1747e : this.f1748f;
            if (typedValue2 != null && (i15 = typedValue2.type) != 0) {
                if (i15 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i15 == 6) {
                        int i20 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i20, i20);
                    } else {
                        i16 = 0;
                    }
                    if (i16 > 0) {
                        Rect rect3 = this.f1749g;
                        i12 = View.MeasureSpec.makeMeasureSpec(Math.min(i16 - (rect3.top + rect3.bottom), View.MeasureSpec.getSize(i12)), 1073741824);
                    }
                }
                i16 = (int) fraction2;
                if (i16 > 0) {
                    Rect rect4 = this.f1749g;
                    i12 = View.MeasureSpec.makeMeasureSpec(Math.min(i16 - (rect4.top + rect4.bottom), View.MeasureSpec.getSize(i12)), 1073741824);
                }
            }
        }
        super.onMeasure(i11, i12);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z10 || mode != Integer.MIN_VALUE) {
            z11 = false;
        } else {
            TypedValue typedValue3 = z12 ? this.f1744b : this.f1743a;
            if (typedValue3 == null || (i13 = typedValue3.type) == 0) {
                z11 = false;
            } else {
                if (i13 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i13 == 6) {
                        int i21 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i21, i21);
                    } else {
                        i14 = 0;
                    }
                    if (i14 > 0) {
                        Rect rect5 = this.f1749g;
                        i14 -= rect5.left + rect5.right;
                    }
                    if (measuredWidth < i14) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                    } else {
                        z11 = false;
                    }
                }
                i14 = (int) fraction;
                if (i14 > 0) {
                    Rect rect6 = this.f1749g;
                    i14 -= rect6.left + rect6.right;
                }
                if (measuredWidth < i14) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                } else {
                    z11 = false;
                }
            }
        }
        if (z11) {
            super.onMeasure(iMakeMeasureSpec, i12);
        }
    }

    public void setAttachListener(a aVar) {
        this.f1750h = aVar;
    }

    public void setDecorPadding(int i11, int i12, int i13, int i14) {
        this.f1749g.set(i11, i12, i13, i14);
        if (isLaidOut()) {
            requestLayout();
        }
    }
}
