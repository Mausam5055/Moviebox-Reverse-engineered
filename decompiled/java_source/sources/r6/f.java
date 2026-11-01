package r6;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BaseQuickAdapter f74152a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p6.f f74153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f74154c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LoadMoreStatus f74155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q6.a f74157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f74158g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f74159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f74160i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f74161j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f74162k;

    public f(BaseQuickAdapter baseQuickAdapter) {
        Intrinsics.h(baseQuickAdapter, "baseQuickAdapter");
        this.f74152a = baseQuickAdapter;
        this.f74154c = true;
        this.f74155d = LoadMoreStatus.Complete;
        this.f74157f = j.a();
        this.f74159h = true;
        this.f74160i = true;
        this.f74161j = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(f this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        LoadMoreStatus loadMoreStatus = this$0.f74155d;
        if (loadMoreStatus == LoadMoreStatus.Fail) {
            this$0.w();
            return;
        }
        if (loadMoreStatus == LoadMoreStatus.Complete) {
            this$0.w();
        } else if (this$0.f74158g && loadMoreStatus == LoadMoreStatus.End) {
            this$0.w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(f this$0, RecyclerView.m manager) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(manager, "$manager");
        if (this$0.q((LinearLayoutManager) manager)) {
            this$0.f74154c = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(RecyclerView.m manager, f this$0) {
        Intrinsics.h(manager, "$manager");
        Intrinsics.h(this$0, "this$0");
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) manager;
        int[] iArr = new int[staggeredGridLayoutManager.Q()];
        staggeredGridLayoutManager.E(iArr);
        if (this$0.l(iArr) + 1 != this$0.f74152a.getItemCount()) {
            this$0.f74154c = true;
        }
    }

    private final int l(int[] iArr) {
        int i11 = -1;
        if (iArr != null && iArr.length != 0) {
            for (int i12 : iArr) {
                if (i12 > i11) {
                    i11 = i12;
                }
            }
        }
        return i11;
    }

    private final void n() {
        this.f74155d = LoadMoreStatus.Loading;
        RecyclerView recyclerViewN0 = this.f74152a.n0();
        if (recyclerViewN0 != null) {
            recyclerViewN0.post(new Runnable() { // from class: r6.b
                @Override // java.lang.Runnable
                public final void run() {
                    f.o(this.f74146a);
                }
            });
            return;
        }
        p6.f fVar = this.f74153b;
        if (fVar != null) {
            fVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(f this$0) {
        Intrinsics.h(this$0, "this$0");
        p6.f fVar = this$0.f74153b;
        if (fVar != null) {
            fVar.a();
        }
    }

    private final boolean q(LinearLayoutManager linearLayoutManager) {
        return (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == this.f74152a.getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    public static /* synthetic */ void u(f fVar, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        fVar.t(z10);
    }

    public final void A(boolean z10) {
        this.f74158g = z10;
    }

    public final void B(boolean z10) {
        this.f74160i = z10;
    }

    public final void C(q6.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.f74157f = aVar;
    }

    public void D(p6.f fVar) {
        this.f74153b = fVar;
        z(true);
    }

    public final void E(int i11) {
        if (i11 > 1) {
            this.f74161j = i11;
        }
    }

    public final void F(BaseViewHolder viewHolder) {
        Intrinsics.h(viewHolder, "viewHolder");
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: r6.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                f.G(this.f74147a, view);
            }
        });
    }

    public final void e(int i11) {
        LoadMoreStatus loadMoreStatus;
        if (this.f74159h && m() && i11 >= this.f74152a.getItemCount() - this.f74161j && (loadMoreStatus = this.f74155d) == LoadMoreStatus.Complete && loadMoreStatus != LoadMoreStatus.Loading && this.f74154c) {
            n();
        }
    }

    public final void f() {
        final RecyclerView.m layoutManager;
        if (this.f74160i) {
            return;
        }
        this.f74154c = false;
        RecyclerView recyclerViewN0 = this.f74152a.n0();
        if (recyclerViewN0 == null || (layoutManager = recyclerViewN0.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            recyclerViewN0.postDelayed(new Runnable() { // from class: r6.d
                @Override // java.lang.Runnable
                public final void run() {
                    f.g(this.f74148a, layoutManager);
                }
            }, 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            recyclerViewN0.postDelayed(new Runnable() { // from class: r6.e
                @Override // java.lang.Runnable
                public final void run() {
                    f.h(layoutManager, this);
                }
            }, 50L);
        }
    }

    public final LoadMoreStatus i() {
        return this.f74155d;
    }

    public final q6.a j() {
        return this.f74157f;
    }

    public final int k() {
        if (this.f74152a.q0()) {
            return -1;
        }
        BaseQuickAdapter baseQuickAdapter = this.f74152a;
        return baseQuickAdapter.a0() + baseQuickAdapter.getData().size() + baseQuickAdapter.V();
    }

    public final boolean m() {
        if (this.f74153b == null || !this.f74162k) {
            return false;
        }
        if (this.f74155d == LoadMoreStatus.End && this.f74156e) {
            return false;
        }
        return !this.f74152a.getData().isEmpty();
    }

    public final boolean p() {
        return this.f74162k;
    }

    public final boolean r() {
        return this.f74155d == LoadMoreStatus.Loading;
    }

    public final void s() {
        if (m()) {
            this.f74155d = LoadMoreStatus.Complete;
            this.f74152a.notifyItemChanged(k());
            f();
        }
    }

    public final void t(boolean z10) {
        if (m()) {
            this.f74156e = z10;
            this.f74155d = LoadMoreStatus.End;
            if (z10) {
                this.f74152a.notifyItemRemoved(k());
            } else {
                this.f74152a.notifyItemChanged(k());
            }
        }
    }

    public final void v() {
        if (m()) {
            this.f74155d = LoadMoreStatus.Fail;
            this.f74152a.notifyItemChanged(k());
        }
    }

    public final void w() {
        LoadMoreStatus loadMoreStatus = this.f74155d;
        LoadMoreStatus loadMoreStatus2 = LoadMoreStatus.Loading;
        if (loadMoreStatus == loadMoreStatus2) {
            return;
        }
        this.f74155d = loadMoreStatus2;
        this.f74152a.notifyItemChanged(k());
        n();
    }

    public final void x() {
        if (this.f74153b != null) {
            z(true);
            this.f74155d = LoadMoreStatus.Complete;
        }
    }

    public final void y(boolean z10) {
        this.f74159h = z10;
    }

    public final void z(boolean z10) {
        boolean zM = m();
        this.f74162k = z10;
        boolean zM2 = m();
        if (zM) {
            if (zM2) {
                return;
            }
            this.f74152a.notifyItemRemoved(k());
        } else if (zM2) {
            this.f74155d = LoadMoreStatus.Complete;
            this.f74152a.notifyItemInserted(k());
        }
    }
}
