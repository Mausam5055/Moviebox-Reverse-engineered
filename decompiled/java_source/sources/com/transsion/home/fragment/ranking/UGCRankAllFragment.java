package com.transsion.home.fragment.ranking;

import android.content.Context;
import android.graphics.Color;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.view.r;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.gslb.Utils;
import com.transsion.home.R$id;
import com.transsion.home.adapter.f;
import com.transsion.home.bean.CategoryType;
import com.transsion.home.bean.UGCRankAllData;
import com.transsion.home.fragment.film.UGCFilmListFragment;
import com.transsion.home.fragment.ranking.UGCRankAllFragment;
import com.transsion.home.viewmodel.UGCRankingViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.d0;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import nh.m;
import nh.n;
import nl.a;
import oh.h;
import p6.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u0000 M2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010!\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u00109R\u0016\u0010F\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00109R\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u00103¨\u0006N"}, d2 = {"Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgl/d0;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "", "s0", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "o0", "t0", "v0", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "j0", "", "getPageName", "()Ljava/lang/String;", "Lcom/transsion/home/bean/CategoryType;", "category", "", RequestParameters.POSITION, "u0", "(Lcom/transsion/home/bean/CategoryType;I)V", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lgl/d0;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "startLoading", "hideLoading", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsion/home/viewmodel/UGCRankingViewModel;", "a", "Lcom/transsion/home/viewmodel/UGCRankingViewModel;", "viewModel", "Lcom/transsion/home/fragment/film/UGCFilmListFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/fragment/film/UGCFilmListFragment;", "listFragment", "", "c", "Z", "hasRenderFirst", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "errorView", "e", "Ljava/lang/String;", "tabId", "Lcom/transsion/home/adapter/f;", "f", "Lcom/transsion/home/adapter/f;", "categoryAdapter", "Lnl/a;", "g", "Lnl/a;", "headerMaskManager", "h", "videoType", "i", "fromOptId", "", "j", "J", "firstLoadStartTimeMillis", CampaignEx.JSON_KEY_AD_K, "hasRecordedFirstLoadDuration", "l", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCRankAllFragment extends BaseFragment<d0> {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f45249m = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private UGCRankingViewModel viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private UGCFilmListFragment listFragment;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean hasRenderFirst;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private View errorView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private f categoryAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private a headerMaskManager;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private long firstLoadStartTimeMillis;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean hasRecordedFirstLoadDuration;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String tabId = "0";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String videoType = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String fromOptId = "";

    /* JADX INFO: renamed from: com.transsion.home.fragment.ranking.UGCRankAllFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCRankAllFragment a(String str, String str2, String str3, String str4) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString("tabId", str2);
            if (str3 == null) {
                str3 = "";
            }
            bundle.putString("videoType", str3);
            if (str4 == null) {
                str4 = "";
            }
            bundle.putString("fromOptId", str4);
            UGCRankAllFragment uGCRankAllFragment = new UGCRankAllFragment();
            uGCRankAllFragment.setArguments(bundle);
            return uGCRankAllFragment;
        }
    }

    public static final class b implements n {
        b() {
        }

        @Override // nh.n
        public void onConnected() {
            n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            View view;
            d0 mViewBinding;
            RecyclerView recyclerView;
            FrameLayout frameLayout;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (UGCRankAllFragment.this.isResumed() && (view = UGCRankAllFragment.this.errorView) != null && jg.c.i(view)) {
                lg.a.C0828a.f(lg.a.f68839a, "UGCRankAllFragment", "noNetWorkListener: network connected, hide error and reload", false, 4, null);
                d0 mViewBinding2 = UGCRankAllFragment.this.getMViewBinding();
                if (mViewBinding2 != null && (frameLayout = mViewBinding2.f63676e) != null) {
                    jg.c.g(frameLayout);
                }
                if (UGCRankAllFragment.this.hasRenderFirst && (mViewBinding = UGCRankAllFragment.this.getMViewBinding()) != null && (recyclerView = mViewBinding.f63675d) != null) {
                    jg.c.k(recyclerView);
                }
                UGCRankAllFragment.this.lazyLoadData();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45262a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45262a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45262a;
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
            this.f45262a.invoke(obj);
        }
    }

    private final View getNoNetworkView() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext);
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() { // from class: ll.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCRankAllFragment.l0(noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: ll.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCRankAllFragment.m0(this.f68975a);
            }
        });
        r.a(getPageName());
        return noNetworkBigView;
    }

    private final String getPageName() {
        return "/home/ugc_ranking";
    }

    private final View j0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, 1, false, "", "");
        stateView.retry(new Function0() { // from class: ll.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCRankAllFragment.k0(this.f68972a);
            }
        });
        return stateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(UGCRankAllFragment uGCRankAllFragment) {
        uGCRankAllFragment.lazyLoadData();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(NoNetworkBigView noNetworkBigView, UGCRankAllFragment uGCRankAllFragment) {
        jg.c.g(noNetworkBigView);
        uGCRankAllFragment.lazyLoadData();
        r.b(uGCRankAllFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(UGCRankAllFragment uGCRankAllFragment) {
        r.c(uGCRankAllFragment.getPageName());
        return Unit.f67061a;
    }

    private final void o0() {
        RecyclerView recyclerView;
        lg.a.C0828a.f(lg.a.f68839a, "UGCRankAllFragment", "initCategoryRecyclerView: start", false, 4, null);
        d0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f63675d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setItemAnimator(null);
        final f fVar = new f();
        fVar.w1(new d() { // from class: ll.c
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCRankAllFragment.p0(this.f68969a, fVar, baseQuickAdapter, view, i11);
            }
        });
        this.categoryAdapter = fVar;
        recyclerView.setAdapter(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(UGCRankAllFragment uGCRankAllFragment, f fVar, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UGCRankAllFragment", "category clicked: position=" + i11, false, 4, null);
        Object item = adapter.getItem(i11);
        if (item instanceof CategoryType) {
            f fVar2 = adapter instanceof f ? (f) adapter : null;
            if (i11 == (fVar2 != null ? fVar2.getCurrentSelectedPosition() : -1)) {
                lg.a.C0828a.f(c0828a, "UGCRankAllFragment", "category clicked same as selected: position=" + i11, false, 4, null);
                uGCRankAllFragment.u0((CategoryType) item, i11);
                return;
            }
            fVar.E1(i11);
            UGCFilmListFragment uGCFilmListFragment = uGCRankAllFragment.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.startLoading();
            }
            UGCRankingViewModel uGCRankingViewModel = uGCRankAllFragment.viewModel;
            if (uGCRankingViewModel != null) {
                uGCRankingViewModel.l(((CategoryType) item).getType(), uGCRankAllFragment.tabId);
            }
            uGCRankAllFragment.u0((CategoryType) item, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(UGCRankAllFragment uGCRankAllFragment, UGCRankAllData uGCRankAllData) {
        String url;
        List<UGCContent> items;
        UGCContent uGCContent;
        UGCCollection collection;
        Cover cover;
        List<UGCContent> items2;
        UGCContent uGCContent2;
        UGCCollection collection2;
        List<UGCContent> items3;
        UGCContent uGCContent3;
        UGCVideo video;
        Cover cover2;
        HashMap mapG;
        CategoryType categoryTypeC1;
        String name;
        View view;
        ImageView imageView;
        List<UGCContent> items4;
        UGCContent uGCContent4;
        UGCVideo video2;
        Cover cover3;
        String name2;
        CategoryType categoryTypeC2;
        List<CategoryType> categoryList;
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        List<CategoryType> categoryList2;
        List<UGCContent> items5;
        HashMap mapG2;
        String ops;
        HashMap mapG3;
        if (!uGCRankAllFragment.hasRecordedFirstLoadDuration && uGCRankAllFragment.firstLoadStartTimeMillis > 0 && !uGCRankAllFragment.hasRenderFirst) {
            long jCurrentTimeMillis = System.currentTimeMillis() - uGCRankAllFragment.firstLoadStartTimeMillis;
            hj.b logViewConfig = uGCRankAllFragment.getLogViewConfig();
            if (logViewConfig != null && (mapG3 = logViewConfig.g()) != null) {
                mapG3.put("load_duration", String.valueOf(jCurrentTimeMillis));
            }
            uGCRankAllFragment.hasRecordedFirstLoadDuration = true;
        }
        hj.b logViewConfig2 = uGCRankAllFragment.getLogViewConfig();
        String str = "";
        if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
            if (uGCRankAllData == null || (ops = uGCRankAllData.getOps()) == null) {
                ops = "";
            }
            mapG2.put("ops", ops);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        Cover cover4 = null;
        Integer numValueOf = (uGCRankAllData == null || (items5 = uGCRankAllData.getItems()) == null) ? null : Integer.valueOf(items5.size());
        lg.a.C0828a.f(c0828a, "UGCRankAllFragment", "rankAllLiveData: data received, items size=" + numValueOf + ", hasRenderFirst=" + uGCRankAllFragment.hasRenderFirst, false, 4, null);
        if (uGCRankAllFragment.hasRenderFirst) {
            UGCFilmListFragment uGCFilmListFragment = uGCRankAllFragment.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.hideLoading();
            }
        } else {
            uGCRankAllFragment.hideLoading();
        }
        if (((uGCRankAllData == null || (categoryList2 = uGCRankAllData.getCategoryList()) == null) ? 0 : categoryList2.size()) <= 0) {
            lg.a.C0828a.z(c0828a, "UGCRankAllFragment", "rankAllLiveData: no items, show error", false, 4, null);
            uGCRankAllFragment.v0();
            return Unit.f67061a;
        }
        d0 mViewBinding = uGCRankAllFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f63676e) != null) {
            jg.c.g(frameLayout);
        }
        d0 mViewBinding2 = uGCRankAllFragment.getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f63675d) != null) {
            jg.c.k(recyclerView);
        }
        if (!uGCRankAllFragment.hasRenderFirst) {
            lg.a.C0828a.f(c0828a, "UGCRankAllFragment", "rankAllLiveData: first render, setup category list", false, 4, null);
            f fVar = uGCRankAllFragment.categoryAdapter;
            if (fVar != null) {
                fVar.n1(uGCRankAllData != null ? uGCRankAllData.getCategoryList() : null);
            }
            if (uGCRankAllData != null && (categoryList = uGCRankAllData.getCategoryList()) != null) {
                int i11 = 0;
                for (Object obj : categoryList) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    CategoryType categoryType = (CategoryType) obj;
                    if (Intrinsics.c(categoryType.getType(), uGCRankAllData.getCurrentCategoryType())) {
                        f fVar2 = uGCRankAllFragment.categoryAdapter;
                        if (fVar2 != null) {
                            fVar2.E1(i11);
                        }
                        lg.a.C0828a.f(lg.a.f68839a, "UGCRankAllFragment", "rankAllLiveData: set initial selected position=" + i11 + ", category=" + categoryType.getType(), false, 4, null);
                    }
                    i11 = i12;
                }
            }
            uGCRankAllFragment.hasRenderFirst = true;
        }
        UGCFilmListFragment uGCFilmListFragment2 = uGCRankAllFragment.listFragment;
        if (uGCFilmListFragment2 != null) {
            f fVar3 = uGCRankAllFragment.categoryAdapter;
            if (fVar3 == null || (categoryTypeC2 = fVar3.C1()) == null || (name2 = categoryTypeC2.getName()) == null) {
                name2 = "";
            }
            uGCFilmListFragment2.L0(uGCRankAllData, name2);
        }
        if (uGCRankAllData == null || (items4 = uGCRankAllData.getItems()) == null || (uGCContent4 = (UGCContent) CollectionsKt.k0(items4)) == null || (video2 = uGCContent4.getVideo()) == null || (cover3 = video2.getCover()) == null || (url = cover3.getUrl()) == null) {
            url = (uGCRankAllData == null || (items = uGCRankAllData.getItems()) == null || (uGCContent = (UGCContent) CollectionsKt.k0(items)) == null || (collection = uGCContent.getCollection()) == null || (cover = collection.getCover()) == null) ? null : cover.getUrl();
            if (url == null) {
                url = "";
            }
        }
        if (url.length() == 0) {
            d0 mViewBinding3 = uGCRankAllFragment.getMViewBinding();
            if (mViewBinding3 != null && (imageView = mViewBinding3.f63678g) != null) {
                imageView.setBackgroundColor(uGCRankAllFragment.getResources().getColor(R$color.gray_dark_10));
            }
            d0 mViewBinding4 = uGCRankAllFragment.getMViewBinding();
            if (mViewBinding4 != null && (view = mViewBinding4.f63673b) != null) {
                view.setBackgroundColor(uGCRankAllFragment.getResources().getColor(R$color.gray_dark_10));
            }
        } else {
            if (uGCRankAllData != null && (items3 = uGCRankAllData.getItems()) != null && (uGCContent3 = (UGCContent) CollectionsKt.k0(items3)) != null && (video = uGCContent3.getVideo()) != null && (cover2 = video.getCover()) != null) {
                cover4 = cover2;
            } else if (uGCRankAllData != null && (items2 = uGCRankAllData.getItems()) != null && (uGCContent2 = (UGCContent) CollectionsKt.k0(items2)) != null && (collection2 = uGCContent2.getCollection()) != null) {
                cover4 = collection2.getCover();
            }
            uGCRankAllFragment.s0(cover4);
        }
        UGCFilmListFragment uGCFilmListFragment3 = uGCRankAllFragment.listFragment;
        if (uGCFilmListFragment3 != null) {
            uGCRankAllFragment.getChildFragmentManager().p().y(uGCFilmListFragment3).l();
        }
        hj.b logViewConfig3 = uGCRankAllFragment.getLogViewConfig();
        if (logViewConfig3 != null) {
            logViewConfig3.k(true);
        }
        hj.b logViewConfig4 = uGCRankAllFragment.getLogViewConfig();
        if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            f fVar4 = uGCRankAllFragment.categoryAdapter;
            if (fVar4 != null && (categoryTypeC1 = fVar4.C1()) != null && (name = categoryTypeC1.getName()) != null) {
                str = name;
            }
            mapG.put("rank_category", str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(UGCRankAllFragment uGCRankAllFragment, View view) {
        FragmentActivity activity = uGCRankAllFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void s0(Cover cover) {
        String averageHueDark;
        Object objM454constructorimpl;
        ImageView imageView;
        String url;
        String thumbnail;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        d0 mViewBinding = getMViewBinding();
        String str = "";
        if (mViewBinding != null && (imageView = mViewBinding.f63678g) != null) {
            ej.f.b bVarM = ej.f.f61882a.m(activity);
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarG = bVarM.g(url);
            if (cover == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).d(imageView);
        }
        if (cover == null || (averageHueDark = cover.getAverageHueDark()) == null) {
            return;
        }
        Unit unit = null;
        if (StringsKt.c0(averageHueDark, Utils.SEPARATOR, false, 2, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                String averageHueDark2 = cover.getAverageHueDark();
                if (averageHueDark2 != null) {
                    str = averageHueDark2;
                }
                int color = Color.parseColor(str);
                a aVar = this.headerMaskManager;
                if (aVar != null) {
                    aVar.a(Integer.valueOf(color));
                    unit = Unit.f67061a;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                lg.a.C0828a.l(lg.a.f68839a, "UGCRankAllFragment", "initRecyclerView: parseColor failed, use default color", false, 4, null);
            }
        }
    }

    private final void t0() {
        setNetListener(new b());
    }

    private final void u0(CategoryType category, int position) {
        String name;
        b0 b0VarK;
        UGCRankAllData uGCRankAllData;
        List<UGCContent> items;
        UGCContent uGCContent;
        UGCVideo video;
        String ops;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "rec_list");
        String str = "";
        if (category == null || (name = category.getName()) == null) {
            name = "";
        }
        linkedHashMap.put("rank_category", name);
        linkedHashMap.put("belong_to_collection_id", "");
        linkedHashMap.put("refer_subject_id", "");
        UGCRankingViewModel uGCRankingViewModel = this.viewModel;
        if (uGCRankingViewModel != null && (b0VarK = uGCRankingViewModel.k()) != null && (uGCRankAllData = (UGCRankAllData) b0VarK.f()) != null && (items = uGCRankAllData.getItems()) != null && (uGCContent = (UGCContent) CollectionsKt.k0(items)) != null && (video = uGCContent.getVideo()) != null && (ops = video.getOps()) != null) {
            str = ops;
        }
        linkedHashMap.put("ops", str);
        com.transsion.baselib.helper.a.f43262a.f(getPageName(), linkedHashMap);
    }

    private final void v0() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ll.d
            @Override // java.lang.Runnable
            public final void run() {
                UGCRankAllFragment.w0(this.f68971a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(UGCRankAllFragment uGCRankAllFragment) {
        d0 mViewBinding;
        RecyclerView recyclerView;
        FrameLayout frameLayout;
        if (uGCRankAllFragment.isDetached() || !uGCRankAllFragment.isAdded() || uGCRankAllFragment.getContext() == null) {
            return;
        }
        View viewJ0 = m.f70474a.e() ? uGCRankAllFragment.j0() : uGCRankAllFragment.getNoNetworkView();
        lg.a.C0828a.f(lg.a.f68839a, "UGCRankAllFragment", "showError: show error in outer container, hasRenderFirst=" + uGCRankAllFragment.hasRenderFirst, false, 4, null);
        d0 mViewBinding2 = uGCRankAllFragment.getMViewBinding();
        if (mViewBinding2 != null && (frameLayout = mViewBinding2.f63676e) != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(viewJ0);
            frameLayout.setVisibility(0);
        }
        if (uGCRankAllFragment.hasRenderFirst && (mViewBinding = uGCRankAllFragment.getMViewBinding()) != null && (recyclerView = mViewBinding.f63675d) != null) {
            jg.c.g(recyclerView);
        }
        UGCFilmListFragment uGCFilmListFragment = uGCRankAllFragment.listFragment;
        if (uGCFilmListFragment != null) {
            uGCRankAllFragment.getChildFragmentManager().p().p(uGCFilmListFragment).l();
        }
        uGCRankAllFragment.errorView = viewJ0;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        ConstraintLayout constraintLayout;
        d0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f63679h) == null) {
            return;
        }
        jg.c.h(constraintLayout);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        String string;
        b0 b0VarK;
        b0 b0VarK2;
        String string2;
        TitleLayout titleLayout;
        Intrinsics.h(view, "view");
        d0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f63680i) != null) {
            titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: ll.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    UGCRankAllFragment.r0(this.f68967a, view2);
                }
            });
            h hVar = h.f71021a;
            Context context = titleLayout.getContext();
            Intrinsics.g(context, "getContext(...)");
            titleLayout.setPadding(0, hVar.d(context), 0, 0);
        }
        d0 mViewBinding2 = getMViewBinding();
        ImageView imageView = mViewBinding2 != null ? mViewBinding2.f63678g : null;
        d0 mViewBinding3 = getMViewBinding();
        this.headerMaskManager = new a(imageView, mViewBinding3 != null ? mViewBinding3.f63673b : null);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("videoType", "")) == null) {
            string = "";
        }
        this.videoType = string;
        Bundle arguments2 = getArguments();
        String str = (arguments2 == null || (string2 = arguments2.getString("fromOptId", "")) == null) ? "" : string2;
        this.fromOptId = str;
        UGCFilmListFragment uGCFilmListFragmentA = UGCFilmListFragment.INSTANCE.a(this.tabId, "", "", true, this.videoType, str);
        this.listFragment = uGCFilmListFragmentA;
        if (uGCFilmListFragmentA != null) {
            getChildFragmentManager().p().c(R$id.ranking_list_container, uGCFilmListFragmentA, "ranking_list_fragment").l();
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UGCRankAllFragment", "initView: listFragment dynamically added to container", false, 4, null);
        UGCRankingViewModel uGCRankingViewModel = this.viewModel;
        if (uGCRankingViewModel != null) {
            UGCFilmListFragment uGCFilmListFragment = this.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.H0(uGCRankingViewModel);
            }
            lg.a.C0828a.f(c0828a, "UGCRankAllFragment", "initView: setupRankingViewModel completed", false, 4, null);
        }
        UGCRankingViewModel uGCRankingViewModel2 = this.viewModel;
        if (uGCRankingViewModel2 != null && (b0VarK2 = uGCRankingViewModel2.k()) != null) {
            b0VarK2.p(this);
        }
        UGCRankingViewModel uGCRankingViewModel3 = this.viewModel;
        if (uGCRankingViewModel3 != null && (b0VarK = uGCRankingViewModel3.k()) != null) {
            b0VarK.j(this, new c(new Function1() { // from class: ll.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCRankAllFragment.q0(this.f68968a, (UGCRankAllData) obj);
                }
            }));
        }
        t0();
        o0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        String string;
        if (this.hasRenderFirst) {
            UGCFilmListFragment uGCFilmListFragment = this.listFragment;
            if (uGCFilmListFragment != null) {
                uGCFilmListFragment.startLoading();
            }
        } else {
            startLoading();
        }
        Bundle arguments = getArguments();
        String str = "0";
        if (arguments != null && (string = arguments.getString("tabId", "0")) != null) {
            str = string;
        }
        this.tabId = str;
        Bundle arguments2 = getArguments();
        String string2 = arguments2 != null ? arguments2.getString("category") : null;
        lg.a.C0828a.f(lg.a.f68839a, "UGCRankAllFragment", "lazyLoadData: start loading, category=" + string2 + ", tabId=" + this.tabId, false, 4, null);
        if (!this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        UGCRankingViewModel uGCRankingViewModel = this.viewModel;
        if (uGCRankingViewModel != null) {
            uGCRankingViewModel.l(string2, this.tabId);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public d0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (UGCRankingViewModel) new v0(activity).a(UGCRankingViewModel.class);
        }
        d0 d0VarC = d0.c(inflater);
        Intrinsics.g(d0VarC, "inflate(...)");
        return d0VarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        FrameLayout frameLayout;
        ConstraintLayout constraintLayout;
        d0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f63679h) != null) {
            jg.c.k(constraintLayout);
        }
        d0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (frameLayout = mViewBinding2.f63676e) == null) {
            return;
        }
        jg.c.g(frameLayout);
    }
}
