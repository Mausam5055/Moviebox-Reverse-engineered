package com.transsion.moviedetail.staff;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class u extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f47332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f47333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f47334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f47335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f47336e;

    public u(int i11, int i12, int i13, int i14, int i15) {
        this.f47332a = i11;
        this.f47333b = i12;
        this.f47334c = i13;
        this.f47335d = i14;
        this.f47336e = i15;
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
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        if (layoutManager instanceof GridLayoutManager) {
            int i11 = this.f47336e;
            if (i11 <= 0) {
                i11 = 1;
            }
            int i12 = childAdapterPosition % i11;
            RecyclerView.Adapter adapter = parent.getAdapter();
            Intrinsics.f(adapter, "null cannot be cast to non-null type com.transsion.moviedetail.staff.MovieStaffAdapter");
            int itemViewType = ((s) adapter).getItemViewType(childAdapterPosition);
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    outRect.left = 0;
                    outRect.right = 0;
                } else {
                    int i13 = this.f47332a;
                    outRect.left = i13;
                    outRect.right = i13;
                }
            } else if (z10) {
                if (i12 == 0) {
                    outRect.right = this.f47332a;
                    outRect.left = this.f47333b;
                } else if (i12 == this.f47336e - 1) {
                    outRect.right = this.f47333b;
                    outRect.left = this.f47332a;
                } else {
                    int i14 = this.f47333b;
                    outRect.left = i14;
                    outRect.right = i14;
                }
            } else if (i12 == 0) {
                outRect.left = this.f47332a;
                outRect.right = this.f47333b;
            } else if (i12 == this.f47336e - 1) {
                outRect.left = this.f47333b;
                outRect.right = this.f47332a;
            } else {
                int i15 = this.f47333b;
                outRect.left = i15;
                outRect.right = i15;
            }
            outRect.bottom = this.f47335d;
        }
    }
}
