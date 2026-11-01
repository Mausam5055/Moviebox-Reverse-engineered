package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SortedList$Callback<T2> implements Comparator<T2>, j {
    public abstract boolean areContentsTheSame(T2 t11, T2 t12);

    public abstract boolean areItemsTheSame(T2 t11, T2 t12);

    @Override // java.util.Comparator
    public abstract int compare(T2 t11, T2 t12);

    @Nullable
    public Object getChangePayload(T2 t11, T2 t12) {
        return null;
    }

    public abstract void onChanged(int i11, int i12);

    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i11, int i12, Object obj) {
        onChanged(i11, i12);
    }

    public abstract /* synthetic */ void onInserted(int i11, int i12);

    public abstract /* synthetic */ void onMoved(int i11, int i12);

    public abstract /* synthetic */ void onRemoved(int i11, int i12);
}
