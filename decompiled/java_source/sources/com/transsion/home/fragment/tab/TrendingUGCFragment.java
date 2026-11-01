package com.transsion.home.fragment.tab;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.DefaultView;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.TrendingUGCViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
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
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u0083\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0084\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0002¢\u0006\u0004\b%\u0010\u0004J\u0017\u0010&\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b&\u0010$J\u000f\u0010'\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u000fH\u0002¢\u0006\u0004\b(\u0010\u0011J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010/\u001a\u00020\u00052\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J!\u00106\u001a\u00020\u00052\u0006\u00105\u001a\u00020\"2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0005H\u0016¢\u0006\u0004\b8\u0010\u0004J\u0017\u0010:\u001a\u00020\u00052\u0006\u00109\u001a\u00020-H\u0016¢\u0006\u0004\b:\u00100J!\u0010;\u001a\u00020\u00052\u0006\u00105\u001a\u00020\"2\b\u0010.\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b;\u00107J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0004J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0005H\u0016¢\u0006\u0004\b>\u0010\u0004J\u0017\u0010@\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u000fH\u0016¢\u0006\u0004\b@\u0010\u001aJ\u000f\u0010A\u001a\u00020\u0005H\u0016¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010B\u001a\u00020\u0005H\u0016¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\u0005H\u0016¢\u0006\u0004\bC\u0010\u0004J\u000f\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\r\u0010G\u001a\u00020\u0005¢\u0006\u0004\bG\u0010\u0004J\u0011\u0010I\u001a\u0004\u0018\u00010HH\u0016¢\u0006\u0004\bI\u0010JJ\u001f\u0010N\u001a\u00020\u00052\u0006\u0010K\u001a\u00020*2\u0006\u0010M\u001a\u00020LH\u0016¢\u0006\u0004\bN\u0010OJ\u0017\u0010R\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020PH\u0017¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0005H\u0016¢\u0006\u0004\bT\u0010\u0004J\u000f\u0010U\u001a\u00020\u0005H\u0016¢\u0006\u0004\bU\u0010\u0004R\u0018\u0010Y\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0014\u0010]\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u0016\u0010e\u001a\u00020b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010l\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010p\u001a\u00020m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0018\u0010t\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u001b\u0010z\u001a\u00020u8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bv\u0010w\u001a\u0004\bx\u0010yR\u001e\u0010\u007f\u001a\n\u0012\u0004\u0012\u00020|\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0085\u0001"}, d2 = {"Lcom/transsion/home/fragment/tab/TrendingUGCFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/z;", "<init>", "()V", "", "f1", "T0", "initViewModel", "r1", "Lcom/transsion/home/bean/TrendingRespData;", "baseBean", "z1", "(Lcom/transsion/home/bean/TrendingRespData;)V", "S0", "", "d1", "()Z", "", "Y0", "()F", "alpha", "w1", "(F)V", "showProgress", "p1", "(Z)V", "initExposureHelper", "", "getPageName", "()Ljava/lang/String;", "x1", "Landroid/content/Context;", "context", "Landroid/view/View;", "V0", "(Landroid/content/Context;)Landroid/view/View;", "showEmpty", "getEmptyView", "o1", "c1", "v1", "", "a1", "()I", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "b1", "(Landroid/view/LayoutInflater;)Lgl/z;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "c0", "outState", "onSaveInstanceState", "onViewCreated", "lazyLoadData", "onResume", "onPause", "hidden", "onHiddenChanged", "logResume", "p0", "onDestroy", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "t1", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "startLoading", "hideLoading", "Lhl/b;", "g", "Lhl/b;", "exposureHelper", "Landroid/os/Handler;", "h", "Landroid/os/Handler;", "mHandler", "Lhl/d;", "i", "Lhl/d;", "postListReport", "Lcom/transsion/home/adapter/operateUGC/b;", "j", "Lcom/transsion/home/adapter/operateUGC/b;", "mainAdapter", "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/viewmodel/TrendingUGCViewModel;", "viewModel", "l", "I", "headerBgHeight", "", "m", "J", "loadStartTime", "Lcom/transsion/home/bean/MainOperateData;", "n", "Lcom/transsion/home/bean/MainOperateData;", "operatingResp", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "o", "Lkotlin/Lazy;", "Z0", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "", "Lcom/transsion/home/bean/OperateItem;", TtmlNode.TAG_P, "Ljava/util/List;", "preferencesBlockList", CampaignEx.JSON_KEY_AD_Q, "Landroid/view/View;", "mNoNetworkView", CampaignEx.JSON_KEY_AD_R, "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrendingUGCFragment extends BaseHomeSubFragment<gl.z> {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f45368s = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private hl.b exposureHelper;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private hl.d postListReport;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.adapter.operateUGC.b mainAdapter;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private TrendingUGCViewModel viewModel;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int headerBgHeight;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private MainOperateData operatingResp;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private List preferencesBlockList;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private View mNoNetworkView;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private long loadStartTime = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Lazy homePreferencesViewModel = LazyKt.b(new Function0() { // from class: com.transsion.home.fragment.tab.k2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TrendingUGCFragment.e1(this.f45464a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.TrendingUGCFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TrendingUGCFragment a(int i11, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str);
            lg.a.f68839a.c("TrendingUGCFragment", "create trending fragment", true);
            TrendingUGCFragment trendingUGCFragment = new TrendingUGCFragment();
            trendingUGCFragment.setArguments(bundle);
            return trendingUGCFragment;
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (TrendingUGCFragment.this.d1()) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                TrendingUGCFragment trendingUGCFragment = TrendingUGCFragment.this;
                trendingUGCFragment.w1(RangesKt.h((iComputeVerticalScrollOffset * 1.0f) / trendingUGCFragment.headerBgHeight, 1.0f));
                if (!TrendingUGCFragment.this.getMIsWhite() && TrendingUGCFragment.this.Y0() < 0.7f) {
                    TrendingUGCFragment.this.b0(true);
                } else {
                    if (!TrendingUGCFragment.this.getMIsWhite() || TrendingUGCFragment.this.Y0() < 0.7f) {
                        return;
                    }
                    TrendingUGCFragment.this.b0(false);
                }
            }
        }
    }

    public static final class c implements hl.a {
        c() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            try {
                com.transsion.home.adapter.operateUGC.b bVar = TrendingUGCFragment.this.mainAdapter;
                com.transsion.home.adapter.operateUGC.b bVar2 = null;
                if (bVar == null) {
                    Intrinsics.z("mainAdapter");
                    bVar = null;
                }
                OperateItem operateItem = (OperateItem) bVar.getData().get(i11);
                if (Intrinsics.c(operateItem.getType(), PostItemType.UGC_SINGLE_IMAGE.getValue())) {
                    rl.c.f74547a.e(i11, j11, operateItem);
                    return;
                }
                hl.d dVar = TrendingUGCFragment.this.postListReport;
                if (dVar != null) {
                    com.transsion.home.adapter.operateUGC.b bVar3 = TrendingUGCFragment.this.mainAdapter;
                    if (bVar3 == null) {
                        Intrinsics.z("mainAdapter");
                    } else {
                        bVar2 = bVar3;
                    }
                    dVar.a((OperateItem) CollectionsKt.l0(bVar2.getData(), i11), i11, j11);
                }
            } catch (Exception e11) {
                String message = e11.getMessage();
                if (message != null) {
                    lg.a.C0828a.f(lg.a.f68839a, "reportExposure", message, false, 4, null);
                }
            }
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            String strValueOf = String.valueOf(feedsSubject != null ? feedsSubject.getSubjectId() : null);
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(strValueOf, String.valueOf(feedsSubject2 != null ? feedsSubject2.getSubjectId() : null));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getType(), newItem.getType());
        }
    }

    public static final class e extends GridLayoutManager.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f45383f;

        e(int i11) {
            this.f45383f = i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            com.transsion.home.adapter.operateUGC.b bVar = TrendingUGCFragment.this.mainAdapter;
            if (bVar == null) {
                Intrinsics.z("mainAdapter");
                bVar = null;
            }
            String type = ((OperateItem) bVar.getItem(i11)).getType();
            if (!Intrinsics.c(type, PostItemType.PREFERENCES.getValue()) && Intrinsics.c(type, PostItemType.TRENDING_FEES_GRID.getValue())) {
                return 1;
            }
            return this.f45383f;
        }
    }

    public static final class f implements nh.n {
        f() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            androidx.p009lifecycle.b0 b0VarE;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            TrendingUGCFragment.this.v1();
            if (TrendingUGCFragment.this.isResumed()) {
                com.transsion.home.adapter.operateUGC.b bVar = TrendingUGCFragment.this.mainAdapter;
                TrendingRespData trendingRespData = null;
                if (bVar == null) {
                    Intrinsics.z("mainAdapter");
                    bVar = null;
                }
                if (!bVar.getData().isEmpty()) {
                    TrendingUGCViewModel trendingUGCViewModel = TrendingUGCFragment.this.viewModel;
                    if (trendingUGCViewModel != null && (b0VarE = trendingUGCViewModel.E()) != null) {
                        trendingRespData = (TrendingRespData) b0VarE.f();
                    }
                    if (trendingRespData != null) {
                        return;
                    }
                }
                lg.a.C0828a.f(lg.a.f68839a, "TrendingFragment", "onConnected", false, 4, null);
                TrendingUGCFragment.this.p1(false);
            }
        }

        @Override // nh.n
        public void onDisconnected() {
            TrendingUGCFragment.this.o1();
        }
    }

    public static final class g implements ViewTreeObserver.OnPreDrawListener {
        g() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            RecyclerView recyclerView;
            ViewTreeObserver viewTreeObserver;
            Unit unit;
            TrendingUGCFragment trendingUGCFragment = TrendingUGCFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                FragmentActivity activity = trendingUGCFragment.getActivity();
                if (activity != null) {
                    activity.reportFullyDrawn();
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            gl.z zVar = (gl.z) TrendingUGCFragment.this.getMViewBinding();
            if (zVar == null || (recyclerView = zVar.f63873d) == null || (viewTreeObserver = recyclerView.getViewTreeObserver()) == null) {
                return true;
            }
            viewTreeObserver.removeOnPreDrawListener(this);
            return true;
        }
    }

    static final class h implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45386a;

        h(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45386a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45386a;
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
            this.f45386a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(TrendingUGCFragment trendingUGCFragment) {
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        bVar.h0().v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(TrendingUGCFragment trendingUGCFragment, List list) {
        if (trendingUGCFragment.getContext() == null) {
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar = null;
        if (list.isEmpty()) {
            com.transsion.home.adapter.operateUGC.b bVar2 = trendingUGCFragment.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mainAdapter");
                bVar2 = null;
            }
            r6.f.u(bVar2.h0(), false, 1, null);
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar3 = trendingUGCFragment.mainAdapter;
        if (bVar3 == null) {
            Intrinsics.z("mainAdapter");
            bVar3 = null;
        }
        if (bVar3.h0().r()) {
            com.transsion.home.adapter.operateUGC.b bVar4 = trendingUGCFragment.mainAdapter;
            if (bVar4 == null) {
                Intrinsics.z("mainAdapter");
            } else {
                bVar = bVar4;
            }
            bVar.h0().s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void S0() {
        RecyclerView recyclerView;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (recyclerView = zVar.f63873d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void T0() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        gl.z zVar = (gl.z) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (zVar == null || (customSwipeRefreshLayout3 = zVar.f63874e) == null) ? null : customSwipeRefreshLayout3.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (d1()) {
            layoutParams2.topMargin = 0;
            gl.z zVar2 = (gl.z) getMViewBinding();
            if (zVar2 != null && (customSwipeRefreshLayout2 = zVar2.f63874e) != null) {
                int i11 = this.headerBgHeight;
                customSwipeRefreshLayout2.setProgressViewOffset(false, i11, com.blankj.utilcode.util.a0.a(50.0f) + i11);
            }
            w1(0.0f);
            b0(true);
            return;
        }
        layoutParams2.topMargin = this.headerBgHeight;
        gl.z zVar3 = (gl.z) getMViewBinding();
        if (zVar3 != null && (recyclerView = zVar3.f63873d) != null) {
            recyclerView.setPadding(0, com.blankj.utilcode.util.a0.a(12.0f), 0, com.blankj.utilcode.util.a0.a(56.0f));
        }
        gl.z zVar4 = (gl.z) getMViewBinding();
        if (zVar4 != null && (customSwipeRefreshLayout = zVar4.f63874e) != null) {
            customSwipeRefreshLayout.setProgressViewOffset(false, 0, com.blankj.utilcode.util.a0.a(50.0f));
        }
        w1(1.0f);
        b0(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(TrendingUGCFragment trendingUGCFragment, DefaultView defaultView, View view) {
        q1(trendingUGCFragment, false, 1, null);
        defaultView.setVisibility(8);
    }

    private final View V0(Context context) {
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(context);
        this.mNoNetworkView = noNetworkBigView;
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.tab.e2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingUGCFragment.W0(this.f45423a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.tab.f2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingUGCFragment.X0(this.f45430a);
            }
        });
        com.tn.lib.view.r.a(getPageName());
        return noNetworkBigView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(TrendingUGCFragment trendingUGCFragment) {
        q1(trendingUGCFragment, false, 1, null);
        com.tn.lib.view.r.b(trendingUGCFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X0(TrendingUGCFragment trendingUGCFragment) {
        com.tn.lib.view.r.c(trendingUGCFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final float Y0() {
        View view;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (view = zVar.f63875f) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    private final HomePreferencesViewModel Z0() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    private final int a1() {
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        int i11 = 0;
        for (Object obj : bVar.getData()) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((OperateItem) obj).getType(), PostItemType.NO_NETWORK.getValue())) {
                return i11;
            }
            i11 = i12;
        }
        return -1;
    }

    private final boolean c1() {
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        Iterator<T> it = bVar.getData().iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((OperateItem) it.next()).getType(), PostItemType.NO_NETWORK.getValue())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean d1() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HomePreferencesViewModel e1(TrendingUGCFragment trendingUGCFragment) {
        Fragment fragmentRequireParentFragment = trendingUGCFragment.requireParentFragment();
        Intrinsics.g(fragmentRequireParentFragment, "requireParentFragment(...)");
        return (HomePreferencesViewModel) new androidx.p009lifecycle.v0(fragmentRequireParentFragment).a(HomePreferencesViewModel.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f1() {
        int i11;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        gl.z zVar;
        RecyclerView recyclerView3;
        Context context = getContext();
        boolean z10 = context != null && com.transsion.baseui.util.b.a(context);
        if (z10) {
            i11 = com.blankj.utilcode.util.y.e() > com.blankj.utilcode.util.y.c() ? 4 : 3;
        } else {
            i11 = 2;
        }
        com.transsion.home.adapter.operateUGC.b bVar = new com.transsion.home.adapter.operateUGC.b(i11, this.exposureHelper, z10, this.viewModel, this);
        bVar.h0().z(true);
        bVar.h0().y(true);
        bVar.h0().E(4);
        bVar.h0().D(new p6.f() { // from class: com.transsion.home.fragment.tab.l2
            @Override // p6.f
            public final void a() {
                TrendingUGCFragment.h1(this.f45470a);
            }
        });
        bVar.R0(new d());
        bVar.U1(new Function0() { // from class: com.transsion.home.fragment.tab.m2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingUGCFragment.i1(this.f45475a);
            }
        });
        this.mainAdapter = bVar;
        NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(requireContext(), i11);
        e eVar = new e(i11);
        eVar.i(true);
        npaGridLayoutManager.d0(eVar);
        initExposureHelper();
        hl.b bVar2 = this.exposureHelper;
        if (bVar2 != null && (zVar = (gl.z) getMViewBinding()) != null && (recyclerView3 = zVar.f63873d) != null) {
            recyclerView3.addOnScrollListener(bVar2);
        }
        gl.z zVar2 = (gl.z) getMViewBinding();
        com.transsion.home.adapter.operateUGC.b bVar3 = null;
        if (zVar2 != null && (recyclerView2 = zVar2.f63873d) != null) {
            recyclerView2.setLayoutManager(npaGridLayoutManager);
            npaGridLayoutManager.setInitialPrefetchItemCount(6);
            ig.h hVar = new ig.h(com.blankj.utilcode.util.a0.a(12.0f), i11);
            hVar.d(com.blankj.utilcode.util.a0.a(8.0f));
            recyclerView2.addItemDecoration(hVar);
            recyclerView2.setItemAnimator(null);
            com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
            if (bVar4 == null) {
                Intrinsics.z("mainAdapter");
                bVar4 = null;
            }
            recyclerView2.setAdapter(bVar4);
            com.transsion.home.adapter.operateUGC.b bVar5 = this.mainAdapter;
            if (bVar5 == null) {
                Intrinsics.z("mainAdapter");
                bVar5 = null;
            }
            recyclerView2.addOnScrollListener(new fk.a(bVar5.h0()));
        }
        com.transsion.home.adapter.operateUGC.b bVar6 = this.mainAdapter;
        if (bVar6 == null) {
            Intrinsics.z("mainAdapter");
            bVar6 = null;
        }
        com.transsion.home.adapter.trending.provider.e eVarS1 = bVar6.getPreferencesProvider();
        HomePreferencesViewModel homePreferencesViewModelZ0 = Z0();
        com.transsion.home.adapter.operateUGC.b bVar7 = this.mainAdapter;
        if (bVar7 == null) {
            Intrinsics.z("mainAdapter");
        } else {
            bVar3 = bVar7;
        }
        int mTabId = getMTabId();
        String mTabCode = getMTabCode();
        if (mTabCode == null) {
            mTabCode = "";
        }
        HomePreferencesUiHelperKt.j(eVarS1, homePreferencesViewModelZ0, bVar3, mTabId, mTabCode);
        gl.z zVar3 = (gl.z) getMViewBinding();
        if (zVar3 != null && (recyclerView = zVar3.f63873d) != null) {
            HomePreferencesUiHelperKt.h(this, recyclerView, npaGridLayoutManager, Z0(), new Function0() { // from class: com.transsion.home.fragment.tab.n2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(TrendingUGCFragment.j1(this.f45479a));
                }
            });
        }
        gl.z zVar4 = (gl.z) getMViewBinding();
        if (zVar4 == null || (customSwipeRefreshLayout = zVar4.f63874e) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.home.fragment.tab.o2
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void a() {
                TrendingUGCFragment.g1(this.f45483a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(TrendingUGCFragment trendingUGCFragment) {
        trendingUGCFragment.c0();
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(R$string.no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.tab.b2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrendingUGCFragment.U0(this.f45402a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final String getPageName() {
        return "UgcTrending";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(TrendingUGCFragment trendingUGCFragment) {
        TrendingUGCViewModel trendingUGCViewModel = trendingUGCFragment.viewModel;
        if (trendingUGCViewModel != null) {
            trendingUGCViewModel.J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(TrendingUGCFragment trendingUGCFragment) {
        if (nh.m.f70474a.e()) {
            trendingUGCFragment.v1();
        }
        return Unit.f67061a;
    }

    private final void initExposureHelper() {
        this.postListReport = new hl.d(getPageName());
        hl.b bVar = new hl.b(0.6f, new c(), false, 4, null);
        this.exposureHelper = bVar;
        bVar.l(2);
    }

    private final void initViewModel() {
        androidx.p009lifecycle.b0 b0VarE;
        androidx.p009lifecycle.b0 b0VarZ;
        androidx.p009lifecycle.b0 b0VarY;
        final Function1 function1 = new Function1() { // from class: com.transsion.home.fragment.tab.g2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrendingUGCFragment.k1(this.f45438a, ((Boolean) obj).booleanValue());
            }
        };
        lg.a.C0828a c0828a = lg.a.f68839a;
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        lg.a.C0828a.f(c0828a, "lgx", "preObserve fragment:" + this + " " + aVar.a().J() + "  " + aVar.a().K(), false, 4, null);
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null && (b0VarY = trendingUGCViewModel.y()) != null) {
            b0VarY.j(this, new h(new Function1() { // from class: com.transsion.home.fragment.tab.h2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TrendingUGCFragment.l1(this.f45444a, function1, (MainOperateData) obj);
                }
            }));
        }
        TrendingUGCViewModel trendingUGCViewModel2 = this.viewModel;
        if (trendingUGCViewModel2 != null && (b0VarZ = trendingUGCViewModel2.z()) != null) {
            b0VarZ.j(this, new h(new Function1() { // from class: com.transsion.home.fragment.tab.i2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TrendingUGCFragment.m1(this.f45451a, function1, (MainOperateData) obj);
                }
            }));
        }
        TrendingUGCViewModel trendingUGCViewModel3 = this.viewModel;
        if (trendingUGCViewModel3 == null || (b0VarE = trendingUGCViewModel3.E()) == null) {
            return;
        }
        b0VarE.j(this, new h(new Function1() { // from class: com.transsion.home.fragment.tab.j2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrendingUGCFragment.n1(this.f45459a, (TrendingRespData) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int j1(TrendingUGCFragment trendingUGCFragment) {
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        return bVar.getData().size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit k1(TrendingUGCFragment trendingUGCFragment, boolean z10) {
        List arrayList;
        HashMap mapG;
        gl.z zVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<OperateItem> items;
        TrendingUGCViewModel trendingUGCViewModel;
        Integer groupPos;
        hj.b logViewConfig = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        MainOperateData mainOperateData = trendingUGCFragment.operatingResp;
        boolean z11 = false;
        if (((mainOperateData == null || (groupPos = mainOperateData.getGroupPos()) == null) ? 0 : groupPos.intValue()) > 0 && (trendingUGCViewModel = trendingUGCFragment.viewModel) != null) {
            trendingUGCViewModel.u(z10);
        }
        MainOperateData mainOperateData2 = trendingUGCFragment.operatingResp;
        if (mainOperateData2 == null || (items = mainOperateData2.getItems()) == null || (arrayList = CollectionsKt.U0(items)) == null) {
            arrayList = new ArrayList();
        }
        MainOperateData mainOperateData3 = trendingUGCFragment.operatingResp;
        com.transsion.home.adapter.operateUGC.b bVar = null;
        rl.h.c(arrayList, mainOperateData3 != null ? mainOperateData3.getOps() : null);
        String mTabCode = trendingUGCFragment.getMTabCode();
        List listN = HomePreferencesUiHelperKt.n(arrayList);
        trendingUGCFragment.preferencesBlockList = listN;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "TrendingUGCFragment", "HomePrefs-UGC buildBlocks, tab=" + mTabCode + ", rawSize=" + arrayList.size() + ", blockSize=" + listN.size(), false, 4, null);
        if (!(mTabCode == null || mTabCode.length() == 0) && !listN.isEmpty()) {
            trendingUGCFragment.Z0().E(mTabCode, listN);
            List listT = trendingUGCFragment.Z0().t(mTabCode, listN);
            lg.a.C0828a.f(c0828a, "TrendingUGCFragment", "HomePrefs-UGC initialInsert, tab=" + mTabCode + "， size:" + listT.size(), false, 4, null);
            if (!listT.isEmpty()) {
                HomePreferencesUiHelperKt.g(arrayList, listN, listT);
            }
            trendingUGCFragment.r1();
        }
        com.transsion.home.adapter.operateUGC.b bVar2 = trendingUGCFragment.mainAdapter;
        if (bVar2 == null) {
            Intrinsics.z("mainAdapter");
        } else {
            bVar = bVar2;
        }
        bVar.n1(arrayList);
        trendingUGCFragment.hideLoading();
        gl.z zVar2 = (gl.z) trendingUGCFragment.getMViewBinding();
        if (((zVar2 == null || (recyclerView2 = zVar2.f63873d) == null) ? 0 : recyclerView2.computeVerticalScrollOffset()) > 10 && (zVar = (gl.z) trendingUGCFragment.getMViewBinding()) != null && (recyclerView = zVar.f63873d) != null) {
            recyclerView.scrollBy(0, 1);
        }
        if (!z10) {
            com.transsion.home.preload.c.b(arrayList);
        }
        hj.b logViewConfig2 = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig2 != null && !logViewConfig2.i()) {
            z11 = true;
        }
        if (z11) {
            hj.b logViewConfig3 = trendingUGCFragment.getLogViewConfig();
            if (logViewConfig3 != null) {
                logViewConfig3.k(true);
            }
            String strValueOf = trendingUGCFragment.loadStartTime > 0 ? String.valueOf(System.currentTimeMillis() - trendingUGCFragment.loadStartTime) : "0";
            hj.b logViewConfig4 = trendingUGCFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(TrendingUGCFragment trendingUGCFragment, Function1 function1, MainOperateData mainOperateData) {
        HashMap mapG;
        List<OperateItem> items;
        hj.b logViewConfig = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterCache", String.valueOf((mainOperateData == null || (items = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items.size())));
        }
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().size() == 0) {
            List<OperateItem> items2 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items2 != null && !items2.isEmpty()) {
                trendingUGCFragment.operatingResp = mainOperateData;
                function1.invoke(Boolean.TRUE);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit m1(TrendingUGCFragment trendingUGCFragment, Function1 function1, MainOperateData mainOperateData) {
        List<OperateItem> items;
        gl.z zVar;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        HashMap mapG;
        List<OperateItem> items2;
        List<OperateItem> items3;
        List<OperateItem> items4;
        List<OperateItem> items5;
        MainOperateData mainOperateData2 = (MainOperateData) PreloadTrendingData.f45886n.a().J().f();
        lg.a.f68839a.c("PreloadTrending", "operating preload cache " + ((mainOperateData2 == null || (items5 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items5.size())) + "  net:" + ((mainOperateData == null || (items4 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items4.size())), true);
        hj.b logViewConfig = trendingUGCFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterNet", "cache:" + ((mainOperateData2 == null || (items3 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items3.size())) + " net:" + ((mainOperateData == null || (items2 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items2.size())));
        }
        List<OperateItem> items6 = mainOperateData != null ? mainOperateData.getItems() : null;
        if (items6 != null && !items6.isEmpty()) {
            trendingUGCFragment.operatingResp = mainOperateData;
        } else if (trendingUGCFragment.operatingResp == null) {
            trendingUGCFragment.operatingResp = mainOperateData2;
        }
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0 && ((zVar = (gl.z) trendingUGCFragment.getMViewBinding()) == null || (customSwipeRefreshLayout = zVar.f63874e) == null || !customSwipeRefreshLayout.isRefreshing())) {
            List<OperateItem> items7 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items7 == null || items7.isEmpty()) {
                return Unit.f67061a;
            }
        }
        MainOperateData mainOperateData3 = trendingUGCFragment.operatingResp;
        if (mainOperateData3 == null || (items = mainOperateData3.getItems()) == null || !(!items.isEmpty())) {
            TrendingUGCViewModel trendingUGCViewModel = trendingUGCFragment.viewModel;
            if (trendingUGCViewModel != null) {
                trendingUGCViewModel.J();
            }
        } else {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1(TrendingUGCFragment trendingUGCFragment, TrendingRespData trendingRespData) {
        trendingUGCFragment.z1(trendingRespData);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o1() {
        int iX;
        if (c1()) {
            return;
        }
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            if (bVar == null) {
                Intrinsics.z("mainAdapter");
                bVar = null;
            }
            iX = trendingUGCViewModel.x(bVar.getData());
        } else {
            iX = 2;
        }
        if (iX >= 0) {
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mainAdapter");
                bVar2 = null;
            }
            if (iX < bVar2.getData().size()) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mainAdapter");
                    bVar3 = null;
                }
                bVar3.getData().add(iX, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null));
                com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
                if (bVar4 == null) {
                    Intrinsics.z("mainAdapter");
                    bVar4 = null;
                }
                bVar4.notifyItemInserted(iX);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1(boolean showProgress) {
        if (showProgress) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            if (bVar == null) {
                Intrinsics.z("mainAdapter");
                bVar = null;
            }
            if (bVar.getData().size() <= 2) {
                startLoading();
            }
        }
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            trendingUGCViewModel.A(contextRequireContext);
        }
    }

    static /* synthetic */ void q1(TrendingUGCFragment trendingUGCFragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        trendingUGCFragment.p1(z10);
    }

    private final void r1() {
        Z0().u().j(getViewLifecycleOwner(), new h(new Function1() { // from class: com.transsion.home.fragment.tab.c2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrendingUGCFragment.s1(this.f45411a, (Pair) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(TrendingUGCFragment trendingUGCFragment, Pair pair) {
        List list;
        String str = (String) pair.component1();
        List list2 = (List) pair.component2();
        if (!Intrinsics.c(str, trendingUGCFragment.getMTabCode()) || (list = list2) == null || list.isEmpty()) {
            return Unit.f67061a;
        }
        List list3 = trendingUGCFragment.preferencesBlockList;
        if (list3 == null) {
            return Unit.f67061a;
        }
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        com.transsion.home.adapter.operateUGC.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        List listU0 = CollectionsKt.U0(bVar.getData());
        HomePreferencesUiHelperKt.g(listU0, list3, list2);
        com.transsion.home.adapter.operateUGC.b bVar3 = trendingUGCFragment.mainAdapter;
        if (bVar3 == null) {
            Intrinsics.z("mainAdapter");
        } else {
            bVar2 = bVar3;
        }
        bVar2.n1(listU0);
        return Unit.f67061a;
    }

    private final void showEmpty() {
        hideLoading();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View emptyView = getEmptyView(contextRequireContext);
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        bVar.Y0(emptyView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void u1(TrendingUGCFragment trendingUGCFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        gl.z zVar = (gl.z) trendingUGCFragment.getMViewBinding();
        if (zVar != null && (customSwipeRefreshLayout = zVar.f63874e) != null) {
            customSwipeRefreshLayout.setRefreshing(true);
        }
        trendingUGCFragment.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v1() {
        int iA1 = a1();
        if (iA1 >= 0) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            com.transsion.home.adapter.operateUGC.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.z("mainAdapter");
                bVar = null;
            }
            if (iA1 < bVar.getData().size()) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mainAdapter");
                    bVar3 = null;
                }
                bVar3.getData().remove(iA1);
                com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
                if (bVar4 == null) {
                    Intrinsics.z("mainAdapter");
                } else {
                    bVar2 = bVar4;
                }
                bVar2.notifyItemRemoved(iA1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void w1(float alpha) {
        View view;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (view = zVar.f63875f) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    private final void x1() {
        this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.d2
            @Override // java.lang.Runnable
            public final void run() {
                TrendingUGCFragment.y1(this.f45417a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(TrendingUGCFragment trendingUGCFragment) {
        if (trendingUGCFragment.isDetached() || !trendingUGCFragment.isAdded() || trendingUGCFragment.getContext() == null) {
            return;
        }
        trendingUGCFragment.hideLoading();
        Context contextRequireContext = trendingUGCFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View viewV0 = trendingUGCFragment.V0(contextRequireContext);
        com.transsion.home.adapter.operateUGC.b bVar = trendingUGCFragment.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        bVar.Y0(viewV0);
    }

    private final void z1(TrendingRespData baseBean) {
        List<OperateItem> list;
        com.transsion.home.adapter.operateUGC.b bVar = null;
        if (baseBean == null) {
            x1();
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mainAdapter");
                bVar2 = null;
            }
            if (bVar2.h0().r()) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mainAdapter");
                } else {
                    bVar = bVar3;
                }
                bVar.h0().v();
                return;
            }
            return;
        }
        hideLoading();
        lg.a.C0828a c0828a = lg.a.f68839a;
        List<TrendingRespItem> items = baseBean.getItems();
        lg.a.C0828a.f(c0828a, "TrendingFragment", "updateTrendingList subjectBean " + (items != null ? Integer.valueOf(items.size()) : null), false, 4, null);
        final List<OperateItem> transferData = baseBean.getTransferData();
        com.transsion.home.adapter.operateUGC.b bVar4 = this.mainAdapter;
        if (bVar4 == null) {
            Intrinsics.z("mainAdapter");
            bVar4 = null;
        }
        if (bVar4.getData().size() == 0 && ((list = transferData) == null || list.isEmpty())) {
            showEmpty();
            return;
        }
        if (transferData == null) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.z1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingUGCFragment.A1(this.f45517a);
                }
            }, 200L);
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar5 = this.mainAdapter;
        if (bVar5 == null) {
            Intrinsics.z("mainAdapter");
        } else {
            bVar = bVar5;
        }
        bVar.q(transferData);
        com.transsion.home.preload.c.a(getContext(), transferData);
        this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.a2
            @Override // java.lang.Runnable
            public final void run() {
                TrendingUGCFragment.B1(this.f45392a, transferData);
            }
        }, 200L);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: b1, reason: merged with bridge method [inline-methods] */
    public gl.z getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.z zVarC = gl.z.c(inflater);
        Intrinsics.g(zVarC, "inflate(...)");
        return zVarC;
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void c0() {
        super.c0();
        TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
        if (trendingUGCViewModel != null) {
            trendingUGCViewModel.I();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public RecyclerView f0() {
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null) {
            return zVar.f63873d;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        gl.z zVar;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        gl.m0 m0Var;
        ConstraintLayout constraintLayout;
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 != null && (m0Var = zVar2.f63872c) != null && (constraintLayout = m0Var.f63784h) != null) {
            jg.c.g(constraintLayout);
        }
        gl.z zVar3 = (gl.z) getMViewBinding();
        if (zVar3 != null && (customSwipeRefreshLayout3 = zVar3.f63874e) != null) {
            customSwipeRefreshLayout3.setEnabled(true);
        }
        gl.z zVar4 = (gl.z) getMViewBinding();
        if (zVar4 == null || (customSwipeRefreshLayout = zVar4.f63874e) == null || !customSwipeRefreshLayout.isRefreshing() || (zVar = (gl.z) getMViewBinding()) == null || (customSwipeRefreshLayout2 = zVar.f63874e) == null) {
            return;
        }
        customSwipeRefreshLayout2.setRefreshing(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        View view2;
        ViewGroup.LayoutParams layoutParams;
        RecyclerView recyclerView;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        f1();
        AppStartReport appStartReport = AppStartReport.f54517a;
        appStartReport.l("trending_list");
        initViewModel();
        appStartReport.l("trending_vm");
        setNetListener(new f());
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null && (recyclerView = zVar.f63873d) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(new g());
        }
        S0();
        this.headerBgHeight = h0();
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 != null && (view2 = zVar2.f63875f) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.headerBgHeight;
        }
        T0();
        if (savedInstanceState != null && savedInstanceState.getBoolean("operate_items", false)) {
            TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
            com.transsion.home.adapter.operateUGC.b bVar = null;
            List listD = trendingUGCViewModel != null ? trendingUGCViewModel.D() : null;
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mainAdapter");
            } else {
                bVar = bVar2;
            }
            bVar.n1(listD);
        }
        appStartReport.l("trending_view_init");
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().isEmpty()) {
            this.loadStartTime = System.currentTimeMillis();
            lg.a.C0828a c0828a = lg.a.f68839a;
            com.transsion.home.adapter.operateUGC.b bVar2 = this.mainAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mainAdapter");
                bVar2 = null;
            }
            boolean zIsEmpty = bVar2.getData().isEmpty();
            com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
            if (bVar3 == null) {
                Intrinsics.z("mainAdapter");
                bVar3 = null;
            }
            c0828a.c("PreloadTrending", "lazyLoadData " + zIsEmpty + " " + bVar3.getData().size(), true);
            q1(this, false, 1, null);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logResume() {
        super.logResume();
        rm.e.f74566a.h();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Context context = getContext();
        if (context == null || !com.transsion.baseui.util.b.a(context)) {
            return;
        }
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        bVar.notifyDataSetChanged();
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.TRENDING_CREATE, 0L, 2, null));
        super.onCreate(savedInstanceState);
        TrendingUGCViewModel.a aVar = TrendingUGCViewModel.f45835l;
        Application application = requireActivity().getApplication();
        Intrinsics.g(application, "getApplication(...)");
        this.viewModel = aVar.a(application);
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        rl.c.f74547a.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
                hl.b bVar = this.exposureHelper;
                if (bVar != null) {
                    bVar.e();
                }
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        lg.a.C0828a c0828a = lg.a.f68839a;
        View view = this.mNoNetworkView;
        lg.a.C0828a.f(c0828a, "TrendingFragment", "visible = " + (view != null ? Integer.valueOf(view.getVisibility()) : null) + "  " + this, false, 4, null);
        View view2 = this.mNoNetworkView;
        if (view2 != null && view2.getVisibility() == 0 && nh.m.f70474a.e()) {
            com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
            if (bVar == null) {
                Intrinsics.z("mainAdapter");
                bVar = null;
            }
            if (bVar.getData().size() < 2) {
                q1(this, false, 1, null);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        com.transsion.home.adapter.operateUGC.b bVar = this.mainAdapter;
        com.transsion.home.adapter.operateUGC.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.z("mainAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0) {
            TrendingUGCViewModel trendingUGCViewModel = this.viewModel;
            if (trendingUGCViewModel != null) {
                com.transsion.home.adapter.operateUGC.b bVar3 = this.mainAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mainAdapter");
                } else {
                    bVar2 = bVar3;
                }
                trendingUGCViewModel.N(bVar2.getData());
            }
            outState.putBoolean("operate_items", true);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.TRENDING_RENDER, 0L, 2, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void p0() {
        RecyclerView recyclerView;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (recyclerView = zVar.f63873d) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        gl.m0 m0Var;
        ConstraintLayout constraintLayout;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null && (m0Var = zVar.f63872c) != null && (constraintLayout = m0Var.f63784h) != null) {
            jg.c.k(constraintLayout);
        }
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 == null || (customSwipeRefreshLayout = zVar2.f63874e) == null) {
            return;
        }
        customSwipeRefreshLayout.setEnabled(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void t1() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        RecyclerView recyclerView;
        if (isAdded()) {
            gl.z zVar = (gl.z) getMViewBinding();
            if (zVar != null && (recyclerView = zVar.f63873d) != null) {
                recyclerView.scrollToPosition(0);
            }
            gl.z zVar2 = (gl.z) getMViewBinding();
            if (zVar2 == null || (customSwipeRefreshLayout = zVar2.f63874e) == null) {
                return;
            }
            customSwipeRefreshLayout.post(new Runnable() { // from class: com.transsion.home.fragment.tab.y1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingUGCFragment.u1(this.f45515a);
                }
            });
        }
    }
}
