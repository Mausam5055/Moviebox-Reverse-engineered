package androidx.recyclerview.widget;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList$Callback<T2> {
    final RecyclerView.Adapter mAdapter;

    public SortedListAdapterCallback(@SuppressLint({"UnknownNullness", "MissingNullability"}) RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback
    public void onChanged(int i11, int i12) {
        this.mAdapter.notifyItemRangeChanged(i11, i12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i11, int i12, Object obj) {
        this.mAdapter.notifyItemRangeChanged(i11, i12, obj);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    public void onInserted(int i11, int i12) {
        this.mAdapter.notifyItemRangeInserted(i11, i12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    public void onMoved(int i11, int i12) {
        this.mAdapter.notifyItemMoved(i11, i12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    public void onRemoved(int i11, int i12) {
        this.mAdapter.notifyItemRangeRemoved(i11, i12);
    }
}
