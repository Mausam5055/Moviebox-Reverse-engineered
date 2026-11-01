package com.transsion.search.fragment.hot;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.search.R$id;
import com.transsion.search.R$string;
import com.transsion.search.SearchManager;
import com.transsion.search.ad.SearchHotAdContainerView;
import com.transsion.search.ad.SearchHotAdHelper;
import com.transsion.search.bean.HotRankItem;
import com.transsion.search.bean.HotSearchKeyWord;
import com.transsion.search.bean.HotSubjectEntity;
import com.transsion.search.fragment.BaseSearchMainFragment;
import com.transsion.search.fragment.SearchSubjectFragment;
import com.transsion.search.fragment.hot.SearchHotFragment;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsion.search.widget.LinesFlexBoxLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import dk.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import np.o;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 V2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002WXB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0019\u0010\u0015\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J'\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010,\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\u0005J\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010\u0005J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\r\u00103\u001a\u00020\u0006¢\u0006\u0004\b3\u0010\u0005J\u0015\u00105\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u001b¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u00020\nH\u0016¢\u0006\u0004\b8\u0010\rJ\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b=\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010A\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010C\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010DR\u0018\u0010F\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001c\u0010I\u001a\b\u0012\u0004\u0012\u00020\u001b0H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010L\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010Q\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010T\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010U¨\u0006Y"}, d2 = {"Lcom/transsion/search/fragment/hot/SearchHotFragment;", "Lcom/transsion/search/fragment/BaseSearchMainFragment;", "Lrq/c;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "<init>", "()V", "", "initViewModel", "initHistory", "loadHistoryData", "", "isExpand", "expandHistoryLine", "(Z)V", "showHistoryList", "Lcom/transsion/search/bean/HotSubjectEntity;", "subjectEntity", "initHotWordWithData", "(Lcom/transsion/search/bean/HotSubjectEntity;)V", "initEveryoneSearch", "it", "initRankWithData", "initViewPager", "Landroid/content/Context;", "context", "", "index", "", "textStr", "Lj00/d;", "getIndicatorText", "(Landroid/content/Context;ILjava/lang/String;)Lj00/d;", "Lj00/c;", "getIndicatorView", "(Landroid/content/Context;)Lj00/c;", "clearTipsDialog", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Lrq/c;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "lazyLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onConnected", "keyword", "addHistoryWord", "(Ljava/lang/String;)V", "hidden", "onHiddenChanged", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "Lcom/transsion/search/fragment/hot/adapter/d;", "mSearchHistoryAdapter", "Lcom/transsion/search/fragment/hot/adapter/d;", "expand", "Z", "historyExpandLine", "I", "historyCollapseLine", "hotSearchWord", "Ljava/lang/String;", "", "mHistoryList", "Ljava/util/List;", "Lcom/transsion/search/fragment/hot/adapter/f;", "everyOneSearchAdapter", "Lcom/transsion/search/fragment/hot/adapter/f;", "mHotSubjectEntity", "Lcom/transsion/search/bean/HotSubjectEntity;", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mSearchViewModel", "Lcom/transsion/search/viewmodel/SearchViewModel;", "Lcom/transsion/search/ad/SearchHotAdHelper;", "adHelper", "Lcom/transsion/search/ad/SearchHotAdHelper;", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchHotFragment extends BaseSearchMainFragment<rq.c> implements TRDialogListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "search_hot_subject";
    private SearchHotAdHelper adHelper;
    private com.transsion.search.fragment.hot.adapter.f everyOneSearchAdapter;
    private boolean expand;
    private String hotSearchWord;
    private HotSubjectEntity mHotSubjectEntity;
    private com.transsion.search.fragment.hot.adapter.d mSearchHistoryAdapter;
    private SearchViewModel mSearchViewModel;
    private int historyExpandLine = 2;
    private int historyCollapseLine = 1;
    private List<String> mHistoryList = new ArrayList();

    /* JADX INFO: renamed from: com.transsion.search.fragment.hot.SearchHotFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchHotFragment a(String str) {
            SearchHotFragment searchHotFragment = new SearchHotFragment();
            searchHotFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("hot_search_word", str)));
            return searchHotFragment;
        }
    }

    public static final class b implements ViewPager2.PageTransformer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f52057a;

        public b() {
            this(0, 1, null);
        }

        public b(int i11) {
            this.f52057a = i11;
        }

        public /* synthetic */ b(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? a.b(38) : i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
        public void transformPage(View page, float f11) {
            Intrinsics.h(page, "page");
            if (f11 < -1.0f) {
                page.setTranslationX(0.0f);
                return;
            }
            if (f11 <= 0.0f) {
                page.setTranslationX(0.0f);
            } else if (f11 <= 1.0f) {
                page.setTranslationX(-(this.f52057a * f11));
            } else {
                page.setTranslationX(-(this.f52057a * (f11 - 1)));
            }
        }
    }

    public static final class c extends com.transsion.baseui.util.f {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f52059f;

        c(int i11) {
            this.f52059f = i11;
        }

        @Override // com.transsion.baseui.util.f
        public void c(View view) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.baseui.util.f
        public void d(View view) {
            MagicIndicator magicIndicator;
            ViewPager2 viewPager2;
            rq.c cVar = (rq.c) SearchHotFragment.this.getMViewBinding();
            if (cVar != null && (viewPager2 = cVar.f74619o) != null) {
                viewPager2.setCurrentItem(this.f52059f, false);
            }
            rq.c cVar2 = (rq.c) SearchHotFragment.this.getMViewBinding();
            if (cVar2 == null || (magicIndicator = cVar2.f74616l) == null) {
                return;
            }
            magicIndicator.onPageScrolled(this.f52059f, 0.0f, 0);
        }
    }

    public static final class d extends j00.a {
        d() {
        }

        @Override // j00.a
        public int a() {
            List<HotRankItem> hot;
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            if (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null) {
                return 0;
            }
            return hot.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            return SearchHotFragment.this.getIndicatorView(context);
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            String name;
            List<HotRankItem> hot;
            HotRankItem hotRankItem;
            Intrinsics.h(context, "context");
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            if (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null || (hotRankItem = hot.get(i11)) == null || (name = hotRankItem.getName()) == null) {
                name = "";
            }
            return SearchHotFragment.this.getIndicatorText(context, i11, name);
        }
    }

    public static final class e extends FragmentStateAdapter {
        e() {
            super(SearchHotFragment.this);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            List<HotRankItem> hot;
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            HotRankItem hotRankItem = (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null) ? null : hot.get(i11);
            if (hotRankItem != null) {
                hotRankItem.setIndex(i11);
            }
            return SearchRankPagerFragment.INSTANCE.a(hotRankItem);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<HotRankItem> hot;
            HotSubjectEntity hotSubjectEntity = SearchHotFragment.this.mHotSubjectEntity;
            if (hotSubjectEntity == null || (hot = hotSubjectEntity.getHot()) == null) {
                return 0;
            }
            return hot.size();
        }
    }

    public static final class f extends ViewPager2.OnPageChangeCallback {
        f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            rq.c cVar = (rq.c) SearchHotFragment.this.getMViewBinding();
            if (cVar == null || (magicIndicator = cVar.f74616l) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            rq.c cVar = (rq.c) SearchHotFragment.this.getMViewBinding();
            if (cVar == null || (magicIndicator = cVar.f74616l) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            Fragment fragmentK0 = SearchHotFragment.this.getChildFragmentManager().k0("f" + i11);
            if (fragmentK0 instanceof SearchRankPagerFragment) {
                ((SearchRankPagerFragment) fragmentK0).b0();
            }
            rq.c cVar = (rq.c) SearchHotFragment.this.getMViewBinding();
            if (cVar == null || (magicIndicator = cVar.f74616l) == null) {
                return;
            }
            magicIndicator.onPageSelected(i11);
        }
    }

    public static final class g implements com.transsion.search.a {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final void c(List list, SearchHotFragment searchHotFragment) {
            ConstraintLayout constraintLayout;
            ArrayList arrayList = new ArrayList();
            List list2 = list;
            arrayList.addAll(list2);
            CollectionsKt.Y(arrayList);
            searchHotFragment.mHistoryList = arrayList;
            searchHotFragment.showHistoryList();
            rq.c cVar = (rq.c) searchHotFragment.getMViewBinding();
            if (cVar == null || (constraintLayout = cVar.f74610f) == null) {
                return;
            }
            constraintLayout.setVisibility(!list2.isEmpty() ? 0 : 8);
        }

        @Override // com.transsion.search.a
        public void a(final List list) {
            Intrinsics.h(list, "list");
            FragmentActivity activity = SearchHotFragment.this.getActivity();
            if (activity != null) {
                final SearchHotFragment searchHotFragment = SearchHotFragment.this;
                activity.runOnUiThread(new Runnable() { // from class: uq.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        SearchHotFragment.g.c(list, searchHotFragment);
                    }
                });
            }
        }
    }

    static final class h implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f52064a;

        h(Function1 function) {
            Intrinsics.h(function, "function");
            this.f52064a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f52064a;
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
            this.f52064a.invoke(obj);
        }
    }

    private final void clearTipsDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.search_clear_title);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarK = aVar.k(string);
            String string2 = getString(R$string.search_clear_des);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarG = aVarK.g(string2);
            String string3 = getString(R$string.search_clear_cancel);
            Intrinsics.g(string3, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string3);
            String string4 = getString(R$string.search_clear_clear);
            Intrinsics.g(string4, "getString(...)");
            aVarE.j(string4).h(R$drawable.libui_sub_btn2_normal).f(this).a().d0(this, "clear_tips");
        } catch (Exception e11) {
            lg.a.C0828a.g(lg.a.f68839a, "e " + e11.getLocalizedMessage(), false, 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"NotifyDataSetChanged"})
    private final void expandHistoryLine(final boolean isExpand) {
        RecyclerView recyclerView;
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar == null || (recyclerView = cVar.f74611g) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: uq.g
            @Override // java.lang.Runnable
            public final void run() {
                SearchHotFragment.expandHistoryLine$lambda$12(this.f76876a, isExpand);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void expandHistoryLine$lambda$12(final SearchHotFragment searchHotFragment, final boolean z10) {
        rq.c cVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        rq.c cVar2 = (rq.c) searchHotFragment.getMViewBinding();
        RecyclerView.m layoutManager = null;
        if (((cVar2 == null || (recyclerView3 = cVar2.f74611g) == null) ? null : recyclerView3.getLayoutManager()) instanceof LinesFlexBoxLayoutManager) {
            rq.c cVar3 = (rq.c) searchHotFragment.getMViewBinding();
            if (cVar3 != null && (recyclerView2 = cVar3.f74611g) != null) {
                layoutManager = recyclerView2.getLayoutManager();
            }
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager");
            final LinesFlexBoxLayoutManager linesFlexBoxLayoutManager = (LinesFlexBoxLayoutManager) layoutManager;
            int iN0 = linesFlexBoxLayoutManager.n0();
            if (iN0 <= 0) {
                return;
            }
            linesFlexBoxLayoutManager.q0(z10 ? searchHotFragment.historyExpandLine : searchHotFragment.historyCollapseLine);
            boolean z11 = z10 || iN0 > searchHotFragment.historyCollapseLine;
            final int iO0 = linesFlexBoxLayoutManager.o0() - 1;
            com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
            if (dVar != null) {
                dVar.W1(z11, z10, iO0);
            }
            com.transsion.search.fragment.hot.adapter.d dVar2 = searchHotFragment.mSearchHistoryAdapter;
            if (dVar2 != null) {
                dVar2.notifyDataSetChanged();
            }
            if (!z11 || (cVar = (rq.c) searchHotFragment.getMViewBinding()) == null || (recyclerView = cVar.f74611g) == null) {
                return;
            }
            recyclerView.post(new Runnable() { // from class: uq.k
                @Override // java.lang.Runnable
                public final void run() {
                    SearchHotFragment.expandHistoryLine$lambda$12$lambda$11(linesFlexBoxLayoutManager, iO0, searchHotFragment, z10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void expandHistoryLine$lambda$12$lambda$11(LinesFlexBoxLayoutManager linesFlexBoxLayoutManager, int i11, SearchHotFragment searchHotFragment, boolean z10) {
        com.transsion.search.fragment.hot.adapter.d dVar;
        if (linesFlexBoxLayoutManager.getChildCount() <= i11 && (dVar = searchHotFragment.mSearchHistoryAdapter) != null) {
            dVar.W1(true, z10, i11 - 1);
        }
        com.transsion.search.fragment.hot.adapter.d dVar2 = searchHotFragment.mSearchHistoryAdapter;
        if (dVar2 != null) {
            dVar2.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j00.d getIndicatorText(Context context, int index, String textStr) {
        CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context, 17, a0.a(10.0f));
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
        gradientLinePagerIndicator.setLineWidth(a0.a(30.0f));
        gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
        gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
        int color = androidx.core.content.b.getColor(context, R$color.white);
        gradientLinePagerIndicator.setColors(color, color, color);
        return gradientLinePagerIndicator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initEveryoneSearch() {
        RecyclerView recyclerView;
        Bundle arguments = getArguments();
        this.hotSearchWord = arguments != null ? arguments.getString("hot_search_word") : null;
        com.transsion.search.fragment.hot.adapter.f fVar = new com.transsion.search.fragment.hot.adapter.f(0, 1, null);
        fVar.l(R$id.tv_keyword);
        fVar.s1(new p6.b() { // from class: uq.i
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                SearchHotFragment.initEveryoneSearch$lambda$23$lambda$22(this.f76879a, baseQuickAdapter, view, i11);
            }
        });
        this.everyOneSearchAdapter = fVar;
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar == null || (recyclerView = cVar.f74607c) == null) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        LinesFlexBoxLayoutManager linesFlexBoxLayoutManager = new LinesFlexBoxLayoutManager(contextRequireContext);
        linesFlexBoxLayoutManager.c0(0);
        linesFlexBoxLayoutManager.d0(1);
        linesFlexBoxLayoutManager.e0(0);
        linesFlexBoxLayoutManager.q0(this.historyExpandLine);
        recyclerView.setLayoutManager(linesFlexBoxLayoutManager);
        recyclerView.setAdapter(this.everyOneSearchAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initEveryoneSearch$lambda$23$lambda$22(final SearchHotFragment searchHotFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Object objM454constructorimpl;
        String strS;
        HotSearchKeyWord hotSearchKeyWord;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        Fragment parentFragment = searchHotFragment.getParentFragment();
        if (parentFragment instanceof SearchSubjectFragment) {
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.search.fragment.hot.adapter.f fVar = searchHotFragment.everyOneSearchAdapter;
                objM454constructorimpl = Result.m454constructorimpl((fVar == null || (hotSearchKeyWord = (HotSearchKeyWord) fVar.getItem(i11)) == null) ? null : hotSearchKeyWord.getTitle());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            String str = (String) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
            if (str == null) {
                return;
            }
            ((SearchSubjectFragment) parentFragment).v0(str, "hot", new Function1() { // from class: uq.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SearchHotFragment.initEveryoneSearch$lambda$23$lambda$22$lambda$21(this.f76880a, (String) obj);
                }
            });
            com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f52270a;
            SearchViewModel searchViewModel = searchHotFragment.mSearchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar.h(str, i11, strS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initEveryoneSearch$lambda$23$lambda$22$lambda$21(SearchHotFragment searchHotFragment, String it) {
        Intrinsics.h(it, "it");
        com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
        if (dVar != null) {
            dVar.p(new com.transsion.search.fragment.hot.adapter.a(1, it));
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initHistory() {
        String strS;
        TextView textView;
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar != null && (textView = cVar.f74621q) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: uq.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchHotFragment.initHistory$lambda$7(this.f76874a, view);
                }
            });
        }
        com.transsion.search.fragment.hot.adapter.d dVar = new com.transsion.search.fragment.hot.adapter.d();
        this.mSearchHistoryAdapter = dVar;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
            strS = "mb_sug";
        }
        dVar.Y1(strS);
        com.transsion.search.fragment.hot.adapter.d dVar2 = this.mSearchHistoryAdapter;
        if (dVar2 != null) {
            dVar2.l(R$id.search_history_text);
        }
        com.transsion.search.fragment.hot.adapter.d dVar3 = this.mSearchHistoryAdapter;
        if (dVar3 != null) {
            dVar3.s1(new p6.b() { // from class: uq.f
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    SearchHotFragment.initHistory$lambda$10(this.f76875a, baseQuickAdapter, view, i11);
                }
            });
        }
        loadHistoryData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initHistory$lambda$10(final SearchHotFragment searchHotFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Object objM454constructorimpl;
        String strS;
        com.transsion.search.fragment.hot.adapter.a aVar;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        Fragment parentFragment = searchHotFragment.getParentFragment();
        if (parentFragment instanceof SearchSubjectFragment) {
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
                objM454constructorimpl = Result.m454constructorimpl((dVar == null || (aVar = (com.transsion.search.fragment.hot.adapter.a) dVar.getItem(i11)) == null) ? null : aVar.a());
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            String str = (String) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
            if (str == null) {
                return;
            }
            ((SearchSubjectFragment) parentFragment).v0(str, ShortTVHistoryView.TYPE_HISTORY, new Function1() { // from class: uq.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SearchHotFragment.initHistory$lambda$10$lambda$9(this.f76878a, (String) obj);
                }
            });
            com.transsion.search.widget.d.a aVar2 = com.transsion.search.widget.d.f52270a;
            SearchViewModel searchViewModel = searchHotFragment.mSearchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar2.f(str, i11, strS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initHistory$lambda$10$lambda$9(SearchHotFragment searchHotFragment, String it) {
        Intrinsics.h(it, "it");
        com.transsion.search.fragment.hot.adapter.d dVar = searchHotFragment.mSearchHistoryAdapter;
        if (dVar != null) {
            dVar.p(new com.transsion.search.fragment.hot.adapter.a(1, it));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initHistory$lambda$7(SearchHotFragment searchHotFragment, View view) {
        searchHotFragment.clearTipsDialog();
        Context context = view.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        if (KeyboardUtils.g((Activity) context)) {
            Context context2 = view.getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            KeyboardUtils.d((Activity) context2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initHotWordWithData(HotSubjectEntity subjectEntity) {
        ConstraintLayout constraintLayout;
        RecyclerView recyclerView;
        List<HotSearchKeyWord> everyoneSearch;
        List<HotSearchKeyWord> everyoneSearch2;
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar == null || (constraintLayout = cVar.f74612h) == null) {
            return;
        }
        if (((subjectEntity == null || (everyoneSearch2 = subjectEntity.getEveryoneSearch()) == null) ? 0 : everyoneSearch2.size()) <= 0) {
            jg.c.g(constraintLayout);
            return;
        }
        jg.c.k(constraintLayout);
        final ArrayList arrayList = new ArrayList();
        if (subjectEntity != null && (everyoneSearch = subjectEntity.getEveryoneSearch()) != null) {
            for (HotSearchKeyWord hotSearchKeyWord : everyoneSearch) {
                if (!Intrinsics.c(hotSearchKeyWord.getTitle(), this.hotSearchWord)) {
                    arrayList.add(hotSearchKeyWord);
                }
            }
        }
        com.transsion.search.fragment.hot.adapter.f fVar = this.everyOneSearchAdapter;
        if (fVar != null) {
            fVar.n1(arrayList);
        }
        rq.c cVar2 = (rq.c) getMViewBinding();
        if (cVar2 == null || (recyclerView = cVar2.f74607c) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: uq.d
            @Override // java.lang.Runnable
            public final void run() {
                SearchHotFragment.initHotWordWithData$lambda$19$lambda$18(this.f76872a, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initHotWordWithData$lambda$19$lambda$18(SearchHotFragment searchHotFragment, List list) {
        String strS;
        RecyclerView recyclerView;
        rq.c cVar = (rq.c) searchHotFragment.getMViewBinding();
        RecyclerView.m layoutManager = (cVar == null || (recyclerView = cVar.f74607c) == null) ? null : recyclerView.getLayoutManager();
        if (layoutManager instanceof LinesFlexBoxLayoutManager) {
            int iO0 = ((LinesFlexBoxLayoutManager) layoutManager).o0();
            for (int i11 = 0; i11 < iO0; i11++) {
                if (i11 < list.size()) {
                    com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f52270a;
                    String title = ((HotSearchKeyWord) list.get(i11)).getTitle();
                    SearchViewModel searchViewModel = searchHotFragment.mSearchViewModel;
                    if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                        strS = "mb_sug";
                    }
                    aVar.g(title, i11, strS);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initRankWithData(HotSubjectEntity it) {
        RelativeLayout relativeLayout;
        ViewPager2 viewPager2;
        RecyclerView.Adapter adapter;
        MagicIndicator magicIndicator;
        h00.a navigator;
        RelativeLayout relativeLayout2;
        List<HotRankItem> hot = it != null ? it.getHot() : null;
        if (hot == null || hot.isEmpty()) {
            rq.c cVar = (rq.c) getMViewBinding();
            if (cVar == null || (relativeLayout = cVar.f74618n) == null) {
                return;
            }
            jg.c.h(relativeLayout);
            return;
        }
        rq.c cVar2 = (rq.c) getMViewBinding();
        if (cVar2 != null && (relativeLayout2 = cVar2.f74618n) != null) {
            jg.c.k(relativeLayout2);
        }
        this.mHotSubjectEntity = it;
        rq.c cVar3 = (rq.c) getMViewBinding();
        if (cVar3 != null && (magicIndicator = cVar3.f74616l) != null && (navigator = magicIndicator.getNavigator()) != null) {
            navigator.notifyDataSetChanged();
        }
        rq.c cVar4 = (rq.c) getMViewBinding();
        if (cVar4 == null || (viewPager2 = cVar4.f74619o) == null || (adapter = viewPager2.getAdapter()) == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void initView$lambda$2(SearchHotFragment searchHotFragment, NestedScrollView nestedScrollView, int i11, int i12, int i13, int i14) {
        Intrinsics.h(nestedScrollView, "<unused var>");
        FragmentActivity activity = searchHotFragment.getActivity();
        if (activity == null || !KeyboardUtils.g(activity)) {
            return;
        }
        rq.c cVar = (rq.c) searchHotFragment.getMViewBinding();
        o.a(cVar != null ? cVar.f74620p : null);
    }

    private final void initViewModel() {
        HashMap mapG;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        SearchViewModel searchViewModel = (SearchViewModel) new v0(fragmentActivityRequireActivity).a(SearchViewModel.class);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        searchViewModel.l().j(this, new h(new Function1() { // from class: uq.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchHotFragment.initViewModel$lambda$6$lambda$5(this.f76871a, (HotSubjectEntity) obj);
            }
        }));
        this.mSearchViewModel = searchViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$6$lambda$5(final SearchHotFragment searchHotFragment, HotSubjectEntity hotSubjectEntity) {
        View view;
        ProgressBar progressBar;
        rq.c cVar = (rq.c) searchHotFragment.getMViewBinding();
        if (cVar != null && (progressBar = cVar.f74609e) != null) {
            progressBar.setVisibility(8);
        }
        rq.c cVar2 = (rq.c) searchHotFragment.getMViewBinding();
        if (cVar2 != null && (view = cVar2.f74615k) != null) {
            view.setVisibility(0);
        }
        SearchHotAdHelper searchHotAdHelper = searchHotFragment.adHelper;
        if (searchHotAdHelper != null) {
            searchHotAdHelper.y(new Function1() { // from class: uq.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SearchHotFragment.initViewModel$lambda$6$lambda$5$lambda$4(this.f76869a, ((Boolean) obj).booleanValue());
                }
            });
        }
        hj.b logViewConfig = searchHotFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        searchHotFragment.initHotWordWithData(hotSubjectEntity);
        searchHotFragment.initRankWithData(hotSubjectEntity);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$6$lambda$5$lambda$4(SearchHotFragment searchHotFragment, boolean z10) {
        rq.c cVar;
        CardView cardView;
        if (z10 && (cVar = (rq.c) searchHotFragment.getMViewBinding()) != null && (cardView = cVar.f74608d) != null) {
            jg.c.k(cardView);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initViewPager() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        ViewPager2 viewPager4;
        ViewPager2 viewPager5;
        ViewPager2 viewPager6;
        MagicIndicator magicIndicator;
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar != null && (magicIndicator = cVar.f74616l) != null) {
            CommonNavigator commonNavigator = new CommonNavigator(requireContext());
            commonNavigator.setAdapter(new d());
            magicIndicator.setNavigator(commonNavigator);
        }
        rq.c cVar2 = (rq.c) getMViewBinding();
        if (cVar2 != null && (viewPager6 = cVar2.f74619o) != null) {
            viewPager6.setAdapter(new e());
        }
        rq.c cVar3 = (rq.c) getMViewBinding();
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (cVar3 != null && (viewPager5 = cVar3.f74619o) != null) {
            viewPager5.setLayerType(2, null);
        }
        rq.c cVar4 = (rq.c) getMViewBinding();
        int i11 = 1;
        if (cVar4 != null && (viewPager4 = cVar4.f74619o) != null) {
            viewPager4.setPageTransformer(new b(0, i11, defaultConstructorMarker));
        }
        rq.c cVar5 = (rq.c) getMViewBinding();
        if (cVar5 != null && (viewPager3 = cVar5.f74619o) != null) {
            viewPager3.setOffscreenPageLimit(1);
        }
        rq.c cVar6 = (rq.c) getMViewBinding();
        if (cVar6 == null || (viewPager2 = cVar6.f74619o) == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(new f());
    }

    private final void loadHistoryData() {
        SearchManager.f51941f.a().m(3, new g());
        if (getParentFragment() instanceof SearchSubjectFragment) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.search.fragment.SearchSubjectFragment");
            ((SearchSubjectFragment) parentFragment).N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void showHistoryList() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        String value;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_history_lines_double", false);
        if (Intrinsics.c((configBeanC == null || (value = configBeanC.getValue()) == null) ? null : StringsKt.m1(value), Boolean.TRUE)) {
            this.historyExpandLine = 4;
            this.historyCollapseLine = 2;
        }
        com.transsion.search.fragment.hot.adapter.d dVar = this.mSearchHistoryAdapter;
        if (dVar != null) {
            dVar.V1(new Function0() { // from class: uq.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SearchHotFragment.showHistoryList$lambda$13(this.f76886a);
                }
            });
        }
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar != null && (recyclerView4 = cVar.f74611g) != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            LinesFlexBoxLayoutManager linesFlexBoxLayoutManager = new LinesFlexBoxLayoutManager(contextRequireContext);
            linesFlexBoxLayoutManager.c0(0);
            linesFlexBoxLayoutManager.d0(1);
            linesFlexBoxLayoutManager.e0(0);
            linesFlexBoxLayoutManager.q0(this.expand ? this.historyExpandLine : this.historyCollapseLine);
            recyclerView4.setLayoutManager(linesFlexBoxLayoutManager);
        }
        rq.c cVar2 = (rq.c) getMViewBinding();
        if (cVar2 != null && (recyclerView3 = cVar2.f74611g) != null) {
            recyclerView3.setAdapter(this.mSearchHistoryAdapter);
        }
        rq.c cVar3 = (rq.c) getMViewBinding();
        if (cVar3 != null && (recyclerView2 = cVar3.f74611g) != null) {
            recyclerView2.setItemAnimator(null);
        }
        List<String> list = this.mHistoryList;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.transsion.search.fragment.hot.adapter.a(1, (String) it.next()));
        }
        List<Object> listU0 = CollectionsKt.U0(arrayList);
        com.transsion.search.fragment.hot.adapter.d dVar2 = this.mSearchHistoryAdapter;
        if (dVar2 != null) {
            dVar2.q1(listU0);
        }
        rq.c cVar4 = (rq.c) getMViewBinding();
        if (cVar4 == null || (recyclerView = cVar4.f74611g) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: uq.b
            @Override // java.lang.Runnable
            public final void run() {
                SearchHotFragment.showHistoryList$lambda$16(this.f76870a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit showHistoryList$lambda$13(SearchHotFragment searchHotFragment) {
        boolean z10 = !searchHotFragment.expand;
        searchHotFragment.expand = z10;
        searchHotFragment.expandHistoryLine(z10);
        rq.c cVar = (rq.c) searchHotFragment.getMViewBinding();
        o.a(cVar != null ? cVar.f74611g : null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showHistoryList$lambda$16(SearchHotFragment searchHotFragment) {
        searchHotFragment.expandHistoryLine(searchHotFragment.expand);
    }

    public final void addHistoryWord(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (this.mHistoryList.contains(keyword)) {
            return;
        }
        SearchManager.f51941f.a().g(keyword);
        this.mHistoryList.add(0, keyword);
        if (this.mHistoryList.size() > 30) {
            List<String> list = this.mHistoryList;
            list.remove(list.size() - 1);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public rq.c getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        rq.c cVarC = rq.c.c(inflater);
        Intrinsics.g(cVarC, "inflate(...)");
        return cVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        NestedScrollView nestedScrollView;
        SearchHotAdContainerView searchHotAdContainerView;
        SearchHotAdHelper searchHotAdHelper;
        Intrinsics.h(view, "view");
        initViewModel();
        initHistory();
        initEveryoneSearch();
        initViewPager();
        this.adHelper = new SearchHotAdHelper(v.a(this));
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar != null && (searchHotAdContainerView = cVar.f74606b) != null && (searchHotAdHelper = this.adHelper) != null) {
            searchHotAdHelper.m(searchHotAdContainerView);
        }
        rq.c cVar2 = (rq.c) getMViewBinding();
        if (cVar2 == null || (nestedScrollView = cVar2.f74620p) == null) {
            return;
        }
        nestedScrollView.setOnScrollChangeListener(new NestedScrollView.e() { // from class: uq.l
            @Override // androidx.core.widget.NestedScrollView.e
            public final void a(NestedScrollView nestedScrollView2, int i11, int i12, int i13, int i14) {
                SearchHotFragment.initView$lambda$2(this.f76885a, nestedScrollView2, i11, i12, i13, i14);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        View view;
        ProgressBar progressBar;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel != null) {
            searchViewModel.k();
        }
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar != null && (progressBar = cVar.f74609e) != null) {
            progressBar.setVisibility(0);
        }
        rq.c cVar2 = (rq.c) getMViewBinding();
        if (cVar2 == null || (view = cVar2.f74615k) == null) {
            return;
        }
        view.setVisibility(4);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        hj.b bVar = new hj.b(PAGE_NAME, false, 2, null);
        bVar.l(true);
        bVar.g().put("search_id", BaseSearchMainFragment.INSTANCE.a());
        return bVar;
    }

    public final void onConnected() {
        if (this.mHotSubjectEntity == null) {
            lazyLoadData();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        super.onDestroyView();
        rq.c cVar = (rq.c) getMViewBinding();
        if (cVar != null && (recyclerView = cVar.f74611g) != null) {
            recyclerView.setAdapter(null);
        }
        this.mSearchHistoryAdapter = null;
        SearchHotAdHelper searchHotAdHelper = this.adHelper;
        if (searchHotAdHelper != null) {
            searchHotAdHelper.p();
        }
        this.adHelper = null;
    }

    @Override // com.transsion.search.fragment.BaseSearchMainFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        loadHistoryData();
    }

    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.tn.lib.widget.dialog.TRDialogListener
    public void onRightButtonClick(TRDialog dialog) {
        String strS;
        RecyclerView recyclerView;
        ConstraintLayout constraintLayout;
        Intrinsics.h(dialog, "dialog");
        if (TextUtils.equals(dialog.getTag(), "clear_tips")) {
            SearchManager.f51941f.a().j();
            this.mHistoryList.clear();
            rq.c cVar = (rq.c) getMViewBinding();
            if (cVar != null && (constraintLayout = cVar.f74610f) != null) {
                constraintLayout.setVisibility(8);
            }
            com.transsion.search.fragment.hot.adapter.d dVar = this.mSearchHistoryAdapter;
            if (dVar != null) {
                dVar.q1(new ArrayList());
            }
            rq.c cVar2 = (rq.c) getMViewBinding();
            RecyclerView.m layoutManager = (cVar2 == null || (recyclerView = cVar2.f74611g) == null) ? null : recyclerView.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type com.transsion.search.widget.LinesFlexBoxLayoutManager");
            ((LinesFlexBoxLayoutManager) layoutManager).p0();
            this.expand = false;
            expandHistoryLine(false);
            com.transsion.search.widget.d.a aVar = com.transsion.search.widget.d.f52270a;
            SearchViewModel searchViewModel = this.mSearchViewModel;
            if (searchViewModel == null || (strS = searchViewModel.s()) == null) {
                strS = "mb_sug";
            }
            aVar.c(strS);
        }
    }
}
