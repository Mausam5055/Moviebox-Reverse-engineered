package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.f0;

/* JADX INFO: loaded from: classes4.dex */
class c {
    c() {
    }

    static RectF a(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        return (tabLayout.isTabIndicatorFullWidth() || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : b((TabLayout.TabView) view, 24);
    }

    static RectF b(TabLayout.TabView tabView, int i11) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int iG = (int) f0.g(tabView.getContext(), i11);
        if (contentWidth < iG) {
            contentWidth = iG;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i12 = contentWidth / 2;
        return new RectF(left - i12, top - (contentHeight / 2), i12 + left, top + (left / 2));
    }

    void c(TabLayout tabLayout, View view, Drawable drawable) {
        RectF rectFA = a(tabLayout, view);
        drawable.setBounds((int) rectFA.left, drawable.getBounds().top, (int) rectFA.right, drawable.getBounds().bottom);
    }

    void d(TabLayout tabLayout, View view, View view2, float f11, Drawable drawable) {
        RectF rectFA = a(tabLayout, view);
        RectF rectFA2 = a(tabLayout, view2);
        drawable.setBounds(oa.a.c((int) rectFA.left, (int) rectFA2.left, f11), drawable.getBounds().top, oa.a.c((int) rectFA.right, (int) rectFA2.right, f11), drawable.getBounds().bottom);
    }
}
