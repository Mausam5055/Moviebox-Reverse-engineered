package com.transsion.search.fragment.group;

import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.push.PushConstants;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.SearchManager;
import com.transsion.search.bean.Pager;
import com.transsion.search.bean.PagerEntity;
import com.transsion.search.bean.SearchGroupEntity;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.SearchWorkEntity;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsion.search.viewmodel.SearchWorkViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 M2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u000bJ\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u000bJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J5\u0010\u001d\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J!\u0010&\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010DR\u0016\u0010I\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010DR\u0016\u0010L\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lrq/e;", "<init>", "()V", "", "initHistory", "t0", "", "clear", "resetContent", "(Z)V", "I0", "searchJob", "initViewModel", "Landroid/view/View;", "emptyView", "()Landroid/view/View;", "showHistory", "L0", PushConstants.PUSH_SERVICE_TYPE_SHOW, "J0", "K0", "", "group_id", "subject_id", "opt", "", RequestParameters.POSITION, "reportClick", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "Landroid/view/LayoutInflater;", "inflater", "w0", "(Landroid/view/LayoutInflater;)Lrq/e;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "lazyLoadData", "onDestroyView", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "a", "Z", "isRefreshing", "Lcom/transsion/search/fragment/group/g0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/search/fragment/group/g0;", "mSearchWorkAdapter", "Lcom/transsion/search/fragment/group/adapter/c;", "c", "Lcom/transsion/search/fragment/group/adapter/c;", "mHistoryAdapter", "Lcom/transsion/search/viewmodel/SearchWorkViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "v0", "()Lcom/transsion/search/viewmodel/SearchWorkViewModel;", "mViewModel", "Lcom/transsion/search/viewmodel/SearchViewModel;", "e", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mSearchViewModel", "f", "I", "mType", "g", "page", "h", "perPage", "i", "Ljava/lang/String;", "mKeyword", "j", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchUploadWorkFragment extends BaseFragment<rq.e> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean isRefreshing;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private g0 mSearchWorkAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.search.fragment.group.adapter.c mHistoryAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private SearchViewModel mSearchViewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int mType;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int page;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int perPage;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String mKeyword;

    /* JADX INFO: renamed from: com.transsion.search.fragment.group.SearchUploadWorkFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchUploadWorkFragment a(int i11) {
            SearchUploadWorkFragment searchUploadWorkFragment = new SearchUploadWorkFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            searchUploadWorkFragment.setArguments(bundle);
            return searchUploadWorkFragment;
        }
    }

    public static final class b implements nh.n {
        b() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            r6.f fVarH0;
            List<Object> data;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            g0 g0Var = SearchUploadWorkFragment.this.mSearchWorkAdapter;
            if (g0Var != null && (data = g0Var.getData()) != null && data.isEmpty()) {
                SearchUploadWorkFragment.this.searchJob();
                return;
            }
            g0 g0Var2 = SearchUploadWorkFragment.this.mSearchWorkAdapter;
            if (g0Var2 == null || (fVarH0 = g0Var2.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    public static final class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if ((editable != null ? editable.length() : 0) == 0) {
                SearchUploadWorkFragment.this.resetContent(true);
            }
            SearchUploadWorkFragment.this.mKeyword = StringsKt.n1(String.valueOf(editable)).toString();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            SearchUploadWorkFragment.this.J0(true);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class d implements TextView.OnEditorActionListener {
        d() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
            if (i11 != 0 && i11 != 3) {
                return false;
            }
            SearchUploadWorkFragment.this.mKeyword = StringsKt.n1(String.valueOf(textView != null ? textView.getText() : null)).toString();
            SearchUploadWorkFragment.this.searchJob();
            return true;
        }
    }

    public static final class e extends RecyclerView.r {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ rq.e f52022b;

        e(rq.e eVar) {
            this.f52022b = eVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            FragmentActivity activity;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            if (i11 != 1 || (activity = SearchUploadWorkFragment.this.getActivity()) == null) {
                return;
            }
            rq.e eVar = this.f52022b;
            if (KeyboardUtils.g(activity)) {
                KeyboardUtils.e(eVar.f74634c);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52023a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52023a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52023a;
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
            this.f52023a.invoke(obj);
        }
    }

    public SearchUploadWorkFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.search.fragment.group.SearchUploadWorkFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(SearchWorkViewModel.class), new Function0<x0>() { // from class: com.transsion.search.fragment.group.SearchUploadWorkFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.search.fragment.group.SearchUploadWorkFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.page = 1;
        this.perPage = 10;
        this.mKeyword = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(SearchUploadWorkFragment searchUploadWorkFragment, SearchWorkEntity searchWorkEntity) {
        ArrayList arrayList;
        Pager pager;
        HashMap mapG;
        List<Object> data;
        ProgressBar progressBar;
        Pager pager2;
        Pager pager3;
        Pager pager4;
        List<SearchSubject> items;
        Boolean boolValueOf = null;
        if (searchWorkEntity == null || (items = searchWorkEntity.getItems()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (Object obj : items) {
                if (!((SearchSubject) obj).isJumpBrowser()) {
                    arrayList.add(obj);
                }
            }
        }
        boolean hasMore = (searchWorkEntity == null || (pager4 = searchWorkEntity.getPager()) == null) ? false : pager4.getHasMore();
        searchUploadWorkFragment.page = (searchWorkEntity == null || (pager3 = searchWorkEntity.getPager()) == null) ? 1 : pager3.getNextPage();
        searchUploadWorkFragment.perPage = (searchWorkEntity == null || (pager2 = searchWorkEntity.getPager()) == null) ? 10 : pager2.getPerPage();
        rq.e mViewBinding = searchUploadWorkFragment.getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f74637f) != null) {
            jg.c.g(progressBar);
        }
        g0 g0Var = searchUploadWorkFragment.mSearchWorkAdapter;
        if (g0Var != null) {
            g0Var.h0().s();
            g0 g0Var2 = searchUploadWorkFragment.mSearchWorkAdapter;
            if (g0Var2 != null && (data = g0Var2.getData()) != null) {
                boolValueOf = Boolean.valueOf(data.isEmpty());
            }
            if ((arrayList == null || arrayList.isEmpty()) && Intrinsics.c(boolValueOf, Boolean.TRUE) && (searchUploadWorkFragment.page == 1 || (searchWorkEntity != null && (pager = searchWorkEntity.getPager()) != null && pager.getPage() == 1))) {
                g0Var.q1(new ArrayList());
                g0Var.Y0(searchUploadWorkFragment.emptyView());
                searchUploadWorkFragment.L0(false);
                g0Var.z1(true);
            }
            if (arrayList == null || arrayList.isEmpty()) {
                g0Var.h0().t(false);
            } else {
                if (searchUploadWorkFragment.isRefreshing) {
                    searchUploadWorkFragment.isRefreshing = false;
                    g0 g0Var3 = searchUploadWorkFragment.mSearchWorkAdapter;
                    if (g0Var3 != null) {
                        g0Var3.n1(arrayList);
                    }
                } else {
                    g0 g0Var4 = searchUploadWorkFragment.mSearchWorkAdapter;
                    if (g0Var4 != null) {
                        g0Var4.q(arrayList);
                    }
                }
                hj.b logViewConfig = searchUploadWorkFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
                hj.b logViewConfig2 = searchUploadWorkFragment.getLogViewConfig();
                if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                    mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(searchUploadWorkFragment.mType));
                }
                searchUploadWorkFragment.L0(false);
            }
            if (!hasMore) {
                g0Var.h0().t(false);
            }
            if (searchWorkEntity == null) {
                g0Var.h0().v();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(View view, boolean z10) {
        view.dispatchWindowFocusChanged(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.searchJob();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.resetContent(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.I0();
        FragmentActivity activity = searchUploadWorkFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(final SearchUploadWorkFragment searchUploadWorkFragment) {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            SearchViewModel searchViewModel = searchUploadWorkFragment.mSearchViewModel;
            if (searchViewModel != null) {
                searchViewModel.D(searchUploadWorkFragment.page, searchUploadWorkFragment.perPage, searchUploadWorkFragment.mKeyword);
                return;
            }
            return;
        }
        uh.b.f76753a.d(R$string.no_network_toast);
        rq.e mViewBinding = searchUploadWorkFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74639h) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.search.fragment.group.u
            @Override // java.lang.Runnable
            public final void run() {
                SearchUploadWorkFragment.G0(this.f52051a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(SearchUploadWorkFragment searchUploadWorkFragment) {
        r6.f fVarH0;
        g0 g0Var = searchUploadWorkFragment.mSearchWorkAdapter;
        if (g0Var == null || (fVarH0 = g0Var.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(SearchUploadWorkFragment searchUploadWorkFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        SearchSubject searchSubject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        g0 g0Var = searchUploadWorkFragment.mSearchWorkAdapter;
        if (g0Var == null || (data = g0Var.getData()) == null || (searchSubject = (SearchSubject) data.get(i11)) == null) {
            return;
        }
        searchUploadWorkFragment.reportClick("", searchSubject.getSubjectId(), searchSubject.getOps(), i11);
        fp.a aVar = new fp.a();
        aVar.o(3);
        aVar.n(1);
        aVar.s(searchSubject);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
        FragmentActivity activity = searchUploadWorkFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void I0() {
        pq.a aVar = new pq.a();
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = pq.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(boolean show) {
        rq.e mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            if (show) {
                TextView searchTV = mViewBinding.f74640i;
                Intrinsics.g(searchTV, "searchTV");
                jg.c.k(searchTV);
                AppCompatImageView clearIV = mViewBinding.f74633b;
                Intrinsics.g(clearIV, "clearIV");
                jg.c.g(clearIV);
                return;
            }
            TextView searchTV2 = mViewBinding.f74640i;
            Intrinsics.g(searchTV2, "searchTV");
            jg.c.g(searchTV2);
            AppCompatImageView clearIV2 = mViewBinding.f74633b;
            Intrinsics.g(clearIV2, "clearIV");
            jg.c.k(clearIV2);
        }
    }

    private final void K0() {
        uh.b.f76753a.d(R$string.no_network_toast);
        L0(false);
        g0 g0Var = this.mSearchWorkAdapter;
        if (g0Var != null) {
            g0Var.Y0(emptyView());
        }
        g0 g0Var2 = this.mSearchWorkAdapter;
        if (g0Var2 != null) {
            g0Var2.q1(new ArrayList());
        }
    }

    private final void L0(boolean showHistory) {
        rq.e mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TextView recentTV = mViewBinding.f74638g;
            Intrinsics.g(recentTV, "recentTV");
            recentTV.setVisibility(showHistory ? 0 : 8);
            if (!showHistory) {
                mViewBinding.f74639h.setAdapter(this.mSearchWorkAdapter);
                return;
            }
            mViewBinding.f74639h.setAdapter(this.mHistoryAdapter);
            com.transsion.search.fragment.group.adapter.c cVar = this.mHistoryAdapter;
            if (cVar != null) {
                cVar.n1((Collection) v0().h().f());
            }
        }
    }

    private final View emptyView() {
        EditText editText;
        Editable text = null;
        View viewInflate = getLayoutInflater().inflate(R$layout.view_search_manager_empty, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tv_empty_tips);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.iv_tips);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewInflate.findViewById(R$id.tv_retry);
        if (nh.m.f70474a.e()) {
            rq.e mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f74634c) != null) {
                text = editText.getText();
            }
            String strValueOf = String.valueOf(text);
            textView.setText(getString(com.transsion.search.R$string.user_works_empty) + " \"" + strValueOf + "\"");
            appCompatTextView.setVisibility(8);
            imageView.setImageResource(R$mipmap.ic_no_content);
        } else {
            textView.setText(com.transsion.baseui.R$string.base_network_fail);
            imageView.setImageResource(R$mipmap.ic_no_network);
            appCompatTextView.setVisibility(0);
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchUploadWorkFragment.s0(this.f52031a, view);
                }
            });
        }
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    private final void initHistory() {
        final com.transsion.search.fragment.group.adapter.c cVar = new com.transsion.search.fragment.group.adapter.c(new ArrayList());
        cVar.h0().D(new p6.f() { // from class: com.transsion.search.fragment.group.v
            @Override // p6.f
            public final void a() {
                SearchUploadWorkFragment.x0(this.f52052a, cVar);
            }
        });
        cVar.w1(new p6.d() { // from class: com.transsion.search.fragment.group.w
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SearchUploadWorkFragment.y0(this.f52054a, baseQuickAdapter, view, i11);
            }
        });
        this.mHistoryAdapter = cVar;
    }

    private final void initViewModel() {
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        SearchViewModel searchViewModel = (SearchViewModel) new v0(fragmentActivityRequireActivity).a(SearchViewModel.class);
        searchViewModel.o().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.search.fragment.group.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchUploadWorkFragment.z0(this.f52032a, (SearchGroupEntity) obj);
            }
        }));
        searchViewModel.q().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.search.fragment.group.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchUploadWorkFragment.A0(this.f52034a, (SearchWorkEntity) obj);
            }
        }));
        this.mSearchViewModel = searchViewModel;
    }

    private final void reportClick(String group_id, String subject_id, String opt, int position) {
        HashMap map = new HashMap();
        if (group_id == null) {
            group_id = "";
        }
        map.put("group_id", group_id);
        if (subject_id == null) {
            subject_id = "";
        }
        map.put("subject_id", subject_id);
        map.put("sequence", String.valueOf(position));
        if (opt == null) {
            opt = "";
        }
        map.put("ops", opt);
        com.transsion.baselib.helper.a.f43262a.f("searchresult", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetContent(boolean clear) {
        EditText editText;
        if (!clear) {
            rq.e mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f74634c) != null) {
                editText.setText("");
            }
            this.mKeyword = "";
        }
        g0 g0Var = this.mSearchWorkAdapter;
        if (g0Var != null) {
            g0Var.q1(new ArrayList());
        }
        g0 g0Var2 = this.mSearchWorkAdapter;
        if (g0Var2 != null) {
            g0Var2.H0();
        }
        rq.e mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            boolean z10 = true;
            L0(true);
            TextView recentTV = mViewBinding2.f74638g;
            Intrinsics.g(recentTV, "recentTV");
            com.transsion.search.fragment.group.adapter.c cVar = this.mHistoryAdapter;
            List<Object> data = cVar != null ? cVar.getData() : null;
            if (data != null && !data.isEmpty()) {
                z10 = false;
            }
            recentTV.setVisibility(z10 ? 8 : 0);
            KeyboardUtils.i(mViewBinding2.f74634c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.searchJob();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void searchJob() {
        ProgressBar progressBar;
        if (TextUtils.isEmpty(this.mKeyword)) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f41479a;
            hVar.e(16);
            hVar.l(getString(com.transsion.search.R$string.tips_movie));
            return;
        }
        this.isRefreshing = true;
        SearchManager.f51941f.a().g(this.mKeyword);
        rq.e mViewBinding = getMViewBinding();
        EditText editText = mViewBinding != null ? mViewBinding.f74634c : null;
        Intrinsics.e(editText);
        KeyboardUtils.e(editText);
        if (!nh.m.f70474a.e()) {
            K0();
            return;
        }
        rq.e mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (progressBar = mViewBinding2.f74637f) != null) {
            jg.c.k(progressBar);
        }
        J0(false);
        this.page = 1;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel != null) {
            searchViewModel.D(1, this.perPage, this.mKeyword);
        }
        HashMap map = new HashMap();
        map.put("module_name", "search");
        map.put(MBridgeConstans.KEY_WORD, this.mKeyword);
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(this.mType));
        com.transsion.baselib.helper.a.f43262a.f("searchpage", map);
    }

    private final void t0() {
        v0().k(true);
        v0().h().j(this, new f(new Function1() { // from class: com.transsion.search.fragment.group.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchUploadWorkFragment.u0(this.f52050a, (List) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(SearchUploadWorkFragment searchUploadWorkFragment, List list) {
        rq.e mViewBinding;
        TextView textView;
        List list2 = list;
        if ((list2 == null || list2.isEmpty()) && (mViewBinding = searchUploadWorkFragment.getMViewBinding()) != null && (textView = mViewBinding.f74638g) != null) {
            jg.c.g(textView);
        }
        com.transsion.search.fragment.group.adapter.c cVar = searchUploadWorkFragment.mHistoryAdapter;
        if (cVar != null) {
            cVar.n1(list2);
        }
        return Unit.f67061a;
    }

    private final SearchWorkViewModel v0() {
        return (SearchWorkViewModel) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(SearchUploadWorkFragment searchUploadWorkFragment, com.transsion.search.fragment.group.adapter.c cVar) {
        if (searchUploadWorkFragment.v0().g()) {
            SearchWorkViewModel.l(searchUploadWorkFragment.v0(), false, 1, null);
        } else {
            cVar.h0().t(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(SearchUploadWorkFragment searchUploadWorkFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<Object> data;
        VideoDetailPlayBean videoDetailPlayBean;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        com.transsion.search.fragment.group.adapter.c cVar = searchUploadWorkFragment.mHistoryAdapter;
        if (cVar == null || (data = cVar.getData()) == null || (videoDetailPlayBean = (VideoDetailPlayBean) data.get(i11)) == null) {
            return;
        }
        searchUploadWorkFragment.reportClick("", videoDetailPlayBean.getSubjectId(), "", i11);
        fp.a aVar = new fp.a();
        aVar.o(3);
        aVar.n(1);
        fp.a aVarT = aVar.t(videoDetailPlayBean.getSubjectId(), videoDetailPlayBean.getSubjectType(), videoDetailPlayBean.getTitle(), videoDetailPlayBean.getCoverUrl(), videoDetailPlayBean.getThumbnail());
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = fp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        Intrinsics.e(aVarT);
        flowEventBus.postEvent(name, aVarT, 0L);
        FragmentActivity activity = searchUploadWorkFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(SearchUploadWorkFragment searchUploadWorkFragment, SearchGroupEntity searchGroupEntity) {
        ProgressBar progressBar;
        PagerEntity pager;
        PagerEntity pager2;
        String nextPage;
        Integer numV;
        searchUploadWorkFragment.page = (searchGroupEntity == null || (pager2 = searchGroupEntity.getPager()) == null || (nextPage = pager2.getNextPage()) == null || (numV = StringsKt.v(nextPage)) == null) ? 1 : numV.intValue();
        searchUploadWorkFragment.perPage = (searchGroupEntity == null || (pager = searchGroupEntity.getPager()) == null) ? 10 : pager.getPerPage();
        rq.e mViewBinding = searchUploadWorkFragment.getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f74637f) != null) {
            jg.c.g(progressBar);
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        setNetListener(new b());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        t0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("searchpage", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        ProgressBar progressBar;
        rq.e mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f74637f) != null) {
            jg.c.g(progressBar);
        }
        super.onDestroyView();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.mType = arguments != null ? arguments.getInt(NativeComponentConstants.KEY_COMPONENT_TYPE) : 1;
        g0 g0Var = new g0(new ArrayList());
        g0Var.h0().D(new p6.f() { // from class: com.transsion.search.fragment.group.x
            @Override // p6.f
            public final void a() {
                SearchUploadWorkFragment.F0(this.f52055a);
            }
        });
        g0Var.w1(new p6.d() { // from class: com.transsion.search.fragment.group.y
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                SearchUploadWorkFragment.H0(this.f52056a, baseQuickAdapter, view2, i11);
            }
        });
        this.mSearchWorkAdapter = g0Var;
        initHistory();
        rq.e mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f74639h.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
            mViewBinding.f74639h.setAdapter(this.mHistoryAdapter);
            RecyclerView recyclerView = mViewBinding.f74639h;
            g0 g0Var2 = this.mSearchWorkAdapter;
            recyclerView.addOnScrollListener(new fk.a(g0Var2 != null ? g0Var2.h0() : null));
            RecyclerView recyclerView2 = mViewBinding.f74639h;
            com.transsion.search.fragment.group.adapter.c cVar = this.mHistoryAdapter;
            recyclerView2.addOnScrollListener(new fk.a(cVar != null ? cVar.h0() : null));
            initViewModel();
            mViewBinding.f74634c.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.transsion.search.fragment.group.z
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z10) {
                    SearchUploadWorkFragment.B0(view2, z10);
                }
            });
            mViewBinding.f74640i.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchUploadWorkFragment.C0(this.f52025a, view2);
                }
            });
            mViewBinding.f74634c.addTextChangedListener(new c());
            mViewBinding.f74634c.setOnEditorActionListener(new d());
            mViewBinding.f74633b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchUploadWorkFragment.D0(this.f52027a, view2);
                }
            });
            ProgressBar loadView = mViewBinding.f74637f;
            Intrinsics.g(loadView, "loadView");
            jg.c.g(loadView);
            mViewBinding.f74635d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.group.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SearchUploadWorkFragment.E0(this.f52029a, view2);
                }
            });
            mViewBinding.f74634c.requestFocus();
            KeyboardUtils.i(mViewBinding.f74634c);
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            mViewBinding.f74639h.addOnScrollListener(new e(mViewBinding));
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public rq.e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.e eVarC = rq.e.c(inflater);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }
}
