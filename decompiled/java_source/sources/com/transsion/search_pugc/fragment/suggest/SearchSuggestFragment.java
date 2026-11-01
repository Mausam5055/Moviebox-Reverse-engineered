package com.transsion.search_pugc.fragment.suggest;

import android.app.Application;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.search_pugc.bean.SearchSuggestItem;
import com.transsion.search_pugc.bean.UGCSearchSuggestData;
import com.transsion.search_pugc.fragment.BaseSearchMainFragment;
import com.transsion.search_pugc.g;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import rq.j;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J/\u0010\n\u001a\u00020\t2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0015\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00172\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u001b\u0010,\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00102R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u001b\u0010>\u001a\u00020:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010)\u001a\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;", "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;", "Lrq/j;", "<init>", "()V", "", "Lcom/transsion/search_pugc/bean/SearchSuggestItem;", "newList", "oldList", "", "i0", "(Ljava/util/List;Ljava/util/List;)Z", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lrq/j;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initListener", "lazyLoadData", "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "q0", "(Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;)V", "", "keyWord", "o0", "(Ljava/lang/String;)V", "a", "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment$b;", "mClickListener", "Lgr/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "j0", "()Lgr/c;", "mViewModel", "Lcom/transsion/search_pugc/fragment/suggest/e;", "c", "Lcom/transsion/search_pugc/fragment/suggest/e;", "mAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "mKeyWord", "e", "mOps", "Lkh/a;", "f", "Lkh/a;", "exposeUtil", "Lcom/transsion/search_pugc/g;", "g", "getSearchReporter", "()Lcom/transsion/search_pugc/g;", "searchReporter", "h", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SearchSuggestFragment extends BaseSearchMainFragment<j> {

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private b mClickListener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.search_pugc.fragment.suggest.e mAdapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mOps;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.suggest.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchSuggestFragment.n0();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String mKeyWord = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final kh.a exposeUtil = new kh.a();

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy searchReporter = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.suggest.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchSuggestFragment.p0(this.f52476a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.search_pugc.fragment.suggest.SearchSuggestFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchSuggestFragment a() {
            return new SearchSuggestFragment();
        }
    }

    public interface b {
        void a(SearchSuggestItem searchSuggestItem, int i11, String str, String str2);
    }

    public static final class c implements kh.a.b {
        c() {
        }

        @Override // kh.a.b
        public int a() {
            List<Object> data;
            com.transsion.search_pugc.fragment.suggest.e eVar = SearchSuggestFragment.this.mAdapter;
            if (eVar == null || (data = eVar.getData()) == null) {
                return 0;
            }
            return data.size();
        }

        @Override // kh.a.b
        public void onItemViewVisible(boolean z10, int i11) {
            List<Object> data;
            com.transsion.search_pugc.fragment.suggest.e eVar = SearchSuggestFragment.this.mAdapter;
            SearchSuggestFragment.this.getSearchReporter().A((eVar == null || (data = eVar.getData()) == null) ? null : (SearchSuggestItem) CollectionsKt.l0(data, i11), Integer.valueOf(i11), SearchSuggestFragment.this.mKeyWord, SearchSuggestFragment.this.mOps);
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(SearchSuggestItem oldItem, SearchSuggestItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.hashCode() == newItem.hashCode();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(SearchSuggestItem oldItem, SearchSuggestItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.hashCode() == newItem.hashCode();
        }
    }

    static final class e implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52474a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52474a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52474a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f52474a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g getSearchReporter() {
        return (g) this.searchReporter.getValue();
    }

    private final boolean i0(List newList, List oldList) {
        return false;
    }

    private final gr.c j0() {
        return (gr.c) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(SearchSuggestFragment searchSuggestFragment, UGCSearchSuggestData uGCSearchSuggestData) {
        List<SearchSuggestItem> items;
        searchSuggestFragment.getSearchReporter().i(searchSuggestFragment.getLogViewConfig());
        if (uGCSearchSuggestData == null || (items = uGCSearchSuggestData.getItems()) == null || items.isEmpty()) {
            return Unit.f67061a;
        }
        hj.b logViewConfig = searchSuggestFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        searchSuggestFragment.mOps = uGCSearchSuggestData.getOps();
        com.transsion.search_pugc.fragment.suggest.e eVar = searchSuggestFragment.mAdapter;
        if (eVar != null) {
            eVar.R1(searchSuggestFragment.mKeyWord);
        }
        List<SearchSuggestItem> items2 = uGCSearchSuggestData.getItems();
        com.transsion.search_pugc.fragment.suggest.e eVar2 = searchSuggestFragment.mAdapter;
        if (searchSuggestFragment.i0(items2, eVar2 != null ? eVar2.getData() : null)) {
            com.transsion.search_pugc.fragment.suggest.e eVar3 = searchSuggestFragment.mAdapter;
            if (eVar3 != null) {
                eVar3.notifyDataSetChanged();
            }
        } else {
            searchSuggestFragment.exposeUtil.l();
            com.transsion.search_pugc.fragment.suggest.e eVar4 = searchSuggestFragment.mAdapter;
            if (eVar4 != null) {
                eVar4.n1(uGCSearchSuggestData.getItems());
            }
            searchSuggestFragment.exposeUtil.k();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(SearchSuggestFragment searchSuggestFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        String word;
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        com.transsion.search_pugc.fragment.suggest.e eVar = searchSuggestFragment.mAdapter;
        SearchSuggestItem searchSuggestItem = (eVar == null || (data = eVar.getData()) == null) ? null : (SearchSuggestItem) CollectionsKt.l0(data, i11);
        if (searchSuggestItem == null || (word = searchSuggestItem.getWord()) == null) {
            word = searchSuggestFragment.mKeyWord;
        }
        searchSuggestFragment.mKeyWord = word;
        searchSuggestFragment.getSearchReporter().B(searchSuggestItem, i11, searchSuggestFragment.mKeyWord, searchSuggestFragment.mOps);
        b bVar = searchSuggestFragment.mClickListener;
        if (bVar != null) {
            String str = searchSuggestFragment.mKeyWord;
            String str2 = searchSuggestFragment.mOps;
            if (str2 == null) {
                str2 = "";
            }
            bVar.a(searchSuggestItem, i11, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gr.c n0() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return new gr.c(applicationA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g p0(SearchSuggestFragment searchSuggestFragment) {
        return g.f52478h.a(searchSuggestFragment.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
        kh.a aVar = this.exposeUtil;
        j jVar = (j) getMViewBinding();
        aVar.n(jVar != null ? jVar.f74665b : null, new c());
        j0().m().j(this, new e(new Function1() { // from class: com.transsion.search_pugc.fragment.suggest.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchSuggestFragment.l0(this.f52477a, (UGCSearchSuggestData) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        j jVar = (j) getMViewBinding();
        if (jVar != null && (recyclerView = jVar.f74665b) != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            com.transsion.search_pugc.fragment.suggest.e eVar = new com.transsion.search_pugc.fragment.suggest.e();
            eVar.R0(new d());
            this.mAdapter = eVar;
            recyclerView.setAdapter(eVar);
            com.transsion.search_pugc.fragment.suggest.e eVar2 = this.mAdapter;
            if (eVar2 != null) {
                eVar2.w1(new p6.d() { // from class: com.transsion.search_pugc.fragment.suggest.a
                    @Override // p6.d
                    public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                        SearchSuggestFragment.m0(this.f52475a, baseQuickAdapter, view2, i11);
                    }
                });
            }
        }
        getSearchReporter().j(getLogViewConfig());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        j jVarC = j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return getSearchReporter().g("/ugc_search/search_suggest");
    }

    public final void o0(String keyWord) {
        HashMap mapG;
        Intrinsics.h(keyWord, "keyWord");
        this.mKeyWord = keyWord;
        j0().j(keyWord, 10, getSearchReporter().f());
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    public final void q0(b listener) {
        Intrinsics.h(listener, "listener");
        this.mClickListener = listener;
    }
}
