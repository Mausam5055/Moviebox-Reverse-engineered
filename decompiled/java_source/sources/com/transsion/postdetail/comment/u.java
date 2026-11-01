package com.transsion.postdetail.comment;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$color;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class u extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f48779a = dk.a.b(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f48780b = dk.a.b(52);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f48781c;

    private final Paint d(Context context) {
        if (this.f48781c == null) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(androidx.core.content.b.getColor(context, R$color.line_01));
            this.f48781c = paint;
        }
        Paint paint2 = this.f48781c;
        Intrinsics.e(paint2);
        return paint2;
    }

    private final boolean e(n6.a aVar, n6.a aVar2) {
        int itemType = aVar.getItemType();
        if (aVar2.getItemType() != 0) {
            return false;
        }
        return itemType == 0 || itemType == 1 || itemType == 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        n6.a aVar;
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        n nVar = adapter instanceof n ? (n) adapter : null;
        if (nVar == null) {
            return;
        }
        try {
            n6.a aVar2 = (n6.a) nVar.getItem(childAdapterPosition);
            if (aVar2 != null && aVar2.getItemType() == 0 && childAdapterPosition > 0 && (aVar = (n6.a) nVar.getItem(childAdapterPosition - 1)) != null && e(aVar, aVar2)) {
                outRect.top = this.f48779a;
            }
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void onDraw(Canvas c11, RecyclerView parent, RecyclerView.y state) {
        n6.a aVar;
        Intrinsics.h(c11, "c");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        RecyclerView.Adapter adapter = parent.getAdapter();
        n nVar = adapter instanceof n ? (n) adapter : null;
        if (nVar == null) {
            return;
        }
        int childCount = parent.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = parent.getChildAt(i11);
            int childAdapterPosition = parent.getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1 && childAdapterPosition != 0) {
                try {
                    n6.a aVar2 = (n6.a) nVar.getItem(childAdapterPosition);
                    if (aVar2 != null && aVar2.getItemType() == 0 && (aVar = (n6.a) nVar.getItem(childAdapterPosition - 1)) != null && e(aVar, aVar2)) {
                        int i12 = this.f48780b;
                        int width = parent.getWidth();
                        float top = childAt.getTop();
                        float f11 = top + this.f48779a;
                        Context context = parent.getContext();
                        Intrinsics.g(context, "getContext(...)");
                        c11.drawRect(i12, top, width, f11, d(context));
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            }
        }
    }
}
