package ig;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f65217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65219c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f65220d;

    public b(int i11, int i12, int i13, int i14) {
        this.f65217a = i11;
        this.f65218b = i12;
        this.f65219c = i13;
        this.f65220d = i14;
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
        if (!(layoutManager instanceof GridLayoutManager)) {
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                ((StaggeredGridLayoutManager) layoutManager).Q();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
                int iA = ((StaggeredGridLayoutManager.b) layoutParams).a();
                if (childAdapterPosition == 0) {
                    outRect.left = 0;
                    outRect.right = 0;
                    return;
                }
                outRect.bottom = a0.a(16.0f);
                if (iA == 0) {
                    outRect.left = this.f65217a;
                    outRect.right = this.f65218b;
                    return;
                } else {
                    outRect.left = this.f65218b;
                    outRect.right = this.f65217a;
                    return;
                }
            }
            return;
        }
        GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
        int iU = gridLayoutManager.U();
        int iE = gridLayoutManager.Y().e(childAdapterPosition, iU);
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        if (iE == 0) {
            if (z10) {
                outRect.left = this.f65218b;
                outRect.right = this.f65217a;
            } else {
                outRect.left = this.f65217a;
                outRect.right = this.f65218b;
            }
        } else if (iE != iU - 1) {
            int i11 = this.f65218b;
            outRect.left = i11;
            outRect.right = i11;
        } else if (z10) {
            outRect.left = this.f65217a;
            outRect.right = this.f65218b;
        } else {
            outRect.left = this.f65218b;
            outRect.right = this.f65217a;
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if ((adapter instanceof BaseQuickAdapter) && ((BaseQuickAdapter) adapter).s0()) {
            if (childAdapterPosition == 0) {
                outRect.left = 0;
                outRect.right = 0;
                outRect.top = 0;
                outRect.bottom = this.f65220d / 2;
                return;
            }
            childAdapterPosition--;
        }
        int i12 = (itemCount / iU) + (itemCount % iU != 0 ? 1 : 0);
        int i13 = childAdapterPosition / iU;
        if (i13 == 0) {
            outRect.top = 0;
            outRect.bottom = this.f65220d / 2;
        } else if (i13 == i12 - 1) {
            outRect.top = this.f65219c / 2;
            outRect.bottom = 0;
        } else {
            outRect.top = this.f65219c / 2;
            outRect.bottom = this.f65220d / 2;
        }
    }
}
