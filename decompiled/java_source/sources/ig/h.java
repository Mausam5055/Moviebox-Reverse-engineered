package ig;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class h extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f65233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f65235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f65236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f65237e;

    public h(int i11, int i12) {
        this.f65233a = i11;
        if (i12 > 1) {
            int iA = a0.a(((i12 - 1) * 8) + 24.0f) / i12;
            float fA = a0.a(12.0f);
            this.f65236d = fA;
            float f11 = iA;
            this.f65235c = f11 - fA;
            this.f65237e = f11 / 2.0f;
        }
    }

    public final void d(int i11) {
        this.f65234b = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = parent.getAdapter();
        if (adapter != null && childAdapterPosition == adapter.getItemCount() - 1) {
            outRect.bottom = 0;
        } else if (this.f65234b != 0 && (Intrinsics.c(view.getTag(), "TrendingTitle") || Intrinsics.c(view.getTag(), "UGCFeedsBig"))) {
            outRect.bottom = this.f65234b;
        } else if (Intrinsics.c(view.getTag(), "TrendingMargin")) {
            outRect.bottom = 0;
        } else {
            outRect.bottom = this.f65233a;
        }
        RecyclerView.m layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int iU = gridLayoutManager.U();
            int iF = gridLayoutManager.Y().f(childAdapterPosition);
            int iE = gridLayoutManager.Y().e(childAdapterPosition, iU);
            if (iF == iU) {
                return;
            }
            float f11 = this.f65236d;
            if (f11 > 0.0f) {
                if (iE == 0) {
                    outRect.left = (int) f11;
                    outRect.right = (int) this.f65235c;
                } else if (iE == iU - iF) {
                    outRect.left = (int) this.f65235c;
                    outRect.right = (int) f11;
                } else {
                    float f12 = this.f65237e;
                    outRect.left = (int) f12;
                    outRect.right = (int) f12;
                }
                outRect.bottom = this.f65234b;
            }
            if (TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
                int i11 = outRect.left;
                outRect.left = outRect.right;
                outRect.right = i11;
            }
        }
    }
}
