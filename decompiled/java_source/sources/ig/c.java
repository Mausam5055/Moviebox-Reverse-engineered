package ig;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f65222b;

    public c(int i11, int i12) {
        this.f65221a = i11;
        this.f65222b = i12;
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
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if (itemCount == 0) {
            return;
        }
        if (childAdapterPosition == 0) {
            outRect.left = this.f65221a;
            outRect.right = this.f65222b / 2;
        } else if (childAdapterPosition == itemCount - 1) {
            outRect.left = this.f65222b / 2;
            outRect.right = this.f65221a;
        } else {
            int i11 = this.f65222b;
            outRect.left = i11 / 2;
            outRect.right = i11 / 2;
        }
    }
}
