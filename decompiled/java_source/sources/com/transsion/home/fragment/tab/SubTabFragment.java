package com.transsion.home.fragment.tab;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.activity.OperateActivity;
import com.transsion.home.adapter.suboperate.SubTabAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.fragment.bottom.BottomOpFragment;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.SubTabViewModel;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberRemindData;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000©\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\f\n\u0002\b\u0007*\u0001m\b\u0007\u0018\u0000 q2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001rB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u0019\u0010\u001c\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J!\u0010'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J!\u0010*\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b*\u0010(J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\u0004J\u000f\u00101\u001a\u000200H\u0016¢\u0006\u0004\b1\u00102J\r\u00104\u001a\u000203¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u000203H\u0016¢\u0006\u0004\b6\u00105J\u000f\u00107\u001a\u00020\u0005H\u0016¢\u0006\u0004\b7\u0010\u0004J\u0011\u00109\u001a\u0004\u0018\u000108H\u0016¢\u0006\u0004\b9\u0010:J\u001f\u0010>\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u001b\u0010M\u001a\u00020H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010T\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR$\u0010X\u001a\u0010\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u0005\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR$\u0010]\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002030Z\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0016\u0010_\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010PR\u0016\u0010c\u001a\u00020`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0018\u0010f\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0014\u0010h\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010PR\u0016\u0010j\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010PR,\u0010l\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00050U\u0012\u0004\u0012\u00020\u00050U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010WR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010o¨\u0006s"}, d2 = {"Lcom/transsion/home/fragment/tab/SubTabFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/y;", "<init>", "()V", "", "m0", "", "Y0", "()I", "v1", "j1", "U0", "", "alpha", "A1", "(F)V", "X0", "()F", "t1", "B1", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "V0", "p1", "Lcom/transsion/memberapi/MemberRemindData;", "remindData", "s1", "(Lcom/transsion/memberapi/MemberRemindData;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "c1", "(Landroid/view/LayoutInflater;)Lgl/y;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "p0", "initData", "onResume", "onDestroyView", "startLoading", "hideLoading", "lazyLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "getPageName", "()Ljava/lang/String;", "g0", "c0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Lcom/transsion/home/viewmodel/SubTabViewModel;", "g", "Lcom/transsion/home/viewmodel/SubTabViewModel;", "mViewModel", "Lcom/transsion/home/adapter/suboperate/SubTabAdapter;", "h", "Lcom/transsion/home/adapter/suboperate/SubTabAdapter;", "mMainAdapter", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "i", "Lkotlin/Lazy;", "Z0", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "", "j", "Z", "mHasTranslateWindow", CampaignEx.JSON_KEY_AD_K, "I", "mHeaderBgHeight", "Lkotlin/Function1;", "l", "Lkotlin/jvm/functions/Function1;", "mPermissionCallback", "Landroidx/activity/result/b;", "", "m", "Landroidx/activity/result/b;", "mLauncher", "n", "mIsFirstRender", "", "o", "J", "loadStartTime", TtmlNode.TAG_P, "Landroid/view/View;", "mNoNetworkView", CampaignEx.JSON_KEY_AD_Q, "isUGCMode", CampaignEx.JSON_KEY_AD_R, "isViewInitialized", "s", "mOnAppointmentClick", "com/transsion/home/fragment/tab/SubTabFragment$d", "t", "Lcom/transsion/home/fragment/tab/SubTabFragment$d;", "mRecycleScrollListener", TmcStartParams.KEY_URL_SHORT, "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubTabFragment extends BaseHomeSubFragment<gl.y> {

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f45316v = 8;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final Map f45317w;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private SubTabViewModel mViewModel;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private SubTabAdapter mMainAdapter;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean mHasTranslateWindow;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int mHeaderBgHeight;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Function1 mPermissionCallback;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b mLauncher;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private View mNoNetworkView;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isViewInitialized;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy homePreferencesViewModel = LazyKt.b(new Function0() { // from class: com.transsion.home.fragment.tab.p0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return SubTabFragment.d1(this.f45484a);
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean mIsFirstRender = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private long loadStartTime = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final boolean isUGCMode = ak.g.f639a.b();

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Function1 mOnAppointmentClick = new Function1() { // from class: com.transsion.home.fragment.tab.q0
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return SubTabFragment.u1(this.f45487a, (Function1) obj);
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final d mRecycleScrollListener = new d();

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.SubTabFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(int i11) {
            String str = (String) SubTabFragment.f45317w.get(Integer.valueOf(i11));
            return str == null ? "home_sub_operate" : str;
        }

        public final SubTabFragment b(int i11, String str) {
            if (!SubTabFragment.f45317w.containsKey(Integer.valueOf(i11)) && str != null) {
                SubTabFragment.f45317w.put(Integer.valueOf(i11), str);
            }
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str);
            SubTabFragment subTabFragment = new SubTabFragment();
            subTabFragment.setArguments(bundle);
            return subTabFragment;
        }
    }

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            String subjectId = feedsSubject != null ? feedsSubject.getSubjectId() : null;
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(subjectId, feedsSubject2 != null ? feedsSubject2.getSubjectId() : null);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(OperateItem oldItem, OperateItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            Subject feedsSubject = oldItem.getFeedsSubject();
            Integer subjectType = feedsSubject != null ? feedsSubject.getSubjectType() : null;
            Subject feedsSubject2 = newItem.getFeedsSubject();
            return Intrinsics.c(subjectType, feedsSubject2 != null ? feedsSubject2.getSubjectType() : null);
        }
    }

    public static final class c extends GridLayoutManager.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f45333f;

        c(int i11) {
            this.f45333f = i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            SubTabAdapter subTabAdapter = SubTabFragment.this.mMainAdapter;
            Integer numValueOf = subTabAdapter != null ? Integer.valueOf(subTabAdapter.getItemViewType(i11)) : null;
            int iOrdinal = PostItemType.PREFERENCES.ordinal();
            if (numValueOf != null && numValueOf.intValue() == iOrdinal) {
                return this.f45333f;
            }
            int iOrdinal2 = PostItemType.SUBJECT.ordinal();
            if (numValueOf == null || numValueOf.intValue() != iOrdinal2) {
                int iOrdinal3 = PostItemType.SINGLE_SUBJECT.ordinal();
                if (numValueOf == null || numValueOf.intValue() != iOrdinal3) {
                    int iOrdinal4 = PostItemType.TRENDING_FEES_GRID.ordinal();
                    if (numValueOf == null || numValueOf.intValue() != iOrdinal4) {
                        return this.f45333f;
                    }
                }
            }
            return 1;
        }
    }

    public static final class d extends RecyclerView.r {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (SubTabFragment.this.mHasTranslateWindow) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                SubTabFragment subTabFragment = SubTabFragment.this;
                subTabFragment.A1(RangesKt.h((iComputeVerticalScrollOffset * 1.0f) / subTabFragment.mHeaderBgHeight, 1.0f));
                if (!SubTabFragment.this.getMIsWhite() && SubTabFragment.this.X0() < 0.7f) {
                    SubTabFragment.this.b0(true);
                } else {
                    if (!SubTabFragment.this.getMIsWhite() || SubTabFragment.this.X0() < 0.7f) {
                        return;
                    }
                    SubTabFragment.this.b0(false);
                }
            }
        }
    }

    public static final class e implements nh.n {
        e() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            SubTabAdapter subTabAdapter;
            List<Object> data;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (SubTabFragment.this.isResumed() && (subTabAdapter = SubTabFragment.this.mMainAdapter) != null && (data = subTabAdapter.getData()) != null && data.isEmpty()) {
                SubTabFragment.this.t1();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45336a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45336a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45336a;
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
            this.f45336a.invoke(obj);
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Integer.valueOf(HomeTabId.Trending.getValue()), "Trending");
        linkedHashMap.put(Integer.valueOf(HomeTabId.UGC_Trending.getValue()), "UgcTrending");
        f45317w = linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void A1(float alpha) {
        View view;
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar == null || (view = yVar.f63865b) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    private final void B1() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.e0
            @Override // java.lang.Runnable
            public final void run() {
                SubTabFragment.C1(this.f45420a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void C1(SubTabFragment subTabFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (subTabFragment.isDetached() || !subTabFragment.isAdded() || subTabFragment.getContext() == null) {
            return;
        }
        View viewV0 = nh.m.f70474a.e() ? subTabFragment.V0() : subTabFragment.getNoNetworkView();
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter != null) {
            subTabAdapter.Y0(viewV0);
        }
        subTabFragment.U0();
        gl.y yVar = (gl.y) subTabFragment.getMViewBinding();
        if (yVar == null || (swipeRefreshLayout = yVar.f63869f) == null) {
            return;
        }
        swipeRefreshLayout.setEnabled(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void U0() {
        SwipeRefreshLayout swipeRefreshLayout;
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout2;
        Guideline guideline;
        View view;
        SwipeRefreshLayout swipeRefreshLayout3;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout4;
        Guideline guideline2;
        Guideline guideline3;
        gl.y yVar = (gl.y) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (yVar == null || (guideline3 = yVar.f63867d) == null) ? null : guideline3.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        if (this.mHasTranslateWindow) {
            bVar.f7662a = 0;
            gl.y yVar2 = (gl.y) getMViewBinding();
            if (yVar2 != null && (guideline2 = yVar2.f63867d) != null) {
                guideline2.setLayoutParams(bVar);
            }
            gl.y yVar3 = (gl.y) getMViewBinding();
            if (yVar3 != null && (swipeRefreshLayout4 = yVar3.f63869f) != null) {
                swipeRefreshLayout4.invalidate();
            }
            A1(0.0f);
            b0(true);
            gl.y yVar4 = (gl.y) getMViewBinding();
            if (yVar4 != null && (recyclerView2 = yVar4.f63868e) != null) {
                recyclerView2.addOnScrollListener(this.mRecycleScrollListener);
            }
            gl.y yVar5 = (gl.y) getMViewBinding();
            if (yVar5 == null || (swipeRefreshLayout3 = yVar5.f63869f) == null) {
                return;
            }
            int i11 = this.mHeaderBgHeight;
            swipeRefreshLayout3.setProgressViewOffset(false, i11, com.blankj.utilcode.util.a0.a(50.0f) + i11);
            return;
        }
        gl.y yVar6 = (gl.y) getMViewBinding();
        int height = (yVar6 == null || (view = yVar6.f63865b) == null) ? 0 : view.getHeight();
        if (height <= 0) {
            height = this.mHeaderBgHeight;
        }
        bVar.f7662a = height;
        gl.y yVar7 = (gl.y) getMViewBinding();
        if (yVar7 != null && (guideline = yVar7.f63867d) != null) {
            guideline.setLayoutParams(bVar);
        }
        gl.y yVar8 = (gl.y) getMViewBinding();
        if (yVar8 != null && (swipeRefreshLayout2 = yVar8.f63869f) != null) {
            swipeRefreshLayout2.invalidate();
        }
        A1(1.0f);
        b0(false);
        gl.y yVar9 = (gl.y) getMViewBinding();
        if (yVar9 != null && (recyclerView = yVar9.f63868e) != null) {
            recyclerView.removeOnScrollListener(this.mRecycleScrollListener);
        }
        gl.y yVar10 = (gl.y) getMViewBinding();
        if (yVar10 == null || (swipeRefreshLayout = yVar10.f63869f) == null) {
            return;
        }
        swipeRefreshLayout.setProgressViewOffset(false, 0, com.blankj.utilcode.util.a0.a(50.0f));
    }

    private final View V0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, 1, false, "", "");
        stateView.retry(new Function0() { // from class: com.transsion.home.fragment.tab.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubTabFragment.W0(this.f45442a);
            }
        });
        return stateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W0(SubTabFragment subTabFragment) {
        subTabFragment.t1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final float X0() {
        View view;
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar == null || (view = yVar.f63865b) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int Y0() {
        View view;
        View view2;
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof HomeFragment) {
            return h0();
        }
        if (parentFragment instanceof BottomOpFragment) {
            Fragment parentFragment2 = getParentFragment();
            Intrinsics.f(parentFragment2, "null cannot be cast to non-null type com.transsion.home.fragment.bottom.BottomOpFragment");
            return ((BottomOpFragment) parentFragment2).c0();
        }
        if (!(getActivity() instanceof OperateActivity)) {
            gl.y yVar = (gl.y) getMViewBinding();
            if (yVar != null && (view = yVar.f63865b) != null) {
                jg.c.h(view);
            }
            return 1;
        }
        int color = androidx.core.content.b.getColor(requireContext(), R$color.bg_02);
        gl.y yVar2 = (gl.y) getMViewBinding();
        if (yVar2 != null && (view2 = yVar2.f63865b) != null) {
            view2.setBackgroundColor(color);
        }
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.home.activity.OperateActivity");
        return ((OperateActivity) activity).e0();
    }

    private final HomePreferencesViewModel Z0() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(NoNetworkBigView noNetworkBigView, SubTabFragment subTabFragment) {
        jg.c.g(noNetworkBigView);
        subTabFragment.t1();
        com.tn.lib.view.r.b(subTabFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(SubTabFragment subTabFragment) {
        com.tn.lib.view.r.c(subTabFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HomePreferencesViewModel d1(SubTabFragment subTabFragment) {
        Fragment fragmentRequireParentFragment = subTabFragment.requireParentFragment();
        Intrinsics.g(fragmentRequireParentFragment, "requireParentFragment(...)");
        return (HomePreferencesViewModel) new androidx.p009lifecycle.v0(fragmentRequireParentFragment).a(HomePreferencesViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit e1(SubTabFragment subTabFragment, SubOperateData subOperateData) {
        List arrayList;
        List<OperateItem> items;
        r6.f fVarH0;
        SwipeRefreshLayout swipeRefreshLayout;
        gl.y yVar = (gl.y) subTabFragment.getMViewBinding();
        if (yVar != null && (swipeRefreshLayout = yVar.f63869f) != null) {
            swipeRefreshLayout.setEnabled(true);
        }
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter != null && (fVarH0 = subTabAdapter.h0()) != null) {
            fVarH0.z(true);
        }
        if (subOperateData == null || (items = subOperateData.getItems()) == null || (arrayList = CollectionsKt.U0(items)) == null) {
            arrayList = new ArrayList();
        }
        rl.h.c(arrayList, subOperateData != null ? subOperateData.getOps() : null);
        HomePreferencesUiHelperKt.f(subTabFragment.getMTabCode(), subTabFragment.Z0(), arrayList);
        SubTabAdapter subTabAdapter2 = subTabFragment.mMainAdapter;
        if (subTabAdapter2 != null) {
            subTabAdapter2.n1(arrayList);
        }
        subTabFragment.p1();
        String value = PostItemType.BANNER.getValue();
        OperateItem operateItem = (OperateItem) CollectionsKt.l0(arrayList, 0);
        subTabFragment.mHasTranslateWindow = Intrinsics.c(value, operateItem != null ? operateItem.getType() : null);
        if (subTabFragment.mIsFirstRender) {
            subTabFragment.U0();
            subTabFragment.mIsFirstRender = false;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(SubTabFragment subTabFragment, Function1 function1, SubOperateData subOperateData) {
        HashMap mapG;
        List<OperateItem> items;
        subTabFragment.hideLoading();
        boolean z10 = false;
        if (((subOperateData == null || (items = subOperateData.getItems()) == null) ? 0 : items.size()) <= 0) {
            subTabFragment.B1();
            return Unit.f67061a;
        }
        hj.b logViewConfig = subTabFragment.getLogViewConfig();
        if (logViewConfig != null && !logViewConfig.i()) {
            z10 = true;
        }
        if (z10) {
            hj.b logViewConfig2 = subTabFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            hj.b logViewConfig3 = subTabFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            }
        }
        function1.invoke(subOperateData);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(SubTabFragment subTabFragment, Function1 function1, SubOperateData subOperateData) {
        List<OperateItem> items;
        subTabFragment.hideLoading();
        if (((subOperateData == null || (items = subOperateData.getItems()) == null) ? 0 : items.size()) > 0) {
            subTabFragment.n0();
            function1.invoke(subOperateData);
        }
        return Unit.f67061a;
    }

    private final View getNoNetworkView() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext);
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.tab.i0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubTabFragment.a1(noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.tab.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SubTabFragment.b1(this.f45462a);
            }
        });
        com.tn.lib.view.r.a(getPageName());
        this.mNoNetworkView = noNetworkBigView;
        Intrinsics.e(noNetworkBigView);
        return noNetworkBigView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit h1(final SubTabFragment subTabFragment, TrendingRespData trendingRespData) {
        r6.f fVarH0;
        r6.f fVarH1;
        Pager pager;
        ConstraintLayout constraintLayoutB;
        List<OperateItem> transferData;
        List<TrendingRespItem> items;
        if (((trendingRespData == null || (items = trendingRespData.getItems()) == null) ? 0 : items.size()) > 0) {
            SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
            if (subTabAdapter != null) {
                subTabAdapter.q((trendingRespData == null || (transferData = trendingRespData.getTransferData()) == null) ? new ArrayList<>() : transferData);
            }
            gl.y yVar = (gl.y) subTabFragment.getMViewBinding();
            if (yVar != null && (constraintLayoutB = yVar.getRoot()) != null) {
                constraintLayoutB.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.f0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubTabFragment.i1(this.f45429a);
                    }
                }, 300L);
            }
        } else {
            if ((trendingRespData == null || (pager = trendingRespData.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) {
                SubTabAdapter subTabAdapter2 = subTabFragment.mMainAdapter;
                if (subTabAdapter2 != null && (fVarH1 = subTabAdapter2.h0()) != null) {
                    r6.f.u(fVarH1, false, 1, null);
                }
            } else {
                SubTabAdapter subTabAdapter3 = subTabFragment.mMainAdapter;
                if (subTabAdapter3 != null && (fVarH0 = subTabAdapter3.h0()) != null) {
                    fVarH0.v();
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(SubTabFragment subTabFragment) {
        r6.f fVarH0;
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter == null || (fVarH0 = subTabAdapter.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void j1() {
        int i11;
        LinearLayoutManager npaLinearLayoutManager;
        RecyclerView recyclerView;
        com.transsion.home.adapter.trending.provider.e eVarT1;
        RecyclerView recyclerView2;
        FragmentActivity activity;
        Function1 function1 = new Function1() { // from class: com.transsion.home.fragment.tab.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubTabFragment.n1(this.f45490a, ((Integer) obj).intValue());
            }
        };
        FragmentActivity activity2 = getActivity();
        if (activity2 == null || !com.transsion.baseui.util.b.a(activity2)) {
            i11 = 2;
        } else {
            i11 = com.blankj.utilcode.util.y.e() > com.blankj.utilcode.util.y.c() ? 4 : 3;
        }
        int i12 = i11;
        ArrayList arrayList = new ArrayList();
        Function1 function2 = this.mOnAppointmentClick;
        int iE0 = getMTabId();
        KeyEventDispatcher.Component activity3 = getActivity();
        Intrinsics.f(activity3, "null cannot be cast to non-null type com.transsion.home.preload.MainXMLPreload");
        com.transsion.home.preload.b bVarD = ((com.transsion.home.preload.a) activity3).getXmlPreload();
        FragmentActivity activity4 = getActivity();
        this.mMainAdapter = new SubTabAdapter(arrayList, function2, this, iE0, bVarD, function1, activity4 != null && com.transsion.baseui.util.b.a(activity4), i12, this.isUGCMode);
        if (this.isUGCMode || ((activity = getActivity()) != null && com.transsion.baseui.util.b.a(activity))) {
            NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(requireContext(), i12);
            c cVar = new c(i12);
            cVar.i(true);
            npaGridLayoutManager.d0(cVar);
            npaLinearLayoutManager = npaGridLayoutManager;
        } else {
            npaLinearLayoutManager = new NpaLinearLayoutManager(requireContext(), 1, false);
        }
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar != null && (recyclerView2 = yVar.f63868e) != null) {
            recyclerView2.setAdapter(this.mMainAdapter);
            recyclerView2.setLayoutManager(npaLinearLayoutManager);
            npaLinearLayoutManager.setInitialPrefetchItemCount(6);
            recyclerView2.setItemAnimator(null);
            if (this.isUGCMode) {
                ig.h hVar = new ig.h(com.blankj.utilcode.util.a0.a(16.0f), i12);
                hVar.d(com.blankj.utilcode.util.a0.a(8.0f));
                recyclerView2.addItemDecoration(hVar);
            } else {
                ig.h hVar2 = new ig.h(com.blankj.utilcode.util.a0.a(12.0f), 1);
                hVar2.d(com.blankj.utilcode.util.a0.a(6.0f));
                recyclerView2.addItemDecoration(hVar2);
            }
        }
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (subTabAdapter != null && (eVarT1 = subTabAdapter.getPreferencesProvider()) != null) {
            HomePreferencesViewModel homePreferencesViewModelZ0 = Z0();
            SubTabAdapter subTabAdapter2 = this.mMainAdapter;
            Intrinsics.e(subTabAdapter2);
            int iE1 = getMTabId();
            String strD0 = getMTabCode();
            if (strD0 == null) {
                strD0 = "";
            }
            HomePreferencesUiHelperKt.j(eVarT1, homePreferencesViewModelZ0, subTabAdapter2, iE1, strD0);
        }
        gl.y yVar2 = (gl.y) getMViewBinding();
        if (yVar2 != null && (recyclerView = yVar2.f63868e) != null) {
            HomePreferencesUiHelperKt.h(this, recyclerView, npaLinearLayoutManager, Z0(), new Function0() { // from class: com.transsion.home.fragment.tab.s0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(SubTabFragment.k1(this.f45494a));
                }
            });
        }
        SubTabAdapter subTabAdapter3 = this.mMainAdapter;
        if (subTabAdapter3 != null) {
            subTabAdapter3.h0().z(true);
            subTabAdapter3.h0().z(true);
            subTabAdapter3.h0().y(true);
            subTabAdapter3.h0().D(new p6.f() { // from class: com.transsion.home.fragment.tab.t0
                @Override // p6.f
                public final void a() {
                    SubTabFragment.l1(this.f45498a);
                }
            });
            subTabAdapter3.R0(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int k1(SubTabFragment subTabFragment) {
        List<Object> data;
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter == null || (data = subTabAdapter.getData()) == null) {
            return 0;
        }
        return data.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void l1(final SubTabFragment subTabFragment) {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            SubTabViewModel subTabViewModel = subTabFragment.mViewModel;
            if (subTabViewModel != null) {
                subTabViewModel.t(subTabFragment.getMTabId(), subTabFragment.getMTabCode(), false);
                return;
            }
            return;
        }
        uh.b.f76753a.d(R$string.no_network_toast);
        gl.y yVar = (gl.y) subTabFragment.getMViewBinding();
        if (yVar == null || (recyclerView = yVar.f63868e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.d0
            @Override // java.lang.Runnable
            public final void run() {
                SubTabFragment.m1(this.f45415a);
            }
        }, 500L);
    }

    private final void m0() {
        String strD0;
        Fragment parentFragment = getParentFragment();
        HomeFragment homeFragment = parentFragment instanceof HomeFragment ? (HomeFragment) parentFragment : null;
        if ((homeFragment == null || (strD0 = homeFragment.J0()) == null) && (strD0 = getMTabCode()) == null) {
            strD0 = "";
        }
        if (homeFragment != null) {
            homeFragment.b1(strD0, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(SubTabFragment subTabFragment) {
        r6.f fVarH0;
        SubTabAdapter subTabAdapter = subTabFragment.mMainAdapter;
        if (subTabAdapter == null || (fVarH0 = subTabAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1(SubTabFragment subTabFragment, int i11) {
        HashMap mapG;
        HashMap mapG2;
        String str;
        Integer numV;
        hj.b logViewConfig = subTabFragment.getLogViewConfig();
        int iIntValue = (logViewConfig == null || (mapG2 = logViewConfig.g()) == null || (str = (String) mapG2.get("scrollPosition")) == null || (numV = StringsKt.v(str)) == null) ? 0 : numV.intValue();
        hj.b logViewConfig2 = subTabFragment.getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            mapG.put("scrollPosition", String.valueOf(RangesKt.f(iIntValue, i11)));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o1(SubTabFragment subTabFragment) {
        subTabFragment.c0();
    }

    private final void p1() {
        final IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (Intrinsics.c(iMemberApi != null ? Boolean.valueOf(iMemberApi.c()) : null, Boolean.FALSE)) {
            s1(null);
        } else if (iMemberApi != null) {
            iMemberApi.m(new Function1() { // from class: com.transsion.home.fragment.tab.c0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubTabFragment.q1(iMemberApi, this, (MemberRemindData) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit q1(IMemberApi iMemberApi, final SubTabFragment subTabFragment, final MemberRemindData memberRemindData) {
        gl.y yVar;
        RecyclerView recyclerView;
        if (iMemberApi.F(memberRemindData) && (yVar = (gl.y) subTabFragment.getMViewBinding()) != null && (recyclerView = yVar.f63868e) != null) {
            recyclerView.post(new Runnable() { // from class: com.transsion.home.fragment.tab.l0
                @Override // java.lang.Runnable
                public final void run() {
                    SubTabFragment.r1(this.f45466a, memberRemindData);
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(SubTabFragment subTabFragment, MemberRemindData memberRemindData) {
        FragmentActivity activity = subTabFragment.getActivity();
        if (activity != null) {
            if (activity.isDestroyed() || activity.isFinishing()) {
                activity = null;
            }
            if (activity == null) {
                return;
            }
            subTabFragment.s1(memberRemindData);
        }
    }

    private final void s1(MemberRemindData remindData) {
        SubTabAdapter subTabAdapter;
        OperateItem operateItem = new OperateItem(null, PostItemType.MEMBER_BANNER.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, remindData, null, null, null, null, null, null, 2130706429, null);
        SubTabAdapter subTabAdapter2 = this.mMainAdapter;
        List<Object> data = subTabAdapter2 != null ? subTabAdapter2.getData() : null;
        if (data != null && data.size() >= 6) {
            SubTabAdapter subTabAdapter3 = this.mMainAdapter;
            if (subTabAdapter3 != null) {
                subTabAdapter3.n(5, operateItem);
                return;
            }
            return;
        }
        if (data == null || data.isEmpty() || (subTabAdapter = this.mMainAdapter) == null) {
            return;
        }
        subTabAdapter.n(data.size(), operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1() {
        startLoading();
        String strE = ak.o.f646a.e();
        SubTabViewModel subTabViewModel = this.mViewModel;
        if (subTabViewModel != null) {
            subTabViewModel.n(getMTabId(), false, strE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(SubTabFragment subTabFragment, Function1 callback) {
        Intrinsics.h(callback, "callback");
        subTabFragment.mPermissionCallback = callback;
        androidx.activity.result.b bVar = subTabFragment.mLauncher;
        if (bVar != null) {
            bVar.a(new String[]{"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"});
        }
        return Unit.f67061a;
    }

    private final void v1() {
        setNetListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void w1(final SubTabFragment subTabFragment, Map permissions) {
        RecyclerView recyclerView;
        Intrinsics.h(permissions, "permissions");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        Iterator it = permissions.entrySet().iterator();
        while (it.hasNext()) {
            if (!((Boolean) ((Map.Entry) it.next()).getValue()).booleanValue()) {
                booleanRef.element = false;
            }
        }
        gl.y yVar = (gl.y) subTabFragment.getMViewBinding();
        if (yVar == null || (recyclerView = yVar.f63868e) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.home.fragment.tab.g0
            @Override // java.lang.Runnable
            public final void run() {
                SubTabFragment.x1(this.f45434a, booleanRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x1(SubTabFragment subTabFragment, Ref.BooleanRef booleanRef) {
        Function1 function1 = subTabFragment.mPermissionCallback;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(booleanRef.element));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y1() {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z1() {
        return Unit.f67061a;
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void c0() {
        String strE = ak.o.f646a.e();
        SubTabViewModel subTabViewModel = this.mViewModel;
        if (subTabViewModel != null) {
            subTabViewModel.n(getMTabId(), true, strE);
        }
        m0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: c1, reason: merged with bridge method [inline-methods] */
    public gl.y getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.y yVarC = gl.y.c(inflater);
        Intrinsics.g(yVarC, "inflate(...)");
        return yVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public RecyclerView f0() {
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar != null) {
            return yVar.f63868e;
        }
        return null;
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public String g0() {
        return this.isUGCMode ? "HomeFragmentListGrid2TemplateAd" : "HomeFragmentListLinearTemplateAd";
    }

    public final String getPageName() {
        return INSTANCE.a(getMTabId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        gl.m0 m0Var;
        ConstraintLayout constraintLayout;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar != null && (swipeRefreshLayout = yVar.f63869f) != null && swipeRefreshLayout.isRefreshing()) {
            gl.y yVar2 = (gl.y) getMViewBinding();
            if (yVar2 == null || (swipeRefreshLayout2 = yVar2.f63869f) == null) {
                return;
            }
            swipeRefreshLayout2.setRefreshing(false);
            return;
        }
        gl.y yVar3 = (gl.y) getMViewBinding();
        if (yVar3 == null || (m0Var = yVar3.f63866c) == null || (constraintLayout = m0Var.f63784h) == null) {
            return;
        }
        jg.c.g(constraintLayout);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        androidx.p009lifecycle.b0 b0VarS;
        androidx.p009lifecycle.b0 b0VarQ;
        androidx.p009lifecycle.b0 b0VarP;
        Intrinsics.h(view, "view");
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (subTabAdapter != null) {
            HomePreferencesUiHelperKt.o(this, Z0(), subTabAdapter);
        }
        final Function1 function1 = new Function1() { // from class: com.transsion.home.fragment.tab.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubTabFragment.e1(this.f45513a, (SubOperateData) obj);
            }
        };
        SubTabViewModel subTabViewModel = this.mViewModel;
        if (subTabViewModel != null && (b0VarP = subTabViewModel.p()) != null) {
            b0VarP.j(this, new f(new Function1() { // from class: com.transsion.home.fragment.tab.j0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubTabFragment.f1(this.f45454a, function1, (SubOperateData) obj);
                }
            }));
        }
        SubTabViewModel subTabViewModel2 = this.mViewModel;
        if (subTabViewModel2 != null && (b0VarQ = subTabViewModel2.q()) != null) {
            b0VarQ.j(this, new f(new Function1() { // from class: com.transsion.home.fragment.tab.m0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SubTabFragment.g1(this.f45472a, function1, (SubOperateData) obj);
                }
            }));
        }
        SubTabViewModel subTabViewModel3 = this.mViewModel;
        if (subTabViewModel3 == null || (b0VarS = subTabViewModel3.s()) == null) {
            return;
        }
        b0VarS.j(this, new f(new Function1() { // from class: com.transsion.home.fragment.tab.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SubTabFragment.h1(this.f45477a, (TrendingRespData) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        SwipeRefreshLayout swipeRefreshLayout;
        View view2;
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        SubTabViewModel subTabViewModel = (SubTabViewModel) new androidx.p009lifecycle.v0(this).a(SubTabViewModel.class);
        this.mViewModel = subTabViewModel;
        if (subTabViewModel != null) {
            subTabViewModel.w(this.isUGCMode);
        }
        this.mHeaderBgHeight = Y0();
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar != null && (view2 = yVar.f63865b) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.mHeaderBgHeight;
        }
        gl.y yVar2 = (gl.y) getMViewBinding();
        if (yVar2 == null || (swipeRefreshLayout = yVar2.f63869f) == null) {
            return;
        }
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.home.fragment.tab.o0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void a() {
                SubTabFragment.o1(this.f45481a);
            }
        });
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager == null || lastAdPosition < 0) {
            return;
        }
        OperateItem operateItem = new OperateItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, Integer.MAX_VALUE, null);
        operateItem.setNonAdDelegate(wrapperNativeManager);
        operateItem.setType(PostItemType.TRENDING_NATIVE_AD.getValue());
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        int size = (subTabAdapter == null || (data = subTabAdapter.getData()) == null) ? 0 : data.size();
        if (lastAdPosition < 0 || lastAdPosition > size) {
            SubTabAdapter subTabAdapter2 = this.mMainAdapter;
            if (subTabAdapter2 != null) {
                subTabAdapter2.p(operateItem);
                return;
            }
            return;
        }
        SubTabAdapter subTabAdapter3 = this.mMainAdapter;
        if (subTabAdapter3 != null) {
            subTabAdapter3.n(lastAdPosition, operateItem);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        List<Object> data;
        if (!this.isViewInitialized) {
            this.isViewInitialized = true;
            j1();
            v1();
            lg.a.C0828a.f(lg.a.f68839a, "SubTabFragment", "lazyLoadData() --> View延迟初始化完成", false, 4, null);
        }
        this.loadStartTime = System.currentTimeMillis();
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (((subTabAdapter == null || (data = subTabAdapter.getData()) == null) ? 0 : data.size()) <= 0) {
            t1();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        this.mLauncher = registerForActivityResult(new f.h(), new androidx.activity.result.a() { // from class: com.transsion.home.fragment.tab.b0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                SubTabFragment.w1(this.f45397a, (Map) obj);
            }
        });
        super.onCreate(savedInstanceState);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout;
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar != null && (swipeRefreshLayout = yVar.f63869f) != null) {
            swipeRefreshLayout.setOnRefreshListener(null);
        }
        gl.y yVar2 = (gl.y) getMViewBinding();
        if (yVar2 != null && (recyclerView2 = yVar2.f63868e) != null) {
            recyclerView2.removeOnScrollListener(this.mRecycleScrollListener);
        }
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        if (subTabAdapter != null) {
            subTabAdapter.V1(null);
        }
        gl.y yVar3 = (gl.y) getMViewBinding();
        if (yVar3 != null && (recyclerView = yVar3.f63868e) != null) {
            recyclerView.setAdapter(null);
        }
        View view = this.mNoNetworkView;
        NoNetworkBigView noNetworkBigView = view instanceof NoNetworkBigView ? (NoNetworkBigView) view : null;
        if (noNetworkBigView != null) {
            noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.tab.z
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SubTabFragment.y1();
                }
            });
            noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.tab.a0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SubTabFragment.z1();
                }
            });
        }
        this.mNoNetworkView = null;
        super.onDestroyView();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        HashMap mapG;
        List<Object> data;
        super.onResume();
        SubTabAdapter subTabAdapter = this.mMainAdapter;
        boolean z10 = false;
        if (((subTabAdapter == null || (data = subTabAdapter.getData()) == null) ? 0 : data.size()) <= 0) {
            View view = this.mNoNetworkView;
            if (view != null && view.getVisibility() == 0) {
                z10 = true;
            }
            if (z10 && nh.m.f70474a.e()) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                View view2 = this.mNoNetworkView;
                lg.a.C0828a.f(c0828a, "SubTabFragment", "loaddata on resume = " + (view2 != null ? Integer.valueOf(view2.getVisibility()) : null) + "  " + this, false, 4, null);
                t1();
            }
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put("scrollPosition", "0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void p0() {
        RecyclerView recyclerView;
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar == null || (recyclerView = yVar.f63868e) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        gl.m0 m0Var;
        ConstraintLayout constraintLayout;
        gl.y yVar = (gl.y) getMViewBinding();
        if (yVar == null || (m0Var = yVar.f63866c) == null || (constraintLayout = m0Var.f63784h) == null) {
            return;
        }
        jg.c.k(constraintLayout);
    }
}
