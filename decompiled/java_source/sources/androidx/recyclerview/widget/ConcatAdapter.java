package androidx.recyclerview.widget;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ConcatAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f14089a;

    public static final class Config {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Config f14090c = new Config(true, StableIdMode.NO_STABLE_IDS);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f14091a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StableIdMode f14092b;

        public enum StableIdMode {
            NO_STABLE_IDS,
            ISOLATED_STABLE_IDS,
            SHARED_STABLE_IDS
        }

        Config(boolean z10, StableIdMode stableIdMode) {
            this.f14091a = z10;
            this.f14092b = stableIdMode;
        }
    }

    public ConcatAdapter(Config config, List list) {
        this.f14089a = new f(this, config);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            g((RecyclerView.Adapter) it.next());
        }
        super.setHasStableIds(this.f14089a.s());
    }

    public ConcatAdapter(Config config, RecyclerView.Adapter... adapterArr) {
        this(config, Arrays.asList(adapterArr));
    }

    public ConcatAdapter(RecyclerView.Adapter... adapterArr) {
        this(Config.f14090c, adapterArr);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int findRelativeAdapterPositionIn(RecyclerView.Adapter adapter, RecyclerView.b0 b0Var, int i11) {
        return this.f14089a.p(adapter, b0Var, i11);
    }

    public boolean g(RecyclerView.Adapter adapter) {
        return this.f14089a.h(adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f14089a.q();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i11) {
        return this.f14089a.n(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i11) {
        return this.f14089a.o(i11);
    }

    void h(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        super.setStateRestorationPolicy(stateRestorationPolicy);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f14089a.v(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.b0 b0Var, int i11) {
        this.f14089a.w(b0Var, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.b0 onCreateViewHolder(ViewGroup viewGroup, int i11) {
        return this.f14089a.x(viewGroup, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f14089a.y(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.b0 b0Var) {
        return this.f14089a.z(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.b0 b0Var) {
        this.f14089a.A(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.b0 b0Var) {
        this.f14089a.B(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.b0 b0Var) {
        this.f14089a.C(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean z10) {
        throw new UnsupportedOperationException("Calling setHasStableIds is not allowed on the ConcatAdapter. Use the Config object passed in the constructor to control this behavior");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy) {
        throw new UnsupportedOperationException("Calling setStateRestorationPolicy is not allowed on the ConcatAdapter. This value is inferred from added adapters");
    }
}
