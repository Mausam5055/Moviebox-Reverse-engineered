package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class SortedList$BatchedCallback<T2> extends SortedList$Callback<T2> {
    private final d mBatchingListUpdateCallback;
    final SortedList$Callback<T2> mWrappedCallback;

    @SuppressLint({"UnknownNullness"})
    public SortedList$BatchedCallback(SortedList$Callback<T2> sortedList$Callback) {
        this.mWrappedCallback = sortedList$Callback;
        this.mBatchingListUpdateCallback = new d(sortedList$Callback);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback
    public boolean areContentsTheSame(T2 t11, T2 t12) {
        return this.mWrappedCallback.areContentsTheSame(t11, t12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback
    public boolean areItemsTheSame(T2 t11, T2 t12) {
        return this.mWrappedCallback.areItemsTheSame(t11, t12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, java.util.Comparator
    public int compare(T2 t11, T2 t12) {
        return this.mWrappedCallback.compare(t11, t12);
    }

    public void dispatchLastEvent() {
        this.mBatchingListUpdateCallback.a();
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback
    @Nullable
    public Object getChangePayload(T2 t11, T2 t12) {
        return this.mWrappedCallback.getChangePayload(t11, t12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback
    public void onChanged(int i11, int i12) {
        this.mBatchingListUpdateCallback.onChanged(i11, i12, null);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i11, int i12, Object obj) {
        this.mBatchingListUpdateCallback.onChanged(i11, i12, obj);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    public void onInserted(int i11, int i12) {
        this.mBatchingListUpdateCallback.onInserted(i11, i12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    public void onMoved(int i11, int i12) {
        this.mBatchingListUpdateCallback.onMoved(i11, i12);
    }

    @Override // androidx.recyclerview.widget.SortedList$Callback, androidx.recyclerview.widget.j
    public void onRemoved(int i11, int i12) {
        this.mBatchingListUpdateCallback.onRemoved(i11, i12);
    }
}
