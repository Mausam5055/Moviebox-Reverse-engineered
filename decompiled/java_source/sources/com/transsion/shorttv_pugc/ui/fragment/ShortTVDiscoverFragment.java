package com.transsion.shorttv_pugc.ui.fragment;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.base.widget.SafeRecyclerView;
import com.transsion.shorttv.ui.widget.ShortTVBannerView;
import com.transsion.shorttv_pugc.base.fragment.PageStatusFragment;
import com.transsion.shorttv_pugc.base.widget.NpaGridLayoutManager;
import com.transsion.shorttv_pugc.base.widget.StateView;
import com.transsion.shorttv_pugc.bean.BannerData;
import com.transsion.shorttv_pugc.bean.Image;
import com.transsion.shorttv_pugc.bean.Pager;
import com.transsion.shorttv_pugc.bean.ShortTVRespData;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVBannerAdapter;
import com.transsion.shorttv_pugc.ui.adapter.ShortTVTrendingAdapter;
import com.transsion.shorttv_pugc.ui.widget.ShortTVDiscoverHeaderView;
import com.transsion.shorttv_pugc.ui.widget.ShortTVFavoriteView;
import com.transsion.shorttv_pugc.ui.widget.ShortTvLoadMoreView;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.q0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u001f\u0010'\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u000bH\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J\u0017\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u0004J\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\u0004J\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\u0004J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0004J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004J/\u0010:\u001a\u00020\u00052\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020$\u0018\u0001072\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0005H\u0016¢\u0006\u0004\b<\u0010\u0004J\u0017\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020\u000bH\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u001eH\u0016¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020>H\u0016¢\u0006\u0004\bC\u0010DJ\u0011\u0010E\u001a\u0004\u0018\u00010>H\u0016¢\u0006\u0004\bE\u0010DJ\u000f\u0010F\u001a\u00020\u001eH\u0016¢\u0006\u0004\bF\u0010BJ\u0017\u0010H\u001a\u00020\u00052\u0006\u0010G\u001a\u00020\u000bH\u0016¢\u0006\u0004\bH\u0010\u000eJ\u000f\u0010I\u001a\u00020\u0005H\u0016¢\u0006\u0004\bI\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0016¢\u0006\u0004\bJ\u0010\u0004J\u000f\u0010K\u001a\u00020.H\u0016¢\u0006\u0004\bK\u00100J\u000f\u0010L\u001a\u00020.H\u0016¢\u0006\u0004\bL\u00100J\u000f\u0010N\u001a\u00020MH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0005H\u0016¢\u0006\u0004\bP\u0010\u0004R\"\u0010U\u001a\n Q*\u0004\u0018\u00010.0.8\u0004X\u0084\u0004¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u00100R$\u0010]\u001a\u0004\u0018\u00010V8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R\"\u0010b\u001a\u00020.8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010S\u001a\u0004\b_\u00100\"\u0004\b`\u0010aR$\u0010j\u001a\u0004\u0018\u00010c8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u001b\u0010p\u001a\u00020k8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u0018\u0010t\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\"\u0010w\u001a\u00020\u000b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bu\u0010v\u001a\u0004\bw\u0010\u0010\"\u0004\bx\u0010\u000eR\"\u0010z\u001a\u00020\u000b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\by\u0010v\u001a\u0004\bz\u0010\u0010\"\u0004\b{\u0010\u000eR\u0016\u0010~\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R&\u0010\u0083\u0001\u001a\u000f\u0012\u0004\u0012\u00020.\u0012\u0005\u0012\u00030\u0080\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R \u0010\u0090\u0001\u001a\u00030\u008c\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008d\u0001\u0010m\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0018\u0010\u0092\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010}R\u001a\u0010\u0096\u0001\u001a\u00030\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0097\u0001\u0010vR\u0016\u0010\u009a\u0001\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010}RI\u0010¤\u0001\u001a\"\u0012\u0015\u0012\u00130\u000b¢\u0006\u000e\b\u009c\u0001\u0012\t\b\u009d\u0001\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u009b\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009e\u0001\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010¥\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R&\u0010¬\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b©\u0001\u0010v\u001a\u0005\bª\u0001\u0010\u0010\"\u0005\b«\u0001\u0010\u000eR\u0018\u0010®\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010}R\u0018\u0010²\u0001\u001a\u00030¯\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001R\u001c\u0010¶\u0001\u001a\u0005\u0018\u00010³\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001¨\u0006·\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVDiscoverFragment;", "Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;", "Lms/x;", "<init>", "()V", "", "L0", "Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;", "data", "f1", "(Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;)V", "", "isBanner", "B0", "(Z)V", "J0", "()Z", "c1", "y0", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "A0", "(Landroidx/recyclerview/widget/RecyclerView;)V", "loadMore", "isRefresh", "W0", "V0", "x0", "d1", "X0", "", "dy", "Y0", "(I)V", "showLoading", "hideLoading", "Lcom/transsion/shorttv_pugc/bean/Subject;", "subject", "isDownloadView", "Z0", "(Lcom/transsion/shorttv_pugc/bean/Subject;Z)V", "initAd", "Landroid/view/LayoutInflater;", "inflater", "I0", "(Landroid/view/LayoutInflater;)Lms/x;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", TmcConstants.NAVIGATION_ON_START, "initListener", "retryLoadData", "b1", "", "list", "hasMore", "h1", "(Ljava/util/List;ZZ)V", "g1", "isShowTitleLayout", "Landroid/view/View;", "getEmptyView", "(Z)Landroid/view/View;", "getScreenType", "()I", "getNoNetworkView", "()Landroid/view/View;", "getLoadingView", "G0", "hidden", "onHiddenChanged", "onResume", "onPause", "getPageName", "E0", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDestroy", "kotlin.jvm.PlatformType", "i", "Ljava/lang/String;", "getTAG", "TAG", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "j", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "F0", "()Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;", "setListAdapter", "(Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVTrendingAdapter;)V", "listAdapter", CampaignEx.JSON_KEY_AD_K, "getNextPage", "setNextPage", "(Ljava/lang/String;)V", "nextPage", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "l", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "getViewModel", "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "setViewModel", "(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V", "viewModel", "Lut/b;", "m", "Lkotlin/Lazy;", "H0", "()Lut/b;", "recReport", "Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;", "n", "Lcom/transsion/shorttv_pugc/ui/widget/ShortTVFavoriteView;", "favoriteHeaderView", "o", "Z", "isFirstStart", "setFirstStart", TtmlNode.TAG_P, "isFirstPageChange", "setFirstPageChange", CampaignEx.JSON_KEY_AD_Q, "I", "tabId", "", "Landroid/view/ViewGroup;", CampaignEx.JSON_KEY_AD_R, "Ljava/util/Map;", "headerViewList", "Lms/q0;", "s", "Lms/q0;", "bannerBinding", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;", "t", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;", "bannerAdapter", "Lcom/transsion/shorttv_pugc/utils/a;", TmcStartParams.KEY_URL_SHORT, "C0", "()Lcom/transsion/shorttv_pugc/utils/a;", "bannerDotHelper", "v", "bannerCurPosition", "", "w", "J", "bannerBrowseTime", "x", "hasAddedBanner", "y", "statusBarHeight", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "z", "Lkotlin/jvm/functions/Function1;", "getListener", "()Lkotlin/jvm/functions/Function1;", "setListener", "(Lkotlin/jvm/functions/Function1;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroidx/recyclerview/widget/RecyclerView$r;", "A", "Landroidx/recyclerview/widget/RecyclerView$r;", "subTabScrollListener", "B", "getHasSlideOutBanner", "e1", "hasSlideOutBanner", "C", "mDy", "Lbt/b;", "D", "Lbt/b;", "exposureHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "E", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class ShortTVDiscoverFragment extends PageStatusFragment<ms.x> {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private RecyclerView.r subTabScrollListener;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean hasSlideOutBanner;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private int mDy;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private BiddingListManager v3ListManager;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ShortTVTrendingAdapter listAdapter;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private ShortTvViewModel viewModel;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private ShortTVFavoriteView favoriteHeaderView;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private q0 bannerBinding;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private ShortTVBannerAdapter bannerAdapter;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private long bannerBrowseTime;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean hasAddedBanner;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private Function1 listener;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final String TAG = getClass().getSimpleName();

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String nextPage = "1";

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy recReport = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.fragment.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVDiscoverFragment.a1();
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstStart = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstPageChange = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int tabId = 13;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private Map headerViewList = new LinkedHashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Lazy bannerDotHelper = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.fragment.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVDiscoverFragment.z0(this.f54269a);
        }
    });

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private int bannerCurPosition = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final int statusBarHeight = com.blankj.utilcode.util.d.c();

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private final bt.b exposureHelper = new bt.b(0.6f, new b(), false, 4, null);

    public static final class a extends RecyclerView.r {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i12 > 0) {
                ShortTVDiscoverFragment.this.A0(recyclerView);
            }
        }
    }

    public static final class b implements bt.a {
        b() {
        }

        @Override // bt.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVTrendingAdapter listAdapter = ShortTVDiscoverFragment.this.getListAdapter();
            if (((listAdapter == null || (data2 = listAdapter.getData()) == null) ? 0 : data2.size()) <= i11) {
                return;
            }
            ShortTVTrendingAdapter listAdapter2 = ShortTVDiscoverFragment.this.getListAdapter();
            Subject subject = (listAdapter2 == null || (data = listAdapter2.getData()) == null) ? null : (Subject) data.get(i11);
            if (subject != null) {
                ShortTVDiscoverFragment.this.H0().a(ShortTVDiscoverFragment.this.getPageName(), subject, i11, j11, ShortTVDiscoverFragment.this.E0());
            }
        }
    }

    public static final class c extends DiffUtil.e {
        c() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(Subject oldItem, Subject newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectId(), newItem.getSubjectId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(Subject oldItem, Subject newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.hashCode() == newItem.hashCode();
        }
    }

    public static final class d extends GridLayoutManager.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ SafeRecyclerView f54145f;

        d(SafeRecyclerView safeRecyclerView) {
            this.f54145f = safeRecyclerView;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x003e  */
        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            BiddingNativeManager nonAdDelegate;
            List<Object> data;
            boolean z10 = false;
            if (i11 >= 0) {
                ShortTVTrendingAdapter listAdapter = ShortTVDiscoverFragment.this.getListAdapter();
                if (i11 < ((listAdapter == null || (data = listAdapter.getData()) == null) ? 0 : data.size())) {
                    ShortTVTrendingAdapter listAdapter2 = ShortTVDiscoverFragment.this.getListAdapter();
                    if (listAdapter2 == null) {
                        nonAdDelegate = null;
                    } else {
                        ShortTVTrendingAdapter listAdapter3 = ShortTVDiscoverFragment.this.getListAdapter();
                        Subject subject = (Subject) listAdapter2.getItem(i11 - (listAdapter3 != null ? listAdapter3.a0() : 0));
                        if (subject != null) {
                            nonAdDelegate = subject.getNonAdDelegate();
                        } else {
                            nonAdDelegate = null;
                        }
                    }
                    if (nonAdDelegate != null) {
                        z10 = true;
                    }
                }
            }
            Context context = this.f54145f.getContext();
            Intrinsics.g(context, "getContext(...)");
            return (!ht.a.a(context) || z10) ? 2 : 1;
        }
    }

    public static final class e extends RecyclerView.l {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null) {
                if (childAdapterPosition == 0) {
                    outRect.top = com.blankj.utilcode.util.a0.a(0.0f);
                } else {
                    outRect.top = com.blankj.utilcode.util.a0.a(16.0f);
                }
            }
        }
    }

    public static final class f extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f54146a;

        f() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            ms.x xVar;
            SafeRecyclerView safeRecyclerView;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            if (i11 != 0 || (xVar = (ms.x) ShortTVDiscoverFragment.this.getMViewBinding()) == null || (safeRecyclerView = xVar.f69948b) == null || safeRecyclerView.canScrollVertically(-1)) {
                return;
            }
            ShortTVDiscoverFragment shortTVDiscoverFragment = ShortTVDiscoverFragment.this;
            shortTVDiscoverFragment.B0(shortTVDiscoverFragment.J0());
            ShortTVDiscoverFragment.this.e1(false);
            this.f54146a = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            ShortTVDiscoverFragment.this.Y0(i12);
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54148a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54148a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54148a;
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
            this.f54148a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0(RecyclerView recyclerView) {
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        LinearLayout linearLayoutZ;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (!(layoutManager instanceof LinearLayoutManager) || ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() != 0 || (shortTVTrendingAdapter = this.listAdapter) == null || (linearLayoutZ = shortTVTrendingAdapter.Z()) == null) {
            return;
        }
        int childCount = linearLayoutZ.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = linearLayoutZ.getChildAt(i11);
            if ((childAt instanceof ShortTVDiscoverHeaderView) && childAt.getVisibility() == 0) {
                ((ShortTVDiscoverHeaderView) childAt).clearExposureCache();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0(boolean isBanner) {
        int color;
        View view;
        if (isBanner && J0()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            color = 0;
            immersionBarWith.statusBarDarkFont(false);
            immersionBarWith.init();
        } else {
            color = androidx.core.content.b.getColor(requireContext(), R$color.short_tv_bg_02);
            ImmersionBar immersionBarWith2 = ImmersionBar.with(this);
            immersionBarWith2.statusBarDarkFont(!ht.f.f64841a.a());
            immersionBarWith2.init();
        }
        ms.x xVar = (ms.x) getMViewBinding();
        if (xVar == null || (view = xVar.f69953g) == null) {
            return;
        }
        view.setBackgroundColor(color);
    }

    private final com.transsion.shorttv_pugc.utils.a C0() {
        return (com.transsion.shorttv_pugc.utils.a) this.bannerDotHelper.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        String strF;
        shortTVDiscoverFragment.retryLoadData();
        hj.b logViewConfig = shortTVDiscoverFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            com.transsion.shorttv_pugc.base.widget.j.b(strF);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ut.b H0() {
        return (ut.b) this.recReport.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean J0() {
        ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
        if (shortTVBannerAdapter == null) {
            return false;
        }
        Intrinsics.e(shortTVBannerAdapter);
        return shortTVBannerAdapter.getData().size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(ShortTVDiscoverFragment shortTVDiscoverFragment, int i11, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, -1, 4194303, null);
            subject.setNonAdDelegate(wrapperNativeManager);
            ShortTVTrendingAdapter shortTVTrendingAdapter = shortTVDiscoverFragment.listAdapter;
            int size = (shortTVTrendingAdapter == null || (data = shortTVTrendingAdapter.getData()) == null) ? 0 : data.size();
            Context context = shortTVDiscoverFragment.getContext();
            int i12 = (context == null || !ht.a.a(context) || i11 % 2 == 0) ? i11 : i11 - 1;
            if (i12 <= size) {
                ShortTVTrendingAdapter shortTVTrendingAdapter2 = shortTVDiscoverFragment.listAdapter;
                if (shortTVTrendingAdapter2 != null) {
                    shortTVTrendingAdapter2.n(i12, subject);
                }
            } else {
                ShortTVTrendingAdapter shortTVTrendingAdapter3 = shortTVDiscoverFragment.listAdapter;
                if (shortTVTrendingAdapter3 != null) {
                    shortTVTrendingAdapter3.n(size, subject);
                }
            }
        }
        return Unit.f67061a;
    }

    private final void L0() {
        final SwipeRefreshLayout swipeRefreshLayout;
        SafeRecyclerView safeRecyclerView;
        final boolean z10 = true;
        ShortTVTrendingAdapter shortTVTrendingAdapter = new ShortTVTrendingAdapter(getPageName(), true);
        shortTVTrendingAdapter.h0().C(new ShortTvLoadMoreView());
        shortTVTrendingAdapter.h0().z(true);
        shortTVTrendingAdapter.h0().y(true);
        shortTVTrendingAdapter.h0().E(3);
        shortTVTrendingAdapter.h0().D(new p6.f() { // from class: com.transsion.shorttv_pugc.ui.fragment.a
            @Override // p6.f
            public final void a() {
                ShortTVDiscoverFragment.N0(this.f54199a);
            }
        });
        shortTVTrendingAdapter.R0(new c());
        shortTVTrendingAdapter.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.fragment.e
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTVDiscoverFragment.O0(this.f54255a, baseQuickAdapter, view, i11);
            }
        });
        shortTVTrendingAdapter.l(R$id.btn_download);
        shortTVTrendingAdapter.s1(new p6.b() { // from class: com.transsion.shorttv_pugc.ui.fragment.f
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTVDiscoverFragment.P0(this.f54257a, z10, baseQuickAdapter, view, i11);
            }
        });
        this.listAdapter = shortTVTrendingAdapter;
        ms.x xVar = (ms.x) getMViewBinding();
        if (xVar != null && (safeRecyclerView = xVar.f69948b) != null) {
            NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(safeRecyclerView.getContext(), 2);
            npaGridLayoutManager.d0(new d(safeRecyclerView));
            safeRecyclerView.setLayoutManager(npaGridLayoutManager);
            safeRecyclerView.setAdapter(this.listAdapter);
            safeRecyclerView.addOnScrollListener(this.exposureHelper);
            y0();
            safeRecyclerView.addItemDecoration(new e());
        }
        ms.x xVar2 = (ms.x) getMViewBinding();
        if (xVar2 == null || (swipeRefreshLayout = xVar2.f69949c) == null) {
            return;
        }
        int iA = com.blankj.utilcode.util.a0.a(30.0f);
        int i11 = this.statusBarHeight + iA;
        swipeRefreshLayout.setProgressViewOffset(false, i11, (iA * 2) + i11);
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.shorttv_pugc.ui.fragment.g
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void a() {
                ShortTVDiscoverFragment.M0(swipeRefreshLayout, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(SwipeRefreshLayout swipeRefreshLayout, ShortTVDiscoverFragment shortTVDiscoverFragment) {
        if (nh.m.f70474a.e()) {
            shortTVDiscoverFragment.b1();
        } else {
            kt.b.f68391a.d(R$string.short_tv_no_network_toast);
            swipeRefreshLayout.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        shortTVDiscoverFragment.loadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(ShortTVDiscoverFragment shortTVDiscoverFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVDiscoverFragment.H0().b(shortTVDiscoverFragment.getPageName(), subject, i11, shortTVDiscoverFragment.E0());
            shortTVDiscoverFragment.Z0(subject, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(ShortTVDiscoverFragment shortTVDiscoverFragment, boolean z10, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVDiscoverFragment.H0().b(shortTVDiscoverFragment.getPageName(), subject, i11, shortTVDiscoverFragment.E0());
            shortTVDiscoverFragment.Z0(subject, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        SafeRecyclerView safeRecyclerView;
        if (shortTVDiscoverFragment.isAdded()) {
            ms.x xVar = (ms.x) shortTVDiscoverFragment.getMViewBinding();
            int iComputeVerticalScrollOffset = (xVar == null || (safeRecyclerView = xVar.f69948b) == null) ? 0 : safeRecyclerView.computeVerticalScrollOffset();
            shortTVDiscoverFragment.mDy = 0;
            shortTVDiscoverFragment.Y0(iComputeVerticalScrollOffset);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(ShortTVDiscoverFragment shortTVDiscoverFragment, ShortTVRespData shortTVRespData) {
        shortTVDiscoverFragment.hideLoading();
        shortTVDiscoverFragment.f1(shortTVRespData);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x002e  */
    public static final Unit S0(ShortTVDiscoverFragment shortTVDiscoverFragment, ShortTVRespData shortTVRespData) {
        if ((shortTVRespData != null ? shortTVRespData.getItems() : null) != null) {
            List<Subject> items = shortTVRespData.getItems();
            Intrinsics.e(items);
            if (items.isEmpty()) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String TAG = shortTVDiscoverFragment.TAG;
                Intrinsics.g(TAG, "TAG");
                lg.a.C0828a.z(c0828a, TAG, "addHeaderView, has no Favorite", false, 4, null);
                shortTVDiscoverFragment.d1();
            } else {
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                String TAG2 = shortTVDiscoverFragment.TAG;
                Intrinsics.g(TAG2, "TAG");
                lg.a.C0828a.f(c0828a2, TAG2, "addHeaderView, has Favorite", false, 4, null);
                shortTVDiscoverFragment.x0();
            }
        } else {
            lg.a.C0828a c0828a3 = lg.a.f68839a;
            String TAG3 = shortTVDiscoverFragment.TAG;
            Intrinsics.g(TAG3, "TAG");
            lg.a.C0828a.z(c0828a3, TAG3, "addHeaderView, has no Favorite", false, 4, null);
            shortTVDiscoverFragment.d1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        r6.f fVarH0;
        ShortTVTrendingAdapter shortTVTrendingAdapter = shortTVDiscoverFragment.listAdapter;
        if (((shortTVTrendingAdapter == null || (fVarH0 = shortTVTrendingAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.End) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = shortTVDiscoverFragment.TAG;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "load more， loadData", false, 4, null);
        shortTVDiscoverFragment.W0(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        r6.f fVarH0;
        ShortTVTrendingAdapter shortTVTrendingAdapter = shortTVDiscoverFragment.listAdapter;
        if (shortTVTrendingAdapter == null || (fVarH0 = shortTVTrendingAdapter.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void V0() {
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.H(this.tabId);
        }
    }

    private final void W0(boolean isRefresh) {
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.K(this.nextPage, 8, isRefresh);
        }
    }

    private final void X0() {
        List data;
        BannerData bannerData;
        List data2;
        int i11 = this.bannerCurPosition;
        if (i11 >= 0) {
            ShortTVBannerAdapter shortTVBannerAdapter = this.bannerAdapter;
            if (i11 >= ((shortTVBannerAdapter == null || (data2 = shortTVBannerAdapter.getData()) == null) ? 0 : data2.size())) {
                return;
            }
            long jCurrentTimeMillis = this.bannerBrowseTime > 0 ? System.currentTimeMillis() - this.bannerBrowseTime : 0L;
            ShortTVBannerAdapter shortTVBannerAdapter2 = this.bannerAdapter;
            if (shortTVBannerAdapter2 == null || (data = shortTVBannerAdapter2.getData()) == null || (bannerData = (BannerData) data.get(this.bannerCurPosition)) == null) {
                return;
            }
            com.transsion.shorttv_pugc.utils.a aVarC0 = C0();
            String pageName = getPageName();
            String value = ShortTvItemType.BANNER.getValue();
            String subjectId = bannerData.getSubjectId();
            Boolean hasResource = bannerData.getHasResource();
            String deepLink = bannerData.getDeepLink();
            Integer numValueOf = Integer.valueOf(this.bannerCurPosition);
            Image image = bannerData.getImage();
            aVarC0.a((4144 & 1) != 0 ? null : pageName, (4144 & 2) != 0 ? null : "opt", (4144 & 4) != 0 ? null : value, (4144 & 8) != 0 ? null : subjectId, (4144 & 16) != 0 ? null : null, (4144 & 32) != 0 ? null : null, (4144 & 64) != 0 ? null : hasResource, (4144 & 128) != 0 ? null : deepLink, (4144 & 256) != 0 ? null : numValueOf, (4144 & 512) != 0 ? null : image != null ? image.getUrl() : null, (4144 & 1024) != 0 ? 0L : jCurrentTimeMillis, (4144 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(bannerData.getBuiltIn()), (4144 & 4096) == 0 ? null : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0(int dy2) {
        if (dy2 == 0) {
            this.mDy = 0;
        } else {
            this.mDy += dy2;
        }
        if (Math.abs(this.mDy) > ((com.blankj.utilcode.util.y.e() * 9) / 16) / 2) {
            if (this.hasSlideOutBanner) {
                return;
            }
            B0(false);
            this.hasSlideOutBanner = true;
            return;
        }
        if (this.hasSlideOutBanner) {
            B0(true);
            this.hasSlideOutBanner = false;
        }
    }

    private final void Z0(Subject subject, boolean isDownloadView) {
        Context context = getContext();
        if (context != null) {
            qt.a.f73700a.a((FragmentActivity) context, getPageName(), subject.getOps(), (PsExtractor.AUDIO_STREAM & 8) != 0 ? null : "download_subject", (PsExtractor.AUDIO_STREAM & 16) != 0 ? false : isDownloadView, (PsExtractor.AUDIO_STREAM & 32) != 0 ? null : subject, (PsExtractor.AUDIO_STREAM & 64) != 0 ? null : null, (PsExtractor.AUDIO_STREAM & 128) != 0 ? Boolean.FALSE : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ut.b a1() {
        return new ut.b();
    }

    private final void c1(boolean isBanner) {
        Space space;
        View view;
        Space space2;
        View view2;
        if (isBanner) {
            ms.x xVar = (ms.x) getMViewBinding();
            if (xVar != null && (view2 = xVar.f69952f) != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = 0;
                view2.setLayoutParams(bVar);
            }
            ms.x xVar2 = (ms.x) getMViewBinding();
            if (xVar2 == null || (space2 = xVar2.f69951e) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = space2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = ct.a.a(90);
            space2.setLayoutParams(bVar2);
            return;
        }
        ms.x xVar3 = (ms.x) getMViewBinding();
        if (xVar3 != null && (view = xVar3.f69952f) != null) {
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
            ((ViewGroup.MarginLayoutParams) bVar3).height = this.statusBarHeight + ct.a.a(44);
            view.setLayoutParams(bVar3);
        }
        ms.x xVar4 = (ms.x) getMViewBinding();
        if (xVar4 == null || (space = xVar4.f69951e) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams4 = space.getLayoutParams();
        if (layoutParams4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams4;
        ((ViewGroup.MarginLayoutParams) bVar4).height = ct.a.a(10);
        space.setLayoutParams(bVar4);
    }

    private final void d1() {
        ShortTVFavoriteView shortTVFavoriteView = this.favoriteHeaderView;
        if (shortTVFavoriteView == null) {
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
        if (shortTVTrendingAdapter != null) {
            Intrinsics.e(shortTVFavoriteView);
            shortTVTrendingAdapter.J0(shortTVFavoriteView);
        }
        this.favoriteHeaderView = null;
    }

    private final void f1(ShortTVRespData data) {
        String nextPage;
        Boolean hasMore;
        r6.f fVarH0;
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        r6.f fVarH1;
        ShortTVTrendingAdapter shortTVTrendingAdapter2;
        List<Object> data2;
        if (data == null) {
            if (this.bannerBinding == null && this.headerViewList.isEmpty() && (shortTVTrendingAdapter2 = this.listAdapter) != null && (data2 = shortTVTrendingAdapter2.getData()) != null && data2.isEmpty()) {
                g1();
                return;
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter3 = this.listAdapter;
            if (shortTVTrendingAdapter3 == null || (fVarH0 = shortTVTrendingAdapter3.h0()) == null || !fVarH0.r() || (shortTVTrendingAdapter = this.listAdapter) == null || (fVarH1 = shortTVTrendingAdapter.h0()) == null) {
                return;
            }
            fVarH1.v();
            return;
        }
        Pager pager = data.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.nextPage = nextPage;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        String str = this.nextPage;
        List<Subject> items = data.getItems();
        Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
        Pager pager2 = data.getPager();
        lg.a.C0828a.f(c0828a, TAG, "updateTreadingList,nextPage :" + str + ", size:" + numValueOf + ", hasMore:" + (pager2 != null ? pager2.getHasMore() : null), false, 4, null);
        List<Subject> items2 = data.getItems();
        boolean zIsRefresh = data.isRefresh();
        Pager pager3 = data.getPager();
        h1(items2, zIsRefresh, (pager3 == null || (hasMore = pager3.getHasMore()) == null) ? false : hasMore.booleanValue());
    }

    private final void hideLoading() {
        showContentView();
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        ms.x xVar = (ms.x) getMViewBinding();
        biddingListManager.F(xVar != null ? xVar.f69948b : null);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("ShortTvDiscoverMostTrendingScene");
        biddingListManager.z(new Function2() { // from class: com.transsion.shorttv_pugc.ui.fragment.m
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ShortTVDiscoverFragment.K0(this.f54270a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void loadMore() {
        SafeRecyclerView safeRecyclerView;
        SafeRecyclerView safeRecyclerView2;
        r6.f fVarH0;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "loadMore", false, 4, null);
        if (!nh.m.f70474a.e()) {
            kt.b.f68391a.d(R$string.short_tv_no_network_toast);
            ms.x xVar = (ms.x) getMViewBinding();
            if (xVar == null || (safeRecyclerView = xVar.f69948b) == null) {
                return;
            }
            safeRecyclerView.postDelayed(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.c
                @Override // java.lang.Runnable
                public final void run() {
                    ShortTVDiscoverFragment.U0(this.f54204a);
                }
            }, 500L);
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
        if (shortTVTrendingAdapter != null && (fVarH0 = shortTVTrendingAdapter.h0()) != null) {
            fVarH0.w();
        }
        ms.x xVar2 = (ms.x) getMViewBinding();
        if (xVar2 == null || (safeRecyclerView2 = xVar2.f69948b) == null) {
            return;
        }
        safeRecyclerView2.postDelayed(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.b
            @Override // java.lang.Runnable
            public final void run() {
                ShortTVDiscoverFragment.T0(this.f54201a);
            }
        }, 300L);
    }

    private final void showLoading() {
        showLoadingView();
    }

    private final void x0() {
        Context context;
        if (this.favoriteHeaderView == null && (context = getContext()) != null) {
            ShortTVFavoriteView shortTVFavoriteView = new ShortTVFavoriteView(this, "collection", H0(), context);
            this.favoriteHeaderView = shortTVFavoriteView;
            if (this.hasAddedBanner) {
                ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
                if (shortTVTrendingAdapter != null) {
                    Intrinsics.e(shortTVFavoriteView);
                    BaseQuickAdapter.y(shortTVTrendingAdapter, shortTVFavoriteView, 2, 0, 4, null);
                    return;
                }
                return;
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter2 = this.listAdapter;
            if (shortTVTrendingAdapter2 != null) {
                Intrinsics.e(shortTVFavoriteView);
                BaseQuickAdapter.y(shortTVTrendingAdapter2, shortTVFavoriteView, 1, 0, 4, null);
            }
        }
    }

    private final void y0() {
        SafeRecyclerView safeRecyclerView;
        ms.x xVar = (ms.x) getMViewBinding();
        if (xVar == null || (safeRecyclerView = xVar.f69948b) == null) {
            return;
        }
        safeRecyclerView.addOnScrollListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.shorttv_pugc.utils.a z0(ShortTVDiscoverFragment shortTVDiscoverFragment) {
        return new com.transsion.shorttv_pugc.utils.a(shortTVDiscoverFragment.getPageName());
    }

    public String E0() {
        return "most_trending";
    }

    /* JADX INFO: renamed from: F0, reason: from getter */
    protected final ShortTVTrendingAdapter getListAdapter() {
        return this.listAdapter;
    }

    public int G0() {
        return R$layout.pugc_short_tv_layout_skeleton_drawing_discover;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public ms.x getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ms.x xVarC = ms.x.c(inflater);
        Intrinsics.g(xVarC, "inflate(...)");
        return xVarC;
    }

    public void b1() {
        V0();
        this.nextPage = "1";
    }

    public final void e1(boolean z10) {
        this.hasSlideOutBanner = z10;
    }

    public void g1() {
        if (nh.m.f70474a.e()) {
            PageStatusFragment.c0(this, false, 1, null);
        } else {
            showNoNetworkView(false);
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.retry(new Function0() { // from class: com.transsion.shorttv_pugc.ui.fragment.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVDiscoverFragment.D0(this.f54206a);
            }
        });
        stateView.showData(4, getScreenType(), false, getPageStateLayoutTitle(), getEmptyDescText());
        return stateView;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(G0(), (ViewGroup) getFlStateView(), false);
        View viewFindViewById = viewInflate.findViewById(R$id.v_bar_space);
        if (this.subTabScrollListener != null) {
            View viewFindViewById2 = viewInflate.findViewById(R$id.v_title);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            ViewGroup.LayoutParams layoutParams = viewFindViewById2.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.a0.a(10.0f);
            viewFindViewById2.setLayoutParams(bVar);
            int iA = this.statusBarHeight + com.blankj.utilcode.util.a0.a(32.0f);
            Intrinsics.e(viewFindViewById);
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).height = iA;
            viewFindViewById.setLayoutParams(bVar2);
        } else {
            Intrinsics.e(viewFindViewById);
            ViewGroup.LayoutParams layoutParams3 = viewFindViewById.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
            ((ViewGroup.MarginLayoutParams) bVar3).height = this.statusBarHeight;
            viewFindViewById.setLayoutParams(bVar3);
        }
        return viewInflate;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public View getNoNetworkView() {
        View noNetworkView;
        st.i iVarR;
        ShortTvViewModel shortTvViewModel = this.viewModel;
        if (shortTvViewModel == null || (iVarR = shortTvViewModel.R()) == null) {
            noNetworkView = super.getNoNetworkView();
        } else {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            noNetworkView = iVarR.a(contextRequireContext);
            if (noNetworkView == null) {
                noNetworkView = super.getNoNetworkView();
            }
        }
        noNetworkView.setPadding(noNetworkView.getPaddingStart(), noNetworkView.getPaddingTop() + this.statusBarHeight + com.blankj.utilcode.util.a0.a(35.0f), noNetworkView.getPaddingEnd(), noNetworkView.getPaddingBottom());
        return noNetworkView;
    }

    public String getPageName() {
        return "minitv_explore";
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public int getScreenType() {
        return 4;
    }

    public void h1(List list, boolean isRefresh, boolean hasMore) {
        r6.f fVarH0;
        r6.f fVarH1;
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        r6.f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout;
        ms.x xVar;
        SwipeRefreshLayout swipeRefreshLayout2;
        List<Object> data;
        List<Object> listL;
        r6.f fVarH3;
        SwipeRefreshLayout swipeRefreshLayout3;
        r6.f fVarH4;
        ShortTVTrendingAdapter shortTVTrendingAdapter2;
        r6.f fVarH5;
        SwipeRefreshLayout swipeRefreshLayout4;
        ms.x xVar2;
        SwipeRefreshLayout swipeRefreshLayout5;
        List<Object> data2;
        Subject subject;
        SwipeRefreshLayout swipeRefreshLayout6;
        ms.x xVar3 = (ms.x) getMViewBinding();
        if (xVar3 != null && (swipeRefreshLayout6 = xVar3.f69949c) != null) {
            swipeRefreshLayout6.setEnabled(true);
        }
        if (isRefresh) {
            BiddingListManager biddingListManager = this.v3ListManager;
            if (biddingListManager != null) {
                biddingListManager.y();
            }
            if (list != null && (subject = (Subject) CollectionsKt.k0(list)) != null) {
                subject.setShowTitle(true);
            }
        }
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            if (isRefresh) {
                hj.b logViewConfig = getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
                ShortTVTrendingAdapter shortTVTrendingAdapter3 = this.listAdapter;
                if (shortTVTrendingAdapter3 != null) {
                    shortTVTrendingAdapter3.n1(list2);
                }
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter4 = this.listAdapter;
            if (shortTVTrendingAdapter4 == null || (data = shortTVTrendingAdapter4.getData()) == null || !data.isEmpty()) {
                if (hasMore) {
                    ShortTVTrendingAdapter shortTVTrendingAdapter5 = this.listAdapter;
                    if (shortTVTrendingAdapter5 != null && (fVarH1 = shortTVTrendingAdapter5.h0()) != null && fVarH1.r() && (shortTVTrendingAdapter = this.listAdapter) != null && (fVarH2 = shortTVTrendingAdapter.h0()) != null) {
                        fVarH2.s();
                    }
                } else {
                    ShortTVTrendingAdapter shortTVTrendingAdapter6 = this.listAdapter;
                    if (shortTVTrendingAdapter6 != null && (fVarH0 = shortTVTrendingAdapter6.h0()) != null) {
                        r6.f.u(fVarH0, false, 1, null);
                    }
                }
            } else if (isRefresh) {
                Intrinsics.c(getPageName(), "minitv_explore");
            }
            ms.x xVar4 = (ms.x) getMViewBinding();
            if (xVar4 == null || (swipeRefreshLayout = xVar4.f69949c) == null || !swipeRefreshLayout.isRefreshing() || (xVar = (ms.x) getMViewBinding()) == null || (swipeRefreshLayout2 = xVar.f69949c) == null) {
                return;
            }
            swipeRefreshLayout2.setRefreshing(false);
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter7 = this.listAdapter;
        if ((shortTVTrendingAdapter7 == null || (data2 = shortTVTrendingAdapter7.getData()) == null || !data2.isEmpty()) && !isRefresh) {
            ShortTVTrendingAdapter shortTVTrendingAdapter8 = this.listAdapter;
            if (shortTVTrendingAdapter8 == null || (listL = shortTVTrendingAdapter8.getData()) == null) {
                listL = CollectionsKt.l();
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!listL.contains((Subject) obj)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String TAG = this.TAG;
                Intrinsics.g(TAG, "TAG");
                lg.a.C0828a.f(c0828a, TAG, "updateList 全部去重了", false, 4, null);
                return;
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter9 = this.listAdapter;
            if (shortTVTrendingAdapter9 != null) {
                shortTVTrendingAdapter9.q(arrayList);
            }
        } else {
            ms.x xVar5 = (ms.x) getMViewBinding();
            if (xVar5 != null && (swipeRefreshLayout4 = xVar5.f69949c) != null && swipeRefreshLayout4.isRefreshing() && (xVar2 = (ms.x) getMViewBinding()) != null && (swipeRefreshLayout5 = xVar2.f69949c) != null) {
                swipeRefreshLayout5.setRefreshing(false);
            }
            hj.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            ShortTVTrendingAdapter shortTVTrendingAdapter10 = this.listAdapter;
            if (shortTVTrendingAdapter10 != null) {
                shortTVTrendingAdapter10.n1(list2);
            }
        }
        if (hasMore) {
            ShortTVTrendingAdapter shortTVTrendingAdapter11 = this.listAdapter;
            if (shortTVTrendingAdapter11 != null && (fVarH4 = shortTVTrendingAdapter11.h0()) != null && fVarH4.r() && (shortTVTrendingAdapter2 = this.listAdapter) != null && (fVarH5 = shortTVTrendingAdapter2.h0()) != null) {
                fVarH5.s();
            }
        } else {
            ShortTVTrendingAdapter shortTVTrendingAdapter12 = this.listAdapter;
            if (shortTVTrendingAdapter12 != null && (fVarH3 = shortTVTrendingAdapter12.h0()) != null) {
                r6.f.u(fVarH3, false, 1, null);
            }
        }
        if (J0() || this.subTabScrollListener != null) {
            return;
        }
        B0(false);
        Function1 function1 = this.listener;
        if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        c1(false);
        ms.x xVar6 = (ms.x) getMViewBinding();
        if (xVar6 == null || (swipeRefreshLayout3 = xVar6.f69949c) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = swipeRefreshLayout3.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        bVar.setMargins(0, com.blankj.utilcode.util.a0.a(80.0f), 0, 0);
        swipeRefreshLayout3.setLayoutParams(bVar);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initListener() {
        SafeRecyclerView safeRecyclerView;
        SafeRecyclerView safeRecyclerView2;
        SafeRecyclerView safeRecyclerView3;
        if (this.subTabScrollListener != null) {
            ms.x xVar = (ms.x) getMViewBinding();
            if (xVar != null && (safeRecyclerView3 = xVar.f69948b) != null) {
                RecyclerView.r rVar = this.subTabScrollListener;
                Intrinsics.e(rVar);
                safeRecyclerView3.addOnScrollListener(rVar);
            }
        } else {
            ms.x xVar2 = (ms.x) getMViewBinding();
            if (xVar2 != null && (safeRecyclerView = xVar2.f69948b) != null) {
                safeRecyclerView.addOnScrollListener(new f());
            }
        }
        ms.x xVar3 = (ms.x) getMViewBinding();
        if (xVar3 == null || (safeRecyclerView2 = xVar3.f69948b) == null) {
            return;
        }
        safeRecyclerView2.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.j
            @Override // java.lang.Runnable
            public final void run() {
                ShortTVDiscoverFragment.Q0(this.f54268a);
            }
        });
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewData() {
        View view;
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tab_id") : 13;
        ms.x xVar = (ms.x) getMViewBinding();
        if (xVar != null && (view = xVar.f69952f) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = this.statusBarHeight;
            view.setLayoutParams(bVar);
        }
        L0();
        initAd();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewModel() {
        ShortTvViewModel shortTvViewModel;
        androidx.p009lifecycle.b0 b0VarX;
        androidx.p009lifecycle.b0 b0VarT;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "initViewModel " + this, false, 4, null);
        ShortTvViewModel shortTvViewModel2 = (ShortTvViewModel) new v0(this).a(ShortTvViewModel.class);
        this.viewModel = shortTvViewModel2;
        if (shortTvViewModel2 != null && (b0VarT = shortTvViewModel2.T()) != null) {
            b0VarT.j(this, new g(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.R0(this.f54264a, (ShortTVRespData) obj);
                }
            }));
        }
        ShortTvViewModel shortTvViewModel3 = this.viewModel;
        if (shortTvViewModel3 != null && (b0VarX = shortTvViewModel3.x()) != null) {
            b0VarX.j(this, new g(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShortTVDiscoverFragment.S0(this.f54267a, (ShortTVRespData) obj);
                }
            }));
        }
        showLoading();
        Context context = getContext();
        if (context != null && (shortTvViewModel = this.viewModel) != null) {
            shortTvViewModel.W(context);
        }
        b1();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed() && hidden) {
            this.exposureHelper.e();
            ms.x xVar = (ms.x) getMViewBinding();
            A0(xVar != null ? xVar.f69948b : null);
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        ShortTVBannerView shortTVBannerView;
        ShortTVBannerView shortTVBannerView2;
        super.onPause();
        X0();
        this.exposureHelper.e();
        ms.x xVar = (ms.x) getMViewBinding();
        A0(xVar != null ? xVar.f69948b : null);
        q0 q0Var = this.bannerBinding;
        if (q0Var == null || (shortTVBannerView = q0Var.f69899b) == null || !shortTVBannerView.isAttachedToWindow()) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "onPause banner stopTurning", false, 4, null);
        q0 q0Var2 = this.bannerBinding;
        if (q0Var2 == null || (shortTVBannerView2 = q0Var2.f69899b) == null) {
            return;
        }
        shortTVBannerView2.stopTurning();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        ShortTVBannerView shortTVBannerView;
        ShortTVBannerView shortTVBannerView2;
        super.onResume();
        this.bannerBrowseTime = System.currentTimeMillis();
        q0 q0Var = this.bannerBinding;
        if (q0Var == null || (shortTVBannerView = q0Var.f69899b) == null || !shortTVBannerView.isAttachedToWindow()) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.TAG;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "onResume banner startTurning", false, 4, null);
        q0 q0Var2 = this.bannerBinding;
        if (q0Var2 == null || (shortTVBannerView2 = q0Var2.f69899b) == null) {
            return;
        }
        shortTVBannerView2.startTurning();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (isVisible() && this.isFirstStart) {
            this.isFirstStart = false;
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void retryLoadData() {
        List<Object> data;
        ShortTVTrendingAdapter shortTVTrendingAdapter = this.listAdapter;
        if (shortTVTrendingAdapter != null && (data = shortTVTrendingAdapter.getData()) != null && data.size() == 0) {
            showLoading();
            b1();
            return;
        }
        ShortTVTrendingAdapter shortTVTrendingAdapter2 = this.listAdapter;
        if (shortTVTrendingAdapter2 == null || shortTVTrendingAdapter2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        shortTVTrendingAdapter2.h0().w();
    }
}
