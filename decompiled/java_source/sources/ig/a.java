package ig;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f65213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65216d;

    public a(int i11, int i12, int i13, int i14) {
        this.f65213a = i11;
        this.f65214b = i12;
        this.f65215c = i13;
        this.f65216d = i14;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.m layoutManager = parent.getLayoutManager();
        RecyclerView.Adapter adapter = parent.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int iU = gridLayoutManager.U();
            if (gridLayoutManager.getOrientation() != 1) {
                if (gridLayoutManager.getOrientation() == 0) {
                    int i11 = this.f65214b;
                    outRect.top = i11 / 2;
                    outRect.bottom = i11 / 2;
                    int i12 = ((itemCount + iU) - 1) / iU;
                    int i13 = childAdapterPosition / iU;
                    if (i13 == 0) {
                        outRect.left = this.f65215c;
                        outRect.right = this.f65213a / 2;
                        return;
                    } else if (i13 == i12 - 1) {
                        outRect.left = this.f65213a / 2;
                        outRect.right = this.f65216d;
                        return;
                    } else {
                        int i14 = this.f65213a;
                        outRect.left = i14 / 2;
                        outRect.right = i14 / 2;
                        return;
                    }
                }
                return;
            }
            int i15 = this.f65213a;
            outRect.left = i15 / 2;
            outRect.right = i15 / 2;
            if ((adapter instanceof BaseQuickAdapter) && ((BaseQuickAdapter) adapter).s0()) {
                if (childAdapterPosition == 0) {
                    outRect.left = 0;
                    outRect.right = 0;
                    outRect.top = 0;
                    outRect.bottom = this.f65214b / 2;
                    return;
                }
                childAdapterPosition--;
            }
            int i16 = ((itemCount + iU) - 1) / iU;
            int i17 = childAdapterPosition / iU;
            if (i17 == 0) {
                outRect.top = this.f65215c;
                outRect.bottom = this.f65214b / 2;
            } else if (i17 == i16 - 1) {
                outRect.top = this.f65214b / 2;
                outRect.bottom = this.f65216d;
            } else {
                int i18 = this.f65214b;
                outRect.top = i18 / 2;
                outRect.bottom = i18 / 2;
            }
        }
    }
}
