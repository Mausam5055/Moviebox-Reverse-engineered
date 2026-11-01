package androidx.recyclerview.widget;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RecyclerView.Adapter f14348a;

    public b(RecyclerView.Adapter adapter) {
        this.f14348a = adapter;
    }

    @Override // androidx.recyclerview.widget.j
    public void onChanged(int i11, int i12, Object obj) {
        this.f14348a.notifyItemRangeChanged(i11, i12, obj);
    }

    @Override // androidx.recyclerview.widget.j
    public void onInserted(int i11, int i12) {
        this.f14348a.notifyItemRangeInserted(i11, i12);
    }

    @Override // androidx.recyclerview.widget.j
    public void onMoved(int i11, int i12) {
        this.f14348a.notifyItemMoved(i11, i12);
    }

    @Override // androidx.recyclerview.widget.j
    public void onRemoved(int i11, int i12) {
        this.f14348a.notifyItemRangeRemoved(i11, i12);
    }
}
