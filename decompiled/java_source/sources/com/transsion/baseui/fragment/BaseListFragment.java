package com.transsion.baseui.fragment;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tn.lib.view.StateView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\r\u0010\u0019\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\n2\b\b\u0002\u0010\u001a\u001a\u00020\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\u0014¢\u0006\u0004\b\u001e\u0010\u001cJ\r\u0010\u001f\u001a\u00020\u0011¢\u0006\u0004\b\u001f\u0010\u0013J\u0015\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0011¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\n¢\u0006\u0004\b#\u0010\u0005J\r\u0010$\u001a\u00020\u0011¢\u0006\u0004\b$\u0010\u0013J\r\u0010%\u001a\u00020\n¢\u0006\u0004\b%\u0010\u0005J\r\u0010&\u001a\u00020\n¢\u0006\u0004\b&\u0010\u0005J\u0017\u0010(\u001a\u00020\n2\b\b\u0002\u0010'\u001a\u00020\u0011¢\u0006\u0004\b(\u0010\"J\r\u0010)\u001a\u00020\n¢\u0006\u0004\b)\u0010\u0005J\r\u0010*\u001a\u00020\u0011¢\u0006\u0004\b*\u0010\u0013J\u000f\u0010,\u001a\u00020+H&¢\u0006\u0004\b,\u0010-J\u001d\u00100\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020/\u0018\u00010.H&¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\nH&¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\nH&¢\u0006\u0004\b3\u0010\u0005R0\u00109\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020/\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00101\"\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/transsion/baseui/fragment/BaseListFragment;", "T", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lbk/b;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "t0", "(Landroid/view/LayoutInflater;)Lbk/b;", "", "initViewData", "initListener", "Landroidx/recyclerview/widget/RecyclerView$m;", "o0", "()Landroidx/recyclerview/widget/RecyclerView$m;", "x0", "", "y0", "()Z", "Landroid/view/View;", "q0", "()Landroid/view/View;", "r0", "N0", "u0", "emptyView", "J0", "(Landroid/view/View;)V", "loadingView", "L0", "A0", "isRefresh", "I0", "(Z)V", "n0", "z0", "E0", "B0", "gone", "C0", "F0", "isEmpty", "", "s0", "()Ljava/lang/String;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "G0", "loadMore", "a", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "p0", "H0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "mBaseAdapter", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseListFragment<T> extends LazyFragment<bk.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BaseQuickAdapter mBaseAdapter;

    public static /* synthetic */ void D0(BaseListFragment baseListFragment, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        baseListFragment.C0(z10);
    }

    public static /* synthetic */ void K0(BaseListFragment baseListFragment, View view, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setRvEmptyLayout");
        }
        if ((i11 & 1) != 0) {
            view = baseListFragment.q0();
        }
        baseListFragment.J0(view);
    }

    public static /* synthetic */ void M0(BaseListFragment baseListFragment, View view, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setRvLoadingLayout");
        }
        if ((i11 & 1) != 0) {
            view = baseListFragment.r0();
        }
        baseListFragment.L0(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(BaseListFragment baseListFragment) {
        if (!baseListFragment.z0()) {
            baseListFragment.G0();
        } else {
            baseListFragment.I0(false);
            uh.b.f76753a.e("loading, please try again later ...");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(BaseListFragment baseListFragment) {
        if (!baseListFragment.A0()) {
            baseListFragment.loadMore();
        } else {
            uh.b.f76753a.e("being refreshed, please try again later ...");
            baseListFragment.E0();
        }
    }

    public final boolean A0() {
        SwipeRefreshLayout swipeRefreshLayout;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (swipeRefreshLayout = bVar.f16579c) == null) {
            return false;
        }
        return swipeRefreshLayout.isRefreshing();
    }

    public final void B0() {
        r6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    public final void C0(boolean gone) {
        r6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.t(gone);
    }

    public final void E0() {
        r6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public final void F0() {
        r6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return;
        }
        fVarH0.w();
    }

    public abstract void G0();

    public final void H0(BaseQuickAdapter baseQuickAdapter) {
        this.mBaseAdapter = baseQuickAdapter;
    }

    public final void I0(boolean isRefresh) {
        SwipeRefreshLayout swipeRefreshLayout;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (swipeRefreshLayout = bVar.f16579c) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(isRefresh);
    }

    public final void J0(View emptyView) {
        Intrinsics.h(emptyView, "emptyView");
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.Y0(emptyView);
        }
    }

    public final void L0(View loadingView) {
        Intrinsics.h(loadingView, "loadingView");
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.Y0(loadingView);
        }
    }

    public void N0() {
        I0(false);
        E0();
        if (isEmpty()) {
            K0(this, null, 1, null);
        }
        if (m.f70474a.e()) {
            return;
        }
        uh.b.f76753a.e(getString(R$string.no_network_toast));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        SwipeRefreshLayout swipeRefreshLayout;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar != null && (swipeRefreshLayout = bVar.f16579c) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.baseui.fragment.b
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    BaseListFragment.v0(this.f43445a);
                }
            });
        }
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter != null) {
            baseQuickAdapter.h0().D(new p6.f() { // from class: com.transsion.baseui.fragment.c
                @Override // p6.f
                public final void a() {
                    BaseListFragment.w0(this.f43446a);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        TitleLayout titleLayout;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar != null && (titleLayout = bVar.f16581e) != null) {
            titleLayout.setTitleText(s0());
        }
        x0();
    }

    public final boolean isEmpty() {
        List<Object> data;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        return (baseQuickAdapter == null || (data = baseQuickAdapter.getData()) == null || !data.isEmpty()) ? false : true;
    }

    public abstract void loadMore();

    public abstract BaseQuickAdapter m0();

    public final void n0() {
        SwipeRefreshLayout swipeRefreshLayout;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (swipeRefreshLayout = bVar.f16579c) == null) {
            return;
        }
        swipeRefreshLayout.setEnabled(false);
    }

    public RecyclerView.m o0() {
        return new LinearLayoutManager(requireContext());
    }

    /* JADX INFO: renamed from: p0, reason: from getter */
    public final BaseQuickAdapter getMBaseAdapter() {
        return this.mBaseAdapter;
    }

    public View q0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(2, 1, false, "", getEmptyDescText());
        return stateView;
    }

    public View r0() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_rv_loading_layout, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    public abstract String s0();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public bk.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bk.b bVarC = bk.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    public final void u0() {
        TitleLayout titleLayout;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (titleLayout = bVar.f16581e) == null) {
            return;
        }
        titleLayout.setVisibility(8);
    }

    public void x0() {
        RecyclerView recyclerView;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f16580d) == null) {
            return;
        }
        recyclerView.setLayoutManager(o0());
        BaseQuickAdapter baseQuickAdapterM0 = m0();
        this.mBaseAdapter = baseQuickAdapterM0;
        recyclerView.setAdapter(baseQuickAdapterM0);
        if (y0()) {
            BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
            recyclerView.addOnScrollListener(new fk.a(baseQuickAdapter != null ? baseQuickAdapter.h0() : null));
        }
    }

    public boolean y0() {
        return true;
    }

    public final boolean z0() {
        r6.f fVarH0;
        BaseQuickAdapter baseQuickAdapter = this.mBaseAdapter;
        if (baseQuickAdapter == null || (fVarH0 = baseQuickAdapter.h0()) == null) {
            return false;
        }
        return fVarH0.r();
    }
}
