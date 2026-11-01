package com.transsion.shorttv_pugc.base.widget;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends RecyclerView.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r6.f f53895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f53896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f53897c;

    public f(r6.f fVar) {
        this.f53895a = fVar;
    }

    private final void d(RecyclerView recyclerView) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (this.f53896b == null) {
                this.f53896b = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
            }
            ((StaggeredGridLayoutManager) layoutManager).E(this.f53896b);
            this.f53897c = e(this.f53896b);
            return;
        }
        if (layoutManager instanceof GridLayoutManager) {
            this.f53897c = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        } else {
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            this.f53897c = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }
    }

    private final int e(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int i11 = 0;
        for (int i12 : iArr) {
            if (i12 > i11) {
                i11 = i12;
            }
        }
        return i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        r6.f fVar;
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
        int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
        if (i11 != 0 || childCount <= 0 || this.f53897c < itemCount - 1) {
            return;
        }
        r6.f fVar2 = this.f53895a;
        if ((fVar2 != null ? fVar2.i() : null) != LoadMoreStatus.Fail || (fVar = this.f53895a) == null) {
            return;
        }
        fVar.w();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        d(recyclerView);
    }
}
