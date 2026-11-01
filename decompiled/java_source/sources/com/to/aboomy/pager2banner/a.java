package com.to.aboomy.pager2banner;

import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes5.dex */
public interface a {
    RelativeLayout.LayoutParams getParams();

    View getView();

    void initIndicatorCount(int i11, int i12);

    void onPageScrollStateChanged(int i11);

    void onPageScrolled(int i11, float f11, int i12);

    void onPageSelected(int i11);
}
