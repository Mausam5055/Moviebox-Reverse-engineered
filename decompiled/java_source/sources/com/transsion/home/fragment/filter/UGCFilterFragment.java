package com.transsion.home.fragment.filter;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.widget.R$color;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.RefreshBaseDto;
import com.transsion.home.bean.UGCFilterVideoItem;
import com.transsion.home.bean.ugc.UGCFilterGrade;
import com.transsion.home.bean.ugc.UGCFilterItem;
import com.transsion.home.bean.ugc.UGCFilterResponse;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.view.filter.expand.UGCFilterExpandView;
import com.transsion.home.view.layoutmanager.OffsetGridLayoutManager;
import com.transsion.home.viewmodel.UGCFilterViewModel;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCContentList;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.f0;
import gl.n0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Ò\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0010\b\u0007\u0018\u0000 ±\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004²\u0001³\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\tJ\u001b\u0010\u000f\u001a\u00020\u0007*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u0004J!\u0010&\u001a\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020\rH\u0002¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120(H\u0002¢\u0006\u0004\b)\u0010*J+\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120+j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012`,H\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u0010\u0004J\u0017\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0018H\u0002¢\u0006\u0004\b1\u0010\u001bJ\u0017\u00102\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\rH\u0002¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0007H\u0002¢\u0006\u0004\b4\u0010\u0004J\u0019\u00106\u001a\u0004\u0018\u00010\u00122\u0006\u00105\u001a\u00020\u0012H\u0002¢\u0006\u0004\b6\u00107J\u0019\u00109\u001a\u0004\u0018\u00010\u00122\u0006\u00108\u001a\u00020\u0012H\u0002¢\u0006\u0004\b9\u00107J\u000f\u0010:\u001a\u00020\u0007H\u0002¢\u0006\u0004\b:\u0010\u0004J\u000f\u0010;\u001a\u00020\u0007H\u0002¢\u0006\u0004\b;\u0010\u0004J\u0019\u0010=\u001a\u00020\u00072\b\u0010<\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0007H\u0002¢\u0006\u0004\b?\u0010\u0004J\u000f\u0010A\u001a\u00020@H\u0002¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020@H\u0002¢\u0006\u0004\bC\u0010BJ\u000f\u0010D\u001a\u00020\u0007H\u0002¢\u0006\u0004\bD\u0010\u0004J+\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120(2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010E\u001a\u00020\u0012H\u0002¢\u0006\u0004\bF\u0010GJ\u0017\u0010J\u001a\u00020\u00022\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u0019\u0010N\u001a\u00020\u00072\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bN\u0010OJ!\u0010Q\u001a\u00020\u00072\u0006\u0010P\u001a\u00020\u00052\b\u0010M\u001a\u0004\u0018\u00010LH\u0017¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010\u0004J\u000f\u0010T\u001a\u00020\u0007H\u0016¢\u0006\u0004\bT\u0010\u0004J\u000f\u0010U\u001a\u00020\u0007H\u0016¢\u0006\u0004\bU\u0010\u0004J\u000f\u0010V\u001a\u00020\u0007H\u0016¢\u0006\u0004\bV\u0010\u0004J\u0017\u0010X\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\rH\u0016¢\u0006\u0004\bX\u00103J\u000f\u0010Y\u001a\u00020\u0007H\u0016¢\u0006\u0004\bY\u0010\u0004J\u000f\u0010[\u001a\u00020ZH\u0016¢\u0006\u0004\b[\u0010\\J\u000f\u0010]\u001a\u00020\u0007H\u0016¢\u0006\u0004\b]\u0010\u0004J\u000f\u0010^\u001a\u00020\u0012H\u0016¢\u0006\u0004\b^\u0010_J\u000f\u0010`\u001a\u00020\u0007H\u0016¢\u0006\u0004\b`\u0010\u0004J\u0011\u0010b\u001a\u0004\u0018\u00010aH\u0016¢\u0006\u0004\bb\u0010cJ\u001f\u0010g\u001a\u00020\u00072\u0006\u0010d\u001a\u00020@2\u0006\u0010f\u001a\u00020eH\u0016¢\u0006\u0004\bg\u0010hR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010p\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bq\u0010rR\u0016\u0010v\u001a\u00020s8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bt\u0010uR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010}\u001a\u00020@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0018\u0010\u0081\u0001\u001a\u00020~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0019\u0010\u0084\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0083\u0001R\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0083\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R+\u0010\u0091\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u00180\u008e\u00010\u008d\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0094\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001b\u0010\u0096\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0093\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0093\u0001R\u001b\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u0083\u0001R\u0018\u0010\u009c\u0001\u001a\u00020@8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009b\u0001\u0010|R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R9\u0010£\u0001\u001a\"\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010+j\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u0001`,8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u001a\u0010§\u0001\u001a\u00030¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u0019\u0010ª\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u001a\u0010¬\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b«\u0001\u0010rR\u001a\u0010®\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010rR\u001a\u0010°\u0001\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¯\u0001\u0010r¨\u0006´\u0001"}, d2 = {"Lcom/transsion/home/fragment/filter/UGCFilterFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/o;", "<init>", "()V", "Landroid/view/View;", "header", "", "t1", "(Landroid/view/View;)V", "headerView", "s1", "Lcom/google/android/material/tabs/TabLayout$Tab;", "", "selected", "X0", "(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V", "tab", "", CampaignEx.JSON_KEY_TITLE, "D1", "(Lcom/google/android/material/tabs/TabLayout$Tab;Ljava/lang/String;Z)V", "n1", "l1", "Lcom/transsion/home/bean/ugc/UGCFilterItem;", WebConstants.FIELD_ITEM, "C1", "(Lcom/transsion/home/bean/ugc/UGCFilterItem;)V", "o1", "i1", "Z0", "initViewModel", "loadData", "E1", "loadMore", "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;", "contentList", "isRefresh", "K1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;Z)V", "", "Y0", "()Ljava/util/Map;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "j1", "()Ljava/util/HashMap;", "J1", "ugcFilterItem", "B1", "A1", "(Z)V", "M1", "categoryId", "a1", "(Ljava/lang/String;)Ljava/lang/String;", "gradeCode", "b1", "showLoadingView", "g1", "string", "H1", "(Ljava/lang/String;)V", "h1", "", "e1", "()I", "d1", "k1", "key", "c1", "(Lcom/transsion/home/bean/ugc/UGCFilterItem;Ljava/lang/String;)Ljava/util/Map;", "Landroid/view/LayoutInflater;", "inflater", "f1", "(Landroid/view/LayoutInflater;)Lgl/o;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "startLoading", "hideLoading", "onResume", "hidden", "onHiddenChanged", "onPause", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDestroyView", "g0", "()Ljava/lang/String;", "c0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "Lcom/transsion/home/adapter/filter/a;", "g", "Lcom/transsion/home/adapter/filter/a;", "mAdapter", "Lcom/transsion/home/viewmodel/UGCFilterViewModel;", "h", "Lcom/transsion/home/viewmodel/UGCFilterViewModel;", "mMovieModel", "i", "Landroid/view/View;", "Lgl/n0;", "j", "Lgl/n0;", "headerBinding", "Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;", "filterView", "l", "I", "mPage", "Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;", "m", "Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;", "mCurrentTab", "n", "Ljava/lang/String;", "mCategory", "o", "mFilterJson", TtmlNode.TAG_P, "fromOptId", "Lcom/transsion/home/bean/ugc/UGCFilterResponse;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/home/bean/ugc/UGCFilterResponse;", "mFilterResponse", "", "", CampaignEx.JSON_KEY_AD_R, "Ljava/util/Map;", "categoryChildrenByParentIdMap", "s", "Ljava/lang/Integer;", "mSelectedLevel2", "t", "mSelectedLevel3", TmcStartParams.KEY_URL_SHORT, "mSelectedLevel4", "v", "mSelectedGrade", "w", "mPerPage", "Lhl/b;", "x", "Lhl/b;", "mExposureHelper", "y", "Ljava/util/HashMap;", "mLatestSelectItems", "", "z", "J", "firstLoadStartTimeMillis", "A", "Z", "hasRecordedFirstLoadDuration", "B", "mNoNetworkView", "C", "mLoadingView", "D", "mNoResultView", "E", "a", "TabType", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCFilterFragment extends BaseHomeSubFragment<gl.o> {

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int F = 8;

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private boolean hasRecordedFirstLoadDuration;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private View mNoNetworkView;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private View mLoadingView;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private View mNoResultView;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.adapter.filter.a mAdapter;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private UGCFilterViewModel mMovieModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private View header;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private n0 headerBinding;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private UGCFilterExpandView filterView;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private volatile String mFilterJson;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String fromOptId;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private UGCFilterResponse mFilterResponse;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private Integer mSelectedLevel2;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private Integer mSelectedLevel3;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private Integer mSelectedLevel4;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private String mSelectedGrade;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private hl.b mExposureHelper;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private HashMap mLatestSelectItems;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private long firstLoadStartTimeMillis;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int mPage = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private TabType mCurrentTab = TabType.FOR_U;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String mCategory = "Education";

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Map categoryChildrenByParentIdMap = new LinkedHashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 12;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;", "", "apiValue", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getApiValue", "()Ljava/lang/String;", "FOR_U", "LATEST", "HOTTEST", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private enum TabType {
        FOR_U("ForYou"),
        LATEST("Latest"),
        HOTTEST("New");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String apiValue;

        TabType(String str) {
            this.apiValue = str;
        }

        public static EnumEntries<TabType> getEntries() {
            return $ENTRIES;
        }

        public final String getApiValue() {
            return this.apiValue;
        }
    }

    /* JADX INFO: renamed from: com.transsion.home.fragment.filter.UGCFilterFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCFilterFragment a(int i11, String str, String category, String str2, String fromOptId) {
            Intrinsics.h(category, "category");
            Intrinsics.h(fromOptId, "fromOptId");
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str);
            bundle.putString("category", category);
            bundle.putString("filter_json", str2);
            bundle.putString("fromOptId", fromOptId);
            UGCFilterFragment uGCFilterFragment = new UGCFilterFragment();
            uGCFilterFragment.setArguments(bundle);
            return uGCFilterFragment;
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f45009a;

        static {
            int[] iArr = new int[TabType.values().length];
            try {
                iArr[TabType.FOR_U.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TabType.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TabType.HOTTEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f45009a = iArr;
        }
    }

    public static final class c implements hl.a {
        c() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0011  */
        @Override // hl.a
        public void a(int i11, long j11, View view) throws JSONException {
            int i12;
            String name;
            String name2;
            String name3;
            String collectionId;
            String videoId;
            String subjectId;
            UGCContent content;
            UGCVideo video;
            String ops;
            UGCContent content2;
            UGCVideo video2;
            UGCContent content3;
            UGCVideo video3;
            UGCContent content4;
            UGCVideo video4;
            UGCVideoBelongToCollection belongToCollection;
            List<UGCFilterItem> items;
            List<Object> data;
            com.transsion.home.adapter.filter.a aVar = UGCFilterFragment.this.mAdapter;
            int size = 0;
            if (aVar != null) {
                i12 = !aVar.s0() ? 0 : 1;
            }
            int i13 = i11 - i12;
            com.transsion.home.adapter.filter.a aVar2 = UGCFilterFragment.this.mAdapter;
            if (aVar2 != null && (data = aVar2.getData()) != null) {
                size = data.size();
            }
            if (i13 < 0 || i13 >= size) {
                return;
            }
            com.transsion.home.adapter.filter.a aVar3 = UGCFilterFragment.this.mAdapter;
            UGCFilterVideoItem uGCFilterVideoItem = aVar3 != null ? (UGCFilterVideoItem) aVar3.getItem(i13) : null;
            HashMap map = new HashMap();
            map.put("browse_duration", String.valueOf(j11));
            map.put("module_name", WebConstants.FIELD_ITEM);
            UGCFilterResponse uGCFilterResponse = UGCFilterFragment.this.mFilterResponse;
            String str = "";
            if (uGCFilterResponse == null || (items = uGCFilterResponse.getItems()) == null) {
                name = "";
                name2 = name;
                name3 = name2;
            } else {
                UGCFilterFragment uGCFilterFragment = UGCFilterFragment.this;
                name = "";
                name2 = name;
                name3 = name2;
                for (UGCFilterItem uGCFilterItem : items) {
                    String categoryId = uGCFilterItem.getCategoryId();
                    Integer num = uGCFilterFragment.mSelectedLevel2;
                    if (Intrinsics.c(categoryId, num != null ? num.toString() : null) && (name = uGCFilterItem.getName()) == null) {
                        name = "";
                    }
                    String categoryId2 = uGCFilterItem.getCategoryId();
                    Integer num2 = uGCFilterFragment.mSelectedLevel2;
                    if (Intrinsics.c(categoryId2, num2 != null ? num2.toString() : null)) {
                        name = uGCFilterItem.getName();
                        if (name == null) {
                            name = "";
                        }
                    } else {
                        Integer num3 = uGCFilterFragment.mSelectedLevel3;
                        if (Intrinsics.c(categoryId2, num3 != null ? num3.toString() : null)) {
                            name2 = uGCFilterItem.getName();
                            if (name2 == null) {
                                name2 = "";
                            }
                        } else {
                            Integer num4 = uGCFilterFragment.mSelectedLevel4;
                            if (Intrinsics.c(categoryId2, num4 != null ? num4.toString() : null) && (name3 = uGCFilterItem.getName()) == null) {
                                name3 = "";
                            }
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            UGCFilterFragment uGCFilterFragment2 = UGCFilterFragment.this;
            jSONObject.put("categoryLve2", name);
            jSONObject.put("categoryLve3", name2);
            jSONObject.put("categoryLve4", name3);
            String str2 = uGCFilterFragment2.mSelectedGrade;
            if (str2 == null) {
                str2 = "";
            }
            jSONObject.put("grade", str2);
            jSONObject.put("sort", uGCFilterFragment2.mCurrentTab.getApiValue());
            map.put("rank_category", jSONObject.toString());
            String str3 = UGCFilterFragment.this.fromOptId;
            if (str3 == null) {
                str3 = "";
            }
            map.put("from_opt_id", str3);
            map.put(CampaignEx.JSON_KEY_TITLE, UGCFilterFragment.this.getString(R$string.filter));
            if (uGCFilterVideoItem == null || (content4 = uGCFilterVideoItem.getContent()) == null || (video4 = content4.getVideo()) == null || (belongToCollection = video4.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            if ((uGCFilterVideoItem == null || (content3 = uGCFilterVideoItem.getContent()) == null || (video3 = content3.getVideo()) == null || (videoId = video3.getUgcVideoId()) == null) && (uGCFilterVideoItem == null || (videoId = uGCFilterVideoItem.getVideoId()) == null)) {
                videoId = "";
            }
            map.put("content_id", videoId);
            if (uGCFilterVideoItem == null || (content2 = uGCFilterVideoItem.getContent()) == null || (video2 = content2.getVideo()) == null || (subjectId = video2.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            map.put(RequestParameters.POSITION, String.valueOf(i13));
            if ((uGCFilterVideoItem != null && (ops = uGCFilterVideoItem.getOps()) != null) || (uGCFilterVideoItem != null && (content = uGCFilterVideoItem.getContent()) != null && (video = content.getVideo()) != null && (ops = video.getOps()) != null)) {
                str = ops;
            }
            map.put("ops", str);
            com.transsion.baselib.helper.a.f43262a.e("/home/ugc_filter", map);
        }
    }

    public static final class d extends DiffUtil.e {
        d() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(UGCFilterVideoItem oldItem, UGCFilterVideoItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getVideoId(), newItem.getVideoId()) && Intrinsics.c(oldItem.getTitle(), newItem.getTitle());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(UGCFilterVideoItem oldItem, UGCFilterVideoItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getVideoId(), newItem.getVideoId());
        }
    }

    public static final class e implements TabLayout.OnTabSelectedListener {
        e() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            TabType tabType;
            UGCFilterFragment uGCFilterFragment = UGCFilterFragment.this;
            int position = tab != null ? tab.getPosition() : 0;
            if (position != 0) {
                tabType = position != 1 ? TabType.HOTTEST : TabType.LATEST;
            } else {
                tabType = TabType.FOR_U;
            }
            uGCFilterFragment.mCurrentTab = tabType;
            if (tab != null) {
                UGCFilterFragment.this.X0(tab, true);
            }
            hl.b bVar = UGCFilterFragment.this.mExposureHelper;
            if (bVar != null) {
                bVar.e();
            }
            UGCFilterFragment.this.mPage = 1;
            UGCFilterFragment.this.A1(true);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            if (tab != null) {
                UGCFilterFragment.this.X0(tab, false);
            }
        }
    }

    public static final class f extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f45012a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f45014c;

        f(View view) {
            this.f45014c = view;
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type com.transsion.home.view.layoutmanager.OffsetGridLayoutManager");
            this.f45012a = ((OffsetGridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            com.transsion.home.adapter.filter.a aVar;
            r6.f fVarH0;
            r6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i11 != 0 || childCount <= 0 || this.f45012a < itemCount - 1) {
                return;
            }
            com.transsion.home.adapter.filter.a aVar2 = UGCFilterFragment.this.mAdapter;
            if (((aVar2 == null || (fVarH1 = aVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (aVar = UGCFilterFragment.this.mAdapter) == null || (fVarH0 = aVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            f0 f0Var;
            ConstraintLayout constraintLayout;
            f0 f0Var2;
            f0 f0Var3;
            ConstraintLayout constraintLayout2;
            Intrinsics.h(recyclerView, "recyclerView");
            if (recyclerView.computeVerticalScrollOffset() > this.f45014c.getMeasuredHeight()) {
                gl.o oVar = (gl.o) UGCFilterFragment.this.getMViewBinding();
                if (oVar != null && (f0Var3 = oVar.f63801b) != null && (constraintLayout2 = f0Var3.f63696c) != null) {
                    jg.c.k(constraintLayout2);
                }
                gl.o oVar2 = (gl.o) UGCFilterFragment.this.getMViewBinding();
                if (oVar2 != null && (f0Var2 = oVar2.f63801b) != null) {
                    UGCFilterFragment uGCFilterFragment = UGCFilterFragment.this;
                    ConstraintLayout llTabFilter = f0Var2.f63696c;
                    Intrinsics.g(llTabFilter, "llTabFilter");
                    jg.c.k(llTabFilter);
                    uGCFilterFragment.M1();
                }
            } else {
                gl.o oVar3 = (gl.o) UGCFilterFragment.this.getMViewBinding();
                if (oVar3 != null && (f0Var = oVar3.f63801b) != null && (constraintLayout = f0Var.f63696c) != null) {
                    jg.c.g(constraintLayout);
                }
            }
            d(recyclerView);
        }
    }

    public static final class g implements nh.n {
        g() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            boolean zC;
            r6.f fVarH0;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (UGCFilterFragment.this.isResumed()) {
                View view = UGCFilterFragment.this.mNoNetworkView;
                if (view != null) {
                    jg.c.g(view);
                }
                com.transsion.home.adapter.filter.a aVar = UGCFilterFragment.this.mAdapter;
                List<Object> data = aVar != null ? aVar.getData() : null;
                List<Object> list = data;
                if (list == null || list.isEmpty()) {
                    UGCFilterFragment.this.loadData();
                    return;
                }
                UGCFilterVideoItem uGCFilterVideoItem = (UGCFilterVideoItem) CollectionsKt.v0(data);
                boolean zC2 = Intrinsics.c(uGCFilterVideoItem != null ? uGCFilterVideoItem.getChannelId() : null, UGCFilterFragment.this.mCategory);
                HashMap map = UGCFilterFragment.this.mLatestSelectItems;
                if (map != null) {
                    zC = Intrinsics.c(uGCFilterVideoItem != null ? uGCFilterVideoItem.getSelectItems() : null, map);
                } else {
                    zC = false;
                }
                if (!zC2 || !zC) {
                    UGCFilterFragment.this.A1(true);
                    return;
                }
                com.transsion.home.adapter.filter.a aVar2 = UGCFilterFragment.this.mAdapter;
                if (aVar2 == null || (fVarH0 = aVar2.h0()) == null) {
                    return;
                }
                fVarH0.w();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1(boolean isRefresh) {
        lg.a.f68839a.c("UGCFilterFragment", "loadDataWithCurrentFilter: page=" + this.mPage + ", level2=" + this.mSelectedLevel2 + ", level3=" + this.mSelectedLevel3 + ", level4=" + this.mSelectedLevel4 + ", sort=" + this.mCurrentTab.getApiValue() + ", isRefresh=" + isRefresh, false);
        this.mLatestSelectItems = new HashMap(Y0());
        if (isRefresh && !this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        UGCFilterViewModel uGCFilterViewModel = this.mMovieModel;
        if (uGCFilterViewModel != null) {
            uGCFilterViewModel.m(this.mCategory, this.mPage, this.mPerPage, this.mCurrentTab.getApiValue(), this.mSelectedLevel2, this.mSelectedLevel3, this.mSelectedLevel4, this.mSelectedGrade, isRefresh);
        }
        if (isRefresh) {
            this.mPage = 2;
        } else {
            this.mPage++;
        }
    }

    private final void B1(UGCFilterItem ugcFilterItem) {
        lg.a.f68839a.c("UGCFilterFragment", "onUGCFilterItemSelected: id=" + ugcFilterItem.getCategoryId() + ", name=" + ugcFilterItem.getName() + ", parentId=" + ugcFilterItem.getParentId(), false);
        C1(ugcFilterItem);
    }

    private final void C1(UGCFilterItem item) {
        com.transsion.baselib.helper.a.f43262a.i("/home/ugc_filter", c1(item, "click_filter"));
    }

    private final void D1(TabLayout.Tab tab, String title, boolean selected) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(requireContext());
        int i11 = R$layout.item_home_filter_tab;
        n0 n0Var = this.headerBinding;
        if (n0Var == null) {
            Intrinsics.z("headerBinding");
            n0Var = null;
        }
        View viewInflate = layoutInflaterFrom.inflate(i11, (ViewGroup) n0Var.f63795c, false);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tv_tab_title);
        textView.setText(title);
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        Typeface typefaceC = selected ? jg.a.c(contextRequireContext) : jg.a.d(contextRequireContext);
        if (typefaceC != null) {
            textView.setTypeface(typefaceC);
        }
        textView.setTextColor(androidx.core.content.b.getColor(requireContext(), selected ? R$color.text_01 : R$color.text_02));
        if (selected) {
            viewInflate.setBackgroundResource(R$drawable.bg_item_filter_tab);
        } else {
            viewInflate.setBackgroundColor(0);
        }
        viewInflate.setSelected(selected);
        tab.setCustomView(viewInflate);
    }

    private final void E1() {
        if (this.mNoNetworkView == null) {
            n0 n0Var = this.headerBinding;
            if (n0Var == null) {
                Intrinsics.z("headerBinding");
                n0Var = null;
            }
            this.mNoNetworkView = n0Var.f63797e.inflate();
        }
        View view = this.mNoNetworkView;
        if (view != null) {
            jg.c.k(view);
            final NoNetworkBigView noNetworkBigView = (NoNetworkBigView) view.findViewById(R$id.state_view);
            if (noNetworkBigView != null) {
                NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
                noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.filter.p
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return UGCFilterFragment.F1(noNetworkBigView, this);
                    }
                });
                noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.filter.q
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return UGCFilterFragment.G1();
                    }
                });
            }
            com.tn.lib.view.r.a("/home/ugc_filter");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F1(NoNetworkBigView noNetworkBigView, UGCFilterFragment uGCFilterFragment) {
        jg.c.g(noNetworkBigView);
        uGCFilterFragment.loadData();
        com.tn.lib.view.r.b("/home/ugc_filter");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G1() {
        com.tn.lib.view.r.c("/home/ugc_filter");
        return Unit.f67061a;
    }

    private final void H1(String string) {
        if (this.mNoResultView == null) {
            n0 n0Var = this.headerBinding;
            if (n0Var == null) {
                Intrinsics.z("headerBinding");
                n0Var = null;
            }
            this.mNoResultView = n0Var.f63798f.inflate();
        }
        final View view = this.mNoResultView;
        if (view != null) {
            jg.c.k(view);
            TextView textView = (TextView) view.findViewById(R$id.tv_no_result);
            if (textView != null) {
                textView.setText(string);
            }
            View viewFindViewById = view.findViewById(R$id.tv_reset);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.filter.s
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        UGCFilterFragment.I1(this.f45040a, view, view2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I1(UGCFilterFragment uGCFilterFragment, View view, View view2) {
        uGCFilterFragment.mSelectedLevel2 = null;
        uGCFilterFragment.mSelectedLevel3 = null;
        uGCFilterFragment.mSelectedLevel4 = null;
        uGCFilterFragment.mFilterJson = "";
        jg.c.g(view);
        uGCFilterFragment.loadData();
    }

    private final void J1() {
        List<UGCFilterItem> listL;
        List<UGCFilterGrade> listL2;
        UGCFilterResponse uGCFilterResponse = this.mFilterResponse;
        if (uGCFilterResponse == null || (listL = uGCFilterResponse.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        UGCFilterExpandView uGCFilterExpandView = null;
        if (listL.isEmpty()) {
            UGCFilterExpandView uGCFilterExpandView2 = this.filterView;
            if (uGCFilterExpandView2 == null) {
                Intrinsics.z("filterView");
            } else {
                uGCFilterExpandView = uGCFilterExpandView2;
            }
            jg.c.g(uGCFilterExpandView);
            lg.a.f68839a.x("UGCFilterFragment", "updateFilterViewData: no filter items", false);
            return;
        }
        Map mapC = MapsKt.c();
        Integer num = this.mSelectedLevel2;
        if (num != null) {
        }
        Integer num2 = this.mSelectedLevel3;
        if (num2 != null) {
        }
        Integer num3 = this.mSelectedLevel4;
        if (num3 != null) {
        }
        String str = this.mSelectedGrade;
        if (str != null) {
            mapC.put("grade", str);
        }
        Map<String, String> mapB = MapsKt.b(mapC);
        lg.a.f68839a.c("UGCFilterFragment", "updateFilterViewData: items size=" + listL.size() + ", selected=" + mapB, false);
        UGCFilterExpandView uGCFilterExpandView3 = this.filterView;
        if (uGCFilterExpandView3 == null) {
            Intrinsics.z("filterView");
            uGCFilterExpandView3 = null;
        }
        jg.c.k(uGCFilterExpandView3);
        UGCFilterExpandView uGCFilterExpandView4 = this.filterView;
        if (uGCFilterExpandView4 == null) {
            Intrinsics.z("filterView");
        } else {
            uGCFilterExpandView = uGCFilterExpandView4;
        }
        UGCFilterResponse uGCFilterResponse2 = this.mFilterResponse;
        if (uGCFilterResponse2 == null || (listL2 = uGCFilterResponse2.getGrades()) == null) {
            listL2 = CollectionsKt.l();
        }
        uGCFilterExpandView.updateList(listL, "4", mapB, listL2);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Multi-variable type inference failed */
    private final void K1(UGCContentList contentList, boolean isRefresh) {
        List<UGCFilterVideoItem> listL;
        gl.o oVar;
        LinearLayout root;
        r6.f fVarH0;
        r6.f fVarH1;
        List<Object> data;
        com.transsion.home.adapter.filter.a aVar;
        r6.f fVarH2;
        boolean z10;
        UGCFilterVideoItem uGCFilterVideoItem;
        UGCContent content;
        UGCVideo video;
        SwipeRefreshLayout swipeRefreshLayout;
        gl.o oVar2;
        SwipeRefreshLayout swipeRefreshLayout2;
        Integer perPage;
        List<UGCContent> items;
        lg.a.f68839a.c("UGCFilterFragment", "updateMovieList: isRefresh=" + isRefresh + ", size=" + ((contentList == null || (items = contentList.getItems()) == null) ? 0 : items.size()), false);
        if (contentList != null) {
            Pager pager = contentList.getPager();
            this.mPerPage = (pager == null || (perPage = pager.getPerPage()) == null) ? 12 : perPage.intValue();
            List<UGCContent> items2 = contentList.getItems();
            if (items2 != null) {
                List<UGCContent> list = items2;
                ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(UGCFilterVideoItem.INSTANCE.b((UGCContent) it.next(), this.mCategory, Y0()));
                }
                listL = CollectionsKt.U0(arrayList);
            } else {
                listL = null;
            }
            if (isRefresh) {
                gl.o oVar3 = (gl.o) getMViewBinding();
                if (oVar3 != null && (swipeRefreshLayout = oVar3.f63803d) != null && swipeRefreshLayout.isRefreshing() && (oVar2 = (gl.o) getMViewBinding()) != null && (swipeRefreshLayout2 = oVar2.f63803d) != null) {
                    swipeRefreshLayout2.setRefreshing(false);
                }
                if (Intrinsics.c((listL == null || (uGCFilterVideoItem = (UGCFilterVideoItem) CollectionsKt.k0(listL)) == null || (content = uGCFilterVideoItem.getContent()) == null || (video = content.getVideo()) == null) ? null : video.getCategory(), UGCVideoType.EDUCATION.getValue())) {
                    z10 = true;
                } else {
                    com.transsion.home.adapter.filter.a aVar2 = this.mAdapter;
                    if (aVar2 != null ? aVar2.getIsEducationList() : false) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                com.transsion.home.adapter.filter.a aVar3 = this.mAdapter;
                if (aVar3 != null) {
                    aVar3.U1(z10);
                }
                com.transsion.home.adapter.filter.a aVar4 = this.mAdapter;
                if (aVar4 != null) {
                    aVar4.n1(listL);
                }
                if (listL != null && listL.isEmpty()) {
                    H1(getString(R$string.no_filter_result));
                } else {
                    h1();
                }
            } else {
                com.transsion.home.adapter.filter.a aVar5 = this.mAdapter;
                List<Object> data2 = aVar5 != null ? aVar5.getData() : null;
                ArrayList arrayList2 = new ArrayList();
                if (listL == null) {
                    listL = CollectionsKt.l();
                }
                if (data2 != null && (data2.isEmpty() ^ true)) {
                    for (UGCFilterVideoItem uGCFilterVideoItem2 : listL) {
                        if (!data2.contains(uGCFilterVideoItem2)) {
                            arrayList2.add(uGCFilterVideoItem2);
                        }
                    }
                } else {
                    arrayList2.addAll(listL);
                }
                if (arrayList2.isEmpty()) {
                    com.transsion.home.adapter.filter.a aVar6 = this.mAdapter;
                    if (aVar6 != null && (fVarH1 = aVar6.h0()) != null) {
                        r6.f.u(fVarH1, false, 1, null);
                    }
                    lg.a.f68839a.c("UGCFilterFragment", "updateMovieList: all items are duplicated", false);
                    return;
                }
                com.transsion.home.adapter.filter.a aVar7 = this.mAdapter;
                if (aVar7 != null) {
                    aVar7.q(arrayList2);
                }
                com.transsion.home.adapter.filter.a aVar8 = this.mAdapter;
                if (((aVar8 == null || (fVarH0 = aVar8.h0()) == null || !fVarH0.r()) ? false : true) && (oVar = (gl.o) getMViewBinding()) != null && (root = oVar.getRoot()) != null) {
                    root.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.filter.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            UGCFilterFragment.L1(this.f45039a);
                        }
                    }, 300L);
                }
            }
            Pager pager2 = contentList.getPager();
            if ((pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) && (aVar = this.mAdapter) != null && (fVarH2 = aVar.h0()) != null) {
                r6.f.u(fVarH2, false, 1, null);
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            com.transsion.home.adapter.filter.a aVar9 = this.mAdapter;
            c0828a.c("UGCFilterFragment", "updateMovieList: final adapter size=" + ((aVar9 == null || (data = aVar9.getData()) == null) ? 0 : data.size()), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L1(UGCFilterFragment uGCFilterFragment) {
        r6.f fVarH0;
        com.transsion.home.adapter.filter.a aVar = uGCFilterFragment.mAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void M1() {
        f0 f0Var;
        AppCompatTextView appCompatTextView;
        String strB1;
        String strA1;
        String strA2;
        String strA3;
        StringBuilder sb2 = new StringBuilder();
        Integer num = this.mSelectedLevel2;
        if (num != null && (strA3 = a1(String.valueOf(num.intValue()))) != null && !Intrinsics.c(strA3, getString(com.tn.lib.widget.R$string.all))) {
            sb2.append(strA3);
            sb2.append(" • ");
        }
        Integer num2 = this.mSelectedLevel3;
        if (num2 != null && (strA2 = a1(String.valueOf(num2.intValue()))) != null && !Intrinsics.c(strA2, getString(com.tn.lib.widget.R$string.all))) {
            sb2.append(strA2);
            sb2.append(" • ");
        }
        Integer num3 = this.mSelectedLevel4;
        if (num3 != null && (strA1 = a1(String.valueOf(num3.intValue()))) != null && !Intrinsics.c(strA1, getString(com.tn.lib.widget.R$string.all))) {
            sb2.append(strA1);
            sb2.append(" • ");
        }
        String str = this.mSelectedGrade;
        if (str != null && (strB1 = b1(str)) != null && !Intrinsics.c(strB1, getString(com.tn.lib.widget.R$string.all))) {
            sb2.append(strB1);
            sb2.append(" • ");
        }
        boolean zC0 = StringsKt.c0(sb2, " • ", false, 2, null);
        StringBuilder sbSubstring = sb2;
        if (zC0) {
            sbSubstring = sb2.substring(0, sb2.length() - 2);
        }
        int length = sbSubstring.length();
        CharSequence string = sbSubstring;
        if (length == 0) {
            string = getString(com.tn.lib.widget.R$string.all);
        }
        gl.o oVar = (gl.o) getMViewBinding();
        if (oVar == null || (f0Var = oVar.f63801b) == null || (appCompatTextView = f0Var.f63695b) == null) {
            return;
        }
        appCompatTextView.setText(string);
        jg.c.k(appCompatTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0(TabLayout.Tab tab, boolean z10) {
        View customView = tab.getCustomView();
        if (customView == null) {
            return;
        }
        customView.setSelected(z10);
        TextView textView = (TextView) customView.findViewById(R$id.tv_tab_title);
        if (textView != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            Typeface typefaceC = z10 ? jg.a.c(contextRequireContext) : jg.a.d(contextRequireContext);
            if (typefaceC != null) {
                textView.setTypeface(typefaceC);
            }
            textView.setTextColor(androidx.core.content.b.getColor(requireContext(), z10 ? R$color.text_01 : R$color.text_02));
            if (z10) {
                customView.setBackgroundResource(R$drawable.bg_item_filter_tab);
            } else {
                customView.setBackgroundColor(0);
            }
        }
    }

    private final Map Y0() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Integer num = this.mSelectedLevel2;
        if (num != null) {
        }
        Integer num2 = this.mSelectedLevel3;
        if (num2 != null) {
        }
        Integer num3 = this.mSelectedLevel4;
        if (num3 != null) {
        }
        String str = this.mSelectedGrade;
        if (str != null) {
            linkedHashMap.put("grade", str);
        }
        return linkedHashMap;
    }

    private final void Z0() {
        Object objL = this.categoryChildrenByParentIdMap.get("4");
        if (objL == null) {
            objL = CollectionsKt.l();
        }
        if (((List) objL).isEmpty()) {
            return;
        }
        HashMap mapJ1 = j1();
        if (this.mCurrentTab != TabType.FOR_U) {
            n0 n0Var = this.headerBinding;
            if (n0Var == null) {
                Intrinsics.z("headerBinding");
                n0Var = null;
            }
            TabLayout tabLayout = n0Var.f63799g;
            if (tabLayout != null) {
                n0 n0Var2 = this.headerBinding;
                if (n0Var2 == null) {
                    Intrinsics.z("headerBinding");
                    n0Var2 = null;
                }
                TabLayout tabLayout2 = n0Var2.f63799g;
                tabLayout.selectTab(tabLayout2 != null ? tabLayout2.getTabAt(this.mCurrentTab.ordinal()) : null);
            }
        }
        if (!mapJ1.isEmpty()) {
            this.mFilterJson = "";
        }
        lg.a.f68839a.c("UGCFilterFragment", "buildFilterView: level2=" + this.mSelectedLevel2 + ", level3=" + this.mSelectedLevel3 + ", level4=" + this.mSelectedLevel4, false);
        J1();
    }

    private final String a1(String categoryId) {
        List<UGCFilterItem> items;
        Object next;
        UGCFilterResponse uGCFilterResponse = this.mFilterResponse;
        if (uGCFilterResponse != null && (items = uGCFilterResponse.getItems()) != null) {
            Iterator<T> it = items.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((UGCFilterItem) next).getCategoryId(), categoryId));
            UGCFilterItem uGCFilterItem = (UGCFilterItem) next;
            if (uGCFilterItem != null) {
                return uGCFilterItem.getName();
            }
        }
        return null;
    }

    private final String b1(String gradeCode) {
        List<UGCFilterGrade> grades;
        Object next;
        UGCFilterResponse uGCFilterResponse = this.mFilterResponse;
        if (uGCFilterResponse != null && (grades = uGCFilterResponse.getGrades()) != null) {
            Iterator<T> it = grades.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((UGCFilterGrade) next).getGrade(), gradeCode));
            UGCFilterGrade uGCFilterGrade = (UGCFilterGrade) next;
            if (uGCFilterGrade != null) {
                return uGCFilterGrade.getDescName();
            }
        }
        return null;
    }

    private final Map c1(UGCFilterItem item, String key) {
        List<Object> data;
        UGCFilterVideoItem uGCFilterVideoItem;
        String ops;
        HashMap map = new HashMap();
        map.put("event_type", key);
        String name = item.getName();
        String str = "";
        if (name == null) {
            name = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, name);
        String categoryId = item.getCategoryId();
        if (categoryId == null) {
            categoryId = "";
        }
        map.put("category_id", categoryId);
        map.put("tab_id", String.valueOf(getMTabId()));
        map.put("rank_category", "btn");
        String str2 = this.fromOptId;
        if (str2 == null) {
            str2 = "";
        }
        map.put("from_opt_id", str2);
        com.transsion.home.adapter.filter.a aVar = this.mAdapter;
        if (aVar != null && (data = aVar.getData()) != null && (uGCFilterVideoItem = (UGCFilterVideoItem) CollectionsKt.k0(data)) != null && (ops = uGCFilterVideoItem.getOps()) != null) {
            str = ops;
        }
        map.put("ops", str);
        return map;
    }

    private final int d1() {
        return R$layout.home_empty_view_loading;
    }

    private final int e1() {
        FragmentActivity activity = getActivity();
        return (activity == null || !com.transsion.baseui.util.b.a(activity)) ? 2 : 3;
    }

    private final void g1() {
        View view = this.mLoadingView;
        if (view != null) {
            jg.c.g(view);
        }
    }

    private final void h1() {
        View view = this.mNoResultView;
        if (view != null) {
            jg.c.g(view);
        }
    }

    private final void i1() {
        Object objL = this.categoryChildrenByParentIdMap.get("4");
        if (objL == null) {
            objL = CollectionsKt.l();
        }
        List list = (List) objL;
        lg.a.f68839a.c("UGCFilterFragment", "initChannelView: root categories size=" + list.size(), false);
        if (!list.isEmpty()) {
            Z0();
            A1(true);
            return;
        }
        UGCFilterExpandView uGCFilterExpandView = this.filterView;
        if (uGCFilterExpandView == null) {
            Intrinsics.z("filterView");
            uGCFilterExpandView = null;
        }
        jg.c.g(uGCFilterExpandView);
    }

    private final void initViewModel() {
        UGCFilterViewModel uGCFilterViewModel = this.mMovieModel;
        if (uGCFilterViewModel != null) {
            uGCFilterViewModel.j().j(this, new c0(new Function1() { // from class: com.transsion.home.fragment.filter.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCFilterFragment.w1(this.f45036a, (BaseDto) obj);
                }
            }));
            uGCFilterViewModel.n().j(this, new c0(new Function1() { // from class: com.transsion.home.fragment.filter.t
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCFilterFragment.y1(this.f45042a, (RefreshBaseDto) obj);
                }
            }));
            uGCFilterViewModel.l().j(this, new c0(new Function1() { // from class: com.transsion.home.fragment.filter.u
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCFilterFragment.z1(this.f45043a, (UGCFilterItem) obj);
                }
            }));
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final HashMap j1() {
        HashMap map = new HashMap();
        String str = this.mFilterJson;
        if (str != null && str.length() != 0) {
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
                    if (next != null) {
                        int iHashCode = next.hashCode();
                        if (iHashCode != 3536286) {
                            if (iHashCode != 98615255) {
                                switch (iHashCode) {
                                    case 426008981:
                                        if (next.equals("categoryLve2")) {
                                            Intrinsics.e(string);
                                            this.mSelectedLevel2 = StringsKt.v(string);
                                        }
                                        break;
                                    case 426008982:
                                        if (next.equals("categoryLve3")) {
                                            Intrinsics.e(string);
                                            this.mSelectedLevel3 = StringsKt.v(string);
                                        }
                                        break;
                                    case 426008983:
                                        if (next.equals("categoryLve4")) {
                                            Intrinsics.e(string);
                                            this.mSelectedLevel4 = StringsKt.v(string);
                                        }
                                        break;
                                }
                            } else if (next.equals("grade")) {
                                this.mSelectedGrade = string;
                            }
                        } else if (next.equals("sort")) {
                            this.mCurrentTab = Intrinsics.c(string, "Latest") ? TabType.LATEST : Intrinsics.c(string, "New") ? TabType.HOTTEST : TabType.FOR_U;
                        }
                    }
                    map.put(next, string);
                }
                lg.a.f68839a.c("UGCFilterFragment", "initDefaultSelect: filterMap=" + map, false);
            } catch (Exception e11) {
                lg.a.f68839a.i("UGCFilterFragment", "initDefaultSelect: parse filterJson failed: " + e11.getMessage(), true);
            }
        }
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void k1() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            hl.b bVar = new hl.b(0.6f, new c(), false, 4, null);
            bVar.l(2);
            gl.o oVar = (gl.o) getMViewBinding();
            if (oVar != null && (recyclerView = oVar.f63802c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final void l1() {
        UGCFilterExpandView uGCFilterExpandView = this.filterView;
        UGCFilterExpandView uGCFilterExpandView2 = null;
        if (uGCFilterExpandView == null) {
            Intrinsics.z("filterView");
            uGCFilterExpandView = null;
        }
        uGCFilterExpandView.setFilterViewModel(this.mMovieModel);
        UGCFilterExpandView uGCFilterExpandView3 = this.filterView;
        if (uGCFilterExpandView3 == null) {
            Intrinsics.z("filterView");
        } else {
            uGCFilterExpandView2 = uGCFilterExpandView3;
        }
        uGCFilterExpandView2.setOnSelectionChanged(new Function4() { // from class: com.transsion.home.fragment.filter.v
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return UGCFilterFragment.m1(this.f45044a, (String) obj, (String) obj2, (String) obj3, (String) obj4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        startLoading();
        lg.a.f68839a.c("UGCFilterFragment", "loadData: category=" + this.mCategory, false);
        UGCFilterViewModel uGCFilterViewModel = this.mMovieModel;
        if (uGCFilterViewModel != null) {
            uGCFilterViewModel.i(this.mCategory);
        }
    }

    private final void loadMore() {
        A1(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit m1(UGCFilterFragment uGCFilterFragment, String str, String str2, String str3, String str4) {
        RecyclerView recyclerView;
        lg.a.C0828a c0828a = lg.a.f68839a;
        UGCFilterViewModel uGCFilterViewModel = uGCFilterFragment.mMovieModel;
        UGCFilterExpandView uGCFilterExpandView = null;
        UGCFilterItem uGCFilterItemH = uGCFilterViewModel != null ? uGCFilterViewModel.h(str) : null;
        UGCFilterViewModel uGCFilterViewModel2 = uGCFilterFragment.mMovieModel;
        UGCFilterItem uGCFilterItemH2 = uGCFilterViewModel2 != null ? uGCFilterViewModel2.h(str2) : null;
        UGCFilterViewModel uGCFilterViewModel3 = uGCFilterFragment.mMovieModel;
        c0828a.c("UGCFilterFragment", "filter selection changed: lv2=" + str + " data=" + uGCFilterItemH + ", lv3=" + str2 + "  data=" + uGCFilterItemH2 + ", lv4=" + str3 + " selectedGradeId=" + str4 + " data=" + (uGCFilterViewModel3 != null ? uGCFilterViewModel3.h(str3) : null), false);
        uGCFilterFragment.mSelectedLevel2 = str != null ? StringsKt.v(str) : null;
        uGCFilterFragment.mSelectedLevel3 = str2 != null ? StringsKt.v(str2) : null;
        uGCFilterFragment.mSelectedLevel4 = str3 != null ? StringsKt.v(str3) : null;
        uGCFilterFragment.mSelectedGrade = str4;
        UGCFilterExpandView uGCFilterExpandView2 = uGCFilterFragment.filterView;
        if (uGCFilterExpandView2 == null) {
            Intrinsics.z("filterView");
            uGCFilterExpandView2 = null;
        }
        uGCFilterFragment.mSelectedGrade = uGCFilterExpandView2.getSelectedIds().get("grade");
        UGCFilterExpandView uGCFilterExpandView3 = uGCFilterFragment.filterView;
        if (uGCFilterExpandView3 == null) {
            Intrinsics.z("filterView");
        } else {
            uGCFilterExpandView = uGCFilterExpandView3;
        }
        uGCFilterExpandView.collapseAll();
        hl.b bVar = uGCFilterFragment.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        uGCFilterFragment.mPage = 1;
        uGCFilterFragment.A1(true);
        gl.o oVar = (gl.o) uGCFilterFragment.getMViewBinding();
        if (oVar != null && (recyclerView = oVar.f63802c) != null) {
            recyclerView.scrollToPosition(0);
        }
        return Unit.f67061a;
    }

    private final void n1() {
        List<UGCFilterItem> items;
        this.categoryChildrenByParentIdMap.clear();
        UGCFilterResponse uGCFilterResponse = this.mFilterResponse;
        if (uGCFilterResponse == null || (items = uGCFilterResponse.getItems()) == null) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : items) {
            String parentId = ((UGCFilterItem) obj).getParentId();
            if (parentId == null) {
                parentId = "4";
            }
            Object arrayList = linkedHashMap.get(parentId);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(parentId, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.categoryChildrenByParentIdMap.putAll(linkedHashMap);
        lg.a.f68839a.c("UGCFilterFragment", "initFilterMap: tree size=" + this.categoryChildrenByParentIdMap.size(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void o1() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        gl.o oVar;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        int iE1 = e1();
        OffsetGridLayoutManager offsetGridLayoutManager = new OffsetGridLayoutManager(getContext(), iE1, 1, false);
        gl.o oVar2 = (gl.o) getMViewBinding();
        if (oVar2 != null && (recyclerView4 = oVar2.f63802c) != null) {
            recyclerView4.setLayoutManager(offsetGridLayoutManager);
        }
        com.transsion.home.adapter.filter.a aVar = new com.transsion.home.adapter.filter.a(new ArrayList(), this.mExposureHelper, null, iE1, HomeTabId.INSTANCE.h(Integer.valueOf(getMTabId()), false) || StringsKt.H(UGCVideoType.EDUCATION.getValue(), this.mCategory, true));
        aVar.h0().z(true);
        aVar.h0().y(true);
        aVar.h0().D(new p6.f() { // from class: com.transsion.home.fragment.filter.w
            @Override // p6.f
            public final void a() {
                UGCFilterFragment.p1(this.f45045a);
            }
        });
        aVar.R0(new d());
        aVar.w1(new p6.d() { // from class: com.transsion.home.fragment.filter.x
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCFilterFragment.r1(this.f45046a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = aVar;
        gl.o oVar3 = (gl.o) getMViewBinding();
        if (oVar3 != null && (recyclerView2 = oVar3.f63802c) != null && recyclerView2.getItemDecorationCount() < 1 && (oVar = (gl.o) getMViewBinding()) != null && (recyclerView3 = oVar.f63802c) != null) {
            recyclerView3.addItemDecoration(new ig.b(com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(4.0f), com.blankj.utilcode.util.a0.a(16.0f), com.blankj.utilcode.util.a0.a(16.0f)));
        }
        gl.o oVar4 = (gl.o) getMViewBinding();
        if (oVar4 == null || (recyclerView = oVar4.f63802c) == null) {
            return;
        }
        recyclerView.setAdapter(this.mAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void p1(final UGCFilterFragment uGCFilterFragment) {
        RecyclerView recyclerView;
        if (nh.m.f70474a.e()) {
            uGCFilterFragment.loadMore();
            return;
        }
        uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
        gl.o oVar = (gl.o) uGCFilterFragment.getMViewBinding();
        if (oVar == null || (recyclerView = oVar.f63802c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.filter.b0
            @Override // java.lang.Runnable
            public final void run() {
                UGCFilterFragment.q1(this.f45019a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(UGCFilterFragment uGCFilterFragment) {
        r6.f fVarH0;
        com.transsion.home.adapter.filter.a aVar = uGCFilterFragment.mAdapter;
        if (aVar == null || (fVarH0 = aVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(UGCFilterFragment uGCFilterFragment, BaseQuickAdapter adapter, View view, int i11) {
        String collectionId;
        String subjectId;
        UGCVideoBelongToCollection belongToCollection;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof UGCFilterVideoItem) {
            UGCFilterVideoItem uGCFilterVideoItem = (UGCFilterVideoItem) item;
            lg.a.f68839a.c("UGCFilterFragment", "click ugc video: id=" + uGCFilterVideoItem.getVideoId() + ", title=" + uGCFilterVideoItem.getTitle(), false);
            ov.c.f(uGCFilterVideoItem.getContent(), null, null, 3, null);
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("rank_category", WebConstants.FIELD_ITEM);
            String str = uGCFilterFragment.fromOptId;
            if (str == null) {
                str = "";
            }
            map.put("from_opt_id", str);
            UGCVideo video = uGCFilterVideoItem.getContent().getVideo();
            if (video == null || (belongToCollection = video.getBelongToCollection()) == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            String videoId = uGCFilterVideoItem.getVideoId();
            if (videoId == null) {
                videoId = "";
            }
            map.put("content_id", videoId);
            UGCVideo video2 = uGCFilterVideoItem.getContent().getVideo();
            if (video2 == null || (subjectId = video2.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            String ops = uGCFilterVideoItem.getOps();
            map.put("ops", ops != null ? ops : "");
            com.transsion.baselib.helper.a.f43262a.f("/home/ugc_filter", map);
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0073  */
    private final void s1(View headerView) {
        n0 n0Var = this.headerBinding;
        n0 n0Var2 = null;
        if (n0Var == null) {
            Intrinsics.z("headerBinding");
            n0Var = null;
        }
        ConstraintLayout llTabMovie = n0Var.f63795c;
        Intrinsics.g(llTabMovie, "llTabMovie");
        n0 n0Var3 = this.headerBinding;
        if (n0Var3 == null) {
            Intrinsics.z("headerBinding");
        } else {
            n0Var2 = n0Var3;
        }
        TabLayout tabMovie = n0Var2.f63799g;
        Intrinsics.g(tabMovie, "tabMovie");
        jg.c.k(llTabMovie);
        tabMovie.removeAllTabs();
        int i11 = 0;
        for (Object obj : CollectionsKt.o(getString(R$string.item_filter_for_u), getString(R$string.item_filter_latest), getString(R$string.item_filter_hottest))) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            String str = (String) obj;
            int i13 = b.f45009a[this.mCurrentTab.ordinal()];
            boolean z10 = true;
            if (i13 != 1) {
                if (i13 != 2) {
                    if (i13 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (i11 != 2) {
                        z10 = false;
                    }
                } else if (i11 != 1) {
                    z10 = false;
                }
            } else if (i11 != 0) {
                z10 = false;
            }
            TabLayout.Tab tabNewTab = tabMovie.newTab();
            Intrinsics.g(tabNewTab, "newTab(...)");
            Intrinsics.e(str);
            D1(tabNewTab, str, z10);
            tabMovie.addTab(tabNewTab, z10);
            i11 = i12;
        }
        tabMovie.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new e());
    }

    private final void showLoadingView() {
        n0 n0Var = this.headerBinding;
        if (n0Var == null) {
            Intrinsics.z("headerBinding");
            n0Var = null;
        }
        ViewStub loadingStub = n0Var.f63796d;
        Intrinsics.g(loadingStub, "loadingStub");
        loadingStub.setLayoutResource(d1());
        if (this.mLoadingView == null) {
            this.mLoadingView = loadingStub.inflate();
        }
        View view = this.mLoadingView;
        if (view != null) {
            jg.c.k(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t1(View header) {
        f0 f0Var;
        ConstraintLayout constraintLayout;
        RecyclerView recyclerView;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        gl.o oVar = (gl.o) getMViewBinding();
        if (oVar != null && (swipeRefreshLayout2 = oVar.f63803d) != null) {
            swipeRefreshLayout2.setEnabled(false);
        }
        gl.o oVar2 = (gl.o) getMViewBinding();
        if (oVar2 != null && (swipeRefreshLayout = oVar2.f63803d) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.home.fragment.filter.y
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    UGCFilterFragment.u1(this.f45047a);
                }
            });
        }
        gl.o oVar3 = (gl.o) getMViewBinding();
        if (oVar3 != null && (recyclerView = oVar3.f63802c) != null) {
            recyclerView.addOnScrollListener(new f(header));
        }
        gl.o oVar4 = (gl.o) getMViewBinding();
        if (oVar4 == null || (f0Var = oVar4.f63801b) == null || (constraintLayout = f0Var.f63696c) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.filter.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCFilterFragment.v1(this.f45048a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(UGCFilterFragment uGCFilterFragment) {
        uGCFilterFragment.c0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void v1(UGCFilterFragment uGCFilterFragment, View view) {
        RecyclerView recyclerView;
        gl.o oVar = (gl.o) uGCFilterFragment.getMViewBinding();
        if (oVar == null || (recyclerView = oVar.f63802c) == null) {
            return;
        }
        recyclerView.scrollToPosition(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit w1(final UGCFilterFragment uGCFilterFragment, BaseDto baseDto) {
        SwipeRefreshLayout swipeRefreshLayout;
        List<UGCFilterItem> items;
        if (baseDto == null || !Intrinsics.c(baseDto.getCode(), "0")) {
            gl.o oVar = (gl.o) uGCFilterFragment.getMViewBinding();
            if (oVar != null && (swipeRefreshLayout = oVar.f63803d) != null) {
                swipeRefreshLayout.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.filter.a0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UGCFilterFragment.x1(this.f45017a);
                    }
                }, 200L);
            }
            lg.a.f68839a.i("UGCFilterFragment", "getFilterItems failed: code=" + (baseDto != null ? baseDto.getCode() : null) + ", msg=" + (baseDto != null ? baseDto.getMsg() : null), true);
            return Unit.f67061a;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        UGCFilterResponse uGCFilterResponse = (UGCFilterResponse) baseDto.getData();
        c0828a.c("UGCFilterFragment", "getFilterItems success: items size=" + ((uGCFilterResponse == null || (items = uGCFilterResponse.getItems()) == null) ? 0 : items.size()), false);
        UGCFilterResponse uGCFilterResponse2 = (UGCFilterResponse) baseDto.getData();
        if (uGCFilterResponse2 != null) {
            uGCFilterFragment.hideLoading();
            uGCFilterFragment.mFilterResponse = uGCFilterResponse2;
            uGCFilterFragment.n1();
            uGCFilterFragment.i1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x1(UGCFilterFragment uGCFilterFragment) {
        if (!uGCFilterFragment.isAdded() || uGCFilterFragment.isDetached() || uGCFilterFragment.isRemoving()) {
            return;
        }
        uGCFilterFragment.hideLoading();
        uGCFilterFragment.H1(uGCFilterFragment.getString(com.transsnet.downloader.R$string.str_ad_video_error_tips));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit y1(UGCFilterFragment uGCFilterFragment, RefreshBaseDto refreshBaseDto) {
        r6.f fVarH0;
        com.transsion.home.adapter.filter.a aVar;
        r6.f fVarH1;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout2;
        HashMap mapG;
        List<UGCContent> items;
        UGCContent uGCContent;
        UGCVideo video;
        List<Object> data2;
        HashMap mapG2;
        List<UGCContent> items2;
        UGCContent uGCContent2;
        UGCVideo video2;
        SwipeRefreshLayout swipeRefreshLayout3;
        gl.o oVar = (gl.o) uGCFilterFragment.getMViewBinding();
        if (oVar != null && (swipeRefreshLayout3 = oVar.f63803d) != null) {
            swipeRefreshLayout3.setEnabled(true);
        }
        String ops = null;
        if (refreshBaseDto == null || !Intrinsics.c(refreshBaseDto.getCode(), "0")) {
            if (refreshBaseDto == null || !refreshBaseDto.getIsRefresh()) {
                com.transsion.home.adapter.filter.a aVar2 = uGCFilterFragment.mAdapter;
                if (aVar2 != null && (fVarH0 = aVar2.h0()) != null && fVarH0.r() && (aVar = uGCFilterFragment.mAdapter) != null && (fVarH1 = aVar.h0()) != null) {
                    fVarH1.v();
                }
            } else {
                gl.o oVar2 = (gl.o) uGCFilterFragment.getMViewBinding();
                if (oVar2 != null && (swipeRefreshLayout = oVar2.f63803d) != null && swipeRefreshLayout.isRefreshing()) {
                    gl.o oVar3 = (gl.o) uGCFilterFragment.getMViewBinding();
                    if (oVar3 != null && (swipeRefreshLayout2 = oVar3.f63803d) != null) {
                        swipeRefreshLayout2.setRefreshing(false);
                    }
                    uGCFilterFragment.n0();
                }
            }
            com.transsion.home.adapter.filter.a aVar3 = uGCFilterFragment.mAdapter;
            if (aVar3 != null && (data = aVar3.getData()) != null && data.size() == 0) {
                if (nh.m.f70474a.e()) {
                    uGCFilterFragment.H1(uGCFilterFragment.getString(com.transsnet.downloader.R$string.str_ad_video_error_tips));
                } else {
                    uGCFilterFragment.E1();
                }
                return Unit.f67061a;
            }
            if (nh.m.f70474a.e()) {
                uh.b.f76753a.d(com.transsnet.downloader.R$string.str_ad_video_error_tips);
            } else {
                uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
            }
            lg.a.f68839a.i("UGCFilterFragment", "getUGCContentList failed: code=" + (refreshBaseDto != null ? refreshBaseDto.getCode() : null) + ", msg=" + (refreshBaseDto != null ? refreshBaseDto.getMsg() : null), true);
            return Unit.f67061a;
        }
        hj.b logViewConfig = uGCFilterFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        com.transsion.home.adapter.filter.a aVar4 = uGCFilterFragment.mAdapter;
        if (aVar4 == null || (data2 = aVar4.getData()) == null || !data2.isEmpty() || uGCFilterFragment.hasRecordedFirstLoadDuration || uGCFilterFragment.firstLoadStartTimeMillis <= 0) {
            hj.b logViewConfig2 = uGCFilterFragment.getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                UGCContentList uGCContentList = (UGCContentList) refreshBaseDto.getData();
                if (uGCContentList != null && (items = uGCContentList.getItems()) != null && (uGCContent = (UGCContent) CollectionsKt.k0(items)) != null && (video = uGCContent.getVideo()) != null) {
                    ops = video.getOps();
                }
                mapG.put("ops", ops);
            }
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis() - uGCFilterFragment.firstLoadStartTimeMillis;
            hj.b logViewConfig3 = uGCFilterFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                mapG2.put("load_duration", String.valueOf(jCurrentTimeMillis));
                UGCContentList uGCContentList2 = (UGCContentList) refreshBaseDto.getData();
                if (uGCContentList2 != null && (items2 = uGCContentList2.getItems()) != null && (uGCContent2 = (UGCContent) CollectionsKt.k0(items2)) != null && (video2 = uGCContent2.getVideo()) != null) {
                    ops = video2.getOps();
                }
                mapG2.put("ops", ops);
            }
            uGCFilterFragment.hasRecordedFirstLoadDuration = true;
        }
        UGCContentList uGCContentList3 = (UGCContentList) refreshBaseDto.getData();
        if (uGCContentList3 != null) {
            uGCFilterFragment.K1(uGCContentList3, refreshBaseDto.getIsRefresh());
            View view = uGCFilterFragment.mNoNetworkView;
            if (view != null) {
                jg.c.g(view);
            }
        }
        uGCFilterFragment.hideLoading();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z1(UGCFilterFragment uGCFilterFragment, UGCFilterItem uGCFilterItem) {
        if (uGCFilterItem != null) {
            lg.a.f68839a.c("UGCFilterFragment", "selectFilterItemLiveData changed: id=" + uGCFilterItem.getCategoryId() + ", name=" + uGCFilterItem.getName(), false);
            uGCFilterFragment.B1(uGCFilterItem);
            hl.b bVar = uGCFilterFragment.mExposureHelper;
            if (bVar != null) {
                bVar.e();
            }
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void c0() {
        super.c0();
        this.mPage = 1;
        A1(true);
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public RecyclerView f0() {
        gl.o oVar = (gl.o) getMViewBinding();
        if (oVar != null) {
            return oVar.f63802c;
        }
        return null;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: f1, reason: merged with bridge method [inline-methods] */
    public gl.o getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.o oVarC = gl.o.c(inflater);
        Intrinsics.g(oVarC, "inflate(...)");
        return oVarC;
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
    public void hideLoading() {
        g1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        f0 f0Var;
        ConstraintLayout constraintLayout;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        this.mMovieModel = (UGCFilterViewModel) new v0(this).a(UGCFilterViewModel.class);
        n0 n0Var = null;
        View viewInflate = LayoutInflater.from(getContext()).inflate(R$layout.ugc_header_filter, (ViewGroup) null);
        n0 n0VarA = n0.a(viewInflate);
        this.headerBinding = n0VarA;
        if (n0VarA == null) {
            Intrinsics.z("headerBinding");
        } else {
            n0Var = n0VarA;
        }
        this.filterView = n0Var.f63794b;
        l1();
        Intrinsics.e(viewInflate);
        s1(viewInflate);
        k1();
        o1();
        t1(viewInflate);
        com.transsion.home.adapter.filter.a aVar = this.mAdapter;
        if (aVar != null) {
            BaseQuickAdapter.y(aVar, viewInflate, 0, 0, 6, null);
        }
        initViewModel();
        setNetListener(new g());
        this.header = viewInflate;
        int color = androidx.core.content.b.getColor(requireContext(), R$color.module_01);
        gl.o oVar = (gl.o) getMViewBinding();
        if (oVar == null || (f0Var = oVar.f63801b) == null || (constraintLayout = f0Var.f63696c) == null) {
            return;
        }
        constraintLayout.setBackgroundColor(color);
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            UGCFilterVideoItem uGCFilterVideoItemA = UGCFilterVideoItem.INSTANCE.a(wrapperNativeManager, this.mCategory, Y0());
            com.transsion.home.adapter.filter.a aVar = this.mAdapter;
            int size = (aVar == null || (data2 = aVar.getData()) == null) ? 0 : data2.size();
            if (lastAdPosition < 0 || lastAdPosition > size) {
                com.transsion.home.adapter.filter.a aVar2 = this.mAdapter;
                if (aVar2 != null) {
                    aVar2.p(uGCFilterVideoItemA);
                }
            } else {
                com.transsion.home.adapter.filter.a aVar3 = this.mAdapter;
                if (aVar3 != null) {
                    aVar3.n(lastAdPosition, uGCFilterVideoItemA);
                }
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            com.transsion.home.adapter.filter.a aVar4 = this.mAdapter;
            c0828a.c("UGCFilterFragment", "onAdCallback: insert ad at position=" + lastAdPosition + ", total size=" + ((aVar4 == null || (data = aVar4.getData()) == null) ? null : Integer.valueOf(data.size())), false);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        loadData();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/home/ugc_filter", false, 2, null);
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        HashMap mapG;
        String string3;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("category")) == null) {
            string = "Education";
        }
        this.mCategory = string;
        if (string.length() == 0) {
            this.mCategory = "Education";
        }
        Bundle arguments2 = getArguments();
        String str = "";
        if (arguments2 == null || (string2 = arguments2.getString("filter_json")) == null) {
            string2 = "";
        }
        this.mFilterJson = string2;
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (string3 = arguments3.getString("fromOptId")) != null) {
            str = string3;
        }
        this.fromOptId = str;
        lg.a.f68839a.c("UGCFilterFragment", "onCreate: category=" + this.mCategory + ", filterJson=" + this.mFilterJson, false);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.put(WebConstants.PAGE_FROM, hj.i.f64505a.i());
        mapG.put("from_opt_id", this.fromOptId);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        androidx.p009lifecycle.b0 b0VarO;
        androidx.p009lifecycle.b0 b0VarK;
        this.mPage = 1;
        UGCFilterViewModel uGCFilterViewModel = this.mMovieModel;
        if (uGCFilterViewModel != null && (b0VarK = uGCFilterViewModel.k()) != null) {
            b0VarK.q(null);
        }
        UGCFilterViewModel uGCFilterViewModel2 = this.mMovieModel;
        if (uGCFilterViewModel2 != null && (b0VarO = uGCFilterViewModel2.o()) != null) {
            b0VarO.q(null);
        }
        lg.a.f68839a.c("UGCFilterFragment", "onDestroyView: clear data", false);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        com.transsion.baseui.activity.k.h(null, this, hidden, "tabId=" + getMTabId(), 1, null);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        hl.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        com.transsion.baseui.activity.k.l(null, this, "tabId=" + getMTabId(), 1, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        com.transsion.home.adapter.filter.a aVar;
        List<Object> data;
        super.onResume();
        View view = this.mNoNetworkView;
        if (view != null && jg.c.i(view) && nh.m.f70474a.e() && (aVar = this.mAdapter) != null && (data = aVar.getData()) != null && data.isEmpty()) {
            View view2 = this.mNoNetworkView;
            if (view2 != null) {
                jg.c.g(view2);
            }
            loadData();
        }
        com.transsion.baseui.activity.k.p(null, this, "tabId=" + getMTabId() + " visible=" + isVisible(), 1, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        showLoadingView();
    }
}
