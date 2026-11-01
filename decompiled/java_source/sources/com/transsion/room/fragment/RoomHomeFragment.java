package com.transsion.room.fragment;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.RoomCacheAnimationView;
import com.tn.lib.view.RoomCacheStatus;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.NestedSwipeRefreshLayout;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomTabBean;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.moviedetailapi.bean.RoomTabType;
import com.transsion.postdetailapi.IPostDetailApi;
import com.transsion.publish.api.IPublishApi;
import com.transsion.publish.bean.PublishResult;
import com.transsion.publish.view.UploadView;
import com.transsion.room.activity.RoomHomeActivity;
import com.transsion.room.api.RoomHomeCacheEvent;
import com.transsion.room.api.RoomHomeParentType;
import com.transsion.room.api.RoomHomeRefreshCacheEvent;
import com.transsion.room.api.RoomTabId;
import com.transsion.room.dialog.RequestCacheRoomDialog;
import com.transsion.room.view.RoomHomeTabTitleView;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.room.widget.CommunityRoomsView;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
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
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 |2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001}B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010\u0006J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\u0006J\u0017\u0010*\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010\u001bJ\u0019\u0010,\u001a\u00020\u00072\b\u0010+\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010\u0006J\u000f\u00100\u001a\u00020\u0007H\u0016¢\u0006\u0004\b0\u0010\u0006J\u000f\u00101\u001a\u00020\u0007H\u0016¢\u0006\u0004\b1\u0010\u0006J\u000f\u00102\u001a\u00020\u0007H\u0016¢\u0006\u0004\b2\u0010\u0006J\u000f\u00103\u001a\u00020\u0007H\u0016¢\u0006\u0004\b3\u0010\u0006J\u0017\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J-\u0010=\u001a\u00020\u00072\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u0002042\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00030;H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010A\u001a\u00020\u00072\b\u0010@\u001a\u0004\u0018\u00010?¢\u0006\u0004\bA\u0010BJ\u000f\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bD\u0010EJ\u0011\u0010G\u001a\u0004\u0018\u00010FH\u0016¢\u0006\u0004\bG\u0010HJ\u0011\u0010J\u001a\u0004\u0018\u00010IH\u0016¢\u0006\u0004\bJ\u0010KJ\u0015\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030;H\u0016¢\u0006\u0004\bL\u0010MJ\u0019\u0010O\u001a\u0004\u0018\u00010N2\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u000204H\u0016¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010\u0006J\u000f\u0010T\u001a\u00020\u0007H\u0016¢\u0006\u0004\bT\u0010\u0006J\u000f\u0010U\u001a\u00020\u0007H\u0016¢\u0006\u0004\bU\u0010\u0006R\u001b\u0010[\u001a\u00020V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0018\u0010@\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010`\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R$\u0010d\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0006\u0012\u0004\u0018\u00010N0a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010g\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010iR\u0018\u0010p\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010iR\u0019\u0010v\u001a\u0004\u0018\u00010q8\u0006¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010uR\u001d\u0010{\u001a\u0004\u0018\u00010w8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bx\u0010X\u001a\u0004\by\u0010z¨\u0006~"}, d2 = {"Lcom/transsion/room/fragment/RoomHomeFragment;", "Lcom/transsion/room/fragment/RoomBaseFragment;", "Lbq/q;", "Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "Laq/d;", "<init>", "()V", "", "r1", "b1", "c1", "", "W0", "()Z", "T0", "m1", "w1", "loadData", "z1", "k1", "i1", "Landroid/content/Context;", "context", "A1", "(Landroid/content/Context;)V", "isTabClick", "t1", "(Z)V", "Landroid/view/LayoutInflater;", "inflater", "X0", "(Landroid/view/LayoutInflater;)Lbq/q;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "lazyLoadData", "lazyLoadWithoutNet", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "e", "pageFrom", "y", "(Ljava/lang/String;)V", "initViewModel", "initListener", TmcConstants.NAVIGATION_ON_START, "retryLoadData", "onResume", "q1", "", RequestParameters.POSITION, "v0", "(I)V", "Lcom/transsion/room/view/RoomHomeTabTitleView;", "tabView", "index", "", "tabList", "x0", "(Lcom/transsion/room/view/RoomHomeTabTitleView;ILjava/util/List;)V", "Lcom/transsion/publish/bean/PublishResult;", "eventBean", "u1", "(Lcom/transsion/publish/bean/PublishResult;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "u0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "y0", "()Ljava/util/List;", "Landroidx/fragment/app/Fragment;", "m0", "(I)Landroidx/fragment/app/Fragment;", "A", "()I", "t", "F", "O", "Lcom/transsion/room/viewmodel/RoomViewModel;", "g", "Lkotlin/Lazy;", "V0", "()Lcom/transsion/room/viewmodel/RoomViewModel;", "mRoomViewModel", "h", "Lcom/transsion/publish/bean/PublishResult;", "i", "Landroidx/fragment/app/Fragment;", "mExploreFragment", "", "j", "Ljava/util/Map;", "mRefreshViewMap", CampaignEx.JSON_KEY_AD_K, "I", "mExplorePosition", "l", "Ljava/lang/String;", "insertPostId", "m", "insertPostOps", "n", "parentTypeName", "o", "cache", "Lcom/transsion/mb/config/manager/ConfigBean;", TtmlNode.TAG_P, "Lcom/transsion/mb/config/manager/ConfigBean;", "getRoomCacheOpen", "()Lcom/transsion/mb/config/manager/ConfigBean;", "roomCacheOpen", "Lcom/transsion/publish/api/IPublishApi;", CampaignEx.JSON_KEY_AD_Q, "U0", "()Lcom/transsion/publish/api/IPublishApi;", "mPublishedApi", CampaignEx.JSON_KEY_AD_R, "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomHomeFragment extends RoomBaseFragment<bq.q, RoomTabItem> implements aq.d {

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f51473s = "net_without_wifi_image_tab";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private PublishResult eventBean;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Fragment mExploreFragment;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int mExplorePosition;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String insertPostId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String insertPostOps;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String parentTypeName;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy mRoomViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(RoomViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.room.fragment.RoomHomeFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.room.fragment.RoomHomeFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Map mRefreshViewMap = new LinkedHashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String cache = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final ConfigBean roomCacheOpen = sm.f.f75407c.a().c("room_cache_open", true);

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final Lazy mPublishedApi = LazyKt.b(new Function0() { // from class: com.transsion.room.fragment.z0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomHomeFragment.h1();
        }
    });

    /* JADX INFO: renamed from: com.transsion.room.fragment.RoomHomeFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ RoomHomeFragment b(Companion companion, RoomHomeParentType roomHomeParentType, String str, String str2, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                str = null;
            }
            if ((i11 & 4) != 0) {
                str2 = null;
            }
            return companion.a(roomHomeParentType, str, str2);
        }

        public final RoomHomeFragment a(RoomHomeParentType parentType, String str, String str2) {
            Intrinsics.h(parentType, "parentType");
            RoomHomeFragment roomHomeFragment = new RoomHomeFragment();
            roomHomeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("post_id", str), TuplesKt.a("ops", str2), TuplesKt.a("parent_type", parentType.name())));
            return roomHomeFragment;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51485a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.NETWORK_2G.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.NETWORK_3G.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.NETWORK_4G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NetworkType.NETWORK_5G.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f51485a = iArr;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            RoomCacheAnimationView roomCacheAnimationView;
            super.onPageSelected(i11);
            bq.q qVar = (bq.q) RoomHomeFragment.this.getMViewBinding();
            if (qVar == null || (roomCacheAnimationView = qVar.f16847d) == null) {
                return;
            }
            roomCacheAnimationView.setVisibility(i11 == RoomHomeFragment.this.mExplorePosition && RoomHomeFragment.this.W0() ? 0 : 8);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51487a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51487a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51487a;
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
            this.f51487a.invoke(obj);
        }
    }

    public static final class e extends CountDownTimer {
        e() {
            super(5000L, 1000L);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.CountDownTimer
        public void onFinish() {
            BubbleTextView bubbleTextView;
            bq.q qVar = (bq.q) RoomHomeFragment.this.getMViewBinding();
            if (qVar == null || (bubbleTextView = qVar.f16845b) == null) {
                return;
            }
            jg.c.g(bubbleTextView);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j11) {
        }
    }

    private final void A1(Context context) {
        UploadView uploadView = new UploadView(context);
        uploadView.setPageName("room_home");
        if (!uploadView.getIsShow()) {
            uploadView.setVisibility(0);
            uploadView.setAlpha(1.0f);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
                activityB = com.blankj.utilcode.util.a.b();
            }
            if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
                return;
            } else {
                uploadView.show(activityB);
            }
        }
        uploadView.showFloatView(this.eventBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void T0() {
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");
        this.cache = string;
        if (string == null || string.length() == 0) {
            bq.q qVar = (bq.q) getMViewBinding();
            if (qVar == null || (roomCacheAnimationView = qVar.f16847d) == null) {
                return;
            }
            roomCacheAnimationView.setStatus(RoomCacheStatus.START);
            return;
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 == null || (roomCacheAnimationView2 = qVar2.f16847d) == null) {
            return;
        }
        roomCacheAnimationView2.setStatus(RoomCacheStatus.END);
    }

    private final IPublishApi U0() {
        return (IPublishApi) this.mPublishedApi.getValue();
    }

    private final RoomViewModel V0() {
        return (RoomViewModel) this.mRoomViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean W0() {
        ConfigBean configBean = this.roomCacheOpen;
        String value = configBean != null ? configBean.getValue() : null;
        if (value != null && value.length() != 0) {
            ConfigBean configBean2 = this.roomCacheOpen;
            if (Intrinsics.c(configBean2 != null ? configBean2.getValue() : null, "true")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(RoomHomeFragment roomHomeFragment, View view) {
        roomHomeFragment.q1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(RoomHomeFragment roomHomeFragment, View view) {
        roomHomeFragment.q1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(RoomHomeFragment roomHomeFragment, View view) {
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");
        if (string == null || string.length() == 0) {
            roomHomeFragment.w1();
            return;
        }
        IPostDetailApi iPostDetailApiQ0 = roomHomeFragment.q0();
        if (iPostDetailApiQ0 != null) {
            iPostDetailApiQ0.n(roomHomeFragment.mExploreFragment);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b1() {
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        c1();
        String str = this.cache;
        if (str == null || str.length() == 0) {
            bq.q qVar = (bq.q) getMViewBinding();
            if (qVar == null || (roomCacheAnimationView = qVar.f16847d) == null) {
                return;
            }
            roomCacheAnimationView.setStatus(RoomCacheStatus.START);
            return;
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 == null || (roomCacheAnimationView2 = qVar2.f16847d) == null) {
            return;
        }
        roomCacheAnimationView2.setStatus(RoomCacheStatus.END);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c1() {
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        ConfigBean configBean = this.roomCacheOpen;
        String value = configBean != null ? configBean.getValue() : null;
        if (value != null && value.length() != 0) {
            ConfigBean configBean2 = this.roomCacheOpen;
            if (Intrinsics.c(configBean2 != null ? configBean2.getValue() : null, "true")) {
                bq.q qVar = (bq.q) getMViewBinding();
                if (qVar == null || (roomCacheAnimationView2 = qVar.f16847d) == null) {
                    return;
                }
                jg.c.k(roomCacheAnimationView2);
                return;
            }
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 == null || (roomCacheAnimationView = qVar2.f16847d) == null) {
            return;
        }
        jg.c.g(roomCacheAnimationView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(RoomHomeFragment roomHomeFragment) {
        roomHomeFragment.r1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void e1(RoomHomeFragment roomHomeFragment, AppBarLayout appBarLayout, int i11) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        bq.q qVar = (bq.q) roomHomeFragment.getMViewBinding();
        if (qVar == null || (nestedSwipeRefreshLayout = qVar.f16850g) == null) {
            return;
        }
        nestedSwipeRefreshLayout.setEnabled(i11 >= 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(RoomHomeFragment roomHomeFragment, RoomTabBean roomTabBean) {
        List<RoomTabItem> items;
        List<RoomTabItem> items2;
        List<RoomTabItem> items3;
        String value;
        List<RoomTabItem> items4;
        NetworkType networkTypeC = nh.m.f70474a.c();
        int i11 = -1;
        int i12 = networkTypeC == null ? -1 : b.f51485a[networkTypeC.ordinal()];
        int i13 = 0;
        if (i12 == 1 || i12 == 2 || i12 == 3 || i12 == 4) {
            ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), f51473s, false, 2, null);
            if ((configBeanD == null || (value = configBeanD.getValue()) == null) ? false : Boolean.parseBoolean(value)) {
                if (roomTabBean != null && (items3 = roomTabBean.getItems()) != null) {
                    Iterator<RoomTabItem> it = items3.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(it.next().getTabId(), "images")) {
                            i11 = i13;
                            break;
                        }
                        i13++;
                    }
                    i13 = i11;
                } else if (roomTabBean != null && (items2 = roomTabBean.getItems()) != null) {
                    Iterator<RoomTabItem> it2 = items2.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.c(it2.next().getTabId(), roomTabBean.getDefTabId())) {
                            i11 = i13;
                            break;
                        }
                        i13++;
                    }
                    i13 = i11;
                }
            } else if (roomTabBean != null && (items = roomTabBean.getItems()) != null) {
                Iterator<RoomTabItem> it3 = items.iterator();
                while (it3.hasNext()) {
                    if (Intrinsics.c(it3.next().getTabId(), roomTabBean.getDefTabId())) {
                        i11 = i13;
                        break;
                    }
                    i13++;
                }
                i13 = i11;
            }
        } else if (roomTabBean != null && (items4 = roomTabBean.getItems()) != null) {
            Iterator<RoomTabItem> it4 = items4.iterator();
            while (it4.hasNext()) {
                if (Intrinsics.c(it4.next().getTabId(), roomTabBean.getDefTabId())) {
                    i11 = i13;
                    break;
                }
                i13++;
            }
            i13 = i11;
        }
        roomHomeFragment.w0(i13);
        roomHomeFragment.initViewPager();
        roomHomeFragment.s0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit g1(RoomHomeFragment roomHomeFragment, RoomBean roomBean) {
        bq.q qVar;
        CommunityRoomsView communityRoomsView;
        CommunityRoomsView communityRoomsView2;
        CommunityRoomsView communityRoomsView3;
        CommunityRoomsView communityRoomsView4;
        List<RoomItem> items = roomBean != null ? roomBean.getItems() : null;
        if (items != null && !items.isEmpty()) {
            bq.q qVar2 = (bq.q) roomHomeFragment.getMViewBinding();
            if ((qVar2 == null || (communityRoomsView4 = qVar2.f16853j) == null || communityRoomsView4.getVisibility() != 0) && (qVar = (bq.q) roomHomeFragment.getMViewBinding()) != null && (communityRoomsView = qVar.f16853j) != null) {
                jg.c.k(communityRoomsView);
            }
            bq.q qVar3 = (bq.q) roomHomeFragment.getMViewBinding();
            if (qVar3 != null && (communityRoomsView3 = qVar3.f16853j) != null) {
                List<RoomItem> items2 = roomBean != null ? roomBean.getItems() : null;
                Intrinsics.e(items2);
                communityRoomsView3.setList(items2);
            }
            bq.q qVar4 = (bq.q) roomHomeFragment.getMViewBinding();
            if (qVar4 != null && (communityRoomsView2 = qVar4.f16853j) != null) {
                communityRoomsView2.setReportName("room_home", "room_home_community");
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPublishApi h1() {
        return (IPublishApi) TheRouter.d(IPublishApi.class, new Object[0]);
    }

    private final void i1() {
        Function1 function1 = new Function1() { // from class: com.transsion.room.fragment.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHomeFragment.j1(this.f51582a, (PublishResult) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PublishResult.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(RoomHomeFragment roomHomeFragment, PublishResult it) {
        Intrinsics.h(it, "it");
        roomHomeFragment.u1(it);
        return Unit.f67061a;
    }

    private final void k1() {
        Function1 function1 = new Function1() { // from class: com.transsion.room.fragment.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHomeFragment.l1(this.f51591a, (JoinRoomEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit l1(RoomHomeFragment roomHomeFragment, JoinRoomEvent value) {
        CommunityRoomsView communityRoomsView;
        List<RoomItem> dataList;
        Object next;
        Context context;
        Intrinsics.h(value, "value");
        if (value.getJoin()) {
            Context context2 = roomHomeFragment.getContext();
            if (context2 != null) {
                RoomViewModel.u(roomHomeFragment.V0(), context2, null, 0, 6, null);
            }
        } else {
            bq.q qVar = (bq.q) roomHomeFragment.getMViewBinding();
            if (qVar != null && (communityRoomsView = qVar.f16853j) != null && (dataList = communityRoomsView.getDataList()) != null) {
                Iterator<T> it = dataList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((RoomItem) next).getGroupId(), value.getGroupId()));
                if (((RoomItem) next) != null && (context = roomHomeFragment.getContext()) != null) {
                    RoomViewModel.u(roomHomeFragment.V0(), context, null, 0, 6, null);
                }
            }
        }
        return Unit.f67061a;
    }

    private final void loadData() {
        Context context = getContext();
        if (context != null) {
            RoomViewModel.u(V0(), context, null, 0, 6, null);
        }
    }

    private final void m1() {
        Function1 function1 = new Function1() { // from class: com.transsion.room.fragment.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHomeFragment.n1(this.f51585a, (RoomHomeCacheEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = RoomHomeCacheEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().q(), false, function1);
        Function1 function2 = new Function1() { // from class: com.transsion.room.fragment.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHomeFragment.o1((RoomHomeRefreshCacheEvent) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = RoomHomeRefreshCacheEvent.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().q(), false, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit n1(RoomHomeFragment roomHomeFragment, RoomHomeCacheEvent it) {
        RoomCacheAnimationView roomCacheAnimationView;
        Intrinsics.h(it, "it");
        bq.q qVar = (bq.q) roomHomeFragment.getMViewBinding();
        if (qVar != null && (roomCacheAnimationView = qVar.f16847d) != null) {
            roomCacheAnimationView.setStatus(RoomCacheStatus.END);
        }
        roomHomeFragment.cache = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(RoomHomeRefreshCacheEvent it) {
        Intrinsics.h(it, "it");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p1(RoomHomeFragment roomHomeFragment) {
        ViewPager2 viewPager2Z0 = roomHomeFragment.z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.setCurrentItem(roomHomeFragment.o0(), false);
        }
        aq.h.f16093a.q(false);
    }

    private final void r1() {
        loadData();
        T0();
        androidx.p010savedstate.e eVar = (Fragment) this.mRefreshViewMap.get(Integer.valueOf(getMSelectTabIndex()));
        if (eVar != null) {
            ep.b bVar = eVar instanceof ep.b ? (ep.b) eVar : null;
            if (bVar != null) {
                bVar.doRefresh(new Function0() { // from class: com.transsion.room.fragment.e1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RoomHomeFragment.s1(this.f51548a);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit s1(RoomHomeFragment roomHomeFragment) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        bq.q qVar;
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout2;
        bq.q qVar2 = (bq.q) roomHomeFragment.getMViewBinding();
        if (qVar2 != null && (nestedSwipeRefreshLayout = qVar2.f16850g) != null && nestedSwipeRefreshLayout.isRefreshing() && (qVar = (bq.q) roomHomeFragment.getMViewBinding()) != null && (nestedSwipeRefreshLayout2 = qVar.f16850g) != null) {
            nestedSwipeRefreshLayout2.setRefreshing(false);
        }
        return Unit.f67061a;
    }

    private final void t1(boolean isTabClick) {
        String str;
        List<RoomTabItem> items;
        RoomTabItem roomTabItem;
        String tabId;
        Map mapM = MapsKt.m(TuplesKt.a("opt_type", isTabClick ? "tab_refresh" : "feed_error"));
        try {
            Result.Companion companion = Result.INSTANCE;
            RoomTabBean roomTabBean = (RoomTabBean) V0().G().f();
            if (roomTabBean == null || (items = roomTabBean.getItems()) == null || (roomTabItem = items.get(getMSelectTabIndex())) == null || (tabId = roomTabItem.getTabId()) == null) {
                str = null;
            } else {
                str = (String) mapM.put("subpage_name", "room_home_" + tabId);
            }
            Result.m454constructorimpl(str);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        hj.i.f64505a.p("room_home", mapM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(RoomHomeFragment roomHomeFragment) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        roomHomeFragment.A1(applicationA);
    }

    private final void w1() {
        RequestCacheRoomDialog requestCacheRoomDialogA = RequestCacheRoomDialog.INSTANCE.a();
        requestCacheRoomDialogA.t0(new Function0() { // from class: com.transsion.room.fragment.u0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomHomeFragment.x1(this.f51594a);
            }
        });
        Dialog dialog = requestCacheRoomDialogA.getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(true);
        }
        requestCacheRoomDialogA.j0(new DialogInterface.OnDismissListener() { // from class: com.transsion.room.fragment.v0
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                RoomHomeFragment.y1(dialogInterface);
            }
        });
        requestCacheRoomDialogA.k0(getContext(), "room_cache_dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit x1(RoomHomeFragment roomHomeFragment) {
        bq.q qVar;
        RoomCacheAnimationView roomCacheAnimationView;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return Unit.f67061a;
        }
        IPostDetailApi iPostDetailApiQ0 = roomHomeFragment.q0();
        if (iPostDetailApiQ0 != null) {
            iPostDetailApiQ0.g(roomHomeFragment.mExploreFragment, false);
        }
        String str = roomHomeFragment.cache;
        if ((str == null || str.length() == 0) && (qVar = (bq.q) roomHomeFragment.getMViewBinding()) != null && (roomCacheAnimationView = qVar.f16847d) != null) {
            roomCacheAnimationView.setStatus(RoomCacheStatus.LOADING);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(DialogInterface dialogInterface) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void z1() {
        BubbleTextView bubbleTextView;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        if (bVar.b().getBoolean("show_room_cache_guide", false) || !W0()) {
            return;
        }
        e eVar = new e();
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null && (bubbleTextView = qVar.f16845b) != null) {
            jg.c.k(bubbleTextView);
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 == null || qVar2.f16845b == null) {
            return;
        }
        eVar.start();
        bVar.b().putBoolean("show_room_cache_guide", true);
    }

    @Override // aq.d
    public int A() {
        return getMSelectTabIndex();
    }

    @Override // aq.d
    public void F() {
        T0();
    }

    @Override // aq.d
    public void O() {
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: X0, reason: merged with bridge method [inline-methods] */
    public bq.q getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bq.q qVarC = bq.q.c(inflater);
        Intrinsics.g(qVarC, "inflate(...)");
        return qVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // aq.d
    public void e(boolean isTabClick) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        AppBarLayout appBarLayout;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        t1(isTabClick);
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null && (appBarLayout = qVar.f16846c) != null) {
            appBarLayout.setExpanded(true);
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 != null && (nestedSwipeRefreshLayout = qVar2.f16850g) != null) {
            nestedSwipeRefreshLayout.setRefreshing(true);
        }
        r1();
    }

    @Override // com.transsion.room.fragment.RoomBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        ViewPager2 viewPager2;
        RoomCacheAnimationView roomCacheAnimationView;
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null && (appCompatImageView = qVar.f16848e) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.p0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomHomeFragment.Y0(this.f51579a, view);
                }
            });
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 != null && (gradientTextView = qVar2.f16852i) != null) {
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.x0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomHomeFragment.Z0(this.f51602a, view);
                }
            });
        }
        bq.q qVar3 = (bq.q) getMViewBinding();
        if (qVar3 != null && (roomCacheAnimationView = qVar3.f16847d) != null) {
            roomCacheAnimationView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.room.fragment.y0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RoomHomeFragment.a1(this.f51606a, view);
                }
            });
        }
        bq.q qVar4 = (bq.q) getMViewBinding();
        if (qVar4 == null || (viewPager2 = qVar4.f16854k) == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(new c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.room.fragment.RoomBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        AppBarLayout appBarLayout;
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null && (nestedSwipeRefreshLayout = qVar.f16850g) != null) {
            nestedSwipeRefreshLayout.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(nestedSwipeRefreshLayout.getContext(), R$color.bg_01));
            nestedSwipeRefreshLayout.setColorSchemeColors(androidx.core.content.b.getColor(nestedSwipeRefreshLayout.getContext(), R$color.main_gradient_center), androidx.core.content.b.getColor(nestedSwipeRefreshLayout.getContext(), R$color.main_gradient_start));
            nestedSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.room.fragment.a1
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    RoomHomeFragment.d1(this.f51535a);
                }
            });
        }
        bq.q qVar2 = (bq.q) getMViewBinding();
        if (qVar2 != null && (appBarLayout = qVar2.f16846c) != null) {
            appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: com.transsion.room.fragment.b1
                @Override // com.google.android.material.appbar.AppBarLayout.b
                public final void onOffsetChanged(AppBarLayout appBarLayout2, int i11) {
                    RoomHomeFragment.e1(this.f51538a, appBarLayout2, i11);
                }
            });
        }
        bq.q qVar3 = (bq.q) getMViewBinding();
        if (qVar3 != null && (appCompatImageView = qVar3.f16848e) != null && !(getActivity() instanceof RoomHomeActivity)) {
            ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = com.transsion.usercenter.setting.labelsfeedback.a.b(104);
            appCompatImageView.setLayoutParams(marginLayoutParams);
        }
        b1();
    }

    @Override // com.transsion.room.fragment.RoomBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        V0().v().j(this, new d(new Function1() { // from class: com.transsion.room.fragment.c1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHomeFragment.g1(this.f51541a, (RoomBean) obj);
            }
        }));
        V0().G().j(this, new d(new Function1() { // from class: com.transsion.room.fragment.d1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomHomeFragment.f1(this.f51544a, (RoomTabBean) obj);
            }
        }));
        i1();
        k1();
        m1();
    }

    @Override // com.transsion.room.fragment.RoomBaseFragment, com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        V0().H();
        loadData();
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadWithoutNet() {
        V0().H();
        loadData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.room.fragment.RoomBaseFragment
    public Fragment m0(int position) {
        List<RoomTabItem> items;
        RoomTabItem roomTabItem;
        Fragment fragmentC;
        bq.q qVar;
        bq.q qVar2;
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        try {
            RoomTabBean roomTabBean = (RoomTabBean) V0().G().f();
            if (roomTabBean != null && (items = roomTabBean.getItems()) != null && (roomTabItem = items.get(position)) != null) {
                String tabId = roomTabItem.getTabId();
                if (Intrinsics.c(tabId, RoomTabId.EXPLORE.getValue())) {
                    IPostDetailApi iPostDetailApiQ0 = q0();
                    fragmentC = iPostDetailApiQ0 != null ? iPostDetailApiQ0.d(this.parentTypeName, this.insertPostId, this.insertPostOps) : null;
                    this.mExplorePosition = position;
                    if (getMSelectTabIndex() == position && (((qVar = (bq.q) getMViewBinding()) == null || (roomCacheAnimationView2 = qVar.f16847d) == null || roomCacheAnimationView2.getVisibility() != 0) && W0() && (qVar2 = (bq.q) getMViewBinding()) != null && (roomCacheAnimationView = qVar2.f16847d) != null)) {
                        jg.c.k(roomCacheAnimationView);
                    }
                    this.mExploreFragment = fragmentC;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                } else if (Intrinsics.c(tabId, RoomTabId.NEARBY.getValue())) {
                    IPostDetailApi iPostDetailApiQ1 = q0();
                    fragmentC = iPostDetailApiQ1 != null ? iPostDetailApiQ1.l(this.parentTypeName) : null;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                } else if (Intrinsics.c(tabId, RoomTabId.DISCOVER.getValue())) {
                    IPostDetailApi iPostDetailApiQ2 = q0();
                    fragmentC = iPostDetailApiQ2 != null ? iPostDetailApiQ2.b(this.parentTypeName, roomTabItem, position) : null;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                } else if (Intrinsics.c(roomTabItem.getType(), RoomTabType.H5.getValue())) {
                    WebFragmentV2 webFragmentV2B = WebFragmentV2.INSTANCE.b();
                    Pair pairA = TuplesKt.a("url", roomTabItem.getUrl());
                    Boolean bool = Boolean.TRUE;
                    webFragmentV2B.setArguments(androidx.core.os.d.b(pairA, TuplesKt.a(WebConstants.FIELD_STATUS_BAR_HIDDEN, bool), TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, bool)));
                    fragmentC = webFragmentV2B;
                } else {
                    IPostDetailApi iPostDetailApiQ3 = q0();
                    fragmentC = iPostDetailApiQ3 != null ? iPostDetailApiQ3.c(this.parentTypeName, roomTabItem, position) : null;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                }
                if (fragmentC != null) {
                    return fragmentC;
                }
            }
            IPostDetailApi iPostDetailApiQ4 = q0();
            Fragment fragmentD = iPostDetailApiQ4 != null ? iPostDetailApiQ4.d(this.parentTypeName, this.insertPostId, this.insertPostOps) : null;
            this.mExploreFragment = fragmentD;
            return fragmentD;
        } catch (Throwable unused) {
            IPostDetailApi iPostDetailApiQ5 = q0();
            Fragment fragmentD2 = iPostDetailApiQ5 != null ? iPostDetailApiQ5.d(this.parentTypeName, this.insertPostId, this.insertPostOps) : null;
            this.mExploreFragment = fragmentD2;
            return fragmentD2;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("room_home", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.insertPostId = arguments != null ? arguments.getString("post_id") : null;
        Bundle arguments2 = getArguments();
        this.insertPostOps = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        this.parentTypeName = arguments3 != null ? arguments3.getString("parent_type") : null;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        ViewPager2 viewPager2Z0;
        super.onResume();
        z1();
        c1();
        if (!aq.h.f16093a.f() || (viewPager2Z0 = z0()) == null) {
            return;
        }
        viewPager2Z0.postDelayed(new Runnable() { // from class: com.transsion.room.fragment.f1
            @Override // java.lang.Runnable
            public final void run() {
                RoomHomeFragment.p1(this.f51550a);
            }
        }, 200L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    public void q1() {
        IPublishApi iPublishApiU0;
        Context context = getContext();
        if (context == null || (iPublishApiU0 = U0()) == null) {
            return;
        }
        iPublishApiU0.b(context);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        loadData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // aq.d
    public void t() {
        RoomCacheAnimationView roomCacheAnimationView;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null && (roomCacheAnimationView = qVar.f16847d) != null) {
            roomCacheAnimationView.setStatus(RoomCacheStatus.LOADING);
        }
        IPostDetailApi iPostDetailApiQ0 = q0();
        if (iPostDetailApiQ0 != null) {
            iPostDetailApiQ0.g(this.mExploreFragment, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.room.fragment.RoomBaseFragment
    public MagicIndicator u0() {
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null) {
            return qVar.f16849f;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void u1(PublishResult eventBean) {
        bq.q qVar;
        AppCompatImageView appCompatImageView;
        this.eventBean = eventBean;
        Integer numValueOf = eventBean != null ? Integer.valueOf(eventBean.getState()) : null;
        if (numValueOf == null || numValueOf.intValue() != 0 || (qVar = (bq.q) getMViewBinding()) == null || (appCompatImageView = qVar.f16848e) == null) {
            return;
        }
        appCompatImageView.postDelayed(new Runnable() { // from class: com.transsion.room.fragment.w0
            @Override // java.lang.Runnable
            public final void run() {
                RoomHomeFragment.v1(this.f51599a);
            }
        }, 1500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.room.fragment.RoomBaseFragment
    public void v0(int position) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar == null || (nestedSwipeRefreshLayout = qVar.f16850g) == null) {
            return;
        }
        nestedSwipeRefreshLayout.setEnabled(this.mRefreshViewMap.containsKey(Integer.valueOf(position)));
    }

    @Override // com.transsion.room.fragment.RoomBaseFragment
    public void x0(RoomHomeTabTitleView tabView, int index, List tabList) {
        Intrinsics.h(tabView, "tabView");
        Intrinsics.h(tabList, "tabList");
        RoomTabItem roomTabItem = (RoomTabItem) tabList.get(index);
        tabView.setTitle(roomTabItem.getName());
        tabView.setBadge(roomTabItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // aq.d
    public void y(String pageFrom) {
        ViewPager2 viewPager2;
        HashMap mapG;
        HashMap mapG2;
        if (pageFrom != null && pageFrom.length() != 0) {
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
            }
            String str = getActivity() instanceof RoomHomeActivity ? "sub_page" : "main";
            hj.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            }
        }
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar == null || (viewPager2 = qVar.f16854k) == null) {
            return;
        }
        viewPager2.setCurrentItem(n0());
    }

    @Override // com.transsion.room.fragment.RoomBaseFragment
    /* JADX INFO: renamed from: y0 */
    public List getMTabs() {
        List<RoomTabItem> items;
        ArrayList arrayList = new ArrayList();
        RoomTabBean roomTabBean = (RoomTabBean) V0().G().f();
        if (roomTabBean != null && (items = roomTabBean.getItems()) != null) {
            Iterator<T> it = items.iterator();
            while (it.hasNext()) {
                arrayList.add((RoomTabItem) it.next());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.room.fragment.RoomBaseFragment
    public ViewPager2 z0() {
        bq.q qVar = (bq.q) getMViewBinding();
        if (qVar != null) {
            return qVar.f16854k;
        }
        return null;
    }
}
