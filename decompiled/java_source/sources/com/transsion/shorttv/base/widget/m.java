package com.transsion.shorttv.base.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.core.text.v;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class m extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f52921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f52922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f52923c;

    public m() {
        this(0.0f, 0.0f, 0.0f, 7, null);
    }

    public m(float f11, float f12, float f13) {
        this.f52921a = f11;
        this.f52922b = f12;
        this.f52923c = f13;
    }

    public /* synthetic */ m(float f11, float f12, float f13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0.0f : f11, (i11 & 2) != 0 ? 0.0f : f12, (i11 & 4) != 0 ? 0.0f : f13);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition != 0) {
            float f11 = this.f52921a;
            if (f11 > 0.0f) {
                outRect.left = a0.a(f11);
            }
            float f12 = this.f52922b;
            if (f12 > 0.0f) {
                outRect.top = a0.a(f12);
            }
        }
        int iB = state.b() - 1;
        float f13 = this.f52923c;
        if (f13 > 0.0f && this.f52921a > 0.0f) {
            if (childAdapterPosition == 0) {
                outRect.left = a0.a(f13);
            }
            if (childAdapterPosition == iB) {
                outRect.right = a0.a(this.f52923c);
            }
        }
        float f14 = this.f52923c;
        if (f14 > 0.0f && this.f52922b > 0.0f) {
            if (childAdapterPosition == 0) {
                outRect.top = a0.a(f14);
            }
            if (childAdapterPosition == iB) {
                outRect.bottom = a0.a(this.f52923c);
            }
        }
        if (v.a(Locale.getDefault()) == 1) {
            int i11 = outRect.left;
            outRect.left = outRect.right;
            outRect.right = i11;
        }
    }
}
