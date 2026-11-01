package androidx.recyclerview.widget;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class f implements k.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcatAdapter f14367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f14368b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f14369c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final IdentityHashMap f14370d = new IdentityHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f14371e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f14372f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConcatAdapter.Config.StableIdMode f14373g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final s f14374h;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        k f14375a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14376b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f14377c;

        a() {
        }
    }

    f(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.f14367a = concatAdapter;
        if (config.f14091a) {
            this.f14368b = new v.a();
        } else {
            this.f14368b = new v.b();
        }
        ConcatAdapter.Config.StableIdMode stableIdMode = config.f14092b;
        this.f14373g = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.f14374h = new s.b();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.f14374h = new s.a();
        } else {
            if (stableIdMode != ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
                throw new IllegalArgumentException("unknown stable id mode");
            }
            this.f14374h = new s.c();
        }
    }

    private void D(a aVar) {
        aVar.f14377c = false;
        aVar.f14375a = null;
        aVar.f14376b = -1;
        this.f14372f = aVar;
    }

    private void i() {
        RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicyJ = j();
        if (stateRestorationPolicyJ != this.f14367a.getStateRestorationPolicy()) {
            this.f14367a.h(stateRestorationPolicyJ);
        }
    }

    private RecyclerView.Adapter.StateRestorationPolicy j() {
        for (k kVar : this.f14371e) {
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = kVar.f14398c.getStateRestorationPolicy();
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            if (stateRestorationPolicy == stateRestorationPolicy2) {
                return stateRestorationPolicy2;
            }
            if (stateRestorationPolicy == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && kVar.a() == 0) {
                return stateRestorationPolicy2;
            }
        }
        return RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
    }

    private int k(k kVar) {
        k kVar2;
        Iterator it = this.f14371e.iterator();
        int iA = 0;
        while (it.hasNext() && (kVar2 = (k) it.next()) != kVar) {
            iA += kVar2.a();
        }
        return iA;
    }

    private a l(int i11) {
        a aVar = this.f14372f;
        if (aVar.f14377c) {
            aVar = new a();
        } else {
            aVar.f14377c = true;
        }
        int iA = i11;
        for (k kVar : this.f14371e) {
            if (kVar.a() > iA) {
                aVar.f14375a = kVar;
                aVar.f14376b = iA;
                break;
            }
            iA -= kVar.a();
        }
        if (aVar.f14375a != null) {
            return aVar;
        }
        throw new IllegalArgumentException("Cannot find wrapper for " + i11);
    }

    private k m(RecyclerView.Adapter adapter) {
        int iT = t(adapter);
        if (iT == -1) {
            return null;
        }
        return (k) this.f14371e.get(iT);
    }

    private k r(RecyclerView.b0 b0Var) {
        k kVar = (k) this.f14370d.get(b0Var);
        if (kVar != null) {
            return kVar;
        }
        throw new IllegalStateException("Cannot find wrapper for " + b0Var + ", seems like it is not bound by this adapter: " + this);
    }

    private int t(RecyclerView.Adapter adapter) {
        int size = this.f14371e.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((k) this.f14371e.get(i11)).f14398c == adapter) {
                return i11;
            }
        }
        return -1;
    }

    private boolean u(RecyclerView recyclerView) {
        Iterator it = this.f14369c.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == recyclerView) {
                return true;
            }
        }
        return false;
    }

    public void A(RecyclerView.b0 b0Var) {
        r(b0Var).f14398c.onViewAttachedToWindow(b0Var);
    }

    public void B(RecyclerView.b0 b0Var) {
        r(b0Var).f14398c.onViewDetachedFromWindow(b0Var);
    }

    public void C(RecyclerView.b0 b0Var) {
        k kVar = (k) this.f14370d.get(b0Var);
        if (kVar != null) {
            kVar.f14398c.onViewRecycled(b0Var);
            this.f14370d.remove(b0Var);
            return;
        }
        throw new IllegalStateException("Cannot find wrapper for " + b0Var + ", seems like it is not bound by this adapter: " + this);
    }

    @Override // androidx.recyclerview.widget.k.b
    public void a(k kVar, int i11, int i12, Object obj) {
        this.f14367a.notifyItemRangeChanged(i11 + k(kVar), i12, obj);
    }

    @Override // androidx.recyclerview.widget.k.b
    public void b(k kVar, int i11, int i12) {
        this.f14367a.notifyItemRangeInserted(i11 + k(kVar), i12);
    }

    @Override // androidx.recyclerview.widget.k.b
    public void c(k kVar, int i11, int i12) {
        int iK = k(kVar);
        this.f14367a.notifyItemMoved(i11 + iK, i12 + iK);
    }

    @Override // androidx.recyclerview.widget.k.b
    public void d(k kVar) {
        i();
    }

    @Override // androidx.recyclerview.widget.k.b
    public void e(k kVar) {
        this.f14367a.notifyDataSetChanged();
        i();
    }

    @Override // androidx.recyclerview.widget.k.b
    public void f(k kVar, int i11, int i12) {
        this.f14367a.notifyItemRangeRemoved(i11 + k(kVar), i12);
    }

    boolean g(int i11, RecyclerView.Adapter adapter) {
        if (i11 < 0 || i11 > this.f14371e.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + this.f14371e.size() + ". Given:" + i11);
        }
        if (s()) {
            androidx.core.util.i.b(adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
        } else if (adapter.hasStableIds()) {
            Log.w("ConcatAdapter", "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        if (m(adapter) != null) {
            return false;
        }
        k kVar = new k(adapter, this, this.f14368b, this.f14374h.a());
        this.f14371e.add(i11, kVar);
        Iterator it = this.f14369c.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = (RecyclerView) ((WeakReference) it.next()).get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (kVar.a() > 0) {
            this.f14367a.notifyItemRangeInserted(k(kVar), kVar.a());
        }
        i();
        return true;
    }

    boolean h(RecyclerView.Adapter adapter) {
        return g(this.f14371e.size(), adapter);
    }

    public long n(int i11) {
        a aVarL = l(i11);
        long jB = aVarL.f14375a.b(aVarL.f14376b);
        D(aVarL);
        return jB;
    }

    public int o(int i11) {
        a aVarL = l(i11);
        int iC = aVarL.f14375a.c(aVarL.f14376b);
        D(aVarL);
        return iC;
    }

    public int p(RecyclerView.Adapter adapter, RecyclerView.b0 b0Var, int i11) {
        k kVar = (k) this.f14370d.get(b0Var);
        if (kVar == null) {
            return -1;
        }
        int iK = i11 - k(kVar);
        int itemCount = kVar.f14398c.getItemCount();
        if (iK >= 0 && iK < itemCount) {
            return kVar.f14398c.findRelativeAdapterPositionIn(adapter, b0Var, iK);
        }
        throw new IllegalStateException("Detected inconsistent adapter updates. The local position of the view holder maps to " + iK + " which is out of bounds for the adapter with size " + itemCount + ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:" + b0Var + "adapter:" + adapter);
    }

    public int q() {
        Iterator it = this.f14371e.iterator();
        int iA = 0;
        while (it.hasNext()) {
            iA += ((k) it.next()).a();
        }
        return iA;
    }

    public boolean s() {
        return this.f14373g != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }

    public void v(RecyclerView recyclerView) {
        if (u(recyclerView)) {
            return;
        }
        this.f14369c.add(new WeakReference(recyclerView));
        Iterator it = this.f14371e.iterator();
        while (it.hasNext()) {
            ((k) it.next()).f14398c.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void w(RecyclerView.b0 b0Var, int i11) {
        a aVarL = l(i11);
        this.f14370d.put(b0Var, aVarL.f14375a);
        aVarL.f14375a.d(b0Var, aVarL.f14376b);
        D(aVarL);
    }

    public RecyclerView.b0 x(ViewGroup viewGroup, int i11) {
        return this.f14368b.a(i11).e(viewGroup, i11);
    }

    public void y(RecyclerView recyclerView) {
        for (int size = this.f14369c.size() - 1; size >= 0; size--) {
            WeakReference weakReference = (WeakReference) this.f14369c.get(size);
            if (weakReference.get() != null) {
                if (weakReference.get() == recyclerView) {
                    this.f14369c.remove(size);
                    break;
                }
            } else {
                this.f14369c.remove(size);
            }
        }
        Iterator it = this.f14371e.iterator();
        while (it.hasNext()) {
            ((k) it.next()).f14398c.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public boolean z(RecyclerView.b0 b0Var) {
        k kVar = (k) this.f14370d.get(b0Var);
        if (kVar != null) {
            boolean zOnFailedToRecycleView = kVar.f14398c.onFailedToRecycleView(b0Var);
            this.f14370d.remove(b0Var);
            return zOnFailedToRecycleView;
        }
        throw new IllegalStateException("Cannot find wrapper for " + b0Var + ", seems like it is not bound by this adapter: " + this);
    }
}
