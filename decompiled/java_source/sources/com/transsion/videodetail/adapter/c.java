package com.transsion.videodetail.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f57676a;

    public c(int i11) {
        this.f57676a = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = parent.getAdapter();
        Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.videodetail.adapter.VideoDetailEpisodeAdapter");
        int size = ((b) adapter).getData().size();
        RecyclerView.m layoutManager = parent.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
        int iU = size % ((GridLayoutManager) layoutManager).U();
        if (iU == 0) {
            iU = 3;
        }
        if (childAdapterPosition >= RangesKt.f(size - iU, 0)) {
            outRect.bottom = this.f57676a;
        } else {
            outRect.bottom = 0;
        }
    }
}
