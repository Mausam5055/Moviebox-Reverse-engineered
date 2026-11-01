package com.transsion.home.fragment.tab;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.NoNetworkBigView;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.Channel;
import com.transsion.home.bean.FilterItems;
import com.transsion.home.bean.Item;
import com.transsion.home.bean.LayoutStyle;
import com.transsion.home.bean.MovieBean;
import com.transsion.home.bean.MovieItem;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.view.filter.popup.PopupFilterView;
import com.transsion.home.view.layoutmanager.OffsetGridLayoutManager;
import com.transsion.home.viewmodel.MovieViewModel;
import com.transsion.memberapi.IMemberApi;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.push.PushConstants;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Ø\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u0000 \u00ad\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002®\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J!\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J7\u0010\u001e\u001a\u00020\u00052&\u0010\u001d\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u001bj\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u0001`\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u0019\u0010#\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b#\u0010$J#\u0010'\u001a\u00020\u00052\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0%H\u0002¢\u0006\u0004\b'\u0010(J7\u0010+\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\t2\u0014\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010%2\u0006\u0010*\u001a\u00020\u0016H\u0002¢\u0006\u0004\b+\u0010,J!\u0010/\u001a\u00020\u00052\b\u0010.\u001a\u0004\u0018\u00010-2\u0006\u0010*\u001a\u00020\u0016H\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0005H\u0002¢\u0006\u0004\b1\u0010\u0004J\u000f\u00102\u001a\u00020\u0005H\u0002¢\u0006\u0004\b2\u0010\u0004J\u0019\u00104\u001a\u00020\u00052\b\u00103\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b4\u0010$J\u0019\u00105\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b5\u0010$J\u000f\u00106\u001a\u00020\u0005H\u0002¢\u0006\u0004\b6\u0010\u0004J\u000f\u00107\u001a\u00020\u0012H\u0002¢\u0006\u0004\b7\u00108J\u001b\u0010:\u001a\u0004\u0018\u0001092\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0012H\u0002¢\u0006\u0004\b<\u00108J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0016H\u0002¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u0005H\u0002¢\u0006\u0004\b@\u0010\u0004J\u000f\u0010A\u001a\u00020\tH\u0002¢\u0006\u0004\bA\u0010\u000bJ\u0017\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bD\u0010EJ\u0019\u0010H\u001a\u00020\u00052\b\u0010G\u001a\u0004\u0018\u00010FH\u0016¢\u0006\u0004\bH\u0010IJ!\u0010L\u001a\u00020\u00052\u0006\u0010K\u001a\u00020J2\b\u0010G\u001a\u0004\u0018\u00010FH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u0005H\u0016¢\u0006\u0004\bN\u0010\u0004J\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0019\u0010U\u001a\u00020\u0005*\u00020S2\u0006\u0010T\u001a\u00020\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u0005H\u0016¢\u0006\u0004\bW\u0010\u0004J\u000f\u0010X\u001a\u00020\u0005H\u0016¢\u0006\u0004\bX\u0010\u0004J\u000f\u0010Y\u001a\u00020\u0005H\u0016¢\u0006\u0004\bY\u0010\u0004J\u000f\u0010Z\u001a\u00020\u0005H\u0016¢\u0006\u0004\bZ\u0010\u0004J\u0017\u0010\\\u001a\u00020\u00052\u0006\u0010[\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\\\u0010?J\u000f\u0010]\u001a\u00020\u0005H\u0016¢\u0006\u0004\b]\u0010\u0004J\u000f\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\u0005H\u0016¢\u0006\u0004\ba\u0010\u0004J\u0017\u0010d\u001a\u00020\t2\b\u0010c\u001a\u0004\u0018\u00010b¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\tH\u0016¢\u0006\u0004\bf\u0010\u000bJ\u000f\u0010g\u001a\u00020\u0005H\u0016¢\u0006\u0004\bg\u0010\u0004J\u0011\u0010i\u001a\u0004\u0018\u00010hH\u0016¢\u0006\u0004\bi\u0010jJ\u001f\u0010n\u001a\u00020\u00052\u0006\u0010k\u001a\u00020\u00122\u0006\u0010m\u001a\u00020lH\u0016¢\u0006\u0004\bn\u0010oR\u001d\u0010u\u001a\u0004\u0018\u00010p8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010r\u001a\u0004\bs\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010}\u001a\u0004\u0018\u00010z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0019\u0010\u0083\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0088\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u0088\u0001R\u0019\u0010\u008f\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u0082\u0001Rq\u0010\u0092\u0001\u001aZ\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u001bj\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\u001c0\u001bj,\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u001bj\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`\u001c`\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0088\u0001R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R'\u0010£\u0001\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u0019\u0010¦\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u001a\u0010¨\u0001\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b§\u0001\u0010\u007fR\u001a\u0010ª\u0001\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b©\u0001\u0010\u007fR\u001a\u0010¬\u0001\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b«\u0001\u0010\u007f¨\u0006¯\u0001"}, d2 = {"Lcom/transsion/home/fragment/tab/MovieFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/s;", "<init>", "()V", "", "initScrollListener", "m1", "n1", "", "Z0", "()Ljava/lang/String;", "k1", TmcStartParams.KEY_CHANNEL_ID, "", "Lcom/transsion/home/bean/Item;", "Y0", "(Ljava/lang/String;)Ljava/util/List;", "", RequestParameters.POSITION, "V0", "(I)V", "", "h1", "()Z", "initViewModel", "A1", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "selectItems", "J1", "(Ljava/util/HashMap;)V", "loadData", "C1", "loadMore", "x1", "(Ljava/lang/String;)V", "", "selectedMap", "w1", "(Ljava/util/Map;)V", "selectedItems", "isRefresh", "X0", "(Ljava/lang/String;Ljava/util/Map;Z)V", "Lcom/transsion/home/bean/MovieBean;", "movieBean", "H1", "(Lcom/transsion/home/bean/MovieBean;Z)V", "showLoadingView", "i1", "string", "F1", "W0", "j1", "e1", "()I", "Lcom/transsion/home/bean/LayoutStyle;", "a1", "(Ljava/lang/String;)Lcom/transsion/home/bean/LayoutStyle;", "b1", PushConstants.PUSH_SERVICE_TYPE_SHOW, "z1", "(Z)V", "l1", "d1", "Landroid/view/LayoutInflater;", "inflater", "g1", "(Landroid/view/LayoutInflater;)Lgl/s;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "p0", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Lcom/google/android/material/tabs/TabLayout$Tab;", "selected", "B1", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "lazyLoadData", "startLoading", "hideLoading", "onResume", "hidden", "onHiddenChanged", "onPause", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDestroyView", "Lcom/transsion/home/bean/FilterItems;", "filterItems", "f1", "(Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;", "g0", "c0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Lcom/transsion/memberapi/IMemberApi;", "g", "Lkotlin/Lazy;", "c1", "()Lcom/transsion/memberapi/IMemberApi;", "memberProvider", "Lcom/transsion/home/adapter/a;", "h", "Lcom/transsion/home/adapter/a;", "mAdapter", "Lcom/transsion/home/viewmodel/MovieViewModel;", "i", "Lcom/transsion/home/viewmodel/MovieViewModel;", "mMovieModel", "j", "Landroid/view/View;", "header", CampaignEx.JSON_KEY_AD_K, "I", "mPage", "l", "Lcom/transsion/home/bean/FilterItems;", "mFilterItems", "m", "Ljava/lang/String;", "mChannelId", "n", "mDeeplinkChannelId", "o", "mFilterJson", TtmlNode.TAG_P, "mPerPage", CampaignEx.JSON_KEY_AD_Q, "Ljava/util/HashMap;", "mSubjectTypeMap", "Lcom/transsion/home/view/filter/popup/PopupFilterView;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/home/view/filter/popup/PopupFilterView;", "mFilterView", "", "s", "J", "startShowTime", "t", "mPageFrom", "Lhl/b;", TmcStartParams.KEY_URL_SHORT, "Lhl/b;", "mExposureHelper", "v", "Ljava/util/Map;", "mLatestSelectItems", "w", "Z", "isViewInitialized", "x", "mNoNetworkView", "y", "mLoadingView", "z", "mNoResultView", "A", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MovieFragment extends BaseHomeSubFragment<gl.s> {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int B = 8;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.adapter.a mAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private MovieViewModel mMovieModel;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private View header;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private FilterItems mFilterItems;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String mChannelId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String mDeeplinkChannelId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String mFilterJson;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private PopupFilterView mFilterView;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private long startShowTime;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private hl.b mExposureHelper;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private Map mLatestSelectItems;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean isViewInitialized;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private View mNoNetworkView;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private View mLoadingView;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private View mNoResultView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberProvider = LazyKt.b(new Function0() { // from class: com.transsion.home.fragment.tab.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MovieFragment.y1();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int mPage = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 12;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private HashMap mSubjectTypeMap = new HashMap();

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private String mPageFrom = hj.i.f64505a.i();

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.MovieFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ MovieFragment b(Companion companion, int i11, boolean z10, String str, String str2, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                z10 = false;
            }
            if ((i12 & 4) != 0) {
                str = null;
            }
            if ((i12 & 8) != 0) {
                str2 = "";
            }
            return companion.a(i11, z10, str, str2);
        }

        public final MovieFragment a(int i11, boolean z10, String str, String str2) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str2);
            bundle.putBoolean("hide_header_bg", z10);
            bundle.putString("filter_json", str);
            MovieFragment movieFragment = new MovieFragment();
            movieFragment.setArguments(bundle);
            return movieFragment;
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
            lg.a.C0828a.f(lg.a.f68839a, "MovieFragment", "release tab " + (tab != null ? Integer.valueOf(tab.getPosition()) : null), false, 4, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            RecyclerView recyclerView;
            lg.a.C0828a.f(lg.a.f68839a, "MovieFragment", "selected tab " + (tab != null ? Integer.valueOf(tab.getPosition()) : null), false, 4, null);
            if (tab != null) {
                MovieFragment.this.B1(tab, true);
            }
            MovieFragment.this.startShowTime = SystemClock.elapsedRealtime();
            MovieFragment movieFragment = MovieFragment.this;
            movieFragment.mPageFrom = movieFragment.f1(movieFragment.mFilterItems);
            if (tab == null) {
                return;
            }
            MovieFragment.this.V0(tab.getPosition());
            com.transsion.baselib.helper.a.f43262a.h(MovieFragment.this.mPageFrom, MovieFragment.this.mPageFrom, (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
            hl.b bVar = MovieFragment.this.mExposureHelper;
            if (bVar != null) {
                bVar.e();
            }
            MovieFragment movieFragment2 = MovieFragment.this;
            movieFragment2.x1(movieFragment2.mChannelId);
            MovieFragment movieFragment3 = MovieFragment.this;
            movieFragment3.J1((HashMap) movieFragment3.mSubjectTypeMap.get(MovieFragment.this.mChannelId));
            gl.s sVar = (gl.s) MovieFragment.this.getMViewBinding();
            if (sVar == null || (recyclerView = sVar.f63836c) == null) {
                return;
            }
            recyclerView.scrollToPosition(0);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            if (tab != null) {
                MovieFragment.this.B1(tab, false);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f43262a;
            MovieFragment movieFragment = MovieFragment.this;
            aVar.k(movieFragment.f1(movieFragment.mFilterItems), MovieFragment.this.mPageFrom, String.valueOf(jElapsedRealtime - MovieFragment.this.startShowTime));
            lg.a.C0828a.f(lg.a.f68839a, "MovieFragment", "unselected tab " + (tab != null ? Integer.valueOf(tab.getPosition()) : null), false, 4, null);
        }
    }

    public static final class c implements hl.a {
        c() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            String subjectId;
            String ops;
            com.transsion.home.adapter.a aVar = MovieFragment.this.mAdapter;
            if (aVar == null || (data = aVar.getData()) == null) {
                return;
            }
            int size = data.size();
            MovieFragment movieFragment = MovieFragment.this;
            if (i11 >= size) {
                return;
            }
            com.transsion.home.adapter.a aVar2 = movieFragment.mAdapter;
            MovieItem movieItem = aVar2 != null ? (MovieItem) aVar2.getItem(i11) : null;
            HashMap map = new HashMap();
            String str = "";
            if (movieItem == null || (subjectId = movieItem.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            map.put("has_resource", String.valueOf(movieItem != null ? movieItem.getHasResource() : null));
            map.put("sequence", String.valueOf(i11));
            if (movieItem != null && (ops = movieItem.getOps()) != null) {
                str = ops;
            }
            map.put("ops", str);
            map.put("filter_name", movieFragment.Z0());
            map.put("browse_duration", String.valueOf(j11));
            com.transsion.baselib.helper.a.f43262a.e(movieFragment.f1(movieFragment.mFilterItems), map);
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(MovieItem oldItem, MovieItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectId(), newItem.getSubjectId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(MovieItem oldItem, MovieItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectType(), newItem.getSubjectType());
        }
    }

    public static final class e extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f45302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f45303b;

        e() {
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                if (this.f45302a == null) {
                    this.f45302a = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
                }
                ((StaggeredGridLayoutManager) layoutManager).E(this.f45302a);
                this.f45303b = e(this.f45302a);
                return;
            }
            if (layoutManager instanceof GridLayoutManager) {
                this.f45303b = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            } else {
                if (!(layoutManager instanceof LinearLayoutManager)) {
                    throw new RuntimeException("Unsupported layoutManager.");
                }
                this.f45303b = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            }
        }

        private final int e(int[] iArr) {
            if (iArr == null) {
                return 0;
            }
            int i11 = 0;
            for (int i12 : iArr) {
                if (i12 > i11) {
                    i11 = i12;
                }
            }
            return i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            com.transsion.home.adapter.a aVar;
            r6.f fVarH0;
            r6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i11 != 0 || childCount <= 0 || this.f45303b < itemCount - 1) {
                return;
            }
            com.transsion.home.adapter.a aVar2 = MovieFragment.this.mAdapter;
            if (((aVar2 == null || (fVarH1 = aVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (aVar = MovieFragment.this.mAdapter) == null || (fVarH0 = aVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            d(recyclerView);
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
            r6.f fVarH0;
            List<Object> data;
            List<Object> data2;
            List<Object> data3;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (MovieFragment.this.isResumed()) {
                com.transsion.home.adapter.a aVar = MovieFragment.this.mAdapter;
                if (aVar != null && (data3 = aVar.getData()) != null && data3.isEmpty()) {
                    View view = MovieFragment.this.mNoNetworkView;
                    if (view != null) {
                        jg.c.g(view);
                    }
                    MovieFragment.this.loadData();
                    return;
                }
                com.transsion.home.adapter.a aVar2 = MovieFragment.this.mAdapter;
                int size = (aVar2 == null || (data2 = aVar2.getData()) == null) ? 0 : data2.size();
                if (size <= 0) {
                    MovieFragment movieFragment = MovieFragment.this;
                    movieFragment.X0(movieFragment.mChannelId, MovieFragment.this.mLatestSelectItems, true);
                    return;
                }
                com.transsion.home.adapter.a aVar3 = MovieFragment.this.mAdapter;
                MovieItem movieItem = (aVar3 == null || (data = aVar3.getData()) == null) ? null : (MovieItem) data.get(size - 1);
                if (Intrinsics.c(MovieFragment.this.mChannelId, movieItem != null ? movieItem.getChannelId() : null)) {
                    if (Intrinsics.c(MovieFragment.this.mLatestSelectItems, movieItem != null ? movieItem.getSelectItems() : null)) {
                        com.transsion.home.adapter.a aVar4 = MovieFragment.this.mAdapter;
                        if (aVar4 == null || (fVarH0 = aVar4.h0()) == null) {
                            return;
                        }
                        fVarH0.w();
                        return;
                    }
                }
                MovieFragment movieFragment2 = MovieFragment.this;
                movieFragment2.X0(movieFragment2.mChannelId, MovieFragment.this.mLatestSelectItems, true);
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45306a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45306a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45306a;
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
            this.f45306a.invoke(obj);
        }
    }

    private final void A1() {
        PopupFilterView popupFilterView = this.mFilterView;
        if (popupFilterView != null) {
            PopupFilterView.initSelectData$default(popupFilterView, Y0(this.mChannelId), null, 2, null);
        }
    }

    private final void C1() {
        View view = this.header;
        if (view != null) {
            ViewStub viewStub = (ViewStub) view.findViewById(R$id.no_network_stub);
            if (this.mNoNetworkView == null) {
                this.mNoNetworkView = viewStub.inflate();
            }
            View view2 = this.mNoNetworkView;
            if (view2 != null) {
                jg.c.k(view2);
                final NoNetworkBigView noNetworkBigView = (NoNetworkBigView) view2.findViewById(R$id.state_view);
                if (noNetworkBigView != null) {
                    NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
                    noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.tab.k
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return MovieFragment.D1(noNetworkBigView, this);
                        }
                    });
                    noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.tab.l
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return MovieFragment.E1(this.f45465a);
                        }
                    });
                }
                com.tn.lib.view.r.a(d1());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D1(NoNetworkBigView noNetworkBigView, MovieFragment movieFragment) {
        jg.c.g(noNetworkBigView);
        movieFragment.loadData();
        com.tn.lib.view.r.b(movieFragment.d1());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E1(MovieFragment movieFragment) {
        com.tn.lib.view.r.c(movieFragment.d1());
        return Unit.f67061a;
    }

    private final void F1(String string) {
        View view = this.header;
        if (view != null) {
            ViewStub viewStub = (ViewStub) view.findViewById(R$id.no_result_stub);
            if (this.mNoResultView == null) {
                this.mNoResultView = viewStub.inflate();
            }
            final View view2 = this.mNoResultView;
            if (view2 != null) {
                jg.c.k(view2);
                TextView textView = (TextView) view2.findViewById(R$id.tv_no_result);
                if (textView != null) {
                    textView.setText(string);
                }
                View viewFindViewById = view2.findViewById(R$id.tv_reset);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.tab.s
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            MovieFragment.G1(this.f45492a, view2, view3);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(MovieFragment movieFragment, View view, View view2) {
        movieFragment.W0(movieFragment.mChannelId);
        movieFragment.x1(movieFragment.mChannelId);
        jg.c.g(view);
        movieFragment.startLoading();
        movieFragment.A1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void H1(MovieBean movieBean, boolean isRefresh) {
        r6.f fVarH0;
        gl.s sVar;
        LinearLayout linearLayoutB;
        r6.f fVarH1;
        com.transsion.home.adapter.a aVar;
        r6.f fVarH2;
        SwipeRefreshLayout swipeRefreshLayout;
        gl.s sVar2;
        SwipeRefreshLayout swipeRefreshLayout2;
        Integer perPage;
        if (movieBean != null) {
            Pager pager = movieBean.getPager();
            this.mPerPage = (pager == null || (perPage = pager.getPerPage()) == null) ? 10 : perPage.intValue();
            if (isRefresh) {
                gl.s sVar3 = (gl.s) getMViewBinding();
                if (sVar3 != null && (swipeRefreshLayout = sVar3.f63840g) != null && swipeRefreshLayout.isRefreshing() && (sVar2 = (gl.s) getMViewBinding()) != null && (swipeRefreshLayout2 = sVar2.f63840g) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                com.transsion.home.adapter.a aVar2 = this.mAdapter;
                if (aVar2 != null) {
                    aVar2.n1(movieBean.getItems());
                }
                List<MovieItem> items = movieBean.getItems();
                if (items == null || !items.isEmpty()) {
                    j1();
                } else {
                    F1(getString(R$string.no_filter_result));
                }
            } else {
                com.transsion.home.adapter.a aVar3 = this.mAdapter;
                List<Object> data = aVar3 != null ? aVar3.getData() : null;
                ArrayList arrayList = new ArrayList();
                List<MovieItem> items2 = movieBean.getItems();
                if (items2 == null) {
                    items2 = CollectionsKt.l();
                }
                if (data == null || !(!data.isEmpty())) {
                    arrayList.addAll(items2);
                } else {
                    for (MovieItem movieItem : items2) {
                        if (!data.contains(movieItem)) {
                            arrayList.add(movieItem);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    com.transsion.home.adapter.a aVar4 = this.mAdapter;
                    if (aVar4 == null || (fVarH1 = aVar4.h0()) == null) {
                        return;
                    }
                    r6.f.u(fVarH1, false, 1, null);
                    return;
                }
                com.transsion.home.adapter.a aVar5 = this.mAdapter;
                if (aVar5 != null) {
                    aVar5.q(arrayList);
                }
                com.transsion.home.adapter.a aVar6 = this.mAdapter;
                if (aVar6 != null && (fVarH0 = aVar6.h0()) != null && fVarH0.r() && (sVar = (gl.s) getMViewBinding()) != null && (linearLayoutB = sVar.getRoot()) != null) {
                    linearLayoutB.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.t
                        @Override // java.lang.Runnable
                        public final void run() {
                            MovieFragment.I1(this.f45497a);
                        }
                    }, 300L);
                }
            }
            Pager pager2 = movieBean.getPager();
            if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (aVar = this.mAdapter) == null || (fVarH2 = aVar.h0()) == null) {
                return;
            }
            r6.f.u(fVarH2, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I1(MovieFragment movieFragment) {
        r6.f fVarH0;
        com.transsion.home.adapter.a aVar = movieFragment.mAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J1(HashMap selectItems) {
        PopupFilterView popupFilterView = this.mFilterView;
        if (popupFilterView != null) {
            popupFilterView.initSelectData(Y0(this.mChannelId), selectItems);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void V0(int position) {
        String channelId;
        List<Channel> typeList;
        Channel channel;
        RecyclerView recyclerView;
        List<Channel> typeList2;
        FilterItems filterItems = this.mFilterItems;
        int size = (filterItems == null || (typeList2 = filterItems.getTypeList()) == null) ? -1 : typeList2.size();
        if (position < 0 || position >= size) {
            return;
        }
        RecyclerView.m layoutManager = null;
        if (h1()) {
            channelId = this.mDeeplinkChannelId;
        } else {
            FilterItems filterItems2 = this.mFilterItems;
            channelId = (filterItems2 == null || (typeList = filterItems2.getTypeList()) == null || (channel = typeList.get(position)) == null) ? null : channel.getChannelId();
        }
        this.mChannelId = channelId;
        this.mDeeplinkChannelId = null;
        View view = this.header;
        if (view != null) {
            gl.s sVar = (gl.s) getMViewBinding();
            if (sVar != null && (recyclerView = sVar.f63836c) != null) {
                layoutManager = recyclerView.getLayoutManager();
            }
            if (layoutManager instanceof OffsetGridLayoutManager) {
                OffsetGridLayoutManager offsetGridLayoutManager = (OffsetGridLayoutManager) layoutManager;
                if (offsetGridLayoutManager.U() == e1()) {
                    lg.a.C0828a.f(lg.a.f68839a, "MovieFragment", "span count is same " + offsetGridLayoutManager.U(), false, 4, null);
                    return;
                }
            }
            n1();
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(view);
            }
            com.transsion.home.adapter.a aVar = this.mAdapter;
            if (aVar != null) {
                BaseQuickAdapter.y(aVar, view, 0, 0, 6, null);
            }
            showLoadingView();
        }
    }

    private final void W0(String channelId) {
        HashMap map = (HashMap) this.mSubjectTypeMap.get(channelId);
        if (map != null) {
            map.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0(String channelId, Map selectedItems, boolean isRefresh) {
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null) {
            int i11 = this.mPage;
            this.mPage = i11 + 1;
            movieViewModel.k(i11, this.mPerPage, channelId, selectedItems, isRefresh);
        }
        this.mLatestSelectItems = selectedItems;
        q0(selectedItems);
    }

    private final List Y0(String channelId) {
        List<Channel> typeList;
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return null;
        }
        for (Channel channel : typeList) {
            if (Intrinsics.c(channel.getChannelId(), channelId)) {
                return channel.getItems();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String Z0() {
        String str;
        HashMap map = (HashMap) this.mSubjectTypeMap.get(this.mChannelId);
        if (map == null || (str = (String) map.get("sort")) == null) {
            str = "";
        }
        return "filter_" + str;
    }

    private final LayoutStyle a1(String channelId) {
        List<Channel> typeList;
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return null;
        }
        for (Channel channel : typeList) {
            if (Intrinsics.c(channel.getChannelId(), channelId)) {
                return channel.getStyle();
            }
        }
        return null;
    }

    private final int b1() {
        return R$layout.home_empty_view_loading;
    }

    private final IMemberApi c1() {
        return (IMemberApi) this.memberProvider.getValue();
    }

    private final String d1() {
        Fragment parentFragment = getParentFragment();
        return parentFragment instanceof HomeFragment ? ((HomeFragment) parentFragment).J0() : "";
    }

    private final int e1() {
        LayoutStyle layoutStyleA1 = a1(this.mChannelId);
        if (layoutStyleA1 != null) {
            int colNum = layoutStyleA1.getColNum();
            FragmentActivity activity = getActivity();
            return colNum + ((activity == null || !com.transsion.baseui.util.b.a(activity)) ? 0 : 1);
        }
        if (Intrinsics.c(this.mChannelId, "5") || Intrinsics.c(this.mChannelId, PrepareException.ERROR_NO_URL) || Intrinsics.c(this.mChannelId, "1003") || Intrinsics.c(this.mChannelId, "1004")) {
            return 2;
        }
        FragmentActivity activity2 = getActivity();
        return (activity2 == null || !com.transsion.baseui.util.b.a(activity2)) ? 3 : 4;
    }

    private final boolean h1() {
        FilterItems filterItems;
        List<Channel> typeList;
        String str = this.mDeeplinkChannelId;
        if (str != null && str.length() != 0 && (filterItems = this.mFilterItems) != null && (typeList = filterItems.getTypeList()) != null) {
            Iterator<T> it = typeList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(((Channel) it.next()).getChannelId(), this.mDeeplinkChannelId)) {
                    return true;
                }
            }
        }
        return false;
    }

    private final void i1() {
        View view = this.mLoadingView;
        if (view != null) {
            jg.c.g(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initScrollListener() {
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        gl.s sVar = (gl.s) getMViewBinding();
        if (sVar != null && (swipeRefreshLayout2 = sVar.f63840g) != null) {
            swipeRefreshLayout2.setEnabled(false);
        }
        gl.s sVar2 = (gl.s) getMViewBinding();
        if (sVar2 != null && (swipeRefreshLayout = sVar2.f63840g) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.home.fragment.tab.o
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    MovieFragment.r1(this.f45480a);
                }
            });
        }
        gl.s sVar3 = (gl.s) getMViewBinding();
        if (sVar3 == null || (recyclerView = sVar3.f63836c) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new e());
    }

    private final void initViewModel() {
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null) {
            movieViewModel.i().j(this, new g(new Function1() { // from class: com.transsion.home.fragment.tab.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MovieFragment.s1(this.f45446a, (BaseDto) obj);
                }
            }));
            movieViewModel.l().j(this, new g(new Function1() { // from class: com.transsion.home.fragment.tab.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MovieFragment.u1(this.f45471a, (RefreshBaseDto) obj);
                }
            }));
            PopupFilterView popupFilterView = this.mFilterView;
            if (popupFilterView != null) {
                popupFilterView.setOnFilterListener(new Function1() { // from class: com.transsion.home.fragment.tab.n
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MovieFragment.v1(this.f45476a, (Map) obj);
                    }
                });
            }
        }
    }

    private final void j1() {
        View view = this.mNoResultView;
        if (view != null) {
            jg.c.g(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void k1() {
        List<Channel> typeList;
        gl.s sVar;
        View view;
        List<Channel> typeList2;
        gl.g0 g0Var;
        gl.g0 g0Var2;
        List<Channel> typeList3;
        FilterItems filterItems = this.mFilterItems;
        int size = 0;
        int size2 = (filterItems == null || (typeList3 = filterItems.getTypeList()) == null) ? 0 : typeList3.size();
        if (size2 <= 0) {
            return;
        }
        gl.s sVar2 = (gl.s) getMViewBinding();
        ConstraintLayout constraintLayout = null;
        TabLayout tabLayout = (sVar2 == null || (g0Var2 = sVar2.f63835b) == null) ? null : g0Var2.f63706d;
        gl.s sVar3 = (gl.s) getMViewBinding();
        if (sVar3 != null && (g0Var = sVar3.f63835b) != null) {
            constraintLayout = g0Var.f63705c;
        }
        if (size2 == 1) {
            if (constraintLayout != null) {
                jg.c.g(constraintLayout);
            }
            x1(this.mChannelId);
            J1((HashMap) this.mSubjectTypeMap.get(this.mChannelId));
        } else {
            if (constraintLayout != null) {
                jg.c.k(constraintLayout);
            }
            if (tabLayout != null) {
                tabLayout.removeAllTabs();
            }
            if (tabLayout != null) {
                tabLayout.clearOnTabSelectedListeners();
            }
            if (tabLayout != null) {
                tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
            }
            FilterItems filterItems2 = this.mFilterItems;
            if (filterItems2 != null && (typeList = filterItems2.getTypeList()) != null) {
                int i11 = 0;
                for (Object obj : typeList) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    Channel channel = (Channel) obj;
                    if (tabLayout != null) {
                        tabLayout.addTab(tabLayout.newTab().setText(channel.getChannelName()), Intrinsics.c(channel.getChannelId(), this.mChannelId));
                    }
                    i11 = i12;
                }
            }
        }
        if (getParentFragment() instanceof HomeFragment) {
            FilterItems filterItems3 = this.mFilterItems;
            if (filterItems3 != null && (typeList2 = filterItems3.getTypeList()) != null) {
                size = typeList2.size();
            }
            if (size > 1 || (sVar = (gl.s) getMViewBinding()) == null || (view = sVar.f63838e) == null) {
                return;
            }
            jg.c.k(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void l1() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            hl.b bVar = new hl.b(0.6f, new c(), false, 4, null);
            gl.s sVar = (gl.s) getMViewBinding();
            if (sVar != null && (recyclerView = sVar.f63836c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        startLoading();
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null) {
            movieViewModel.h(Integer.valueOf(getMTabId()), "v3");
        }
    }

    private final void loadMore() {
        String str = this.mChannelId;
        X0(str, (Map) this.mSubjectTypeMap.get(str), false);
    }

    private final void m1() {
        List<Channel> typeList;
        this.mSubjectTypeMap.clear();
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return;
        }
        Iterator<T> it = typeList.iterator();
        while (it.hasNext()) {
            this.mSubjectTypeMap.put(((Channel) it.next()).getChannelId(), new HashMap());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n1() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        gl.s sVar;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        int iE1 = e1();
        OffsetGridLayoutManager offsetGridLayoutManager = new OffsetGridLayoutManager(getContext(), iE1, 1, false);
        gl.s sVar2 = (gl.s) getMViewBinding();
        if (sVar2 != null && (recyclerView4 = sVar2.f63836c) != null) {
            recyclerView4.setLayoutManager(offsetGridLayoutManager);
        }
        com.transsion.home.adapter.a aVar = new com.transsion.home.adapter.a(new ArrayList(), this.mExposureHelper, a1(this.mChannelId), iE1);
        aVar.h0().z(true);
        aVar.h0().y(true);
        aVar.h0().D(new p6.f() { // from class: com.transsion.home.fragment.tab.q
            @Override // p6.f
            public final void a() {
                MovieFragment.o1(this.f45486a);
            }
        });
        aVar.R0(new d());
        aVar.w1(new p6.d() { // from class: com.transsion.home.fragment.tab.r
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                MovieFragment.q1(this.f45489a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = aVar;
        gl.s sVar3 = (gl.s) getMViewBinding();
        if (sVar3 != null && (recyclerView2 = sVar3.f63836c) != null && recyclerView2.getItemDecorationCount() < 2 && (sVar = (gl.s) getMViewBinding()) != null && (recyclerView3 = sVar.f63836c) != null) {
            recyclerView3.addItemDecoration(new ig.b(com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(16.0f), com.blankj.utilcode.util.a0.a(16.0f)));
        }
        gl.s sVar4 = (gl.s) getMViewBinding();
        if (sVar4 == null || (recyclerView = sVar4.f63836c) == null) {
            return;
        }
        recyclerView.setAdapter(this.mAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void o1(final MovieFragment movieFragment) {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            movieFragment.loadMore();
            return;
        }
        uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        gl.s sVar = (gl.s) movieFragment.getMViewBinding();
        if (sVar == null || (recyclerView = sVar.f63836c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.u
            @Override // java.lang.Runnable
            public final void run() {
                MovieFragment.p1(this.f45502a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p1(MovieFragment movieFragment) {
        r6.f fVarH0;
        com.transsion.home.adapter.a aVar = movieFragment.mAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(MovieFragment movieFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof MovieItem) {
            MovieItem movieItem = (MovieItem) item;
            String subjectId = movieItem.getSubjectId();
            if (subjectId != null) {
                rl.h.f(new Subject(subjectId, movieItem.getSubjectType(), movieItem.getTitle(), null, null, null, movieItem.getDescription(), null, null, movieItem.getGenre(), null, null, null, null, null, null, null, null, null, movieItem.getOps(), null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, movieItem.getPlayUrl(), null, null, -524872, 117440511, null), movieFragment.Z0());
            }
            HashMap map = new HashMap();
            String subjectId2 = movieItem.getSubjectId();
            if (subjectId2 == null) {
                subjectId2 = "";
            }
            map.put("subject_id", subjectId2);
            map.put("sequence", String.valueOf(i11));
            String ops = movieItem.getOps();
            map.put("ops", ops != null ? ops : "");
            map.put("filter_name", movieFragment.Z0());
            com.transsion.baselib.helper.a.f43262a.f(movieFragment.f1(movieFragment.mFilterItems), map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(MovieFragment movieFragment) {
        movieFragment.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit s1(final MovieFragment movieFragment, BaseDto baseDto) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (baseDto == null) {
            return Unit.f67061a;
        }
        if (!Intrinsics.c(baseDto.getCode(), "0")) {
            gl.s sVar = (gl.s) movieFragment.getMViewBinding();
            if (sVar != null && (swipeRefreshLayout = sVar.f63840g) != null) {
                swipeRefreshLayout.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        MovieFragment.t1(this.f45453a);
                    }
                }, 200L);
            }
            return Unit.f67061a;
        }
        movieFragment.mFilterItems = (FilterItems) baseDto.getData();
        movieFragment.V0(0);
        movieFragment.m1();
        movieFragment.k1();
        com.transsion.home.adapter.a aVar = movieFragment.mAdapter;
        if (aVar != null) {
            aVar.F1(movieFragment.a1(movieFragment.mChannelId));
        }
        return Unit.f67061a;
    }

    private final void showLoadingView() {
        View view = this.header;
        if (view != null) {
            ViewStub viewStub = (ViewStub) view.findViewById(R$id.loading_stub);
            if (viewStub != null) {
                viewStub.setLayoutResource(b1());
            }
            if (this.mLoadingView == null) {
                this.mLoadingView = viewStub.inflate();
            }
            View view2 = this.mLoadingView;
            if (view2 != null) {
                jg.c.k(view2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(MovieFragment movieFragment) {
        movieFragment.hideLoading();
        movieFragment.C1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit u1(MovieFragment movieFragment, RefreshBaseDto refreshBaseDto) {
        r6.f fVarH0;
        com.transsion.home.adapter.a aVar;
        r6.f fVarH1;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        SwipeRefreshLayout swipeRefreshLayout3;
        if (refreshBaseDto == null) {
            return Unit.f67061a;
        }
        gl.s sVar = (gl.s) movieFragment.getMViewBinding();
        if (sVar != null && (swipeRefreshLayout3 = sVar.f63840g) != null) {
            swipeRefreshLayout3.setEnabled(true);
        }
        if (Intrinsics.c(refreshBaseDto.getCode(), "0")) {
            hj.b logViewConfig = movieFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            MovieBean movieBean = (MovieBean) refreshBaseDto.getData();
            if (movieBean != null) {
                movieFragment.H1(movieBean, refreshBaseDto.getIsRefresh());
                View view = movieFragment.mNoNetworkView;
                if (view != null) {
                    jg.c.g(view);
                }
            }
            movieFragment.hideLoading();
            return Unit.f67061a;
        }
        if (refreshBaseDto.getIsRefresh()) {
            gl.s sVar2 = (gl.s) movieFragment.getMViewBinding();
            if (sVar2 != null && (swipeRefreshLayout = sVar2.f63840g) != null && swipeRefreshLayout.isRefreshing()) {
                gl.s sVar3 = (gl.s) movieFragment.getMViewBinding();
                if (sVar3 != null && (swipeRefreshLayout2 = sVar3.f63840g) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                movieFragment.n0();
            }
        } else {
            com.transsion.home.adapter.a aVar2 = movieFragment.mAdapter;
            if (aVar2 != null && (fVarH0 = aVar2.h0()) != null && fVarH0.r() && (aVar = movieFragment.mAdapter) != null && (fVarH1 = aVar.h0()) != null) {
                fVarH1.v();
            }
        }
        com.transsion.home.adapter.a aVar3 = movieFragment.mAdapter;
        if (aVar3 == null || (data = aVar3.getData()) == null || data.size() != 0) {
            if (nh.m.f70474a.e()) {
                uh.b.f76753a.d(com.transsnet.downloader.R$string.str_ad_video_error_tips);
            } else {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
            }
            movieFragment.i1();
            return Unit.f67061a;
        }
        if (nh.m.f70474a.e()) {
            movieFragment.F1(movieFragment.getString(R$string.home_no_network_content));
        } else {
            movieFragment.C1();
        }
        movieFragment.i1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(MovieFragment movieFragment, Map it) {
        Intrinsics.h(it, "it");
        movieFragment.w1(it);
        com.transsion.baselib.helper.a.f43262a.h(movieFragment.f1(movieFragment.mFilterItems), it.toString(), (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        hl.b bVar = movieFragment.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        return Unit.f67061a;
    }

    private final void w1(Map selectedMap) {
        this.mPage = 1;
        HashMap map = (HashMap) this.mSubjectTypeMap.get(this.mChannelId);
        if (map != null) {
            map.clear();
        }
        if (map != null) {
            map.putAll(selectedMap);
        }
        X0(this.mChannelId, map, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x1(String channelId) {
        List<Channel> typeList;
        this.mPage = 1;
        FilterItems filterItems = this.mFilterItems;
        if (filterItems == null || (typeList = filterItems.getTypeList()) == null) {
            return;
        }
        for (Channel channel : typeList) {
            if (Intrinsics.c(channel.getChannelId(), channelId)) {
                HashMap map = (HashMap) this.mSubjectTypeMap.get(channelId);
                String str = this.mFilterJson;
                if (str == null || str.length() <= 0) {
                    List<Item> items = channel.getItems();
                    if (items != null) {
                        for (Item item : items) {
                            if ((map != null ? (String) map.get(item.getFilterType()) : null) == null) {
                                if (item.getRangeVals() != null) {
                                    String strA = PopupFilterView.INSTANCE.a(item.getRangeVals().getMinVal(), item.getRangeVals().getMaxVal());
                                    if (map != null) {
                                        map.put(item.getFilterType(), strA);
                                    }
                                } else if (!item.getFilterValsV2().isEmpty() && map != null) {
                                    map.put(item.getFilterType(), item.getFilterValsV2().get(0).getId());
                                }
                            }
                        }
                    }
                } else {
                    try {
                        String str2 = this.mFilterJson;
                        if (str2 == null) {
                            str2 = "";
                        }
                        JSONObject jSONObject = new JSONObject(str2);
                        Iterator<String> itKeys = jSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            String string = jSONObject.getString(next);
                            if (map != null) {
                                map.put(next, string);
                            }
                        }
                        Unit unit = Unit.f67061a;
                    } catch (Exception unused) {
                        List<Item> items2 = channel.getItems();
                        if (items2 != null) {
                            for (Item item2 : items2) {
                                if ((map != null ? (String) map.get(item2.getFilterType()) : null) == null && map != null) {
                                    map.put(item2.getFilterType(), item2.getFilterValsV2().get(0).getId());
                                }
                            }
                            Unit unit2 = Unit.f67061a;
                        }
                    }
                }
                this.mFilterJson = null;
                X0(channelId, map, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMemberApi y1() {
        return (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
    }

    private final void z1(boolean show) {
        if (getMTabId() == HomeTabId.Game.getValue()) {
            if (show) {
                IMemberApi iMemberApiC1 = c1();
                if (iMemberApiC1 != null) {
                    iMemberApiC1.i();
                    return;
                }
                return;
            }
            IMemberApi iMemberApiC2 = c1();
            if (iMemberApiC2 != null) {
                iMemberApiC2.q();
            }
        }
    }

    public final void B1(TabLayout.Tab tab, boolean z10) {
        Intrinsics.h(tab, "<this>");
        try {
            Field declaredField = tab.getClass().getDeclaredField(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(tab);
            Field declaredField2 = obj.getClass().getDeclaredField("textView");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            Intrinsics.f(obj2, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) obj2;
            textView.setTextSize(14.0f);
            if (z10) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            } else {
                textView.setTypeface(Typeface.defaultFromStyle(0));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void c0() {
        super.c0();
        this.mPage = 1;
        String str = this.mChannelId;
        X0(str, (Map) this.mSubjectTypeMap.get(str), true);
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public RecyclerView f0() {
        gl.s sVar = (gl.s) getMViewBinding();
        if (sVar != null) {
            return sVar.f63836c;
        }
        return null;
    }

    public final String f1(FilterItems filterItems) {
        List<Channel> typeList;
        String strD0 = getMTabCode();
        if (strD0 != null && strD0.length() != 0) {
            String strD1 = getMTabCode();
            return strD1 == null ? "" : strD1;
        }
        if (filterItems != null && (typeList = filterItems.getTypeList()) != null) {
            for (Channel channel : typeList) {
                if (Intrinsics.c(this.mChannelId, channel.getChannelId())) {
                    String channelName = channel.getChannelName();
                    return channelName == null ? d1() : channelName;
                }
            }
        }
        return d1();
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public String g0() {
        int iE1 = e1();
        if (iE1 != 2) {
            return iE1 != 3 ? "HomeFragmentListLinearTemplateAd" : "HomeFragmentListGrid3TemplateAd";
        }
        return "HomeFragmentListGrid2TemplateAd";
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: g1, reason: merged with bridge method [inline-methods] */
    public gl.s getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.s sVarC = gl.s.c(inflater);
        Intrinsics.g(sVarC, "inflate(...)");
        return sVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        i1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        gl.s sVar;
        View view2;
        View view3;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        gl.s sVar2 = (gl.s) getMViewBinding();
        if (sVar2 != null && (view3 = sVar2.f63839f) != null) {
            view3.getLayoutParams().height = h0();
        }
        Bundle arguments = getArguments();
        if (arguments != null && arguments.getBoolean("hide_header_bg", false) && (sVar = (gl.s) getMViewBinding()) != null && (view2 = sVar.f63839f) != null) {
            jg.c.g(view2);
        }
        this.mMovieModel = (MovieViewModel) new androidx.p009lifecycle.v0(this).a(MovieViewModel.class);
        gl.s sVar3 = (gl.s) getMViewBinding();
        this.mFilterView = sVar3 != null ? sVar3.f63837d : null;
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        Context context = getContext();
        if ((context == null || !com.transsion.baseui.util.b.a(context)) && wrapperNativeManager != null) {
            MovieItem movieItem = new MovieItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 134217727, null);
            movieItem.setNonAdDelegate(wrapperNativeManager);
            com.transsion.home.adapter.a aVar = this.mAdapter;
            int size = (aVar == null || (data = aVar.getData()) == null) ? 0 : data.size();
            if (lastAdPosition < 0 || lastAdPosition > size) {
                com.transsion.home.adapter.a aVar2 = this.mAdapter;
                if (aVar2 != null) {
                    aVar2.p(movieItem);
                    return;
                }
                return;
            }
            com.transsion.home.adapter.a aVar3 = this.mAdapter;
            if (aVar3 != null) {
                aVar3.n(lastAdPosition, movieItem);
            }
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        if (!this.isViewInitialized) {
            this.isViewInitialized = true;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.header_movie, (ViewGroup) null);
            this.header = viewInflate;
            if (viewInflate != null) {
                l1();
                n1();
                initScrollListener();
                com.transsion.home.adapter.a aVar = this.mAdapter;
                if (aVar != null) {
                    BaseQuickAdapter.y(aVar, viewInflate, 0, 0, 6, null);
                }
                initViewModel();
                setNetListener(new f());
            }
            lg.a.C0828a.f(lg.a.f68839a, "MovieFragment", "lazyLoadData() --> View延迟初始化完成", false, 4, null);
        }
        loadData();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(d1(), false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        com.transsion.home.adapter.a aVar = this.mAdapter;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.mFilterJson = arguments != null ? arguments.getString("filter_json") : null;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        androidx.p009lifecycle.b0 b0VarM;
        androidx.p009lifecycle.b0 b0VarJ;
        this.mPage = 1;
        MovieViewModel movieViewModel = this.mMovieModel;
        if (movieViewModel != null && (b0VarJ = movieViewModel.j()) != null) {
            b0VarJ.q(null);
        }
        MovieViewModel movieViewModel2 = this.mMovieModel;
        if (movieViewModel2 != null && (b0VarM = movieViewModel2.m()) != null) {
            b0VarM.q(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        com.transsion.baseui.activity.k.h(null, this, hidden, "tabId=" + getMTabId(), 1, null);
        if (isResumed()) {
            if (!hidden) {
                logResume();
                z1(true);
            } else {
                z1(false);
                logPause();
                this.startShowTime = SystemClock.elapsedRealtime();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (getMTabId() == 2) {
            com.transsion.baselib.helper.a.f43262a.k(f1(this.mFilterItems), hj.i.f64505a.i(), String.valueOf(SystemClock.elapsedRealtime() - this.startShowTime));
        }
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        com.transsion.baseui.activity.k.l(null, this, "tabId=" + getMTabId(), 1, null);
        z1(false);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        com.transsion.home.adapter.a aVar;
        List<Object> data;
        super.onResume();
        this.startShowTime = SystemClock.elapsedRealtime();
        View view = this.mNoNetworkView;
        if (view != null && jg.c.i(view) && nh.m.f70474a.e() && (aVar = this.mAdapter) != null && (data = aVar.getData()) != null && data.isEmpty()) {
            View view2 = this.mNoNetworkView;
            if (view2 != null) {
                jg.c.g(view2);
            }
            loadData();
        }
        com.transsion.baseui.activity.k.p(null, this, "tabId=" + getMTabId() + " visible=" + isVisible(), 1, null);
        z1(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void p0() {
        RecyclerView recyclerView;
        gl.s sVar = (gl.s) getMViewBinding();
        if (sVar == null || (recyclerView = sVar.f63836c) == null) {
            return;
        }
        recyclerView.smoothScrollToPosition(0);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        showLoadingView();
    }
}
