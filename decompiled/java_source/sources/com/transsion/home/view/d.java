package com.transsion.home.view;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f45724a;

    public d(int i11) {
        this.f45724a = i11;
    }

    private final int k(RecyclerView.m mVar, View view) {
        return (view.getLeft() - mVar.getPaddingLeft()) - this.f45724a;
    }

    private final int l(RecyclerView.m mVar, View view) {
        return view.getTop() - mVar.getPaddingTop();
    }

    @Override // androidx.recyclerview.widget.n, androidx.recyclerview.widget.r
    public int[] calculateDistanceToFinalSnap(RecyclerView.m layoutManager, View targetView) {
        Intrinsics.h(layoutManager, "layoutManager");
        Intrinsics.h(targetView, "targetView");
        if (layoutManager.canScrollHorizontally()) {
            return new int[]{k(layoutManager, targetView), 0};
        }
        return layoutManager.canScrollVertically() ? new int[]{0, l(layoutManager, targetView)} : new int[]{0, 0};
    }
}
