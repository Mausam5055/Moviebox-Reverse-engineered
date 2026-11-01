package com.transsion.home.tv.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.noober.background.view.BLConstraintLayout;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.base.report.athena.BrowseType;
import com.transsion.base.report.athena.ClickType;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.home.R$drawable;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.tv.TVChannelHomeViewModel;
import com.transsion.home.tv.TvCountrySelectDialog;
import com.transsion.home.tv.bean.CountryItem;
import com.transsion.home.tv.bean.ImageInfo;
import com.transsion.home.tv.bean.StreamItem;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.home.tv.bean.TvChannelLoadMoreResult;
import com.transsion.home.tv.bean.TvChannelRefreshResult;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000£\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006*\u0001[\b\u0007\u0018\u0000 _2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u0019\u0010\u001d\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u0017\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0011H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\rH\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\tH\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u0010\u0004J\u000f\u00102\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103J\u0011\u00104\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b4\u0010*R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR$\u0010G\u001a\u0012\u0012\u0004\u0012\u00020\u00110Cj\b\u0012\u0004\u0012\u00020\u0011`D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u001c\u0010L\u001a\b\u0012\u0004\u0012\u00020I0H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010O\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010R\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0014\u0010Z\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010YR\u0014\u0010^\u001a\u00020[8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]¨\u0006`"}, d2 = {"Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lgl/a0;", "<init>", "()V", "Lcom/transsion/home/tv/bean/TvChannelItem;", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "", "R0", "(Lcom/transsion/home/tv/bean/TvChannelItem;I)V", "T0", "", "showEmpty", "Y0", "(Z)V", "", "timezone", "W0", "(Ljava/lang/String;)V", "X0", "initExposureHelper", "Landroidx/fragment/app/FragmentActivity;", "S0", "()Landroidx/fragment/app/FragmentActivity;", "Z0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "lazyLoadData", "Landroid/view/LayoutInflater;", "inflater", "E0", "(Landroid/view/LayoutInflater;)Lgl/a0;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "()Z", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "initViewData", "initViewModel", "initListener", "retryLoadData", "onPause", "onDestroyView", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "getLoadingView", "Lcom/transsion/home/tv/TVChannelHomeViewModel;", "a", "Lkotlin/Lazy;", "F0", "()Lcom/transsion/home/tv/TVChannelHomeViewModel;", "viewModel", "Lcom/transsion/home/tv/adapter/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/tv/adapter/f;", "channelAdapter", "Lhl/b;", "c", "Lhl/b;", "exposureHelper", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/HashSet;", "exposedChannelIds", "", "Lcom/transsion/home/tv/bean/CountryItem;", "e", "Ljava/util/List;", "countryList", "f", "Z", "pendingScrollToTopAfterCountryChange", "g", "Ljava/lang/String;", "currentTimezone", "", "h", "J", "loadStartTime", "Landroid/os/Handler;", "i", "Landroid/os/Handler;", "timeHandler", "com/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1", "j", "Lcom/transsion/home/tv/fragment/TVChannelHomeFragment$timeUpdateRunnable$1;", "timeUpdateRunnable", CampaignEx.JSON_KEY_AD_K, "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TVChannelHomeFragment extends LazyFragment<gl.a0> {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f45611l = 8;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f45612m = "TVChannel";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Map f45613n;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.tv.adapter.f channelAdapter;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private hl.b exposureHelper;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final HashSet exposedChannelIds;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private List countryList;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private boolean pendingScrollToTopAfterCountryChange;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String currentTimezone;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private long loadStartTime;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Handler timeHandler;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final TVChannelHomeFragment$timeUpdateRunnable$1 timeUpdateRunnable;

    /* JADX INFO: renamed from: com.transsion.home.tv.fragment.TVChannelHomeFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return TVChannelHomeFragment.f45612m;
        }

        public final String b(int i11) {
            String str = (String) TVChannelHomeFragment.f45613n.get(Integer.valueOf(i11));
            return str == null ? a() : str;
        }

        public final TVChannelHomeFragment c(int i11, String tabCode) {
            Intrinsics.h(tabCode, "tabCode");
            TVChannelHomeFragment tVChannelHomeFragment = new TVChannelHomeFragment();
            if (!TextUtils.isEmpty(tabCode)) {
                TVChannelHomeFragment.INSTANCE.d(tabCode);
            }
            if (!TVChannelHomeFragment.f45613n.containsKey(Integer.valueOf(i11))) {
                TVChannelHomeFragment.f45613n.put(Integer.valueOf(i11), tabCode);
            }
            tVChannelHomeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("tab_id", Integer.valueOf(i11)), TuplesKt.a(WebConstants.TAB_CODE, tabCode)));
            return tVChannelHomeFragment;
        }

        public final void d(String str) {
            Intrinsics.h(str, "<set-?>");
            TVChannelHomeFragment.f45612m = str;
        }
    }

    public static final class b implements hl.a {
        b() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            OperateItem operateItem;
            TvChannelItem tvChannelItem;
            List<StreamItem> streams;
            StreamItem streamItem;
            String url;
            String url2;
            List<StreamItem> streams2;
            StreamItem streamItem2;
            com.transsion.home.tv.adapter.f fVar = TVChannelHomeFragment.this.channelAdapter;
            if (fVar == null || (data = fVar.getData()) == null || (operateItem = (OperateItem) CollectionsKt.l0(data, i11)) == null || !Intrinsics.c(operateItem.getType(), PostItemType.TV_CHANNEL_ITEM.getValue()) || (tvChannelItem = operateItem.getTvChannelItem()) == null || (streams = tvChannelItem.getStreams()) == null || (streamItem = streams.get(0)) == null || (url = streamItem.getUrl()) == null || TVChannelHomeFragment.this.exposedChannelIds.contains(url)) {
                return;
            }
            TVChannelHomeFragment.this.exposedChannelIds.add(url);
            HashMap map = new HashMap();
            TvChannelItem tvChannelItem2 = operateItem.getTvChannelItem();
            if (tvChannelItem2 == null || (streams2 = tvChannelItem2.getStreams()) == null || (streamItem2 = streams2.get(0)) == null || (url2 = streamItem2.getUrl()) == null) {
                url2 = "";
            }
            map.put("content_id", url2);
            String title = operateItem.getTitle();
            map.put("opt_title", title != null ? title : "");
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            hj.i.f64505a.E(TVChannelHomeFragment.INSTANCE.a(), map, BrowseType.CONTENT);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45625a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45625a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45625a;
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
            this.f45625a.invoke(obj);
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(HomeTabId.TVChannel.getValue()), f45612m);
        linkedHashMap.put(Integer.valueOf(HomeTabId.UGC_TVChannel.getValue()), "ugc_tv_channel");
        f45613n = linkedHashMap;
    }

    public TVChannelHomeFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.home.tv.fragment.TVChannelHomeFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TVChannelHomeViewModel.class), new Function0<x0>() { // from class: com.transsion.home.tv.fragment.TVChannelHomeFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.home.tv.fragment.TVChannelHomeFragment$special$$inlined$viewModels$default$3
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
        this.exposedChannelIds = new HashSet();
        this.countryList = CollectionsKt.l();
        this.loadStartTime = -1L;
        this.timeHandler = new Handler(Looper.getMainLooper());
        this.timeUpdateRunnable = new TVChannelHomeFragment$timeUpdateRunnable$1(this);
    }

    private final TVChannelHomeViewModel F0() {
        return (TVChannelHomeViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(TVChannelHomeFragment tVChannelHomeFragment, View view) {
        HashMap map = new HashMap();
        map.put("module_name", "country_select");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, RewardPlus.ICON);
        hj.i.f64505a.q(f45612m, map, ClickType.FEATURE);
        tVChannelHomeFragment.T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(TVChannelHomeFragment tVChannelHomeFragment) {
        tVChannelHomeFragment.F0().x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(TVChannelHomeFragment tVChannelHomeFragment, TvChannelItem item, int i11) {
        Intrinsics.h(item, "item");
        tVChannelHomeFragment.R0(item, i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit J0(TVChannelHomeFragment tVChannelHomeFragment, int i11) {
        hl.b bVar;
        RecyclerView recyclerView;
        gl.a0 a0Var = (gl.a0) tVChannelHomeFragment.getMViewBinding();
        RecyclerView.m layoutManager = (a0Var == null || (recyclerView = a0Var.f63635g) == null) ? null : recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager != null && (bVar = tVChannelHomeFragment.exposureHelper) != null) {
            bVar.h(linearLayoutManager, i11, true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String K0(TVChannelHomeFragment tVChannelHomeFragment) {
        return tVChannelHomeFragment.F0().n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(TVChannelHomeFragment tVChannelHomeFragment) {
        tVChannelHomeFragment.F0().u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit M0(final TVChannelHomeFragment tVChannelHomeFragment, TvChannelRefreshResult tvChannelRefreshResult) {
        gl.a0 a0Var;
        com.transsion.home.tv.adapter.f fVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (tVChannelHomeFragment.S0() != null && (a0Var = (gl.a0) tVChannelHomeFragment.getMViewBinding()) != null && (fVar = tVChannelHomeFragment.channelAdapter) != null) {
            tVChannelHomeFragment.showContentView();
            a0Var.f63636h.setRefreshing(false);
            if (tvChannelRefreshResult == null) {
                if (fVar.h0().r()) {
                    fVar.h0().v();
                }
                tVChannelHomeFragment.Y0(fVar.getItemCount() == 0);
                return Unit.f67061a;
            }
            hl.b bVar = tVChannelHomeFragment.exposureHelper;
            if (bVar != null) {
                bVar.e();
            }
            fVar.n1(tvChannelRefreshResult.getList());
            if (tVChannelHomeFragment.pendingScrollToTopAfterCountryChange) {
                gl.a0 a0Var2 = (gl.a0) tVChannelHomeFragment.getMViewBinding();
                if (a0Var2 != null && (recyclerView2 = a0Var2.f63635g) != null) {
                    recyclerView2.scrollToPosition(0);
                }
                tVChannelHomeFragment.pendingScrollToTopAfterCountryChange = false;
            }
            tVChannelHomeFragment.Y0(fVar.getItemCount() == 0);
            if (tvChannelRefreshResult.getHasMore()) {
                fVar.h0().s();
            } else {
                r6.f.u(fVar.h0(), false, 1, null);
            }
            gl.a0 a0Var3 = (gl.a0) tVChannelHomeFragment.getMViewBinding();
            if (a0Var3 != null && (recyclerView = a0Var3.f63635g) != null) {
                recyclerView.post(new Runnable() { // from class: com.transsion.home.tv.fragment.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        TVChannelHomeFragment.N0(this.f45657a);
                    }
                });
            }
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void N0(TVChannelHomeFragment tVChannelHomeFragment) {
        hl.b bVar;
        RecyclerView recyclerView;
        gl.a0 a0Var = (gl.a0) tVChannelHomeFragment.getMViewBinding();
        RecyclerView.m layoutManager = (a0Var == null || (recyclerView = a0Var.f63635g) == null) ? null : recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (bVar = tVChannelHomeFragment.exposureHelper) == null) {
            return;
        }
        bVar.i(linearLayoutManager, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O0(TVChannelHomeFragment tVChannelHomeFragment, TvChannelLoadMoreResult tvChannelLoadMoreResult) {
        com.transsion.home.tv.adapter.f fVar;
        if (tVChannelHomeFragment.S0() != null && (fVar = tVChannelHomeFragment.channelAdapter) != null) {
            if (tvChannelLoadMoreResult == null) {
                if (fVar.h0().r()) {
                    fVar.h0().v();
                }
                return Unit.f67061a;
            }
            fVar.q(tvChannelLoadMoreResult.getAppendList());
            if (fVar.h0().r()) {
                fVar.h0().s();
            }
            if (!tvChannelLoadMoreResult.getHasMore()) {
                r6.f.u(fVar.h0(), false, 1, null);
            }
            tVChannelHomeFragment.Y0(fVar.getItemCount() == 0);
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P0(TVChannelHomeFragment tVChannelHomeFragment, List list) {
        HashMap mapG;
        Intrinsics.e(list);
        tVChannelHomeFragment.countryList = list;
        if (list.isEmpty()) {
            return Unit.f67061a;
        }
        hj.b logViewConfig = tVChannelHomeFragment.getLogViewConfig();
        if (logViewConfig != null && !logViewConfig.i()) {
            hj.b logViewConfig2 = tVChannelHomeFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            hj.b logViewConfig3 = tVChannelHomeFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Q0(TVChannelHomeFragment tVChannelHomeFragment, CountryItem countryItem) {
        gl.a0 a0Var;
        ImageInfo countryFlagImage;
        if (tVChannelHomeFragment.S0() != null && (a0Var = (gl.a0) tVChannelHomeFragment.getMViewBinding()) != null) {
            TextView textView = a0Var.f63638j;
            String countryName = countryItem != null ? countryItem.getCountryName() : null;
            if (countryName == null) {
                countryName = "";
            }
            textView.setText(countryName);
            String url = (countryItem == null || (countryFlagImage = countryItem.getCountryFlagImage()) == null) ? null : countryFlagImage.getUrl();
            if (url == null) {
                url = "";
            }
            if (TextUtils.isEmpty(url)) {
                a0Var.f63633e.setImageResource(R$drawable.ic_tv_country_flag_default);
            } else {
                ej.f.a aVar = ej.f.f61882a;
                Context context = a0Var.getRoot().getContext();
                Intrinsics.g(context, "getContext(...)");
                ej.f.b bVarI = aVar.m(context).g(url).l(url).i(R$drawable.ic_tv_country_flag_default);
                ShapeableImageView ivCountryFlag = a0Var.f63633e;
                Intrinsics.g(ivCountryFlag, "ivCountryFlag");
                bVarI.d(ivCountryFlag);
            }
            String timezone = countryItem != null ? countryItem.getTimezone() : null;
            if (timezone == null || timezone.length() == 0) {
                tVChannelHomeFragment.X0();
                a0Var.f63640l.setText("");
            } else {
                tVChannelHomeFragment.W0(timezone);
            }
            return Unit.f67061a;
        }
        return Unit.f67061a;
    }

    private final void R0(TvChannelItem item, int position) {
        String url;
        StreamItem streamItem;
        FragmentActivity fragmentActivityS0 = S0();
        if (fragmentActivityS0 == null) {
            return;
        }
        HashMap map = new HashMap();
        List<StreamItem> streams = item.getStreams();
        if (streams == null || (streamItem = streams.get(0)) == null || (url = streamItem.getUrl()) == null) {
            url = "";
        }
        map.put("content_id", url);
        String title = item.getTitle();
        map.put("opt_title", title != null ? title : "");
        map.put(RequestParameters.POSITION, String.valueOf(position));
        hj.i.f64505a.q(f45612m, map, ClickType.CONTENT);
        if (TextUtils.isEmpty(item.getChannelId())) {
            uh.b.f76753a.e("This page is unavailable");
        } else {
            Navigator.x(TheRouter.c("/home/tv_live_detail").K(TmcStartParams.KEY_CHANNEL_ID, item.getChannelId()).K("countryCode", item.getCountryCode()), fragmentActivityS0, null, 2, null);
        }
    }

    private final FragmentActivity S0() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return null;
        }
        return activity;
    }

    private final void T0() {
        if (this.countryList.isEmpty()) {
            return;
        }
        Fragment parentFragment = getParentFragment();
        BaseHomeSubFragment baseHomeSubFragment = parentFragment instanceof BaseHomeSubFragment ? (BaseHomeSubFragment) parentFragment : null;
        int iC = com.blankj.utilcode.util.y.c() - (baseHomeSubFragment != null ? baseHomeSubFragment.h0() : 0);
        CountryItem countryItem = (CountryItem) F0().q().f();
        TvCountrySelectDialog tvCountrySelectDialogA = TvCountrySelectDialog.INSTANCE.a(this.countryList, iC, countryItem != null ? countryItem.getCountryCode() : null);
        tvCountrySelectDialogA.x0(new Function1() { // from class: com.transsion.home.tv.fragment.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TVChannelHomeFragment.U0(this.f45659a, (CountryItem) obj);
            }
        });
        tvCountrySelectDialogA.y0(new Function0() { // from class: com.transsion.home.tv.fragment.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TVChannelHomeFragment.V0();
            }
        });
        tvCountrySelectDialogA.l0(this, "tv_country_select");
        HashMap map = new HashMap();
        map.put("dialog_name", "country_select");
        hj.i.f64505a.s(f45612m, "dialog_show", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U0(TVChannelHomeFragment tVChannelHomeFragment, CountryItem country) {
        Intrinsics.h(country, "country");
        tVChannelHomeFragment.pendingScrollToTopAfterCountryChange = true;
        tVChannelHomeFragment.F0().B(country);
        HashMap map = new HashMap();
        String countryName = country.getCountryName();
        if (countryName == null) {
            countryName = "";
        }
        map.put("module_name", countryName);
        map.put("dialog_name", "country_select");
        hj.i.f64505a.q(f45612m, map, ClickType.FEATURE);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0() {
        HashMap map = new HashMap();
        map.put("module_name", "close");
        map.put("dialog_name", "country_select");
        hj.i.f64505a.q(f45612m, map, ClickType.FEATURE);
        return Unit.f67061a;
    }

    private final void W0(String timezone) {
        this.timeHandler.removeCallbacks(this.timeUpdateRunnable);
        this.currentTimezone = timezone;
        this.timeUpdateRunnable.run();
    }

    private final void X0() {
        this.timeHandler.removeCallbacks(this.timeUpdateRunnable);
        this.currentTimezone = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Y0(boolean showEmpty) {
        gl.a0 a0Var = (gl.a0) getMViewBinding();
        if (a0Var == null) {
            return;
        }
        a0Var.f63630b.setVisibility(showEmpty ? 0 : 8);
        a0Var.f63635g.setVisibility(showEmpty ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void Z0() {
        FragmentActivity fragmentActivityS0;
        gl.a0 a0Var;
        String str = this.currentTimezone;
        if (str == null || (fragmentActivityS0 = S0()) == null || (a0Var = (gl.a0) getMViewBinding()) == null) {
            return;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("h:mm a", Locale.ENGLISH);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(str));
            a0Var.f63640l.setText(fragmentActivityS0.getString(R$string.home_tv_local_time, simpleDateFormat.format(new Date())));
        } catch (Exception e11) {
            lg.a.f68839a.i("TVChannelHomeFragment", "updateLocalTime error: " + e11.getMessage(), false);
        }
    }

    private final void initExposureHelper() {
        if (this.exposureHelper != null) {
            return;
        }
        hl.b bVar = new hl.b(0.6f, new b(), false, 4, null);
        this.exposureHelper = bVar;
        bVar.l(2);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public gl.a0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.a0 a0VarC = gl.a0.c(inflater);
        Intrinsics.g(a0VarC, "inflate(...)");
        return a0VarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        return LayoutInflater.from(requireContext()).inflate(R$layout.default_tv_live_home_skeleton_drawing_layout, (ViewGroup) getFlStateView(), false);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getNoNetworkView() {
        View noNetworkView = super.getNoNetworkView();
        NoNetworkBigView noNetworkBigView = noNetworkView instanceof NoNetworkBigView ? (NoNetworkBigView) noNetworkView : null;
        if (noNetworkBigView != null) {
            NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        }
        return noNetworkView;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        SwipeRefreshLayout swipeRefreshLayout;
        BLConstraintLayout bLConstraintLayout;
        gl.a0 a0Var = (gl.a0) getMViewBinding();
        if (a0Var != null && (bLConstraintLayout = a0Var.f63631c) != null) {
            bLConstraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TVChannelHomeFragment.G0(this.f45654a, view);
                }
            });
        }
        gl.a0 a0Var2 = (gl.a0) getMViewBinding();
        if (a0Var2 == null || (swipeRefreshLayout = a0Var2.f63636h) == null) {
            return;
        }
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.home.tv.fragment.e
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void a() {
                TVChannelHomeFragment.H0(this.f45662a);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        Fragment parentFragment = getParentFragment();
        BaseHomeSubFragment baseHomeSubFragment = parentFragment instanceof BaseHomeSubFragment ? (BaseHomeSubFragment) parentFragment : null;
        if (baseHomeSubFragment == null) {
            lg.a.f68839a.i("TVChannelHomeFragment", "initViewData hostFragment is null", true);
            return;
        }
        Bundle arguments = getArguments();
        com.transsion.home.tv.adapter.f fVar = new com.transsion.home.tv.adapter.f(baseHomeSubFragment, new Function2() { // from class: com.transsion.home.tv.fragment.f
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return TVChannelHomeFragment.I0(this.f45664a, (TvChannelItem) obj, ((Integer) obj2).intValue());
            }
        }, arguments != null ? arguments.getInt("tab_id") : baseHomeSubFragment.getMTabId(), false, 0, new Function1() { // from class: com.transsion.home.tv.fragment.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TVChannelHomeFragment.J0(this.f45666a, ((Integer) obj).intValue());
            }
        }, null, new Function0() { // from class: com.transsion.home.tv.fragment.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TVChannelHomeFragment.K0(this.f45667a);
            }
        }, 88, null);
        this.channelAdapter = fVar;
        gl.a0 a0Var = (gl.a0) getMViewBinding();
        if (a0Var != null && (recyclerView3 = a0Var.f63635g) != null) {
            recyclerView3.setLayoutManager(new NpaLinearLayoutManager(recyclerView3.getContext()));
            recyclerView3.setItemAnimator(null);
            recyclerView3.setAdapter(fVar);
        }
        initExposureHelper();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            gl.a0 a0Var2 = (gl.a0) getMViewBinding();
            if (a0Var2 != null && (recyclerView2 = a0Var2.f63635g) != null) {
                recyclerView2.removeOnScrollListener(bVar);
            }
            gl.a0 a0Var3 = (gl.a0) getMViewBinding();
            if (a0Var3 != null && (recyclerView = a0Var3.f63635g) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
        }
        fVar.h0().D(new p6.f() { // from class: com.transsion.home.tv.fragment.i
            @Override // p6.f
            public final void a() {
                TVChannelHomeFragment.L0(this.f45668a);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        F0().m().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.home.tv.fragment.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TVChannelHomeFragment.P0(this.f45669a, (List) obj);
            }
        }));
        F0().q().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.home.tv.fragment.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TVChannelHomeFragment.Q0(this.f45670a, (CountryItem) obj);
            }
        }));
        F0().p().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.home.tv.fragment.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TVChannelHomeFragment.M0(this.f45671a, (TvChannelRefreshResult) obj);
            }
        }));
        F0().o().j(getViewLifecycleOwner(), new c(new Function1() { // from class: com.transsion.home.tv.fragment.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TVChannelHomeFragment.O0(this.f45672a, (TvChannelLoadMoreResult) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        showLoadingView();
        F0().t();
        this.loadStartTime = System.currentTimeMillis();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(f45612m, false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        X0();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        this.channelAdapter = null;
        this.exposureHelper = null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        F0().t();
    }
}
