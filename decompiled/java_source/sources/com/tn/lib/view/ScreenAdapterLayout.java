package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenAdapterLayout extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f41016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f41017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f41018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f41019d;

    public ScreenAdapterLayout(Context context) {
        super(context);
        this.f41016a = false;
        this.f41017b = false;
    }

    public ScreenAdapterLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f41016a = false;
        this.f41017b = false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        super.onLayout(z10, i11, i12, i13, i14);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i11, int i12) {
        if (this.f41016a && !this.f41017b) {
            this.f41017b = true;
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i13).getLayoutParams();
                int i14 = layoutParams.width;
                if (i14 > 0) {
                    layoutParams.width = (int) (i14 * this.f41018c);
                    layoutParams.height = (int) (layoutParams.height * this.f41019d);
                }
                float f11 = layoutParams.topMargin;
                float f12 = this.f41019d;
                layoutParams.topMargin = (int) (f11 * f12);
                layoutParams.bottomMargin = (int) (layoutParams.bottomMargin * f12);
            }
            this.f41016a = false;
        }
        super.onMeasure(i11, i12);
    }

    public void setScale(float f11, float f12) {
        this.f41016a = true;
        this.f41018c = f11;
        this.f41019d = f12;
    }
}
