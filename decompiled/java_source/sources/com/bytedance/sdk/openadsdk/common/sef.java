package com.bytedance.sdk.openadsdk.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class sef extends View {
    private final Sj Sj;
    private View sP;

    public interface Sj {
        View Sj(Context context);
    }

    public sef(Context context, Sj sj2) {
        super(context);
        this.Sj = sj2;
        Sj();
    }

    private void Sj() {
        setVisibility(8);
        setWillNotDraw(true);
    }

    private void Sj(View view, ViewGroup viewGroup) {
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, iIndexOfChild);
        }
    }

    private View sP() {
        Sj sj2;
        if (this.sP == null && (sj2 = this.Sj) != null) {
            this.sP = sj2.Sj(getContext());
            Sj(this.sP, (ViewGroup) getParent());
        }
        return this.sP;
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        setMeasuredDimension(0, 0);
    }

    @Override // android.view.View
    public void setVisibility(int i11) {
        View view = this.sP;
        if (view != null) {
            view.setVisibility(i11);
            return;
        }
        super.setVisibility(i11);
        if (i11 == 0 || i11 == 4) {
            sP();
        }
    }
}
