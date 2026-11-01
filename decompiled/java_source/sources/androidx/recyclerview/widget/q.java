package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q extends RecyclerView.j {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView.b0 b0Var);

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public boolean animateAppearance(@NonNull RecyclerView.b0 b0Var, @Nullable RecyclerView.j.c cVar, @NonNull RecyclerView.j.c cVar2) {
        int i11;
        int i12;
        return (cVar == null || ((i11 = cVar.f14231a) == (i12 = cVar2.f14231a) && cVar.f14232b == cVar2.f14232b)) ? animateAdd(b0Var) : animateMove(b0Var, i11, cVar.f14232b, i12, cVar2.f14232b);
    }

    public abstract boolean animateChange(RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2, int i11, int i12, int i13, int i14);

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public boolean animateChange(@NonNull RecyclerView.b0 b0Var, @NonNull RecyclerView.b0 b0Var2, @NonNull RecyclerView.j.c cVar, @NonNull RecyclerView.j.c cVar2) {
        int i11;
        int i12;
        int i13 = cVar.f14231a;
        int i14 = cVar.f14232b;
        if (b0Var2.shouldIgnore()) {
            int i15 = cVar.f14231a;
            i12 = cVar.f14232b;
            i11 = i15;
        } else {
            i11 = cVar2.f14231a;
            i12 = cVar2.f14232b;
        }
        return animateChange(b0Var, b0Var2, i13, i14, i11, i12);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public boolean animateDisappearance(@NonNull RecyclerView.b0 b0Var, @NonNull RecyclerView.j.c cVar, @Nullable RecyclerView.j.c cVar2) {
        int i11 = cVar.f14231a;
        int i12 = cVar.f14232b;
        View view = b0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f14231a;
        int top = cVar2 == null ? view.getTop() : cVar2.f14232b;
        if (b0Var.isRemoved() || (i11 == left && i12 == top)) {
            return animateRemove(b0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return animateMove(b0Var, i11, i12, left, top);
    }

    public abstract boolean animateMove(RecyclerView.b0 b0Var, int i11, int i12, int i13, int i14);

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public boolean animatePersistence(@NonNull RecyclerView.b0 b0Var, @NonNull RecyclerView.j.c cVar, @NonNull RecyclerView.j.c cVar2) {
        int i11 = cVar.f14231a;
        int i12 = cVar2.f14231a;
        if (i11 != i12 || cVar.f14232b != cVar2.f14232b) {
            return animateMove(b0Var, i11, cVar.f14232b, i12, cVar2.f14232b);
        }
        dispatchMoveFinished(b0Var);
        return false;
    }

    public abstract boolean animateRemove(RecyclerView.b0 b0Var);

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.b0 b0Var) {
        return !this.mSupportsChangeAnimations || b0Var.isInvalid();
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchAddFinished(RecyclerView.b0 b0Var) {
        onAddFinished(b0Var);
        dispatchAnimationFinished(b0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchAddStarting(RecyclerView.b0 b0Var) {
        onAddStarting(b0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchChangeFinished(RecyclerView.b0 b0Var, boolean z10) {
        onChangeFinished(b0Var, z10);
        dispatchAnimationFinished(b0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchChangeStarting(RecyclerView.b0 b0Var, boolean z10) {
        onChangeStarting(b0Var, z10);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchMoveFinished(RecyclerView.b0 b0Var) {
        onMoveFinished(b0Var);
        dispatchAnimationFinished(b0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchMoveStarting(RecyclerView.b0 b0Var) {
        onMoveStarting(b0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchRemoveFinished(RecyclerView.b0 b0Var) {
        onRemoveFinished(b0Var);
        dispatchAnimationFinished(b0Var);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchRemoveStarting(RecyclerView.b0 b0Var) {
        onRemoveStarting(b0Var);
    }

    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    @SuppressLint({"UnknownNullness"})
    public void onAddFinished(RecyclerView.b0 b0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onAddStarting(RecyclerView.b0 b0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onChangeFinished(RecyclerView.b0 b0Var, boolean z10) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onChangeStarting(RecyclerView.b0 b0Var, boolean z10) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onMoveFinished(RecyclerView.b0 b0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onMoveStarting(RecyclerView.b0 b0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRemoveFinished(RecyclerView.b0 b0Var) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRemoveStarting(RecyclerView.b0 b0Var) {
    }

    public void setSupportsChangeAnimations(boolean z10) {
        this.mSupportsChangeAnimations = z10;
    }
}
