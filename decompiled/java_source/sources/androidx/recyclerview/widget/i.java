package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends RecyclerView.Adapter {
    final AsyncListDiffer mDiffer;
    private final AsyncListDiffer.a mListener;

    class a implements AsyncListDiffer.a {
        a() {
        }

        @Override // androidx.recyclerview.widget.AsyncListDiffer.a
        public void a(List list, List list2) {
            i.this.onCurrentListChanged(list, list2);
        }
    }

    protected i(DiffUtil.e eVar) {
        a aVar = new a();
        this.mListener = aVar;
        AsyncListDiffer asyncListDiffer = new AsyncListDiffer(new b(this), new c.a(eVar).a());
        this.mDiffer = asyncListDiffer;
        asyncListDiffer.a(aVar);
    }

    @NonNull
    public List<Object> getCurrentList() {
        return this.mDiffer.b();
    }

    protected Object getItem(int i11) {
        return this.mDiffer.b().get(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDiffer.b().size();
    }

    public void onCurrentListChanged(@NonNull List<Object> list, @NonNull List<Object> list2) {
    }

    public void submitList(List list) {
        this.mDiffer.e(list);
    }

    public void submitList(@Nullable List<Object> list, @Nullable Runnable runnable) {
        this.mDiffer.f(list, runnable);
    }
}
