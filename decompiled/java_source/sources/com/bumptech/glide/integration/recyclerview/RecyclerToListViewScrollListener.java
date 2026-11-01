package com.bumptech.glide.integration.recyclerview;

import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes2.dex */
public final class RecyclerToListViewScrollListener extends RecyclerView.r {
    public static final int UNKNOWN_SCROLL_STATE = Integer.MIN_VALUE;
    private final AbsListView.OnScrollListener scrollListener;
    private int lastFirstVisible = -1;
    private int lastVisibleCount = -1;
    private int lastItemCount = -1;

    public RecyclerToListViewScrollListener(@NonNull AbsListView.OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        int i12;
        if (i11 != 0) {
            i12 = 1;
            if (i11 != 1) {
                i12 = 2;
                if (i11 != 2) {
                    i12 = Integer.MIN_VALUE;
                }
            }
        } else {
            i12 = 0;
        }
        this.scrollListener.onScrollStateChanged(null, i12);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iAbs = Math.abs(iFindFirstVisibleItemPosition - linearLayoutManager.findLastVisibleItemPosition());
        int itemCount = recyclerView.getAdapter().getItemCount();
        if (iFindFirstVisibleItemPosition == this.lastFirstVisible && iAbs == this.lastVisibleCount && itemCount == this.lastItemCount) {
            return;
        }
        this.scrollListener.onScroll(null, iFindFirstVisibleItemPosition, iAbs, itemCount);
        this.lastFirstVisible = iFindFirstVisibleItemPosition;
        this.lastVisibleCount = iAbs;
        this.lastItemCount = itemCount;
    }
}
