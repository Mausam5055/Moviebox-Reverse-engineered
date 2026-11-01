package androidx.recyclerview.widget;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v.c f14396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s.d f14397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView.Adapter f14398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f14399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f14400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RecyclerView.g f14401f = new a();

    class a extends RecyclerView.g {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onChanged() {
            k kVar = k.this;
            kVar.f14400e = kVar.f14398c.getItemCount();
            k kVar2 = k.this;
            kVar2.f14399d.e(kVar2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeChanged(int i11, int i12) {
            k kVar = k.this;
            kVar.f14399d.a(kVar, i11, i12, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeChanged(int i11, int i12, Object obj) {
            k kVar = k.this;
            kVar.f14399d.a(kVar, i11, i12, obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeInserted(int i11, int i12) {
            k kVar = k.this;
            kVar.f14400e += i12;
            kVar.f14399d.b(kVar, i11, i12);
            k kVar2 = k.this;
            if (kVar2.f14400e <= 0 || kVar2.f14398c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            k kVar3 = k.this;
            kVar3.f14399d.d(kVar3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeMoved(int i11, int i12, int i13) {
            androidx.core.util.i.b(i13 == 1, "moving more than 1 item is not supported in RecyclerView");
            k kVar = k.this;
            kVar.f14399d.c(kVar, i11, i12);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onItemRangeRemoved(int i11, int i12) {
            k kVar = k.this;
            kVar.f14400e -= i12;
            kVar.f14399d.f(kVar, i11, i12);
            k kVar2 = k.this;
            if (kVar2.f14400e >= 1 || kVar2.f14398c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            k kVar3 = k.this;
            kVar3.f14399d.d(kVar3);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public void onStateRestorationPolicyChanged() {
            k kVar = k.this;
            kVar.f14399d.d(kVar);
        }
    }

    interface b {
        void a(k kVar, int i11, int i12, Object obj);

        void b(k kVar, int i11, int i12);

        void c(k kVar, int i11, int i12);

        void d(k kVar);

        void e(k kVar);

        void f(k kVar, int i11, int i12);
    }

    k(RecyclerView.Adapter adapter, b bVar, v vVar, s.d dVar) {
        this.f14398c = adapter;
        this.f14399d = bVar;
        this.f14396a = vVar.b(this);
        this.f14397b = dVar;
        this.f14400e = adapter.getItemCount();
        adapter.registerAdapterDataObserver(this.f14401f);
    }

    int a() {
        return this.f14400e;
    }

    public long b(int i11) {
        return this.f14397b.a(this.f14398c.getItemId(i11));
    }

    int c(int i11) {
        return this.f14396a.b(this.f14398c.getItemViewType(i11));
    }

    void d(RecyclerView.b0 b0Var, int i11) {
        this.f14398c.bindViewHolder(b0Var, i11);
    }

    RecyclerView.b0 e(ViewGroup viewGroup, int i11) {
        return this.f14398c.onCreateViewHolder(viewGroup, this.f14396a.a(i11));
    }
}
