package rl;

import android.os.Parcelable;
import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray f74560a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Parcelable f74561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74562c;

    public final int a() {
        return this.f74562c;
    }

    public final void b(int i11, RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        Parcelable parcelable = (Parcelable) this.f74560a.get(i11);
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (parcelable == null || layoutManager == null) {
            recyclerView.scrollToPosition(0);
        } else {
            layoutManager.onRestoreInstanceState(parcelable);
        }
    }

    public final void c(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        Parcelable parcelable = this.f74561b;
        if (parcelable == null || layoutManager == null) {
            return;
        }
        layoutManager.onRestoreInstanceState(parcelable);
    }

    public final void d(int i11, RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            this.f74560a.put(i11, layoutManager.onSaveInstanceState());
        }
    }

    public final void e(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        this.f74561b = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
    }

    public final void f(int i11) {
        this.f74562c = i11;
    }
}
