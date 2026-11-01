package fk;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import kotlin.jvm.internal.Intrinsics;
import r6.f;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends RecyclerView.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f62418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f62419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f62420c;

    public a(f fVar) {
        this.f62418a = fVar;
    }

    private final void d(RecyclerView recyclerView) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            if (this.f62419b == null) {
                this.f62419b = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
            }
            ((StaggeredGridLayoutManager) layoutManager).E(this.f62419b);
            this.f62420c = e(this.f62419b);
            return;
        }
        if (layoutManager instanceof GridLayoutManager) {
            this.f62420c = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        } else {
            if (!(layoutManager instanceof LinearLayoutManager)) {
                throw new RuntimeException("Unsupported layoutManager.");
            }
            this.f62420c = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
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
        f fVar;
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
        int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
        if (i11 != 0 || childCount <= 0 || this.f62420c < itemCount - 1) {
            return;
        }
        f fVar2 = this.f62418a;
        if ((fVar2 != null ? fVar2.i() : null) != LoadMoreStatus.Fail || (fVar = this.f62418a) == null) {
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
