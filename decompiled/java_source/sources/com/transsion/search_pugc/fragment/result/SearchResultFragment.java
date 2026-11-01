package com.transsion.search_pugc.fragment.result;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.publish.model.PostEntity;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SearchTab;
import com.transsion.search_pugc.bean.UGCSearchResultData;
import com.transsion.search_pugc.fragment.BaseSearchMainFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 M2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00014B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\r2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0017¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u0004\u0018\u00010&2\b\u0010%\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J+\u0010/\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\u00142\b\u0010-\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b/\u00100J\u000f\u00102\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103R\u0018\u0010,\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u001b\u0010;\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0018\u0010>\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010-\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00105R\u0018\u0010.\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00105R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u001b\u0010L\u001a\u00020H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u00108\u001a\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;", "Lcom/transsion/search_pugc/fragment/BaseSearchMainFragment;", "Lrq/g;", "<init>", "()V", "", "initViewPager", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "magicIndicator", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager", "l0", "(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V", "Landroid/view/View;", "r0", "()Landroid/view/View;", "Landroid/content/Context;", "context", "", "index", "", "textStr", "Lj00/d;", "getIndicatorText", "(Landroid/content/Context;ILjava/lang/String;)Lj00/d;", "Lj00/c;", "getIndicatorView", "(Landroid/content/Context;)Lj00/c;", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lrq/g;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "tabId", "Lcom/transsion/search_pugc/bean/UGCSearchResultData;", "m0", "(Ljava/lang/String;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;", "startLoading", "hideLoading", "lazyLoadData", "keyword", "searchFrom", "fromUGCVideoId", "u0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "a", "Ljava/lang/String;", "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "o0", "()Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", "viewModel", "c", "Lcom/transsion/search_pugc/bean/UGCSearchResultData;", "searchResultData", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "Lcom/transsion/baseui/widget/ResourcesRequestView;", "f", "Lcom/transsion/baseui/widget/ResourcesRequestView;", "requestView", "g", "Ljava/lang/Integer;", "requestMovieCount", "Lcom/transsion/search_pugc/g;", "h", "getSearchReporter", "()Lcom/transsion/search_pugc/g;", "searchReporter", "i", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchResultFragment extends BaseSearchMainFragment<rq.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String keyword;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private UGCSearchResultData searchResultData;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String searchFrom;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String fromUGCVideoId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ResourcesRequestView requestView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private Integer requestMovieCount;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchResultFragment.v0(this.f52410a);
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy searchReporter = LazyKt.b(new Function0() { // from class: com.transsion.search_pugc.fragment.result.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SearchResultFragment.t0(this.f52411a);
        }
    });

    public static final class b extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MagicIndicator f52379a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SearchResultFragment f52380b;

        b(MagicIndicator magicIndicator, SearchResultFragment searchResultFragment) {
            this.f52379a = magicIndicator;
            this.f52380b = searchResultFragment;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            this.f52379a.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            this.f52379a.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            this.f52379a.onPageSelected(i11);
            com.transsion.search_pugc.g gVarA = com.transsion.search_pugc.g.f52478h.a(this.f52380b.getContext());
            String str = this.f52380b.keyword;
            UGCSearchResultData uGCSearchResultData = this.f52380b.searchResultData;
            SearchTab searchTab = uGCSearchResultData != null ? uGCSearchResultData.getTabs().get(i11) : null;
            UGCSearchResultData uGCSearchResultData2 = this.f52380b.searchResultData;
            gVarA.C(str, searchTab, uGCSearchResultData2 != null ? uGCSearchResultData2.getOps() : null);
        }
    }

    public static final class c extends com.transsion.baseui.util.f {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f52382f;

        c(int i11) {
            this.f52382f = i11;
        }

        @Override // com.transsion.baseui.util.f
        public void c(View view) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.baseui.util.f
        public void d(View view) {
            ViewPager2 viewPager2;
            rq.g gVar = (rq.g) SearchResultFragment.this.getMViewBinding();
            if (gVar == null || (viewPager2 = gVar.f74649f) == null) {
                return;
            }
            viewPager2.setCurrentItem(this.f52382f, false);
        }
    }

    public static final class d extends j00.a {
        d() {
        }

        @Override // j00.a
        public int a() {
            List<SearchTab> tabs;
            UGCSearchResultData uGCSearchResultData = SearchResultFragment.this.searchResultData;
            if (uGCSearchResultData == null || (tabs = uGCSearchResultData.getTabs()) == null) {
                return 0;
            }
            return tabs.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            return SearchResultFragment.this.getIndicatorView(context);
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            List<SearchTab> tabs;
            SearchTab searchTab;
            Intrinsics.h(context, "context");
            SearchResultFragment searchResultFragment = SearchResultFragment.this;
            UGCSearchResultData uGCSearchResultData = searchResultFragment.searchResultData;
            return searchResultFragment.getIndicatorText(context, i11, (uGCSearchResultData == null || (tabs = uGCSearchResultData.getTabs()) == null || (searchTab = tabs.get(i11)) == null) ? null : searchTab.getName());
        }
    }

    public static final class e extends FragmentStateAdapter {
        e() {
            super(SearchResultFragment.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            List<SearchTab> tabs;
            List<SearchTab> tabs2;
            UGCSearchResultData uGCSearchResultData = SearchResultFragment.this.searchResultData;
            if (uGCSearchResultData != null && (tabs2 = uGCSearchResultData.getTabs()) != null) {
                tabs2.get(i11);
            }
            UGCSearchResultData uGCSearchResultData2 = SearchResultFragment.this.searchResultData;
            return SearchResultTabFragment.INSTANCE.a(SearchResultFragment.this.keyword, null, (uGCSearchResultData2 == null || (tabs = uGCSearchResultData2.getTabs()) == null) ? null : tabs.get(i11), SearchResultFragment.this.searchFrom, SearchResultFragment.this.fromUGCVideoId);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<SearchTab> tabs;
            UGCSearchResultData uGCSearchResultData = SearchResultFragment.this.searchResultData;
            if (uGCSearchResultData == null || (tabs = uGCSearchResultData.getTabs()) == null) {
                return 0;
            }
            return tabs.size();
        }
    }

    static final class f implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52385a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52385a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52385a;
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
            this.f52385a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j00.d getIndicatorText(Context context, int index, String textStr) {
        CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context, 17, a0.a(12.0f));
        customPagerTitleView.setSelectTextSize(16.0f);
        customPagerTitleView.setText(textStr);
        customPagerTitleView.setOnClickListener(new c(index));
        return customPagerTitleView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j00.c getIndicatorView(Context context) {
        GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context);
        gradientLinePagerIndicator.setMode(1);
        gradientLinePagerIndicator.setLineHeight(a0.a(2.0f));
        gradientLinePagerIndicator.setLineWidth(a0.a(24.0f));
        gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
        gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
        int color = androidx.core.content.b.getColor(context, R$color.white);
        gradientLinePagerIndicator.setColors(color, color, color);
        return gradientLinePagerIndicator;
    }

    private final com.transsion.search_pugc.g getSearchReporter() {
        return (com.transsion.search_pugc.g) this.searchReporter.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initViewPager() {
        ViewPager2 viewPager2;
        MagicIndicator magicIndicator;
        rq.g gVar = (rq.g) getMViewBinding();
        if (gVar != null && (magicIndicator = gVar.f74646c) != null) {
            CommonNavigator commonNavigator = new CommonNavigator(getContext());
            commonNavigator.setAdapter(new d());
            magicIndicator.setNavigator(commonNavigator);
        }
        rq.g gVar2 = (rq.g) getMViewBinding();
        if (gVar2 == null || (viewPager2 = gVar2.f74649f) == null) {
            return;
        }
        viewPager2.setAdapter(new e());
    }

    private final void l0(MagicIndicator magicIndicator, ViewPager2 viewPager) {
        viewPager.registerOnPageChangeCallback(new b(magicIndicator, this));
    }

    private final SearchResultViewModel o0() {
        return (SearchResultViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit p0(SearchResultFragment searchResultFragment, UGCSearchResultData uGCSearchResultData) {
        ViewPager2 viewPager2;
        RecyclerView.Adapter adapter;
        MagicIndicator magicIndicator;
        h00.a navigator;
        FrameLayout frameLayout;
        View view;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        searchResultFragment.hideLoading();
        if (uGCSearchResultData == null) {
            rq.g gVar = (rq.g) searchResultFragment.getMViewBinding();
            if (gVar != null && (frameLayout3 = gVar.f74645b) != null) {
                frameLayout3.removeAllViews();
            }
            rq.g gVar2 = (rq.g) searchResultFragment.getMViewBinding();
            if (gVar2 != null && (frameLayout2 = gVar2.f74645b) != null) {
                frameLayout2.addView(searchResultFragment.r0());
            }
            rq.g gVar3 = (rq.g) searchResultFragment.getMViewBinding();
            if (gVar3 != null && (view = gVar3.f74647d) != null) {
                view.setVisibility(4);
            }
            rq.g gVar4 = (rq.g) searchResultFragment.getMViewBinding();
            if (gVar4 != null && (frameLayout = gVar4.f74645b) != null) {
                frameLayout.setVisibility(0);
            }
            searchResultFragment.getSearchReporter().x("net_error", null);
        } else if (uGCSearchResultData.getTabs().isEmpty() || uGCSearchResultData.getItems().isEmpty()) {
            searchResultFragment.getSearchReporter().x("empty", null);
            searchResultFragment.o0().i().n(Boolean.TRUE);
        } else {
            searchResultFragment.searchResultData = uGCSearchResultData;
            rq.g gVar5 = (rq.g) searchResultFragment.getMViewBinding();
            if (gVar5 != null && (magicIndicator = gVar5.f74646c) != null && (navigator = magicIndicator.getNavigator()) != null) {
                navigator.notifyDataSetChanged();
            }
            rq.g gVar6 = (rq.g) searchResultFragment.getMViewBinding();
            if (gVar6 != null && (viewPager2 = gVar6.f74649f) != null && (adapter = viewPager2.getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
            searchResultFragment.getSearchReporter().x(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, uGCSearchResultData.getOps());
            hj.b logViewConfig = searchResultFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.g().put("ops", uGCSearchResultData.getOps());
            }
        }
        hj.b logViewConfig2 = searchResultFragment.getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.k(uGCSearchResultData != null);
        }
        searchResultFragment.getSearchReporter().i(searchResultFragment.getLogViewConfig());
        searchResultFragment.getSearchReporter().D(searchResultFragment.getLogViewConfig());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(SearchResultFragment searchResultFragment, PostEntity postEntity) {
        lg.a.C0828a.g(lg.a.f68839a, "Post request succeed " + postEntity + ", " + (postEntity != null ? postEntity.getCount() : null), false, 2, null);
        if (postEntity != null && searchResultFragment.requestMovieCount == null) {
            int count = postEntity.getCount();
            if (count == null) {
                count = 0;
            }
            searchResultFragment.requestMovieCount = count;
            ResourcesRequestView resourcesRequestView = searchResultFragment.requestView;
            if (resourcesRequestView != null) {
                Integer count2 = postEntity.getCount();
                resourcesRequestView.setCount(count2 != null ? count2.intValue() : 0, false);
            }
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final View r0() {
        LayoutInflater layoutInflater = getLayoutInflater();
        int i11 = R$layout.view_search_no_network;
        rq.g gVar = (rq.g) getMViewBinding();
        View viewInflate = layoutInflater.inflate(i11, (ViewGroup) (gVar != null ? gVar.f74645b : null), false);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tv_empty_tips);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.iv_tips);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewInflate.findViewById(R$id.tv_retry);
        textView.setText(R$string.base_net_err);
        imageView.setImageResource(R$mipmap.ic_no_network);
        appCompatTextView.setVisibility(0);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.search_pugc.fragment.result.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchResultFragment.s0(this.f52414a, view);
            }
        });
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(SearchResultFragment searchResultFragment, View view) {
        String str = searchResultFragment.keyword;
        if (str == null) {
            str = "";
        }
        searchResultFragment.u0(str, searchResultFragment.searchFrom, searchResultFragment.fromUGCVideoId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.search_pugc.g t0(SearchResultFragment searchResultFragment) {
        return com.transsion.search_pugc.g.f52478h.a(searchResultFragment.getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchResultViewModel v0(SearchResultFragment searchResultFragment) {
        FragmentActivity fragmentActivityRequireActivity = searchResultFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (SearchResultViewModel) new v0(fragmentActivityRequireActivity).a(SearchResultViewModel.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        View view;
        MagicIndicator magicIndicator;
        ViewPager2 viewPager2;
        ProgressBar progressBar;
        rq.g gVar = (rq.g) getMViewBinding();
        if (gVar != null && (progressBar = gVar.f74648e) != null) {
            progressBar.setVisibility(4);
        }
        rq.g gVar2 = (rq.g) getMViewBinding();
        if (gVar2 != null && (viewPager2 = gVar2.f74649f) != null) {
            viewPager2.setVisibility(0);
        }
        rq.g gVar3 = (rq.g) getMViewBinding();
        if (gVar3 != null && (magicIndicator = gVar3.f74646c) != null) {
            magicIndicator.setVisibility(0);
        }
        rq.g gVar4 = (rq.g) getMViewBinding();
        if (gVar4 == null || (view = gVar4.f74647d) == null) {
            return;
        }
        view.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        initViewPager();
        o0().l().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.search_pugc.fragment.result.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultFragment.p0(this.f52412a, (UGCSearchResultData) obj);
            }
        }));
        o0().h().j(this, new f(new Function1() { // from class: com.transsion.search_pugc.fragment.result.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchResultFragment.q0(this.f52413a, (PostEntity) obj);
            }
        }));
        rq.g gVar = (rq.g) getMViewBinding();
        if (gVar != null) {
            MagicIndicator searchResultMagicIndicator = gVar.f74646c;
            Intrinsics.g(searchResultMagicIndicator, "searchResultMagicIndicator");
            ViewPager2 searchResultViewPager = gVar.f74649f;
            Intrinsics.g(searchResultViewPager, "searchResultViewPager");
            l0(searchResultMagicIndicator, searchResultViewPager);
        }
        getSearchReporter().j(getLogViewConfig());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    public final UGCSearchResultData m0(String tabId) {
        UGCSearchResultData uGCSearchResultData = this.searchResultData;
        if (Intrinsics.c(tabId, uGCSearchResultData != null ? uGCSearchResultData.getTabId() : null)) {
            return this.searchResultData;
        }
        return null;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public rq.g getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.g gVarC = rq.g.c(inflater);
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return getSearchReporter().g("/ugc_search/search_result");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        FrameLayout frameLayout;
        View view;
        MagicIndicator magicIndicator;
        ViewPager2 viewPager2;
        ProgressBar progressBar;
        rq.g gVar = (rq.g) getMViewBinding();
        if (gVar != null && (progressBar = gVar.f74648e) != null) {
            progressBar.setVisibility(0);
        }
        rq.g gVar2 = (rq.g) getMViewBinding();
        if (gVar2 != null && (viewPager2 = gVar2.f74649f) != null) {
            viewPager2.setVisibility(4);
        }
        rq.g gVar3 = (rq.g) getMViewBinding();
        if (gVar3 != null && (magicIndicator = gVar3.f74646c) != null) {
            magicIndicator.setVisibility(4);
        }
        rq.g gVar4 = (rq.g) getMViewBinding();
        if (gVar4 != null && (view = gVar4.f74647d) != null) {
            view.setVisibility(4);
        }
        rq.g gVar5 = (rq.g) getMViewBinding();
        if (gVar5 == null || (frameLayout = gVar5.f74645b) == null) {
            return;
        }
        frameLayout.setVisibility(4);
    }

    public final void u0(String keyword, String searchFrom, String fromUGCVideoId) {
        Intrinsics.h(keyword, "keyword");
        this.keyword = keyword;
        this.searchFrom = searchFrom;
        this.fromUGCVideoId = fromUGCVideoId;
        startLoading();
        this.searchResultData = null;
        initViewPager();
        o0().p(fromUGCVideoId);
        o0().q(1);
        SearchResultViewModel.n(o0(), keyword, "", getSearchReporter().f(), false, null, 24, null);
    }
}
