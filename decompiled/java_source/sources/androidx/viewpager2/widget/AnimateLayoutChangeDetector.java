package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class AnimateLayoutChangeDetector {
    private static final ViewGroup.MarginLayoutParams ZERO_MARGIN_LAYOUT_PARAMS;
    private LinearLayoutManager mLayoutManager;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        ZERO_MARGIN_LAYOUT_PARAMS = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    private boolean arePagesLaidOutContiguously() {
        int top;
        int i11;
        int bottom;
        int i12;
        int childCount = this.mLayoutManager.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z10 = this.mLayoutManager.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, childCount, 2);
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = this.mLayoutManager.getChildAt(i13);
            if (childAt == null) {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : ZERO_MARGIN_LAYOUT_PARAMS;
            int[] iArr2 = iArr[i13];
            if (z10) {
                top = childAt.getLeft();
                i11 = marginLayoutParams.leftMargin;
            } else {
                top = childAt.getTop();
                i11 = marginLayoutParams.topMargin;
            }
            iArr2[0] = top - i11;
            int[] iArr3 = iArr[i13];
            if (z10) {
                bottom = childAt.getRight();
                i12 = marginLayoutParams.rightMargin;
            } else {
                bottom = childAt.getBottom();
                i12 = marginLayoutParams.bottomMargin;
            }
            iArr3[1] = bottom + i12;
        }
        Arrays.sort(iArr, new Comparator<int[]>() { // from class: androidx.viewpager2.widget.AnimateLayoutChangeDetector.1
            @Override // java.util.Comparator
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i14 = 1; i14 < childCount; i14++) {
            if (iArr[i14 - 1][1] != iArr[i14][0]) {
                return false;
            }
        }
        int[] iArr4 = iArr[0];
        int i15 = iArr4[1];
        int i16 = iArr4[0];
        return i16 <= 0 && iArr[childCount - 1][1] >= i15 - i16;
    }

    private boolean hasRunningChangingLayoutTransition() {
        int childCount = this.mLayoutManager.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            if (hasRunningChangingLayoutTransition(this.mLayoutManager.getChildAt(i11))) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasRunningChangingLayoutTransition(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                if (hasRunningChangingLayoutTransition(viewGroup.getChildAt(i11))) {
                    return true;
                }
            }
        }
        return false;
    }

    boolean mayHaveInterferingAnimations() {
        return (!arePagesLaidOutContiguously() || this.mLayoutManager.getChildCount() <= 1) && hasRunningChangingLayoutTransition();
    }
}
