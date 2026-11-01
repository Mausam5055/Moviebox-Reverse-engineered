package com.transsion.moviedetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0004R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/transsion/moviedetail/fragment/StarringFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lcn/n;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "d0", "(Landroid/view/LayoutInflater;)Lcn/n;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "c0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StarringFragment extends BaseFragment<cn.n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.moviedetail.fragment.StarringFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.moviedetail.fragment.StarringFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    public static final class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            RecyclerView recyclerView;
            ViewParent parent;
            RecyclerView recyclerView2;
            ViewTreeObserver viewTreeObserver;
            cn.n mViewBinding = StarringFragment.this.getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f17424b) != null && (viewTreeObserver = recyclerView2.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            cn.n mViewBinding2 = StarringFragment.this.getMViewBinding();
            if (mViewBinding2 == null || (recyclerView = mViewBinding2.f17424b) == null || (parent = recyclerView.getParent()) == null) {
                return;
            }
            parent.requestLayout();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f47073a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47073a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f47073a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f47073a.invoke(obj);
        }
    }

    private final MovieDetailViewModel c0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(Fragment fragment, StarringFragment starringFragment, Pair pair) {
        RecyclerView recyclerView;
        ViewTreeObserver viewTreeObserver;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        AppCompatTextView appCompatTextView;
        Subject subject;
        MovieDetailActivity.INSTANCE.a("movie_detail get movie detail data --> it = " + fragment);
        List<Staff> staffList = (pair == null || (subject = (Subject) pair.getSecond()) == null) ? null : subject.getStaffList();
        List<Staff> list = staffList;
        if (list == null || list.isEmpty()) {
            return Unit.f67061a;
        }
        cn.n mViewBinding = starringFragment.getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f17425c) != null) {
            appCompatTextView.setText("(" + staffList.size() + ")");
        }
        cn.n mViewBinding2 = starringFragment.getMViewBinding();
        if (mViewBinding2 != null && (recyclerView4 = mViewBinding2.f17424b) != null) {
            recyclerView4.setLayoutManager(new NpaGridLayoutManager(starringFragment.getContext(), 4));
        }
        cn.n mViewBinding3 = starringFragment.getMViewBinding();
        if (mViewBinding3 != null && (recyclerView3 = mViewBinding3.f17424b) != null) {
            recyclerView3.addItemDecoration(new ig.b(com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(12.0f), com.blankj.utilcode.util.a0.a(12.0f)));
        }
        com.transsion.moviedetail.adapter.a aVar = new com.transsion.moviedetail.adapter.a(staffList);
        aVar.w1(new p6.d() { // from class: com.transsion.moviedetail.fragment.m1
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                StarringFragment.f0(baseQuickAdapter, view, i11);
            }
        });
        cn.n mViewBinding4 = starringFragment.getMViewBinding();
        if (mViewBinding4 != null && (recyclerView2 = mViewBinding4.f17424b) != null) {
            recyclerView2.setAdapter(aVar);
        }
        cn.n mViewBinding5 = starringFragment.getMViewBinding();
        if (mViewBinding5 != null && (recyclerView = mViewBinding5.f17424b) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(starringFragment.new a());
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(BaseQuickAdapter adapter, View v11, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(v11, "v");
        Navigator navigatorC = TheRouter.c("/movie/staff");
        Object item = adapter.getItem(i11);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Staff");
        Navigator.x(navigatorC.J("staff", (Staff) item), v11.getContext(), null, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public cn.n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.n nVarC = cn.n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        final Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            c0().F().j(this, new b(new Function1() { // from class: com.transsion.moviedetail.fragment.l1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return StarringFragment.e0(parentFragment, this, (Pair) obj);
                }
            }));
        }
    }
}
