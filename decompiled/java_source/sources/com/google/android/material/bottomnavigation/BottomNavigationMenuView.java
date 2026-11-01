package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.f;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    private final int H;
    private final int I;
    private final int J;
    private final int K;
    private boolean L;
    private final List M;

    public BottomNavigationMenuView(@NonNull Context context) {
        super(context);
        this.M = new ArrayList();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.H = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_max_width);
        this.I = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_min_width);
        this.J = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_max_width);
        this.K = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_min_width);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    protected NavigationBarItemView d(Context context) {
        return new BottomNavigationItemView(context);
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.L;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        int childCount = getChildCount();
        int i15 = i13 - i11;
        int i16 = i14 - i12;
        int measuredWidth = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i18 = i15 - measuredWidth;
                    childAt.layout(i18 - childAt.getMeasuredWidth(), 0, i18, i16);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, i16);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        int i13;
        int i14;
        f menu = getMenu();
        int size = View.MeasureSpec.getSize(i11);
        int size2 = menu.G().size();
        int childCount = getChildCount();
        this.M.clear();
        int size3 = View.MeasureSpec.getSize(i12);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
        if (f(getLabelVisibilityMode(), size2) && isItemHorizontalTranslationEnabled()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int iMax = this.K;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.J, Integer.MIN_VALUE), iMakeMeasureSpec);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
            int i15 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int iMin = Math.min(size - (this.I * i15), Math.min(iMax, this.J));
            int i16 = size - iMin;
            int iMin2 = Math.min(i16 / (i15 != 0 ? i15 : 1), this.H);
            int i17 = i16 - (i15 * iMin2);
            int i18 = 0;
            while (i18 < childCount) {
                if (getChildAt(i18).getVisibility() != 8) {
                    i14 = i18 == getSelectedItemPosition() ? iMin : iMin2;
                    if (i17 > 0) {
                        i14++;
                        i17--;
                    }
                } else {
                    i14 = 0;
                }
                this.M.add(Integer.valueOf(i14));
                i18++;
            }
        } else {
            int iMin3 = Math.min(size / (size2 != 0 ? size2 : 1), this.J);
            int i19 = size - (size2 * iMin3);
            for (int i20 = 0; i20 < childCount; i20++) {
                if (getChildAt(i20).getVisibility() == 8) {
                    i13 = 0;
                } else if (i19 > 0) {
                    i13 = iMin3 + 1;
                    i19--;
                } else {
                    i13 = iMin3;
                }
                this.M.add(Integer.valueOf(i13));
            }
        }
        int measuredWidth = 0;
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(((Integer) this.M.get(i21)).intValue(), 1073741824), iMakeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(measuredWidth, size3);
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        this.L = z10;
    }
}
