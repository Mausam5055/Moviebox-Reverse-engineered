package com.transsnet.downloader.ugc.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import com.transsnet.downloader.ugc.viewmodel.UGCForYouViewModel;
import com.transsnet.downloader.ugc.widget.UGCForyouLoadMoreView;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.widget.UGCSecondTabTitleView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 j2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00027;B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J1\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010!\u001a\u00020\u00052\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\f0\u0012H\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0002¢\u0006\u0004\b$\u0010\u0004J\u0017\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020\u0010H\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010+\u001a\u00020\u00052\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J!\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020&2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b2\u00103J!\u00104\u001a\u00020\u00052\u0006\u00101\u001a\u00020&2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b4\u00103J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0004J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004R\u0014\u00109\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u00108R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001b\u0010D\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010<\u001a\u0004\bB\u0010CR\u001b\u0010I\u001a\u00020E8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010<\u001a\u0004\bG\u0010HR\u001a\u0010M\u001a\b\u0012\u0004\u0012\u00020\f0J8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010R\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u00108R\u0018\u0010V\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010a\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010c\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010`R\u0016\u0010e\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010`R\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010h¨\u0006k"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lpy/p0;", "<init>", "()V", "", "t0", "initViewModel", "E0", "m0", "D0", "C0", "", "p0", "()Ljava/lang/String;", "B0", "", "hasMore", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "videos", "isFromCache", "F0", "(ZLjava/util/List;Z)V", "video", "", RequestParameters.POSITION, "A0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V", "Landroidx/recyclerview/widget/RecyclerView$l;", "l0", "()Landroidx/recyclerview/widget/RecyclerView$l;", "newTabs", "I0", "(Ljava/util/List;)V", "J0", "x0", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lpy/p0;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "initListener", "lazyLoadData", "a", "Ljava/lang/String;", "TAG", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "n0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "downloadViewModel", "Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;", "c", "r0", "()Lcom/transsnet/downloader/ugc/viewmodel/UGCForYouViewModel;", "forYouViewModel", "Lcom/transsnet/downloader/ugc/viewmodel/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "q0", "()Lcom/transsnet/downloader/ugc/viewmodel/b;", "forYouCacheViewModel", "", "e", "Ljava/util/List;", "subTabList", "f", "I", "selectTabIndex", "g", "subTabTitleArg", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "h", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;", "i", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;", "commonNavigatorAdapter", "Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;", "j", "Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;", "emptyForYouAdapter", CampaignEx.JSON_KEY_AD_K, "Z", "forYouRequested", "l", "isLoadingForYou", "m", "isShowingEmpty", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;", "n", "Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedListFragment;", "allOnlyFragment", "o", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCDownloadedAppFragment extends BaseFragment<py.p0> {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "UGCDownloadedAppFragment";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy forYouViewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy forYouCacheViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final List subTabList;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String subTabTitleArg;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private ORCommonNavigator commonNavigator;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private b commonNavigatorAdapter;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private UGCDownloadStaggeredAdapter emptyForYouAdapter;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean forYouRequested;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadingForYou;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isShowingEmpty;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private UGCDownloadedListFragment allOnlyFragment;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCDownloadedAppFragment a(String str) {
            UGCDownloadedAppFragment uGCDownloadedAppFragment = new UGCDownloadedAppFragment();
            uGCDownloadedAppFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("arg_sub_tab_title", str)));
            return uGCDownloadedAppFragment;
        }
    }

    public static final class b extends ik.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewPager2 f59716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f59717c;

        public b(ViewPager2 viewPager2, List tabList) {
            Intrinsics.h(tabList, "tabList");
            this.f59716b = viewPager2;
            this.f59717c = tabList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(b bVar, int i11, View view) {
            ViewPager2 viewPager2 = bVar.f59716b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i11, true);
            }
        }

        @Override // j00.a
        public int a() {
            return this.f59717c.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setColors(0, 0, 0);
            return linePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, final int i11) {
            Intrinsics.h(context, "context");
            UGCSecondTabTitleView uGCSecondTabTitleView = new UGCSecondTabTitleView(context);
            uGCSecondTabTitleView.setTitle((String) this.f59717c.get(i11));
            uGCSecondTabTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.ugc.fragment.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCDownloadedAppFragment.b.j(this.f59827a, i11, view);
                }
            });
            return uGCSecondTabTitleView;
        }

        @Override // ik.a
        public LinearLayout.LayoutParams h(Context context, int i11) {
            int i12;
            Intrinsics.h(context, "context");
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            int iB = dk.a.b(4);
            int i13 = 0;
            if (i11 == 0) {
                i13 = iB * 3;
                i12 = 0;
            } else {
                i12 = i11 == this.f59717c.size() + (-1) ? iB * 3 : 0;
            }
            layoutParams.setMarginStart(i13);
            layoutParams.setMarginEnd(i12);
            return layoutParams;
        }
    }

    public static final class c extends RecyclerView.l {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter;
            com.transsnet.downloader.ugc.adapter.c cVar;
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (childAdapterPosition == -1 || (uGCDownloadStaggeredAdapter = UGCDownloadedAppFragment.this.emptyForYouAdapter) == null || (cVar = (com.transsnet.downloader.ugc.adapter.c) uGCDownloadStaggeredAdapter.f0(childAdapterPosition)) == null || !(cVar instanceof com.transsnet.downloader.ugc.adapter.c.e)) {
                return;
            }
            RecyclerView.m layoutManager = parent.getLayoutManager();
            if ((layoutManager instanceof StaggeredGridLayoutManager ? (StaggeredGridLayoutManager) layoutManager : null) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            StaggeredGridLayoutManager.b bVar = layoutParams instanceof StaggeredGridLayoutManager.b ? (StaggeredGridLayoutManager.b) layoutParams : null;
            if (bVar == null) {
                return;
            }
            int iA = bVar.a();
            int iB = dk.a.b(12);
            int iB2 = dk.a.b(8);
            if (iA == 0) {
                outRect.left = iB;
                outRect.right = iB2 / 2;
            } else if (iA == 1) {
                outRect.left = iB2 / 2;
                outRect.right = iB;
            }
            outRect.bottom = dk.a.b(8);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59719a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59719a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59719a;
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
            this.f59719a.invoke(obj);
        }
    }

    public static final class e extends ViewPager2.OnPageChangeCallback {
        e() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            py.p0 mViewBinding = UGCDownloadedAppFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f72880d) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            py.p0 mViewBinding = UGCDownloadedAppFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f72880d) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            py.p0 mViewBinding = UGCDownloadedAppFragment.this.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f72880d) != null) {
                magicIndicator.onPageSelected(i11);
            }
            UGCDownloadedAppFragment.this.selectTabIndex = i11;
        }
    }

    public static final class f extends FragmentStateAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f59722b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str) {
            super(UGCDownloadedAppFragment.this);
            this.f59722b = str;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            String str = (String) CollectionsKt.l0(UGCDownloadedAppFragment.this.subTabList, i11);
            if (str == null) {
                str = "";
            }
            if (Intrinsics.c(str, this.f59722b)) {
                str = "TAB_ALL";
            }
            return UGCDownloadedListFragment.INSTANCE.a(str);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return UGCDownloadedAppFragment.this.subTabList.size();
        }
    }

    public UGCDownloadedAppFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.forYouViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCForYouViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.forYouCacheViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.ugc.viewmodel.b.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCDownloadedAppFragment$special$$inlined$activityViewModels$default$4
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
        this.subTabList = new ArrayList();
    }

    private final void A0(UGCVideo video, int position) {
        String ugcVideoId = video.getUgcVideoId();
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            return;
        }
        pv.b.b(video, null, 1, null);
        com.transsnet.downloader.ugc.util.e.f59847a.b("ugc_downloaded_app", video, position);
    }

    private final void B0() {
        String strP0 = p0();
        if (!q0().d(strP0)) {
            if (!this.forYouRequested && r0().h().f() == null && nh.m.f70474a.e()) {
                this.forYouRequested = true;
                this.isLoadingForYou = true;
                r0().g(true);
                return;
            }
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "requestForYouIfNeeded: use cached data, cacheKey=" + strP0 + ", size=" + q0().c(strP0).size(), false, 4, null);
        F0(q0().e(strP0), q0().c(strP0), true);
        this.forYouRequested = true;
    }

    private final void C0() {
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        CoordinatorLayout coordinatorLayout;
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "showAllOnly", false, 4, null);
        this.isShowingEmpty = false;
        py.p0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (coordinatorLayout = mViewBinding.f72879c) != null) {
            jg.c.g(coordinatorLayout);
        }
        py.p0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout = mViewBinding2.f72878b) != null) {
            jg.c.k(frameLayout);
        }
        py.p0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (recyclerView = mViewBinding3.f72881e) != null) {
            jg.c.g(recyclerView);
        }
        if (this.allOnlyFragment == null) {
            this.allOnlyFragment = UGCDownloadedListFragment.INSTANCE.a("TAB_ALL");
            androidx.fragment.app.w wVarP = getChildFragmentManager().p();
            int i11 = R$id.fl_all_only;
            UGCDownloadedListFragment uGCDownloadedListFragment = this.allOnlyFragment;
            Intrinsics.e(uGCDownloadedListFragment);
            wVarP.s(i11, uGCDownloadedListFragment).j();
        }
    }

    private final void D0() {
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        CoordinatorLayout coordinatorLayout;
        this.isShowingEmpty = false;
        py.p0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (coordinatorLayout = mViewBinding.f72879c) != null) {
            jg.c.k(coordinatorLayout);
        }
        py.p0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout = mViewBinding2.f72878b) != null) {
            jg.c.g(frameLayout);
        }
        py.p0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f72881e) == null) {
            return;
        }
        jg.c.g(recyclerView);
    }

    private final void E0() {
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        CoordinatorLayout coordinatorLayout;
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "showEmptyState, isShowingEmpty:" + this.isShowingEmpty, false, 4, null);
        this.isShowingEmpty = true;
        py.p0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (coordinatorLayout = mViewBinding.f72879c) != null) {
            jg.c.g(coordinatorLayout);
        }
        py.p0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout = mViewBinding2.f72878b) != null) {
            jg.c.g(frameLayout);
        }
        py.p0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (recyclerView = mViewBinding3.f72881e) != null) {
            jg.c.k(recyclerView);
        }
        m0();
        B0();
    }

    private final void F0(boolean hasMore, List videos, boolean isFromCache) {
        List arrayList;
        boolean z10;
        r6.f fVarH0;
        r6.f fVarH1;
        r6.f fVarH2;
        r6.f fVarH3;
        List<Object> data;
        this.isLoadingForYou = false;
        UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter = this.emptyForYouAdapter;
        if (uGCDownloadStaggeredAdapter == null || (data = uGCDownloadStaggeredAdapter.getData()) == null || (arrayList = CollectionsKt.U0(data)) == null) {
            arrayList = new ArrayList();
        }
        if (isFromCache) {
            CollectionsKt.I(arrayList, new Function1() { // from class: com.transsnet.downloader.ugc.fragment.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(UGCDownloadedAppFragment.H0((com.transsnet.downloader.ugc.adapter.c) obj));
                }
            });
        }
        List list = arrayList;
        boolean z11 = list instanceof Collection;
        if (z11 && list.isEmpty()) {
            z10 = false;
        } else {
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    com.transsnet.downloader.ugc.adapter.c cVar = (com.transsnet.downloader.ugc.adapter.c) it.next();
                    if ((cVar instanceof com.transsnet.downloader.ugc.adapter.c.e) || (cVar instanceof com.transsnet.downloader.ugc.adapter.c.f)) {
                        z10 = true;
                    }
                } else {
                    z10 = false;
                }
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.TAG, "updateForYouList: hasExistingForYou：" + z10 + "， size:" + (videos != null ? Integer.valueOf(videos.size()) : null) + ", isFromCache:" + isFromCache, false, 4, null);
        List list2 = videos;
        if (list2 == null || list2.isEmpty()) {
            lg.a.C0828a.z(c0828a, this.TAG, "foryou list is empty, hasExistingForYou:" + z10 + ", hasMore:" + hasMore, false, 4, null);
            if (hasMore) {
                UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter2 = this.emptyForYouAdapter;
                if (uGCDownloadStaggeredAdapter2 == null || (fVarH1 = uGCDownloadStaggeredAdapter2.h0()) == null) {
                    return;
                }
                fVarH1.v();
                return;
            }
            UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter3 = this.emptyForYouAdapter;
            if (uGCDownloadStaggeredAdapter3 == null || (fVarH0 = uGCDownloadStaggeredAdapter3.h0()) == null) {
                return;
            }
            r6.f.u(fVarH0, false, 1, null);
            return;
        }
        if (z10) {
            if (!z11 || !list.isEmpty()) {
                Iterator it2 = list.iterator();
                do {
                    if (!it2.hasNext()) {
                        arrayList.add(0, com.transsnet.downloader.ugc.adapter.c.d.f59617a);
                        break;
                    }
                } while (!(((com.transsnet.downloader.ugc.adapter.c) it2.next()) instanceof com.transsnet.downloader.ugc.adapter.c.d));
            } else {
                arrayList.add(0, com.transsnet.downloader.ugc.adapter.c.d.f59617a);
                break;
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof com.transsnet.downloader.ugc.adapter.c.e) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                String ugcVideoId = ((com.transsnet.downloader.ugc.adapter.c.e) it3.next()).a().getUgcVideoId();
                if (ugcVideoId != null) {
                    arrayList3.add(ugcVideoId);
                }
            }
            Set setW0 = CollectionsKt.W0(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            for (Object obj2 : videos) {
                UGCVideo uGCVideo = (UGCVideo) obj2;
                String ugcVideoId2 = uGCVideo.getUgcVideoId();
                if (ugcVideoId2 != null && ugcVideoId2.length() != 0 && !CollectionsKt.b0(setW0, uGCVideo.getUgcVideoId())) {
                    arrayList4.add(obj2);
                }
            }
            if (arrayList4.isEmpty()) {
                lg.a.C0828a.z(lg.a.f68839a, this.TAG, "updateForYouList: 所有视频都已存在，跳过添加", false, 4, null);
            } else {
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "updateForYouList: 过滤后新增 " + arrayList4.size() + " 个视频（原始 " + videos.size() + " 个）", false, 4, null);
                Iterator it4 = arrayList4.iterator();
                while (it4.hasNext()) {
                    arrayList.add(new com.transsnet.downloader.ugc.adapter.c.e((UGCVideo) it4.next()));
                }
            }
        } else {
            if (!z11 || !list.isEmpty()) {
                Iterator it5 = list.iterator();
                do {
                    if (!it5.hasNext()) {
                        arrayList.add(0, com.transsnet.downloader.ugc.adapter.c.d.f59617a);
                        break;
                    }
                } while (!(((com.transsnet.downloader.ugc.adapter.c) it5.next()) instanceof com.transsnet.downloader.ugc.adapter.c.d));
            } else {
                arrayList.add(0, com.transsnet.downloader.ugc.adapter.c.d.f59617a);
                break;
            }
            arrayList.add(com.transsnet.downloader.ugc.adapter.c.f.f59619a);
            Iterator it6 = videos.iterator();
            while (it6.hasNext()) {
                arrayList.add(new com.transsnet.downloader.ugc.adapter.c.e((UGCVideo) it6.next()));
            }
        }
        UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter4 = this.emptyForYouAdapter;
        if (uGCDownloadStaggeredAdapter4 != null) {
            uGCDownloadStaggeredAdapter4.n1(arrayList);
        }
        if (hasMore) {
            UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter5 = this.emptyForYouAdapter;
            if (uGCDownloadStaggeredAdapter5 == null || (fVarH3 = uGCDownloadStaggeredAdapter5.h0()) == null) {
                return;
            }
            fVarH3.s();
            return;
        }
        UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter6 = this.emptyForYouAdapter;
        if (uGCDownloadStaggeredAdapter6 == null || (fVarH2 = uGCDownloadStaggeredAdapter6.h0()) == null) {
            return;
        }
        r6.f.u(fVarH2, false, 1, null);
    }

    static /* synthetic */ void G0(UGCDownloadedAppFragment uGCDownloadedAppFragment, boolean z10, List list, boolean z11, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        uGCDownloadedAppFragment.F0(z10, list, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H0(com.transsnet.downloader.ugc.adapter.c it) {
        Intrinsics.h(it, "it");
        return (it instanceof com.transsnet.downloader.ugc.adapter.c.e) || (it instanceof com.transsnet.downloader.ugc.adapter.c.f);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008e  */
    private final void I0(List newTabs) {
        int iIntValue;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.TAG, "updateSubTabs: newTabs=" + newTabs + ", current subTabList=" + this.subTabList + ", subTabTitleArg=" + this.subTabTitleArg, false, 4, null);
        if (Intrinsics.c(this.subTabList, newTabs)) {
            lg.a.C0828a.f(c0828a, this.TAG, "updateSubTabs: tabs unchanged, skip update", false, 4, null);
            return;
        }
        this.subTabList.clear();
        this.subTabList.addAll(newTabs);
        String str = this.subTabTitleArg;
        if (str == null || str.length() == 0) {
            iIntValue = 0;
        } else {
            Iterator it = newTabs.iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                } else if (Intrinsics.c((String) it.next(), this.subTabTitleArg)) {
                    break;
                } else {
                    i11++;
                }
            }
            Integer numValueOf = Integer.valueOf(i11);
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                iIntValue = numValueOf.intValue();
            } else {
                iIntValue = 0;
            }
        }
        this.selectTabIndex = RangesKt.m(iIntValue, 0, RangesKt.f(this.subTabList.size() - 1, 0));
        J0();
    }

    private final void J0() {
        MagicIndicator magicIndicator;
        ViewPager2 viewPager2;
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "updateViewPagerAndIndicator: selectTabIndex=" + this.selectTabIndex + ", subTabList=" + this.subTabList, false, 4, null);
        String string = Utils.a().getString(R$string.ugc_all);
        Intrinsics.g(string, "getString(...)");
        f fVar = new f(string);
        py.p0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f72883g) != null) {
            viewPager2.setAdapter(fVar);
            int iM = RangesKt.m(this.selectTabIndex, 0, this.subTabList.size() - 1);
            if (iM != this.selectTabIndex) {
                this.selectTabIndex = iM;
            }
            viewPager2.registerOnPageChangeCallback(new e());
            viewPager2.setCurrentItem(this.selectTabIndex, false);
        }
        py.p0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (magicIndicator = mViewBinding2.f72880d) != null) {
            magicIndicator.post(new Runnable() { // from class: com.transsnet.downloader.ugc.fragment.s
                @Override // java.lang.Runnable
                public final void run() {
                    UGCDownloadedAppFragment.K0(this.f59825a);
                }
            });
        }
        x0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(UGCDownloadedAppFragment uGCDownloadedAppFragment) {
        MagicIndicator magicIndicator;
        py.p0 mViewBinding = uGCDownloadedAppFragment.getMViewBinding();
        if (mViewBinding == null || (magicIndicator = mViewBinding.f72880d) == null) {
            return;
        }
        magicIndicator.onPageSelected(uGCDownloadedAppFragment.selectTabIndex);
    }

    private final View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        String string = Utils.a().getString(R$string.download_no_historical_tips);
        Intrinsics.g(string, "getString(...)");
        stateView.showData(4, 6, false, "", string);
        String string2 = Utils.a().getString(R$string.download_empty_find_free_source);
        Intrinsics.g(string2, "getString(...)");
        stateView.setReTryTxt(string2);
        stateView.retry(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCDownloadedAppFragment.o0(this.f59823a);
            }
        });
        return stateView;
    }

    private final void initViewModel() {
        n0().L().j(this, new d(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCDownloadedAppFragment.z0(this.f59817a, (Map) obj);
            }
        }));
        r0().h().j(this, new d(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCDownloadedAppFragment.y0(this.f59820a, (UGCContentList) obj);
            }
        }));
    }

    private final RecyclerView.l l0() {
        return new c();
    }

    private final void m0() {
        List arrayList;
        boolean z10;
        List<Object> data;
        UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter = this.emptyForYouAdapter;
        if (uGCDownloadStaggeredAdapter == null || (data = uGCDownloadStaggeredAdapter.getData()) == null || (arrayList = CollectionsKt.U0(data)) == null) {
            arrayList = new ArrayList();
        }
        List list = arrayList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                } else if (((com.transsnet.downloader.ugc.adapter.c) it.next()) instanceof com.transsnet.downloader.ugc.adapter.c.d) {
                    z10 = true;
                    break;
                }
            }
        } else {
            z10 = false;
            break;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "ensureEmptyItemExists: hasEmptyItem=" + z10 + ", currentListSize=" + arrayList.size(), false, 4, null);
        if (z10) {
            return;
        }
        arrayList.add(0, com.transsnet.downloader.ugc.adapter.c.d.f59617a);
        UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter2 = this.emptyForYouAdapter;
        if (uGCDownloadStaggeredAdapter2 != null) {
            uGCDownloadStaggeredAdapter2.n1(arrayList);
        }
    }

    private final DownloadViewModel n0() {
        return (DownloadViewModel) this.downloadViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(UGCDownloadedAppFragment uGCDownloadedAppFragment) {
        Navigator.x(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_HOME), uGCDownloadedAppFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    private final String p0() {
        return "UGCDownloadedAppFragment";
    }

    private final com.transsnet.downloader.ugc.viewmodel.b q0() {
        return (com.transsnet.downloader.ugc.viewmodel.b) this.forYouCacheViewModel.getValue();
    }

    private final UGCForYouViewModel r0() {
        return (UGCForYouViewModel) this.forYouViewModel.getValue();
    }

    private final void t0() {
        RecyclerView recyclerView;
        final UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter = new UGCDownloadStaggeredAdapter(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCDownloadedAppFragment.u0(this.f59806a);
            }
        });
        uGCDownloadStaggeredAdapter.w1(new p6.d() { // from class: com.transsnet.downloader.ugc.fragment.m
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCDownloadedAppFragment.v0(this.f59810a, baseQuickAdapter, view, i11);
            }
        });
        uGCDownloadStaggeredAdapter.h0().z(true);
        uGCDownloadStaggeredAdapter.h0().y(true);
        uGCDownloadStaggeredAdapter.h0().E(3);
        uGCDownloadStaggeredAdapter.h0().C(new UGCForyouLoadMoreView());
        uGCDownloadStaggeredAdapter.h0().D(new p6.f() { // from class: com.transsnet.downloader.ugc.fragment.n
            @Override // p6.f
            public final void a() {
                UGCDownloadedAppFragment.w0(this.f59813a, uGCDownloadStaggeredAdapter);
            }
        });
        this.emptyForYouAdapter = uGCDownloadStaggeredAdapter;
        py.p0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f72881e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        recyclerView.setAdapter(this.emptyForYouAdapter);
        recyclerView.addItemDecoration(l0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View u0(UGCDownloadedAppFragment uGCDownloadedAppFragment) {
        return uGCDownloadedAppFragment.getEmptyView(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(UGCDownloadedAppFragment uGCDownloadedAppFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        com.transsnet.downloader.ugc.adapter.c cVar = item instanceof com.transsnet.downloader.ugc.adapter.c ? (com.transsnet.downloader.ugc.adapter.c) item : null;
        if (cVar != null && (cVar instanceof com.transsnet.downloader.ugc.adapter.c.e)) {
            uGCDownloadedAppFragment.A0(((com.transsnet.downloader.ugc.adapter.c.e) cVar).a(), i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(UGCDownloadedAppFragment uGCDownloadedAppFragment, UGCDownloadStaggeredAdapter uGCDownloadStaggeredAdapter) {
        String strI;
        if (uGCDownloadedAppFragment.isLoadingForYou) {
            lg.a.C0828a.f(lg.a.f68839a, uGCDownloadedAppFragment.TAG, "foryou loadmore--- isLoadingForYou, skip", false, 4, null);
            return;
        }
        if (!nh.m.f70474a.e()) {
            r6.f.u(uGCDownloadStaggeredAdapter.h0(), false, 1, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, uGCDownloadedAppFragment.TAG, "foryou loadmore---", false, 4, null);
        uGCDownloadedAppFragment.isLoadingForYou = true;
        String strB = uGCDownloadedAppFragment.q0().b(uGCDownloadedAppFragment.p0());
        if (strB != null && strB.length() > 0 && ((strI = uGCDownloadedAppFragment.r0().i()) == null || strI.length() == 0)) {
            uGCDownloadedAppFragment.r0().k(strB);
        }
        uGCDownloadedAppFragment.r0().g(false);
    }

    private final void x0() {
        MagicIndicator magicIndicator;
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
        oRCommonNavigator.setFollowTouch(true);
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "initNavigator: subTabList=" + this.subTabList, false, 4, null);
        py.p0 mViewBinding = getMViewBinding();
        b bVar = new b(mViewBinding != null ? mViewBinding.f72883g : null, this.subTabList);
        this.commonNavigatorAdapter = bVar;
        oRCommonNavigator.setAdapter(bVar);
        this.commonNavigator = oRCommonNavigator;
        py.p0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (magicIndicator = mViewBinding2.f72880d) == null) {
            return;
        }
        magicIndicator.setNavigator(this.commonNavigator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(UGCDownloadedAppFragment uGCDownloadedAppFragment, UGCContentList uGCContentList) {
        List listL;
        Pager pager;
        Pager pager2;
        Boolean hasMore;
        List<UGCContent> items;
        if (!uGCDownloadedAppFragment.isShowingEmpty) {
            return Unit.f67061a;
        }
        if (uGCContentList == null || (items = uGCContentList.getItems()) == null) {
            listL = CollectionsKt.l();
        } else {
            listL = new ArrayList();
            Iterator<T> it = items.iterator();
            while (it.hasNext()) {
                UGCVideo video = ((UGCContent) it.next()).getVideo();
                if (video != null) {
                    listL.add(video);
                }
            }
        }
        List list = listL;
        boolean zBooleanValue = (uGCContentList == null || (pager2 = uGCContentList.getPager()) == null || (hasMore = pager2.getHasMore()) == null) ? true : hasMore.booleanValue();
        String nextPage = (uGCContentList == null || (pager = uGCContentList.getPager()) == null) ? null : pager.getNextPage();
        String strP0 = uGCDownloadedAppFragment.p0();
        if (uGCDownloadedAppFragment.forYouRequested && uGCContentList != null) {
            if (uGCDownloadedAppFragment.q0().d(strP0)) {
                uGCDownloadedAppFragment.q0().f(strP0, list, nextPage, zBooleanValue);
            } else {
                uGCDownloadedAppFragment.q0().g(strP0, list, nextPage, zBooleanValue);
            }
        }
        G0(uGCDownloadedAppFragment, zBooleanValue, list, false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(UGCDownloadedAppFragment uGCDownloadedAppFragment, Map map) {
        if (map == null || map.isEmpty()) {
            uGCDownloadedAppFragment.E0();
            return Unit.f67061a;
        }
        List listU0 = CollectionsKt.U0(map.keySet());
        if (listU0.isEmpty()) {
            uGCDownloadedAppFragment.E0();
            return Unit.f67061a;
        }
        String string = Utils.a().getString(R$string.ugc_all);
        Intrinsics.g(string, "getString(...)");
        List listQ = CollectionsKt.q(string);
        listQ.addAll(listU0);
        lg.a.C0828a.f(lg.a.f68839a, uGCDownloadedAppFragment.TAG, "initViewModel: fullTabs=" + listQ + ", size=" + listQ.size(), false, 4, null);
        if (listQ.size() <= 2) {
            uGCDownloadedAppFragment.C0();
        } else {
            uGCDownloadedAppFragment.D0();
            uGCDownloadedAppFragment.I0(listQ);
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        initViewModel();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        t0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.subTabTitleArg = arguments.getString("arg_sub_tab_title");
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public py.p0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.p0 p0VarC = py.p0.c(inflater);
        Intrinsics.g(p0VarC, "inflate(...)");
        return p0VarC;
    }
}
