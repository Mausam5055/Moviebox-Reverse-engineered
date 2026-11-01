package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.card.MaterialCardView;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class h extends i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Rect f28265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Rect f28266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f28267f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f28268g;

    public h() {
        this.f28265d = new Rect();
        this.f28266e = new Rect();
        this.f28267f = 0;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28265d = new Rect();
        this.f28266e = new Rect();
        this.f28267f = 0;
    }

    private static int N(int i11) {
        return i11 == 0 ? MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START : i11;
    }

    @Override // com.google.android.material.appbar.i
    protected void F(CoordinatorLayout coordinatorLayout, View view, int i11) {
        View viewH = H(coordinatorLayout.getDependencies(view));
        if (viewH == null) {
            super.F(coordinatorLayout, view, i11);
            this.f28267f = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.f28265d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewH.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((coordinatorLayout.getHeight() + viewH.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f28266e;
        GravityCompat.apply(N(fVar.f7909c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i11);
        int I = I(viewH);
        view.layout(rect2.left, rect2.top - I, rect2.right, rect2.bottom - I);
        this.f28267f = rect2.top - viewH.getBottom();
    }

    abstract View H(List list);

    final int I(View view) {
        if (this.f28268g == 0) {
            return 0;
        }
        float fJ = J(view);
        int i11 = this.f28268g;
        return d1.a.b((int) (fJ * i11), 0, i11);
    }

    float J(View view) {
        return 1.0f;
    }

    public final int K() {
        return this.f28268g;
    }

    int L(View view) {
        return view.getMeasuredHeight();
    }

    final int M() {
        return this.f28267f;
    }

    public final void O(int i11) {
        this.f28268g = i11;
    }

    protected boolean P() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i11, int i12, int i13, int i14) {
        View viewH;
        WindowInsetsCompat lastWindowInsets;
        int i15 = view.getLayoutParams().height;
        if ((i15 != -1 && i15 != -2) || (viewH = H(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i13);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (ViewCompat.getFitsSystemWindows(viewH) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
        }
        int iL = size + L(viewH);
        int measuredHeight = viewH.getMeasuredHeight();
        if (P()) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            iL -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i11, i12, View.MeasureSpec.makeMeasureSpec(iL, i15 == -1 ? 1073741824 : Integer.MIN_VALUE), i14);
        return true;
    }
}
