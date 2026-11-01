package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"AppCompatCustomView"})
public class VisibilityAwareImageButton extends ImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f29136a;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f29136a = getVisibility();
    }

    public final int getUserSetVisibility() {
        return this.f29136a;
    }

    public final void internalSetVisibility(int i11, boolean z10) {
        super.setVisibility(i11);
        if (z10) {
            this.f29136a = i11;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i11) {
        internalSetVisibility(i11, true);
    }
}
