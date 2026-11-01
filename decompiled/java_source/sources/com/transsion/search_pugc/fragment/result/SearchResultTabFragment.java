package com.transsion.search_pugc.fragment.result;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.publish.model.PostEntity;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.bean.SearchTab;
import com.transsion.search_pugc.bean.SecondTab;
import com.transsion.search_pugc.bean.UGCPager;
import com.transsion.search_pugc.bean.UGCSearchResultData;
import com.transsion.search_pugc.fragment.BaseSearchMainFragment;
import com.transsion.search_pugc.widget.NoInterceptRecyclerView;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVerticalRank;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
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

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 W2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0004R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u001c\u00107\u001a\b\u0012\u0004\u0012\u00020\u0005048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010M\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u001b\u0010V\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010(\u001a\u0004\bT\u0010U¨\u0006X"}, d2 = {"Lcom/transsion/search_pugc/fragment/result/SearchResultTabFragment;", "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;", "Lrq/h;", "<init>", "()V", "Lcom/transsion/search_pugc/bean/SearchResultItem;", "it", "", RequestParameters.POSITION, "", "z0", "(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V", "q0", "Landroid/view/View;", "x0", "()Landroid/view/View;", "Landroid/view/LayoutInflater;", "inflater", "o0", "(Landroid/view/LayoutInflater;)Lrq/h;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onPause", "", "hidden", "onHiddenChanged", "(Z)V", "startLoading", "hideLoading", "lazyLoadData", "Lcom/transsion/search_pugc/fragment/result/adapter/b;", "a", "Lcom/transsion/search_pugc/fragment/result/adapter/b;", "mainAdapter", "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "p0", "()Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", "viewModel", "", "c", "Ljava/lang/String;", "keyword", "Lcom/transsion/search_pugc/bean/SearchTab;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/search_pugc/bean/SearchTab;", "tabItem", "", "e", "Ljava/util/List;", "items", "Lsj/b;", "f", "Lsj/b;", "exposureHelper", "Lcom/transsion/search_pugc/bean/SecondTab;", "g", "Lcom/transsion/search_pugc/bean/SecondTab;", "curSecondTab", "Lcom/transsion/search_pugc/bean/UGCSearchResultData;", "h", "Lcom/transsion/search_pugc/bean/UGCSearchResultData;", "searchResultData", "Lcom/transsion/baseui/widget/ResourcesRequestView;", "i", "Lcom/transsion/baseui/widget/ResourcesRequestView;", "requestView", "j", "Ljava/lang/Integer;", "requestMovieCount", CampaignEx.JSON_KEY_AD_K, "Z", "isLoadMoreEnd", "Lar/a;", "l", "Lar/a;", "secondTabRef", "Lcom/transsion/search_pugc/g;", "m", "getSearchReporter", "()Lcom/transsion/search_pugc/g;", "searchReporter", "n", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SearchResultTabFragment extends BaseSearchMainFragment<rq.h> {

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.search_pugc.fragment.result.adapter.b mainAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String keyword;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private SearchTab tabItem;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private SecondTab curSecondTab;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private UGCSearchResultData searchResultData;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ResourcesRequestView requestView;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Integer requestMovieCount;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadMoreEnd;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchResultTabFragment.B0(this.f52422a);
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private List items = CollectionsKt.l();

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final ar.a secondTabRef = new ar.a(null, 1, null);

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy searchReporter = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchResultTabFragment.A0(this.f52423a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.search_pugc.fragment.result.SearchResultTabFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchResultTabFragment a(String str, UGCSearchResultData uGCSearchResultData, SearchTab searchTab, String str2, String str3) {
            SearchResultTabFragment searchResultTabFragment = new SearchResultTabFragment();
            Bundle bundle = new Bundle();
            bundle.putString("keyword", str);
            bundle.putParcelable("tabItem", searchTab);
            bundle.putParcelable("searchData", uGCSearchResultData);
            bundle.putString("searchFrom", str2);
            bundle.putString("form_ugc_video_id", str3);
            searchResultTabFragment.setArguments(bundle);
            return searchResultTabFragment;
        }
    }

    public static final class b implements sj.a {
        b() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            com.transsion.search_pugc.fragment.result.adapter.b bVar;
            List<Object> data;
            SearchResultItem searchResultItem;
            List<Object> data2;
            com.transsion.search_pugc.fragment.result.adapter.b bVar2 = SearchResultTabFragment.this.mainAdapter;
            if (i11 >= ((bVar2 == null || (data2 = bVar2.getData()) == null) ? 0 : data2.size()) || (bVar = SearchResultTabFragment.this.mainAdapter) == null || (data = bVar.getData()) == null || (searchResultItem = (SearchResultItem) data.get(i11)) == null) {
                return;
            }
            SearchResultTabFragment.this.getSearchReporter().v(searchResultItem, i11, j11, SearchResultTabFragment.this.keyword, SearchResultTabFragment.this.tabItem, SearchResultTabFragment.this.secondTabRef.a());
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52401a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52401a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52401a;
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
            this.f52401a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.search_pugc.g A0(SearchResultTabFragment searchResultTabFragment) {
        return com.transsion.search_pugc.g.f52478h.a(searchResultTabFragment.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchResultViewModel B0(SearchResultTabFragment searchResultTabFragment) {
        return (SearchResultViewModel) new v0(searchResultTabFragment).a(SearchResultViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.search_pugc.g getSearchReporter() {
        return (com.transsion.search_pugc.g) this.searchReporter.getValue();
    }

    private final SearchResultViewModel p0() {
        return (SearchResultViewModel) this.viewModel.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q0() {
        RecyclerView recyclerView;
        sj.b bVar = new sj.b(0.6f, new b(), false, 4, null);
        bVar.n(2);
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (recyclerView = hVar.f74651b) != null) {
            recyclerView.addOnScrollListener(bVar);
        }
        this.exposureHelper = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(SearchResultTabFragment searchResultTabFragment, PostEntity postEntity) {
        lg.a.C0828a.g(lg.a.f68839a, "Post request succeed " + postEntity + ", " + (postEntity != null ? postEntity.getCount() : null), false, 2, null);
        if (postEntity != null && searchResultTabFragment.requestMovieCount == null) {
            int count = postEntity.getCount();
            if (count == null) {
                count = 0;
            }
            searchResultTabFragment.requestMovieCount = count;
            ResourcesRequestView resourcesRequestView = searchResultTabFragment.requestView;
            if (resourcesRequestView != null) {
                Integer count2 = postEntity.getCount();
                resourcesRequestView.setCount(count2 != null ? count2.intValue() : 0, false);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(SearchResultTabFragment searchResultTabFragment, com.transsion.search_pugc.fragment.result.adapter.c cVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        List<SecondTab> secondTabs;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        UGCSearchResultData uGCSearchResultData = searchResultTabFragment.searchResultData;
        SecondTab secondTab = (uGCSearchResultData == null || (secondTabs = uGCSearchResultData.getSecondTabs()) == null) ? null : secondTabs.get(i11);
        if (Intrinsics.c(searchResultTabFragment.curSecondTab, secondTab)) {
            searchResultTabFragment.curSecondTab = null;
            searchResultTabFragment.secondTabRef.b(null);
            cVar.E1(null);
            searchResultTabFragment.startLoading();
            searchResultTabFragment.p0().q(1);
            SearchResultViewModel searchResultViewModelP0 = searchResultTabFragment.p0();
            String str = searchResultTabFragment.keyword;
            String str2 = str == null ? "" : str;
            SearchTab searchTab = searchResultTabFragment.tabItem;
            searchResultViewModelP0.m(str2, searchTab != null ? searchTab.getTabId() : null, searchResultTabFragment.getSearchReporter().f(), false, null);
        } else {
            searchResultTabFragment.curSecondTab = secondTab;
            searchResultTabFragment.secondTabRef.b(secondTab);
            cVar.E1(secondTab);
            searchResultTabFragment.startLoading();
            searchResultTabFragment.p0().q(1);
            SearchResultViewModel searchResultViewModelP1 = searchResultTabFragment.p0();
            String str3 = searchResultTabFragment.keyword;
            String str4 = str3 == null ? "" : str3;
            SearchTab searchTab2 = searchResultTabFragment.tabItem;
            searchResultViewModelP1.m(str4, searchTab2 != null ? searchTab2.getTabId() : null, searchResultTabFragment.getSearchReporter().f(), false, secondTab);
        }
        sj.b bVar = searchResultTabFragment.exposureHelper;
        if (bVar != null) {
            bVar.g();
        }
        com.transsion.search_pugc.g searchReporter = searchResultTabFragment.getSearchReporter();
        String str5 = searchResultTabFragment.keyword;
        SearchTab searchTab3 = searchResultTabFragment.tabItem;
        UGCSearchResultData uGCSearchResultData2 = searchResultTabFragment.searchResultData;
        searchReporter.z(str5, searchTab3, secondTab, uGCSearchResultData2 != null ? uGCSearchResultData2.getOps() : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(SearchResultTabFragment searchResultTabFragment) {
        SearchResultViewModel searchResultViewModelP0 = searchResultTabFragment.p0();
        String str = searchResultTabFragment.keyword;
        if (str == null) {
            str = "";
        }
        SearchTab searchTab = searchResultTabFragment.tabItem;
        searchResultViewModelP0.m(str, searchTab != null ? searchTab.getTabId() : null, searchResultTabFragment.getSearchReporter().f(), true, searchResultTabFragment.curSecondTab);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(SearchResultTabFragment searchResultTabFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        SearchResultItem searchResultItem;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        com.transsion.search_pugc.fragment.result.adapter.b bVar = searchResultTabFragment.mainAdapter;
        if (bVar == null || (searchResultItem = (SearchResultItem) bVar.getItem(i11)) == null) {
            return;
        }
        searchResultTabFragment.z0(searchResultItem, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(SearchResultTabFragment searchResultTabFragment, UGCSearchResultData uGCSearchResultData) {
        r6.f fVarH0;
        r6.f fVarH1;
        List<Object> data;
        String tabId = uGCSearchResultData != null ? uGCSearchResultData.getTabId() : null;
        SearchTab searchTab = searchResultTabFragment.tabItem;
        if (Intrinsics.c(tabId, searchTab != null ? searchTab.getTabId() : null)) {
            Intrinsics.e(uGCSearchResultData);
            if (uGCSearchResultData.getItems().isEmpty()) {
                com.transsion.search_pugc.fragment.result.adapter.b bVar = searchResultTabFragment.mainAdapter;
                if (bVar != null && (data = bVar.getData()) != null) {
                    data.clear();
                }
                com.transsion.search_pugc.fragment.result.adapter.b bVar2 = searchResultTabFragment.mainAdapter;
                if (bVar2 != null) {
                    bVar2.notifyDataSetChanged();
                }
                com.transsion.search_pugc.fragment.result.adapter.b bVar3 = searchResultTabFragment.mainAdapter;
                if (bVar3 != null) {
                    bVar3.Y0(searchResultTabFragment.x0());
                }
            } else {
                com.transsion.search_pugc.fragment.result.adapter.b bVar4 = searchResultTabFragment.mainAdapter;
                if (bVar4 != null) {
                    bVar4.n1(uGCSearchResultData.getItems());
                }
                UGCPager pager = uGCSearchResultData.getPager();
                if (pager == null || pager.getHasMore()) {
                    com.transsion.search_pugc.fragment.result.adapter.b bVar5 = searchResultTabFragment.mainAdapter;
                    if (bVar5 != null && (fVarH0 = bVar5.h0()) != null) {
                        fVarH0.s();
                    }
                } else {
                    com.transsion.search_pugc.fragment.result.adapter.b bVar6 = searchResultTabFragment.mainAdapter;
                    if (bVar6 != null && (fVarH1 = bVar6.h0()) != null) {
                        r6.f.u(fVarH1, false, 1, null);
                    }
                    searchResultTabFragment.isLoadMoreEnd = true;
                }
            }
            searchResultTabFragment.hideLoading();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(SearchResultTabFragment searchResultTabFragment, UGCSearchResultData uGCSearchResultData) {
        r6.f fVarH0;
        r6.f fVarH1;
        r6.f fVarH2;
        String tabId = uGCSearchResultData != null ? uGCSearchResultData.getTabId() : null;
        SearchTab searchTab = searchResultTabFragment.tabItem;
        if (Intrinsics.c(tabId, searchTab != null ? searchTab.getTabId() : null)) {
            Intrinsics.e(uGCSearchResultData);
            if (uGCSearchResultData.getItems().isEmpty()) {
                com.transsion.search_pugc.fragment.result.adapter.b bVar = searchResultTabFragment.mainAdapter;
                if (bVar != null && (fVarH2 = bVar.h0()) != null) {
                    r6.f.u(fVarH2, false, 1, null);
                }
            } else {
                com.transsion.search_pugc.fragment.result.adapter.b bVar2 = searchResultTabFragment.mainAdapter;
                if (bVar2 != null) {
                    bVar2.q(uGCSearchResultData.getItems());
                }
                UGCPager pager = uGCSearchResultData.getPager();
                if (pager == null || pager.getHasMore()) {
                    com.transsion.search_pugc.fragment.result.adapter.b bVar3 = searchResultTabFragment.mainAdapter;
                    if (bVar3 != null && (fVarH0 = bVar3.h0()) != null) {
                        fVarH0.s();
                    }
                } else {
                    com.transsion.search_pugc.fragment.result.adapter.b bVar4 = searchResultTabFragment.mainAdapter;
                    if (bVar4 != null && (fVarH1 = bVar4.h0()) != null) {
                        r6.f.u(fVarH1, false, 1, null);
                    }
                }
            }
        }
        searchResultTabFragment.hideLoading();
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final View x0() {
        LayoutInflater layoutInflater = getLayoutInflater();
        int i11 = R$layout.view_search_no_network;
        rq.h hVar = (rq.h) getMViewBinding();
        View viewInflate = layoutInflater.inflate(i11, (ViewGroup) (hVar != null ? hVar.f74651b : null), false);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tv_empty_tips);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.iv_tips);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewInflate.findViewById(R$id.tv_retry);
        textView.setText(R$string.base_net_err);
        imageView.setImageResource(R$mipmap.ic_no_network);
        appCompatTextView.setVisibility(0);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.result.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchResultTabFragment.y0(this.f52424a, view);
            }
        });
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(SearchResultTabFragment searchResultTabFragment, View view) {
        searchResultTabFragment.lazyLoadData();
    }

    private final void z0(SearchResultItem it, int position) {
        List<UGCVideo> videos;
        UGCVideo uGCVideo;
        String topicType = it.getTopicType();
        if (topicType != null) {
            switch (topicType.hashCode()) {
                case -1989652851:
                    if (topicType.equals("UGC_VIDEO")) {
                        UGCVideo video = it.getVideo();
                        if (video != null) {
                            com.transsion.search_pugc.constant.a.h(video, false, 1, null);
                        }
                        com.transsion.search_pugc.fragment.result.adapter.b bVar = this.mainAdapter;
                        if (bVar != null) {
                            bVar.d(it, position);
                        }
                        break;
                    }
                    break;
                case 511113132:
                    if (topicType.equals("UGC_COLLECTION")) {
                        UGCCollection collection = it.getCollection();
                        if (collection != null && (videos = collection.getVideos()) != null && (uGCVideo = (UGCVideo) CollectionsKt.k0(videos)) != null) {
                            com.transsion.search_pugc.constant.a.h(uGCVideo, false, 1, null);
                        }
                        com.transsion.search_pugc.fragment.result.adapter.b bVar2 = this.mainAdapter;
                        if (bVar2 != null) {
                            bVar2.d(it, position);
                        }
                        break;
                    }
                    break;
                case 932115657:
                    topicType.equals("HASH_TAG");
                    break;
                case 2033770325:
                    if (topicType.equals("VERTICAL_RANK")) {
                        UGCVerticalRank verticalRank = it.getVerticalRank();
                        if (verticalRank != null) {
                            UGCSearchResultData uGCSearchResultData = this.searchResultData;
                            com.transsion.search_pugc.constant.a.f(verticalRank, uGCSearchResultData != null ? uGCSearchResultData.getOps() : null);
                        }
                        com.transsion.search_pugc.fragment.result.adapter.b bVar3 = this.mainAdapter;
                        if (bVar3 != null) {
                            bVar3.d(it, position);
                        }
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        RecyclerView recyclerView;
        ProgressBar progressBar;
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (progressBar = hVar.f74653d) != null) {
            progressBar.setVisibility(4);
        }
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 == null || (recyclerView = hVar2.f74651b) == null) {
            return;
        }
        recyclerView.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        List<SearchResultItem> listL;
        RecyclerView recyclerView;
        r6.f fVarH0;
        com.transsion.search_pugc.fragment.result.adapter.b bVar;
        rq.h hVar;
        NoInterceptRecyclerView noInterceptRecyclerView;
        List<SecondTab> secondTabs;
        UGCSearchResultData uGCSearchResultDataM0;
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        this.keyword = arguments != null ? arguments.getString("keyword") : null;
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("form_ugc_video_id") : null;
        Bundle arguments3 = getArguments();
        this.tabItem = arguments3 != null ? (SearchTab) arguments3.getParcelable("tabItem") : null;
        Bundle arguments4 = getArguments();
        UGCSearchResultData uGCSearchResultData = arguments4 != null ? (UGCSearchResultData) arguments4.getParcelable("searchData") : null;
        this.searchResultData = uGCSearchResultData;
        if (uGCSearchResultData == null) {
            Fragment parentFragment = getParentFragment();
            SearchResultFragment searchResultFragment = parentFragment instanceof SearchResultFragment ? (SearchResultFragment) parentFragment : null;
            if (searchResultFragment != null) {
                SearchTab searchTab = this.tabItem;
                uGCSearchResultDataM0 = searchResultFragment.m0(searchTab != null ? searchTab.getTabId() : null);
            } else {
                uGCSearchResultDataM0 = null;
            }
            this.searchResultData = uGCSearchResultDataM0;
        }
        UGCSearchResultData uGCSearchResultData2 = this.searchResultData;
        if (uGCSearchResultData2 == null || (listL = uGCSearchResultData2.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        this.items = listL;
        p0().p(string);
        UGCSearchResultData uGCSearchResultData3 = this.searchResultData;
        List<SecondTab> secondTabs2 = uGCSearchResultData3 != null ? uGCSearchResultData3.getSecondTabs() : null;
        if (secondTabs2 != null && !secondTabs2.isEmpty() && (hVar = (rq.h) getMViewBinding()) != null && (noInterceptRecyclerView = hVar.f74652c) != null) {
            noInterceptRecyclerView.setLayoutManager(new LinearLayoutManager(noInterceptRecyclerView.getContext(), 0, false));
            final com.transsion.search_pugc.fragment.result.adapter.c cVar = new com.transsion.search_pugc.fragment.result.adapter.c(this.curSecondTab);
            UGCSearchResultData uGCSearchResultData4 = this.searchResultData;
            cVar.n1((uGCSearchResultData4 == null || (secondTabs = uGCSearchResultData4.getSecondTabs()) == null) ? new ArrayList<>() : secondTabs);
            noInterceptRecyclerView.setAdapter(cVar);
            cVar.w1(new p6.d() { // from class: com.transsion.search_pugc.fragment.result.f
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    SearchResultTabFragment.s0(this.f52415a, cVar, baseQuickAdapter, view2, i11);
                }
            });
        }
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 != null && (recyclerView = hVar2.f74651b) != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            UGCSearchResultData uGCSearchResultData5 = this.searchResultData;
            List<SecondTab> secondTabs3 = uGCSearchResultData5 != null ? uGCSearchResultData5.getSecondTabs() : null;
            if (secondTabs3 == null || secondTabs3.isEmpty()) {
                recyclerView.addItemDecoration(new ig.f(0.0f, 1.0f, 6.0f, 1, null));
            }
            com.transsion.search_pugc.fragment.result.adapter.b bVar2 = new com.transsion.search_pugc.fragment.result.adapter.b(null, this.keyword, this.tabItem, this.secondTabRef);
            this.mainAdapter = bVar2;
            recyclerView.setAdapter(bVar2);
            if (!this.items.isEmpty() && (bVar = this.mainAdapter) != null) {
                bVar.n1(this.items);
            }
            com.transsion.search_pugc.fragment.result.adapter.b bVar3 = this.mainAdapter;
            if (bVar3 != null && (fVarH0 = bVar3.h0()) != null) {
                fVarH0.D(new p6.f() { // from class: com.transsion.search_pugc.fragment.result.g
                    @Override // p6.f
                    public final void a() {
                        SearchResultTabFragment.t0(this.f52417a);
                    }
                });
            }
        }
        com.transsion.search_pugc.fragment.result.adapter.b bVar4 = this.mainAdapter;
        if (bVar4 != null) {
            bVar4.w1(new p6.d() { // from class: com.transsion.search_pugc.fragment.result.h
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    SearchResultTabFragment.u0(this.f52418a, baseQuickAdapter, view2, i11);
                }
            });
        }
        p0().l().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.search_pugc.fragment.result.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultTabFragment.v0(this.f52419a, (UGCSearchResultData) obj);
            }
        }));
        p0().k().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.search_pugc.fragment.result.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultTabFragment.w0(this.f52420a, (UGCSearchResultData) obj);
            }
        }));
        p0().h().j(this, new c(new Function1() { // from class: com.transsion.search_pugc.fragment.result.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultTabFragment.r0(this.f52421a, (PostEntity) obj);
            }
        }));
        q0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        r6.f fVarH0;
        UGCPager pager;
        r6.f fVarH1;
        NoInterceptRecyclerView noInterceptRecyclerView;
        int size = this.items.size();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("lazyLoadData size: ");
        sb2.append(size);
        UGCSearchResultData uGCSearchResultData = this.searchResultData;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("lazyLoadData searchResultData: ");
        sb3.append(uGCSearchResultData);
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (noInterceptRecyclerView = hVar.f74652c) != null) {
            UGCSearchResultData uGCSearchResultData2 = this.searchResultData;
            List<SecondTab> secondTabs = uGCSearchResultData2 != null ? uGCSearchResultData2.getSecondTabs() : null;
            noInterceptRecyclerView.setVisibility((secondTabs == null || secondTabs.isEmpty()) ? 8 : 0);
        }
        if (this.items.isEmpty()) {
            startLoading();
            SearchResultViewModel searchResultViewModelP0 = p0();
            String str = this.keyword;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            SearchTab searchTab = this.tabItem;
            SearchResultViewModel.n(searchResultViewModelP0, str2, searchTab != null ? searchTab.getTabId() : null, getSearchReporter().f(), false, this.curSecondTab, 8, null);
            return;
        }
        com.transsion.search_pugc.fragment.result.adapter.b bVar = this.mainAdapter;
        if (bVar != null) {
            bVar.n1(this.items);
        }
        UGCSearchResultData uGCSearchResultData3 = this.searchResultData;
        if (uGCSearchResultData3 == null || (pager = uGCSearchResultData3.getPager()) == null || pager.getHasMore()) {
            com.transsion.search_pugc.fragment.result.adapter.b bVar2 = this.mainAdapter;
            if (bVar2 != null && (fVarH0 = bVar2.h0()) != null) {
                fVarH0.s();
            }
            p0().q(2);
            return;
        }
        com.transsion.search_pugc.fragment.result.adapter.b bVar3 = this.mainAdapter;
        if (bVar3 == null || (fVarH1 = bVar3.h0()) == null) {
            return;
        }
        fVarH1.t(true);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public rq.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.h hVarC = rq.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    @Override // com.transsion.search_pugc.fragment.BaseSearchMainFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        sj.b bVar;
        super.onHiddenChanged(hidden);
        if (!hidden || (bVar = this.exposureHelper) == null) {
            return;
        }
        bVar.f();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        com.transsion.search_pugc.fragment.result.adapter.b bVar;
        r6.f fVarH0;
        super.onResume();
        if (!this.isLoadMoreEnd || (bVar = this.mainAdapter) == null || (fVarH0 = bVar.h0()) == null) {
            return;
        }
        r6.f.u(fVarH0, false, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        NoInterceptRecyclerView noInterceptRecyclerView;
        RecyclerView recyclerView;
        ProgressBar progressBar;
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (progressBar = hVar.f74653d) != null) {
            progressBar.setVisibility(0);
        }
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 != null && (recyclerView = hVar2.f74651b) != null) {
            recyclerView.setVisibility(4);
        }
        rq.h hVar3 = (rq.h) getMViewBinding();
        if (hVar3 == null || (noInterceptRecyclerView = hVar3.f74652c) == null) {
            return;
        }
        noInterceptRecyclerView.setEnabled(false);
    }
}
