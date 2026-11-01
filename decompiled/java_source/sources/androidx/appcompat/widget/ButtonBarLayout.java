package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1742c;

    public ButtonBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1742c = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ButtonBarLayout);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.ButtonBarLayout, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        this.f1740a = typedArrayObtainStyledAttributes.getBoolean(R$styleable.ButtonBarLayout_allowStacking, true);
        typedArrayObtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f1740a);
        }
    }

    private int a(int i11) {
        int childCount = getChildCount();
        while (i11 < childCount) {
            if (getChildAt(i11).getVisibility() == 0) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    private boolean b() {
        return this.f1741b;
    }

    private void setStacked(boolean z10) {
        if (this.f1741b != z10) {
            if (!z10 || this.f1740a) {
                this.f1741b = z10;
                setOrientation(z10 ? 1 : 0);
                setGravity(z10 ? GravityCompat.END : 80);
                View viewFindViewById = findViewById(R$id.spacer);
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(z10 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        int iMakeMeasureSpec;
        boolean z10;
        int size = View.MeasureSpec.getSize(i11);
        int paddingBottom = 0;
        if (this.f1740a) {
            if (size > this.f1742c && b()) {
                setStacked(false);
            }
            this.f1742c = size;
        }
        if (b() || View.MeasureSpec.getMode(i11) != 1073741824) {
            iMakeMeasureSpec = i11;
            z10 = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z10 = true;
        }
        super.onMeasure(iMakeMeasureSpec, i12);
        if (this.f1740a && !b() && (getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216) {
            setStacked(true);
            z10 = true;
        }
        if (z10) {
            super.onMeasure(i11, i12);
        }
        int iA = a(0);
        if (iA >= 0) {
            View childAt = getChildAt(iA);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (b()) {
                int iA2 = a(iA + 1);
                if (iA2 >= 0) {
                    paddingTop += getChildAt(iA2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                paddingBottom = paddingTop;
            } else {
                paddingBottom = paddingTop + getPaddingBottom();
            }
        }
        if (ViewCompat.getMinimumHeight(this) != paddingBottom) {
            setMinimumHeight(paddingBottom);
            if (i12 == 0) {
                super.onMeasure(i11, i12);
            }
        }
    }

    public void setAllowStacking(boolean z10) {
        if (this.f1740a != z10) {
            this.f1740a = z10;
            if (!z10 && b()) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
