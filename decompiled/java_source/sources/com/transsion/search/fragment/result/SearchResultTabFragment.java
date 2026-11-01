package com.transsion.search.fragment.result;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.DrawableCenterTextView;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.model.PostEntity;
import com.transsion.pushapi.NoticePermissionFrom;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.HotRankItem;
import com.transsion.search.bean.Pager;
import com.transsion.search.bean.SearchResultEntity;
import com.transsion.search.bean.TabItem;
import com.transsion.search.bean.VerticalRank;
import com.transsion.search.fragment.BaseSearchMainFragment;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsion.search_pugc.widget.NoInterceptRecyclerView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 W2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\tH\u0016¢\u0006\u0004\b\"\u0010\u0004J\u0017\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b$\u0010\u0012J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\tH\u0016¢\u0006\u0004\b&\u0010\u0004R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00107R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0018\u0010H\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u00107R\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010V\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010U¨\u0006X"}, d2 = {"Lcom/transsion/search/fragment/result/SearchResultTabFragment;", "Lcom/transsion/search/fragment/BaseSearchMainFragment;", "Lrq/h;", "<init>", "()V", "Lcom/transsion/search/fragment/result/ResultWrapData;", "it", "", RequestParameters.POSITION, "", "G0", "(Lcom/transsion/search/fragment/result/ResultWrapData;I)V", "u0", "t0", "y0", "", "showTab", "H0", "(Z)V", "Landroid/view/View;", "D0", "()Landroid/view/View;", "Landroid/view/LayoutInflater;", "inflater", "r0", "(Landroid/view/LayoutInflater;)Lrq/h;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onPause", "hidden", "onHiddenChanged", "hideLoading", "lazyLoadData", "Lcom/transsion/search/fragment/result/adapter/a;", "a", "Lcom/transsion/search/fragment/result/adapter/a;", "mainAdapter", "Lcom/transsion/search/fragment/result/SearchResultViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "s0", "()Lcom/transsion/search/fragment/result/SearchResultViewModel;", "viewModel", "Lcom/transsion/search/viewmodel/SearchViewModel;", "c", "Lcom/transsion/search/viewmodel/SearchViewModel;", "searchViewModel", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "keyword", "Lcom/transsion/search/bean/TabItem;", "e", "Lcom/transsion/search/bean/TabItem;", "tabItem", "f", "searchFrom", "Lsj/b;", "g", "Lsj/b;", "exposureHelper", "", "h", "J", "lastScrollTime", "i", "currentTabId", "Lcom/transsion/search/bean/SearchResultEntity;", "j", "Lcom/transsion/search/bean/SearchResultEntity;", "extraResultData", "Lcom/transsion/baseui/widget/ResourcesRequestView;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/baseui/widget/ResourcesRequestView;", "requestView", "l", "Ljava/lang/Integer;", "requestMovieCount", "m", "Z", "isLoadMoreEnd", "n", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SearchResultTabFragment extends BaseSearchMainFragment<rq.h> {

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.search.fragment.result.adapter.a mainAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = LazyKt.b(new Function0() { // from class: com.transsion.search.fragment.result.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchResultTabFragment.I0(this.f52130a);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private SearchViewModel searchViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String keyword;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private TabItem tabItem;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String searchFrom;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private sj.b exposureHelper;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private long lastScrollTime;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String currentTabId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private SearchResultEntity extraResultData;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private ResourcesRequestView requestView;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Integer requestMovieCount;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadMoreEnd;

    /* JADX INFO: renamed from: com.transsion.search.fragment.result.SearchResultTabFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchResultTabFragment a(String str, TabItem tabItem, SearchResultEntity searchResultEntity, String str2) {
            Bundle bundle = new Bundle();
            bundle.putString("tabKeyword", str);
            bundle.putParcelable("tabItem", tabItem);
            if (searchResultEntity != null) {
                bundle.putParcelable("tabResult", searchResultEntity);
            }
            bundle.putString("searchFrom", str2);
            SearchResultTabFragment searchResultTabFragment = new SearchResultTabFragment();
            searchResultTabFragment.setArguments(bundle);
            return searchResultTabFragment;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52107a;

        static {
            int[] iArr = new int[ResultType.values().length];
            try {
                iArr[ResultType.SUBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ResultType.STAFF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ResultType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ResultType.VERTICAL_RANK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ResultType.MORE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f52107a = iArr;
        }
    }

    public static final class c implements sj.a {

        public /* synthetic */ class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f52109a;

            static {
                int[] iArr = new int[ResultType.values().length];
                try {
                    iArr[ResultType.SUBJECT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ResultType.STAFF.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ResultType.GROUP.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ResultType.VERTICAL_RANK.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                f52109a = iArr;
            }
        }

        c() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            String tabId;
            String strS;
            String strS2;
            String strS3;
            String strS4;
            List<Object> data;
            List<Object> data2;
            com.transsion.search.fragment.result.adapter.a aVar = SearchResultTabFragment.this.mainAdapter;
            if (i11 >= ((aVar == null || (data2 = aVar.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            com.transsion.search.fragment.result.adapter.a aVar2 = SearchResultTabFragment.this.mainAdapter;
            if (aVar2 == null || (tabId = aVar2.getTabId()) == null) {
                tabId = SearchResultTabFragment.this.currentTabId;
            }
            String str = tabId;
            com.transsion.search.fragment.result.adapter.a aVar3 = SearchResultTabFragment.this.mainAdapter;
            ResultWrapData resultWrapData = (aVar3 == null || (data = aVar3.getData()) == null) ? null : (ResultWrapData) data.get(i11);
            ResultType type = resultWrapData != null ? resultWrapData.getType() : null;
            int i12 = type == null ? -1 : a.f52109a[type.ordinal()];
            if (i12 == 1) {
                com.transsion.search.widget.d.a aVar4 = com.transsion.search.widget.d.f52270a;
                Subject subject = resultWrapData.getSubject();
                String str2 = SearchResultTabFragment.this.keyword;
                String str3 = SearchResultTabFragment.this.searchFrom;
                SearchViewModel searchViewModel = SearchResultTabFragment.this.searchViewModel;
                aVar4.t(subject, i11, j11, str2, str3, str, (searchViewModel == null || (strS = searchViewModel.s()) == null) ? "mb_sug" : strS);
                return;
            }
            if (i12 == 2) {
                com.transsion.search.widget.d.a aVar5 = com.transsion.search.widget.d.f52270a;
                Staff staff = resultWrapData.getStaff();
                String str4 = SearchResultTabFragment.this.keyword;
                String str5 = SearchResultTabFragment.this.searchFrom;
                SearchViewModel searchViewModel2 = SearchResultTabFragment.this.searchViewModel;
                aVar5.r(staff, i11, j11, str4, str5, str, (searchViewModel2 == null || (strS2 = searchViewModel2.s()) == null) ? "mb_sug" : strS2);
                return;
            }
            if (i12 == 3) {
                com.transsion.search.widget.d.a aVar6 = com.transsion.search.widget.d.f52270a;
                Group groups = resultWrapData.getGroups();
                String str6 = SearchResultTabFragment.this.keyword;
                String str7 = SearchResultTabFragment.this.searchFrom;
                SearchViewModel searchViewModel3 = SearchResultTabFragment.this.searchViewModel;
                aVar6.a(groups, i11, j11, str6, str7, str, (searchViewModel3 == null || (strS3 = searchViewModel3.s()) == null) ? "mb_sug" : strS3);
                return;
            }
            if (i12 != 4) {
                return;
            }
            com.transsion.search.widget.d.a aVar7 = com.transsion.search.widget.d.f52270a;
            VerticalRank verticalRank = resultWrapData.getVerticalRank();
            String str8 = SearchResultTabFragment.this.keyword;
            String str9 = SearchResultTabFragment.this.searchFrom;
            SearchViewModel searchViewModel4 = SearchResultTabFragment.this.searchViewModel;
            aVar7.j(verticalRank, i11, j11, str8, str9, str, (searchViewModel4 == null || (strS4 = searchViewModel4.s()) == null) ? "mb_sug" : strS4);
        }
    }

    public static final class d extends RecyclerView.r {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            String strS;
            RecyclerView recyclerView2;
            Intrinsics.h(recyclerView, "recyclerView");
            if (i11 == 0) {
                SearchResultTabFragment.this.lastScrollTime = System.currentTimeMillis();
                return;
            }
            if (i11 != 1) {
                return;
            }
            rq.h hVar = (rq.h) SearchResultTabFragment.this.getMViewBinding();
            RecyclerView.m layoutManager = (hVar == null || (recyclerView2 = hVar.f74651b) == null) ? null : recyclerView2.getLayoutManager();
            int iFindLastVisibleItemPosition = layoutManager instanceof LinearLayoutManager ? ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition() : -1;
            com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f52270a;
            String str = SearchResultTabFragment.this.currentTabId;
            String str2 = SearchResultTabFragment.this.keyword;
            long jCurrentTimeMillis = System.currentTimeMillis() - SearchResultTabFragment.this.lastScrollTime;
            SearchViewModel searchViewModel = SearchResultTabFragment.this.searchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar.p(str, str2, jCurrentTimeMillis, iFindLastVisibleItemPosition, strS);
        }
    }

    public static final class e extends GridLayoutManager.c {
        e() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            ResultWrapData resultWrapData;
            com.transsion.search.fragment.result.adapter.a aVar = SearchResultTabFragment.this.mainAdapter;
            ResultType type = (aVar == null || (resultWrapData = (ResultWrapData) aVar.getItem(i11)) == null) ? null : resultWrapData.getType();
            return (type == ResultType.MORE || type == ResultType.TITLE) ? 2 : 1;
        }
    }

    static final class f implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52112a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52112a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52112a;
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
            this.f52112a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(SearchResultTabFragment searchResultTabFragment, com.transsion.search.fragment.result.adapter.b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        String tabId;
        String strS;
        List<TabItem> subs;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        TabItem tabItem = searchResultTabFragment.tabItem;
        TabItem tabItem2 = (tabItem == null || (subs = tabItem.getSubs()) == null) ? null : subs.get(i11);
        if (Intrinsics.c(searchResultTabFragment.currentTabId, tabItem2 != null ? tabItem2.getTabId() : null)) {
            return;
        }
        searchResultTabFragment.currentTabId = tabItem2 != null ? tabItem2.getTabId() : null;
        if (tabItem2 == null || (tabId = tabItem2.getTabId()) == null) {
            tabId = "";
        }
        bVar.C1(tabId);
        searchResultTabFragment.H0(true);
        searchResultTabFragment.s0().r(1);
        SearchResultViewModel searchResultViewModelS0 = searchResultTabFragment.s0();
        String str = searchResultTabFragment.keyword;
        SearchResultViewModel.p(searchResultViewModelS0, str == null ? "" : str, searchResultTabFragment.currentTabId, false, 4, null);
        sj.b bVar2 = searchResultTabFragment.exposureHelper;
        if (bVar2 != null) {
            bVar2.g();
        }
        com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f52270a;
        String str2 = searchResultTabFragment.keyword;
        String str3 = searchResultTabFragment.currentTabId;
        SearchViewModel searchViewModel = searchResultTabFragment.searchViewModel;
        if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
            strS = "mb_sug";
        }
        aVar.x(str2, str3, strS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(SearchResultTabFragment searchResultTabFragment) {
        SearchResultViewModel searchResultViewModelS0 = searchResultTabFragment.s0();
        String str = searchResultTabFragment.keyword;
        if (str == null) {
            str = "";
        }
        String str2 = searchResultTabFragment.currentTabId;
        searchResultViewModelS0.o(str, str2 != null ? str2 : "", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(SearchResultTabFragment searchResultTabFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        ResultWrapData resultWrapData;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        com.transsion.search.fragment.result.adapter.a aVar = searchResultTabFragment.mainAdapter;
        if (aVar == null || (resultWrapData = (ResultWrapData) aVar.getItem(i11)) == null) {
            return;
        }
        searchResultTabFragment.G0(resultWrapData, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final View D0() {
        DrawableCenterTextView drawableCenterTextView;
        if (!nh.m.f70474a.e()) {
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
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.result.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchResultTabFragment.F0(this.f52138a, view);
                }
            });
            Intrinsics.e(viewInflate);
            return viewInflate;
        }
        LayoutInflater layoutInflater2 = getLayoutInflater();
        int i12 = R$layout.view_search_empty;
        rq.h hVar2 = (rq.h) getMViewBinding();
        View viewInflate2 = layoutInflater2.inflate(i12, (ViewGroup) (hVar2 != null ? hVar2.f74651b : null), false);
        final ResourcesRequestView resourcesRequestView = (ResourcesRequestView) viewInflate2.findViewById(R$id.resources_request);
        this.requestView = resourcesRequestView;
        final String str = this.keyword;
        if (str == null) {
            str = "";
        }
        if (str.length() > 10) {
            String strSubstring = str.substring(0, 10);
            Intrinsics.g(strSubstring, "substring(...)");
            str = strSubstring + "...";
        }
        String string = getString(com.transsion.search.R$string.search_value_no_result, this.keyword);
        Intrinsics.g(string, "getString(...)");
        resourcesRequestView.set(string);
        resourcesRequestView.setGray(true);
        s0().m(str, true);
        this.requestMovieCount = null;
        bk.h mViewBinding = resourcesRequestView.getMViewBinding();
        if (mViewBinding != null && (drawableCenterTextView = mViewBinding.f16615e) != null) {
            drawableCenterTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search.fragment.result.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchResultTabFragment.E0(this.f52135a, str, resourcesRequestView, view);
                }
            });
        }
        Intrinsics.e(viewInflate2);
        return viewInflate2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(SearchResultTabFragment searchResultTabFragment, String str, ResourcesRequestView resourcesRequestView, View view) {
        tp.e.f76335a.e(searchResultTabFragment, NoticePermissionFrom.DETAIL_NO_RES);
        SearchResultViewModel.n(searchResultTabFragment.s0(), str, false, 2, null);
        Integer num = searchResultTabFragment.requestMovieCount;
        if (num != null) {
            Intrinsics.e(num);
            Integer numValueOf = Integer.valueOf(num.intValue() + 1);
            searchResultTabFragment.requestMovieCount = numValueOf;
            Intrinsics.e(numValueOf);
            ResourcesRequestView.setCount$default(resourcesRequestView, numValueOf.intValue(), false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(SearchResultTabFragment searchResultTabFragment, View view) {
        searchResultTabFragment.lazyLoadData();
    }

    private final void G0(ResultWrapData it, int position) {
        String strS;
        String strS2;
        String strS3;
        String strS4;
        String deeplink;
        int i11 = b.f52107a[it.getType().ordinal()];
        if (i11 == 1) {
            com.transsion.search.f.c(it.getSubject(), "search_result");
            com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f52270a;
            Subject subject = it.getSubject();
            String str = this.keyword;
            String str2 = this.searchFrom;
            String str3 = this.currentTabId;
            SearchViewModel searchViewModel = this.searchViewModel;
            aVar.u(subject, position, str, str2, str3, (searchViewModel == null || (strS = searchViewModel.s()) == null) ? "mb_sug" : strS);
            return;
        }
        if (i11 == 2) {
            Navigator.x(TheRouter.c("/movie/staff").J("staff", it.getStaff()), requireContext(), null, 2, null);
            com.transsion.search.widget.d.a aVar2 = com.transsion.search.widget.d.f52270a;
            Staff staff = it.getStaff();
            String str4 = this.keyword;
            String str5 = this.searchFrom;
            String str6 = this.currentTabId;
            SearchViewModel searchViewModel2 = this.searchViewModel;
            aVar2.s(staff, position, str4, str5, str6, (searchViewModel2 == null || (strS2 = searchViewModel2.s()) == null) ? "mb_sug" : strS2);
            return;
        }
        if (i11 == 3) {
            Navigator navigatorC = TheRouter.c("/room/detail");
            Group groups = it.getGroups();
            Navigator.x(navigatorC.K("id", groups != null ? groups.getGroupId() : null), requireContext(), null, 2, null);
            com.transsion.search.widget.d.a aVar3 = com.transsion.search.widget.d.f52270a;
            Group groups2 = it.getGroups();
            String str7 = this.keyword;
            String str8 = this.searchFrom;
            String str9 = this.currentTabId;
            SearchViewModel searchViewModel3 = this.searchViewModel;
            aVar3.b(groups2, position, str7, str8, str9, (searchViewModel3 == null || (strS3 = searchViewModel3.s()) == null) ? "mb_sug" : strS3);
            return;
        }
        if (i11 != 4) {
            if (i11 == 5 && (getParentFragment() instanceof SearchResultFragment)) {
                Fragment parentFragment = getParentFragment();
                Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.search.fragment.result.SearchResultFragment");
                SearchResultFragment searchResultFragment = (SearchResultFragment) parentFragment;
                String moreTabId = it.getMoreTabId();
                if (moreTabId == null) {
                    moreTabId = "";
                }
                searchResultFragment.r0(moreTabId);
                return;
            }
            return;
        }
        VerticalRank verticalRank = it.getVerticalRank();
        if (verticalRank != null && (deeplink = verticalRank.getDeeplink()) != null) {
            ak.k.h(deeplink, null, 1, null);
        }
        com.transsion.search.widget.d.a aVar4 = com.transsion.search.widget.d.f52270a;
        VerticalRank verticalRank2 = it.getVerticalRank();
        String str10 = this.keyword;
        String str11 = this.searchFrom;
        String str12 = this.currentTabId;
        SearchViewModel searchViewModel4 = this.searchViewModel;
        aVar4.k(verticalRank2, position, str10, str11, str12, (searchViewModel4 == null || (strS4 = searchViewModel4.s()) == null) ? "mb_sug" : strS4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void H0(boolean showTab) {
        NoInterceptRecyclerView noInterceptRecyclerView;
        RecyclerView recyclerView;
        rq.h hVar;
        NoInterceptRecyclerView noInterceptRecyclerView2;
        ProgressBar progressBar;
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 != null && (progressBar = hVar2.f74653d) != null) {
            progressBar.setVisibility(0);
        }
        if (!showTab && (hVar = (rq.h) getMViewBinding()) != null && (noInterceptRecyclerView2 = hVar.f74652c) != null) {
            noInterceptRecyclerView2.setVisibility(8);
        }
        rq.h hVar3 = (rq.h) getMViewBinding();
        if (hVar3 != null && (recyclerView = hVar3.f74651b) != null) {
            recyclerView.setVisibility(4);
        }
        rq.h hVar4 = (rq.h) getMViewBinding();
        if (hVar4 == null || (noInterceptRecyclerView = hVar4.f74652c) == null) {
            return;
        }
        noInterceptRecyclerView.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchResultViewModel I0(SearchResultTabFragment searchResultTabFragment) {
        return (SearchResultViewModel) new v0(searchResultTabFragment).a(SearchResultViewModel.class);
    }

    private final SearchResultViewModel s0() {
        return (SearchResultViewModel) this.viewModel.getValue();
    }

    private final void t0() {
        List<TabItem> subs;
        List<TabItem> subs2;
        TabItem tabItem;
        Bundle arguments = getArguments();
        String tabId = null;
        this.keyword = arguments != null ? arguments.getString("tabKeyword") : null;
        Bundle arguments2 = getArguments();
        this.tabItem = arguments2 != null ? (TabItem) arguments2.getParcelable("tabItem") : null;
        Bundle arguments3 = getArguments();
        this.extraResultData = arguments3 != null ? (SearchResultEntity) arguments3.getParcelable("tabResult") : null;
        Bundle arguments4 = getArguments();
        this.searchFrom = arguments4 != null ? arguments4.getString("searchFrom") : null;
        TabItem tabItem2 = this.tabItem;
        if (tabItem2 == null || (subs = tabItem2.getSubs()) == null || !(!subs.isEmpty())) {
            TabItem tabItem3 = this.tabItem;
            if (tabItem3 != null) {
                tabId = tabItem3.getTabId();
            }
        } else {
            TabItem tabItem4 = this.tabItem;
            if (tabItem4 != null && (subs2 = tabItem4.getSubs()) != null && (tabItem = subs2.get(0)) != null) {
                tabId = tabItem.getTabId();
            }
        }
        this.currentTabId = tabId;
    }

    private final void u0() {
        s0().k().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.search.fragment.result.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultTabFragment.x0(this.f52132a, (SearchResultEntity) obj);
            }
        }));
        s0().j().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.search.fragment.result.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultTabFragment.v0(this.f52133a, (SearchResultEntity) obj);
            }
        }));
        s0().i().j(this, new f(new Function1() { // from class: com.transsion.search.fragment.result.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultTabFragment.w0(this.f52134a, (PostEntity) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(SearchResultTabFragment searchResultTabFragment, SearchResultEntity searchResultEntity) {
        r6.f fVarH0;
        List<ResultWrapData> convertData;
        r6.f fVarH1;
        r6.f fVarH2;
        if (Intrinsics.c(searchResultEntity != null ? searchResultEntity.getTabId() : null, searchResultTabFragment.currentTabId)) {
            if ((searchResultEntity != null ? searchResultEntity.getResults() : null) == null) {
                com.transsion.search.fragment.result.adapter.a aVar = searchResultTabFragment.mainAdapter;
                if (aVar != null && (fVarH2 = aVar.h0()) != null) {
                    fVarH2.v();
                }
            } else {
                com.transsion.search.fragment.result.adapter.a aVar2 = searchResultTabFragment.mainAdapter;
                if (aVar2 != null) {
                    List<ResultWrapData> convertData2 = searchResultEntity.getConvertData();
                    aVar2.q(convertData2 != null ? convertData2 : new ArrayList<>());
                }
                if (!searchResultEntity.getPager().getHasMore() || (convertData = searchResultEntity.getConvertData()) == null || convertData.isEmpty()) {
                    com.transsion.search.fragment.result.adapter.a aVar3 = searchResultTabFragment.mainAdapter;
                    if (aVar3 != null && (fVarH0 = aVar3.h0()) != null) {
                        r6.f.u(fVarH0, false, 1, null);
                    }
                } else {
                    com.transsion.search.fragment.result.adapter.a aVar4 = searchResultTabFragment.mainAdapter;
                    if (aVar4 != null && (fVarH1 = aVar4.h0()) != null) {
                        fVarH1.s();
                    }
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(SearchResultTabFragment searchResultTabFragment, PostEntity postEntity) {
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
    /* JADX WARN: Code duplicated, block: B:41:0x0066  */
    public static final Unit x0(SearchResultTabFragment searchResultTabFragment, SearchResultEntity searchResultEntity) {
        r6.f fVarH0;
        List<ResultWrapData> convertData;
        com.transsion.search.fragment.result.adapter.a aVar;
        r6.f fVarH1;
        Pager pager;
        List<ResultWrapData> convertData2;
        com.transsion.search.fragment.result.adapter.a aVar2 = searchResultTabFragment.mainAdapter;
        if (aVar2 != null) {
            aVar2.n1((searchResultEntity == null || (convertData2 = searchResultEntity.getConvertData()) == null) ? new ArrayList<>() : convertData2);
        }
        com.transsion.search.fragment.result.adapter.a aVar3 = searchResultTabFragment.mainAdapter;
        if (aVar3 != null) {
            String str = searchResultTabFragment.currentTabId;
            if (str == null) {
                str = "";
            }
            aVar3.S1(str);
        }
        List<ResultWrapData> convertData3 = searchResultEntity != null ? searchResultEntity.getConvertData() : null;
        if (convertData3 == null || convertData3.isEmpty()) {
            searchResultTabFragment.requestMovieCount = null;
            com.transsion.search.fragment.result.adapter.a aVar4 = searchResultTabFragment.mainAdapter;
            if (aVar4 != null) {
                aVar4.Y0(searchResultTabFragment.D0());
            }
        }
        if (searchResultEntity == null || (pager = searchResultEntity.getPager()) == null || pager.getHasMore()) {
            if (((searchResultEntity == null || (convertData = searchResultEntity.getConvertData()) == null) ? 0 : convertData.size()) < 10) {
                aVar = searchResultTabFragment.mainAdapter;
                if (aVar != null && (fVarH1 = aVar.h0()) != null) {
                    r6.f.u(fVarH1, false, 1, null);
                }
                searchResultTabFragment.isLoadMoreEnd = true;
            } else {
                com.transsion.search.fragment.result.adapter.a aVar5 = searchResultTabFragment.mainAdapter;
                if (aVar5 != null && (fVarH0 = aVar5.h0()) != null) {
                    fVarH0.s();
                }
            }
        } else {
            aVar = searchResultTabFragment.mainAdapter;
            if (aVar != null) {
                r6.f.u(fVarH1, false, 1, null);
            }
            searchResultTabFragment.isLoadMoreEnd = true;
        }
        searchResultTabFragment.hideLoading();
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void y0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        sj.b bVar = new sj.b(0.6f, new c(), false, 4, null);
        bVar.n(2);
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (recyclerView3 = hVar.f74651b) != null) {
            recyclerView3.addOnScrollListener(bVar);
        }
        this.exposureHelper = bVar;
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 != null && (recyclerView2 = hVar2.f74651b) != null) {
            recyclerView2.addOnScrollListener(new d());
        }
        rq.h hVar3 = (rq.h) getMViewBinding();
        if (hVar3 == null || (recyclerView = hVar3.f74651b) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.search.fragment.result.j
            @Override // java.lang.Runnable
            public final void run() {
                SearchResultTabFragment.z0(this.f52131a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(SearchResultTabFragment searchResultTabFragment) {
        if (searchResultTabFragment.lastScrollTime == 0) {
            searchResultTabFragment.lastScrollTime = System.currentTimeMillis();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        NoInterceptRecyclerView noInterceptRecyclerView;
        RecyclerView recyclerView;
        NoInterceptRecyclerView noInterceptRecyclerView2;
        ProgressBar progressBar;
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (progressBar = hVar.f74653d) != null) {
            progressBar.setVisibility(4);
        }
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 != null && (noInterceptRecyclerView2 = hVar2.f74652c) != null) {
            noInterceptRecyclerView2.setVisibility(0);
        }
        rq.h hVar3 = (rq.h) getMViewBinding();
        if (hVar3 != null && (recyclerView = hVar3.f74651b) != null) {
            recyclerView.setVisibility(0);
        }
        rq.h hVar4 = (rq.h) getMViewBinding();
        if (hVar4 == null || (noInterceptRecyclerView = hVar4.f74652c) == null) {
            return;
        }
        noInterceptRecyclerView.setEnabled(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        String strS;
        r6.f fVarH0;
        NoInterceptRecyclerView noInterceptRecyclerView;
        List<TabItem> subs;
        Intrinsics.h(view, "view");
        t0();
        rq.h hVar = (rq.h) getMViewBinding();
        if (hVar != null && (noInterceptRecyclerView = hVar.f74652c) != null) {
            noInterceptRecyclerView.setLayoutManager(new LinearLayoutManager(noInterceptRecyclerView.getContext(), 0, false));
            final com.transsion.search.fragment.result.adapter.b bVar = new com.transsion.search.fragment.result.adapter.b(this.currentTabId);
            TabItem tabItem = this.tabItem;
            bVar.n1((tabItem == null || (subs = tabItem.getSubs()) == null) ? new ArrayList<>() : subs);
            noInterceptRecyclerView.setAdapter(bVar);
            bVar.w1(new p6.d() { // from class: com.transsion.search.fragment.result.f
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    SearchResultTabFragment.A0(this.f52126a, bVar, baseQuickAdapter, view2, i11);
                }
            });
        }
        rq.h hVar2 = (rq.h) getMViewBinding();
        if (hVar2 != null && (recyclerView = hVar2.f74651b) != null) {
            Resources resources = recyclerView.getContext().getResources();
            Intrinsics.g(resources, "getResources(...)");
            if (com.transsion.search.f.e(resources)) {
                NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(recyclerView.getContext(), 2);
                npaGridLayoutManager.d0(new e());
                recyclerView.setLayoutManager(npaGridLayoutManager);
                recyclerView.addItemDecoration(new ig.b(0, a0.a(12.0f), 0, 0));
            } else {
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
                if (!Intrinsics.c(this.currentTabId, "All") && !Intrinsics.c(this.currentTabId, HotRankItem.CATE_MOVIE) && recyclerView.getItemDecorationCount() == 0) {
                    recyclerView.addItemDecoration(new ig.f(0.0f, 8.0f, 0.0f, 5, null));
                }
            }
            sj.b bVar2 = this.exposureHelper;
            String str = this.keyword;
            String str2 = this.searchFrom;
            String str3 = this.currentTabId;
            SearchViewModel searchViewModel = this.searchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            com.transsion.search.fragment.result.adapter.a aVar = new com.transsion.search.fragment.result.adapter.a(bVar2, str, str2, str3, strS);
            this.mainAdapter = aVar;
            recyclerView.setAdapter(aVar);
            com.transsion.search.fragment.result.adapter.a aVar2 = this.mainAdapter;
            if (aVar2 != null && (fVarH0 = aVar2.h0()) != null) {
                fVarH0.D(new p6.f() { // from class: com.transsion.search.fragment.result.g
                    @Override // p6.f
                    public final void a() {
                        SearchResultTabFragment.B0(this.f52128a);
                    }
                });
            }
            com.transsion.search.fragment.result.adapter.a aVar3 = this.mainAdapter;
            if (aVar3 != null) {
                aVar3.w1(new p6.d() { // from class: com.transsion.search.fragment.result.h
                    @Override // p6.d
                    public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                        SearchResultTabFragment.C0(this.f52129a, baseQuickAdapter, view2, i11);
                    }
                });
            }
        }
        y0();
        u0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        Pager pager;
        r6.f fVarH0;
        List<ResultWrapData> convertData;
        SearchResultEntity searchResultEntity = this.extraResultData;
        if (searchResultEntity == null) {
            H0(false);
            SearchResultViewModel searchResultViewModelS0 = s0();
            String str = this.keyword;
            if (str == null) {
                str = "";
            }
            String str2 = this.currentTabId;
            if (str2 == null) {
                str2 = "";
            }
            SearchResultViewModel.p(searchResultViewModelS0, str, str2, false, 4, null);
            return;
        }
        com.transsion.search.fragment.result.adapter.a aVar = this.mainAdapter;
        if (aVar != null) {
            aVar.n1((searchResultEntity == null || (convertData = searchResultEntity.getConvertData()) == null) ? new ArrayList<>() : convertData);
        }
        SearchResultEntity searchResultEntity2 = this.extraResultData;
        if (searchResultEntity2 == null || (pager = searchResultEntity2.getPager()) == null || pager.getHasMore()) {
            s0().r(2);
            return;
        }
        com.transsion.search.fragment.result.adapter.a aVar2 = this.mainAdapter;
        if (aVar2 == null || (fVarH0 = aVar2.h0()) == null) {
            return;
        }
        fVarH0.t(true);
    }

    @Override // com.transsion.search.fragment.BaseSearchMainFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        Object objM454constructorimpl;
        super.onCreate(savedInstanceState);
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            objM454constructorimpl = Result.m454constructorimpl((SearchViewModel) new v0(fragmentActivityRequireActivity).a(SearchViewModel.class));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        this.searchViewModel = (SearchViewModel) objM454constructorimpl;
    }

    @Override // com.transsion.search.fragment.BaseSearchMainFragment, androidx.fragment.app.Fragment
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
        com.transsion.search.fragment.result.adapter.a aVar;
        r6.f fVarH0;
        super.onResume();
        if (!this.isLoadMoreEnd || (aVar = this.mainAdapter) == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        r6.f.u(fVarH0, false, 1, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public rq.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.h hVarC = rq.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }
}
