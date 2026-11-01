package com.bytedance.adsdk.ugeno.yoga;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends ViewGroup {
    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Sj) {
            throw null;
        }
        aa aaVarSj = Fmk.Sj();
        Dq.Sj(new Dq.Sj(layoutParams), aaVarSj, view);
        aaVarSj.Sj(view);
        aaVarSj.Sj((uA) new Dq.sP());
        throw null;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Dq.Sj;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Dq.Sj(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Dq.Sj(layoutParams);
    }

    public aa getYogaNode() {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        throw new RuntimeException("Attempting to layout a VirtualYogaLayout");
    }
}
