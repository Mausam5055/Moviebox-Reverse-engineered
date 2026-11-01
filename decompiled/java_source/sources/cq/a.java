package cq;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f60884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f60885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f60886c;

    public a(int i11, int i12, int i13) {
        this.f60886c = i11;
        this.f60885b = i12;
        this.f60884a = i13;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        parent.getChildAdapterPosition(view);
        outRect.top = this.f60886c;
        outRect.left = this.f60885b;
        outRect.right = this.f60884a;
    }
}
