package com.bytedance.sdk.openadsdk.core.HiB;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends ImageView {
    public EjP(Context context) {
        super(context);
    }

    public EjP(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EjP(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i11, int i12) {
        super.onMeasure(i11, i12);
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(uA.Sj(this, layoutParams));
    }

    @Override // android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        super.setPaddingRelative(i11, i12, i13, i14);
    }
}
