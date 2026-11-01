package com.bytedance.sdk.openadsdk.core.HiB;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;

/* JADX INFO: loaded from: classes2.dex */
public class Dq extends TextView {
    public Dq(Context context) {
        super(context);
        Sj();
    }

    public Dq(Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Sj();
    }

    private void Sj() {
        setTextDirection(5);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i11, int i12) {
        try {
            super.onMeasure(i11, i12);
        } catch (Throwable th2) {
            sU.sP("PAGTextView", th2.toString());
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i11, int i12, int i13, int i14) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i11, i12, i13, i14);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setGravity(int i11) {
        super.setGravity(uA.Sj(i11));
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(uA.Sj(this, layoutParams));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i11, int i12, int i13, int i14) {
        super.setPaddingRelative(i11, i12, i13, i14);
    }
}
