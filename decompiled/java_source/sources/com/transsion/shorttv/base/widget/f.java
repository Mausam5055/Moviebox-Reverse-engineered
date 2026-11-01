package com.transsion.shorttv.base.widget;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f52913a;

    public f(int i11) {
        this.f52913a = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) != 1) {
            if (childAdapterPosition == 0) {
                outRect.left = 0;
                return;
            } else {
                outRect.left = this.f52913a;
                return;
            }
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (childAdapterPosition == (adapter != null ? adapter.getItemCount() : 0) - 1) {
            outRect.left = 0;
        } else {
            outRect.left = this.f52913a;
        }
    }
}
