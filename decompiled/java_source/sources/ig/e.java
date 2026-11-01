package ig;

import android.graphics.Rect;
import android.view.View;
import androidx.core.text.v;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends RecyclerView.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f65224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f65225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f65226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f65227d;

    public e() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
    }

    public e(float f11, float f12, float f13, float f14) {
        this.f65224a = f11;
        this.f65225b = f12;
        this.f65226c = f13;
        this.f65227d = f14;
    }

    public /* synthetic */ e(float f11, float f12, float f13, float f14, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0.0f : f11, (i11 & 2) != 0 ? 0.0f : f12, (i11 & 4) != 0 ? 0.0f : f13, (i11 & 8) != 0 ? 0.0f : f14);
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
            float f11 = this.f65224a;
            if (f11 > 0.0f) {
                outRect.left = a0.a(f11);
            }
            float f12 = this.f65225b;
            if (f12 > 0.0f) {
                outRect.top = a0.a(f12);
            }
        }
        int iB = state.b() - 1;
        float f13 = this.f65226c;
        if (f13 > 0.0f && this.f65224a > 0.0f && childAdapterPosition == 0) {
            outRect.left = a0.a(f13);
        }
        float f14 = this.f65227d;
        if (f14 > 0.0f && this.f65224a > 0.0f && childAdapterPosition == iB) {
            outRect.right = a0.a(f14);
        }
        float f15 = this.f65226c;
        if (f15 > 0.0f && this.f65225b > 0.0f && childAdapterPosition == 0) {
            outRect.top = a0.a(f15);
        }
        float f16 = this.f65227d;
        if (f16 > 0.0f && this.f65225b > 0.0f && childAdapterPosition == iB) {
            outRect.bottom = a0.a(f16);
        }
        if (v.a(Locale.getDefault()) == 1) {
            int i11 = outRect.left;
            outRect.left = outRect.right;
            outRect.right = i11;
        }
    }
}
