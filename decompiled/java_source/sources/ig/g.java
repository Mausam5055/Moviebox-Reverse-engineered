package ig;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class g extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f65232b;

    public g(int i11, boolean z10) {
        this.f65231a = i11;
        this.f65232b = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
        int iA = ((StaggeredGridLayoutManager.b) layoutParams).a();
        RecyclerView.m layoutManager = parent.getLayoutManager();
        Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
        int iQ = ((StaggeredGridLayoutManager) layoutManager).Q();
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (!this.f65232b) {
            int i11 = iA % 2;
            outRect.left = i11 == 0 ? 0 : this.f65231a / 2;
            outRect.right = i11 == 0 ? this.f65231a / 2 : 0;
            outRect.bottom = this.f65231a;
            return;
        }
        if (iA == 0) {
            int i12 = this.f65231a;
            outRect.left = i12;
            outRect.right = i12 / 2;
        } else if (iA == iQ - 1) {
            int i13 = this.f65231a;
            outRect.left = i13 / 2;
            outRect.right = i13;
        } else {
            int i14 = this.f65231a;
            outRect.left = i14 / 2;
            outRect.right = i14 / 2;
        }
        if (childAdapterPosition < iQ) {
            outRect.top = this.f65231a;
        }
        outRect.bottom = this.f65231a;
    }
}
