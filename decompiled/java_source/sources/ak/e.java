package ak;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView f634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function1 f636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f637d;

    public static final class a extends RecyclerView.r {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i11, i12);
            e.this.d();
        }
    }

    public e(RecyclerView recyclerView, RecyclerView recyclerView2, float f11, Function1 onExposure) {
        Intrinsics.h(onExposure, "onExposure");
        this.f634a = recyclerView2;
        this.f635b = f11;
        this.f636c = onExposure;
        this.f637d = new LinkedHashSet();
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new a());
        }
        d();
    }

    private final boolean c(View view, int i11) {
        Rect rect = new Rect();
        RecyclerView recyclerView = this.f634a;
        if (recyclerView != null) {
            recyclerView.getGlobalVisibleRect(rect);
        }
        Rect rect2 = new Rect();
        if (view != null) {
            view.getGlobalVisibleRect(rect2);
        }
        int i12 = rect2.intersect(rect) ? rect2.bottom - rect2.top : 0;
        int height = view != null ? view.getHeight() : 0;
        float f11 = this.f635b;
        if (f11 < 0.0f) {
            f11 = 0.1f;
        } else if (f11 > 1.0f) {
            f11 = 1.0f;
        }
        return ((float) i12) >= ((float) height) * f11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        RecyclerView recyclerView = this.f634a;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (layoutManager instanceof LinearLayoutManager) {
            f(this.f634a, layoutManager, this.f636c);
        } else if (layoutManager instanceof GridLayoutManager) {
            f(this.f634a, layoutManager, this.f636c);
        }
    }

    private final void f(RecyclerView recyclerView, RecyclerView.m mVar, Function1 function1) {
        RecyclerView recyclerView2 = this.f634a;
        int childCount = recyclerView2 != null ? recyclerView2.getChildCount() : 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            RecyclerView recyclerView3 = this.f634a;
            View childAt = recyclerView3 != null ? recyclerView3.getChildAt(i11) : null;
            if (!this.f637d.contains(Integer.valueOf(i11)) && c(childAt, i11)) {
                this.f637d.add(Integer.valueOf(i11));
                if (childAt != null) {
                    RecyclerView recyclerView4 = this.f634a;
                    function1.invoke(Integer.valueOf(recyclerView4 != null ? recyclerView4.getChildAdapterPosition(childAt) : -1));
                }
            }
        }
    }

    public final void b() {
        this.f637d.clear();
    }

    public final void e() {
        b();
        d();
    }
}
