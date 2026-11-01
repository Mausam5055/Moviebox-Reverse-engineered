package com.cloud.tmc.miniapp.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o extends RecyclerView.l {
    public final int OooO00o;

    public OooO00o(int i11) {
        this.OooO00o = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y state) {
        Intrinsics.h(rect, "rect");
        Intrinsics.h(view, "view");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(state, "state");
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        int iU = ((GridLayoutManager) layoutManager).U();
        if ((childAdapterPosition + 1) % iU == 0) {
            rect.right = this.OooO00o;
        }
        if (childAdapterPosition < iU) {
            rect.top = this.OooO00o;
        }
        int i11 = this.OooO00o;
        rect.bottom = i11;
        rect.left = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.y state) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(state, "state");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.y state) {
        Intrinsics.h(canvas, "canvas");
        Intrinsics.h(recyclerView, "recyclerView");
        Intrinsics.h(state, "state");
    }
}
