package ig;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f65239b;

    public i(int i11, int i12) {
        this.f65238a = i11;
        this.f65239b = i12;
    }

    public /* synthetic */ i(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i13 & 2) != 0 ? -1 : i12);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        int i11;
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        if (parent.getChildAdapterPosition(view) == 0 && (i11 = this.f65239b) > 0) {
            outRect.top = i11;
        }
        outRect.bottom = this.f65238a;
    }
}
