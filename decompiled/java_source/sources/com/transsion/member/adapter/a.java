package com.transsion.member.adapter;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f46409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f46410b;

    public a(int i11, int i12) {
        this.f46409a = i11;
        this.f46410b = i12;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        int i11 = this.f46409a;
        int i12 = childAdapterPosition % i11;
        int i13 = this.f46410b;
        outRect.left = ((i11 - i12) * i13) / i11;
        outRect.right = (i13 * (i12 + 1)) / i11;
    }
}
