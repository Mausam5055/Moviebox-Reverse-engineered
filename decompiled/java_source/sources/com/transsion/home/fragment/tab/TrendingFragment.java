package com.transsion.home.fragment.tab;

import android.content.Context;
import android.content.res.Configuration;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$mipmap;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.fissionapi.IFissionProvider;
import com.transsion.home.R$id;
import com.transsion.home.adapter.trending.BannerADDataHelper;
import com.transsion.home.adapter.trending.adapter.SportLiveAdapter;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.BannerBean;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.CustomData;
import com.transsion.home.bean.LiveListItem;
import com.transsion.home.bean.MainOperateData;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.TrendingRespData;
import com.transsion.home.bean.TrendingRespItem;
import com.transsion.home.bean.TrendingRespItemType;
import com.transsion.home.fragment.home.HomeFragment;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.TrendingViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberRemindData;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$string;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsion.startup.pref.consume.AppStartReport;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.view.BiddingFloatingIrregularView;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0016\b\u0007\u0018\u0000 Î\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002Ï\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J!\u0010\u001f\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001f\u0010 J#\u0010%\u001a\b\u0012\u0004\u0012\u00020$0!2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!H\u0002¢\u0006\u0004\b%\u0010&J%\u0010*\u001a\u00020\u00062\f\u0010(\u001a\b\u0012\u0004\u0012\u00020$0'2\u0006\u0010)\u001a\u00020\"H\u0002¢\u0006\u0004\b*\u0010+J\u001d\u0010-\u001a\u00020\u00062\f\u0010,\u001a\b\u0012\u0004\u0012\u00020$0'H\u0002¢\u0006\u0004\b-\u0010.J!\u00101\u001a\f\u0012\u0006\u0012\u0004\u0018\u000100\u0018\u00010'2\u0006\u0010/\u001a\u00020$H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00104\u001a\u000203H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0006H\u0002¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u000203H\u0002¢\u0006\u0004\b7\u00105J\u000f\u00108\u001a\u00020\u0006H\u0002¢\u0006\u0004\b8\u0010\u0005J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0006H\u0002¢\u0006\u0004\b=\u0010\u0005J#\u0010@\u001a\u00020\u00062\b\b\u0002\u0010>\u001a\u00020\u000e2\b\b\u0002\u0010?\u001a\u000209H\u0002¢\u0006\u0004\b@\u0010AJ\u0017\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020BH\u0002¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020BH\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\u000eH\u0002¢\u0006\u0004\bH\u0010IJ\u001f\u0010K\u001a\u00020\u000e2\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010!H\u0002¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0006H\u0002¢\u0006\u0004\bM\u0010\u0005J\u000f\u0010N\u001a\u00020\u000eH\u0002¢\u0006\u0004\bN\u0010IJ\u000f\u0010O\u001a\u000209H\u0002¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0006H\u0002¢\u0006\u0004\bQ\u0010\u0005J\u001d\u0010R\u001a\u0002092\f\u0010,\u001a\b\u0012\u0004\u0012\u00020$0!H\u0002¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u000203H\u0002¢\u0006\u0004\bT\u00105J\u000f\u0010U\u001a\u00020\u0006H\u0002¢\u0006\u0004\bU\u0010\u0005J\u000f\u0010V\u001a\u00020\u0006H\u0002¢\u0006\u0004\bV\u0010\u0005J\u000f\u0010W\u001a\u00020\u0006H\u0002¢\u0006\u0004\bW\u0010\u0005J\u000f\u0010X\u001a\u00020\u0006H\u0002¢\u0006\u0004\bX\u0010\u0005J\u000f\u0010Y\u001a\u00020\u0006H\u0002¢\u0006\u0004\bY\u0010\u0005J\u0019\u0010\\\u001a\u00020\u00062\b\u0010[\u001a\u0004\u0018\u00010ZH\u0016¢\u0006\u0004\b\\\u0010]J\u0017\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b`\u0010aJ\u0017\u0010d\u001a\u00020\u00062\u0006\u0010c\u001a\u00020bH\u0016¢\u0006\u0004\bd\u0010eJ!\u0010g\u001a\u00020\u00062\u0006\u0010f\u001a\u00020\u00162\b\u0010[\u001a\u0004\u0018\u00010ZH\u0016¢\u0006\u0004\bg\u0010hJ\u0017\u0010j\u001a\u00020\u00062\u0006\u0010i\u001a\u00020ZH\u0016¢\u0006\u0004\bj\u0010]J!\u0010k\u001a\u00020\u00062\u0006\u0010f\u001a\u00020\u00162\b\u0010[\u001a\u0004\u0018\u00010ZH\u0016¢\u0006\u0004\bk\u0010hJ\u0017\u0010m\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u000eH\u0016¢\u0006\u0004\bm\u0010\u0011J\u000f\u0010n\u001a\u00020\u0006H\u0016¢\u0006\u0004\bn\u0010\u0005J\u000f\u0010o\u001a\u00020\u0006H\u0016¢\u0006\u0004\bo\u0010\u0005J\r\u0010p\u001a\u00020\u0006¢\u0006\u0004\bp\u0010\u0005J\u000f\u0010q\u001a\u00020\u0006H\u0016¢\u0006\u0004\bq\u0010\u0005J\u000f\u0010r\u001a\u00020\u0006H\u0016¢\u0006\u0004\br\u0010\u0005J\u000f\u0010s\u001a\u00020\u0006H\u0016¢\u0006\u0004\bs\u0010\u0005J\u000f\u0010u\u001a\u00020tH\u0016¢\u0006\u0004\bu\u0010vJ\u000f\u0010w\u001a\u00020\u0006H\u0016¢\u0006\u0004\bw\u0010\u0005J\u000f\u0010x\u001a\u00020\u0006H\u0016¢\u0006\u0004\bx\u0010\u0005J\u000f\u0010y\u001a\u000203H\u0016¢\u0006\u0004\by\u00105J\u0011\u0010{\u001a\u0004\u0018\u00010zH\u0016¢\u0006\u0004\b{\u0010|J\"\u0010\u0080\u0001\u001a\u00020\u00062\u0006\u0010}\u001a\u0002092\u0006\u0010\u007f\u001a\u00020~H\u0016¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0082\u0001\u0010\u0005J\u000f\u0010\u0083\u0001\u001a\u00020\u0006¢\u0006\u0005\b\u0083\u0001\u0010\u0005R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u008a\u0001\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0019\u0010\u008d\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001a\u0010\u0095\u0001\u001a\u00030\u0092\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R,\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0018\u0010¡\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0019\u0010£\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010\u008c\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010\u0089\u0001R#\u0010¯\u0001\u001a\u0005\u0018\u00010ª\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b«\u0001\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001R!\u0010´\u0001\u001a\u00030°\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b±\u0001\u0010¬\u0001\u001a\u0006\b²\u0001\u0010³\u0001R(\u0010¸\u0001\u001a\u0011\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0018\u00010µ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R)\u0010½\u0001\u001a\u0012\u0012\u000b\u0012\t\u0012\u0004\u0012\u0002030º\u0001\u0018\u00010¹\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R1\u0010¿\u0001\u001a\u001c\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00060µ\u0001\u0012\u0004\u0012\u00020\u00060µ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¾\u0001\u0010·\u0001R\u001b\u0010Â\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010Á\u0001R\u0019\u0010Ä\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010\u008c\u0001R\u0019\u0010Æ\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010\u008c\u0001R\u0019\u0010É\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R\u0019\u0010Ë\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010È\u0001R\u0018\u0010Í\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÌ\u0001\u0010 \u0001¨\u0006Ð\u0001"}, d2 = {"Lcom/transsion/home/fragment/tab/TrendingFragment;", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "Lgl/z;", "Lzm/e;", "<init>", "()V", "", "M1", "initViewModel", "i1", "Lcom/transsion/memberapi/MemberRemindData;", "remindData", "W1", "(Lcom/transsion/memberapi/MemberRemindData;)V", "", "showProgress", "Y1", "(Z)V", "p2", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "t1", "hideProgress", "b2", "Lcom/transsion/home/bean/TrendingRespData;", "baseBean", "isRefresh", "r2", "(Lcom/transsion/home/bean/TrendingRespData;Z)V", "", "Lcom/transsion/home/bean/TrendingRespItem;", "feedsList", "Lcom/transsion/home/bean/OperateItem;", "k2", "(Ljava/util/List;)Ljava/util/List;", "", "newList", WebConstants.FIELD_ITEM, "f1", "(Ljava/util/List;Lcom/transsion/home/bean/TrendingRespItem;)V", "opreateItems", "F1", "(Ljava/util/List;)V", "it", "Lcom/transsion/home/bean/BannerData;", "G1", "(Lcom/transsion/home/bean/OperateItem;)Ljava/util/List;", "", "C1", "()Ljava/lang/String;", "initExposureHelper", "getPageName", "n1", "", RequestParameters.POSITION, "l2", "(I)V", "g1", "hasTopBanner", "retryCount", "p1", "(ZI)V", "", "alpha", "o2", "(F)V", "y1", "()F", "I1", "()Z", "items", "J1", "(Ljava/util/List;)Z", "X1", "H1", "B1", "()I", "j2", "A1", "(Ljava/util/List;)I", "w1", "initAd", "c2", "a2", "g2", "h1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "E1", "(Landroid/view/LayoutInflater;)Lgl/z;", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "onViewCreated", "hidden", "onHiddenChanged", "logResume", "p0", "h2", "lazyLoadData", "onDestroyView", "onDestroy", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onResume", "onPause", "g0", "Landroidx/recyclerview/widget/RecyclerView;", "f0", "()Landroidx/recyclerview/widget/RecyclerView;", "lastAdPosition", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "wrapperNativeManager", "l0", "(ILcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "c0", "m2", "Lhl/b;", "g", "Lhl/b;", "exposureHelper", "h", "Ljava/lang/String;", "nextPage", "i", "I", "mPerPage", "Lcom/transsion/home/viewmodel/TrendingViewModel;", "j", "Lcom/transsion/home/viewmodel/TrendingViewModel;", "mPostListModel", "Lcom/transsion/home/adapter/trending/b;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/home/adapter/trending/b;", "mAdapter", "Lhl/c;", "l", "Lhl/c;", "D1", "()Lhl/c;", "setPostListReport", "(Lhl/c;)V", "postListReport", "Landroid/os/Handler;", "m", "Landroid/os/Handler;", "mHandler", "n", "mHeaderBgHeight", "Lcom/transsion/home/bean/MainOperateData;", "o", "Lcom/transsion/home/bean/MainOperateData;", "operatingResp", TtmlNode.TAG_P, "mPageName", "Lcom/transsion/fissionapi/IFissionProvider;", CampaignEx.JSON_KEY_AD_Q, "Lkotlin/Lazy;", "x1", "()Lcom/transsion/fissionapi/IFissionProvider;", "fissionProvider", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", CampaignEx.JSON_KEY_AD_R, "z1", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "Lkotlin/Function1;", "s", "Lkotlin/jvm/functions/Function1;", "mPermissionCallback", "Landroidx/activity/result/b;", "", "t", "Landroidx/activity/result/b;", "mLauncher", TmcStartParams.KEY_URL_SHORT, "mOnAppointmentClick", "v", "Landroid/view/View;", "mNoNetworkView", "w", "mProgressViewStartOffset", "x", "mProgressViewEndOffset", "y", "Z", "hasAd", "z", "isAdLoadDisabled", "A", "adHandler", "B", "a", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrendingFragment extends BaseHomeSubFragment<gl.z> implements zm.e {

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int C = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private hl.b exposureHelper;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private TrendingViewModel mPostListModel;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private com.transsion.home.adapter.trending.b mAdapter;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private hl.c postListReport;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int mHeaderBgHeight;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private volatile MainOperateData operatingResp;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String mPageName;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private Function1 mPermissionCallback;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b mLauncher;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private View mNoNetworkView;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int mProgressViewStartOffset;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private int mProgressViewEndOffset;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean hasAd;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private boolean isAdLoadDisabled;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String nextPage = "1";

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 12;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final Lazy fissionProvider = LazyKt.b(new Function0() { // from class: com.transsion.home.fragment.tab.f1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TrendingFragment.o1();
        }
    });

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Lazy homePreferencesViewModel = LazyKt.b(new Function0() { // from class: com.transsion.home.fragment.tab.o1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TrendingFragment.K1(this.f45482a);
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Function1 mOnAppointmentClick = new Function1() { // from class: com.transsion.home.fragment.tab.p1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return TrendingFragment.e2(this.f45485a, (Function1) obj);
        }
    };

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final Handler adHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.TrendingFragment$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TrendingFragment a(int i11, String str) {
            Bundle bundle = new Bundle();
            bundle.putInt("tab_id", i11);
            bundle.putString(WebConstants.TAB_CODE, str);
            lg.a.f68839a.c("TrendingFragment", "create trending fragment", true);
            TrendingFragment trendingFragment = new TrendingFragment();
            trendingFragment.setArguments(bundle);
            return trendingFragment;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (TrendingFragment.this.I1()) {
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                TrendingFragment trendingFragment = TrendingFragment.this;
                trendingFragment.o2(RangesKt.h((iComputeVerticalScrollOffset * 1.0f) / trendingFragment.mHeaderBgHeight, 1.0f));
                if (!TrendingFragment.this.getMIsWhite() && TrendingFragment.this.y1() < 0.7f) {
                    TrendingFragment.this.b0(true);
                } else {
                    if (!TrendingFragment.this.getMIsWhite() || TrendingFragment.this.y1() < 0.7f) {
                        return;
                    }
                    TrendingFragment.this.b0(false);
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class c implements ViewTreeObserver.OnPreDrawListener {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            RecyclerView recyclerView;
            ViewTreeObserver viewTreeObserver;
            gl.z zVar = (gl.z) TrendingFragment.this.getMViewBinding();
            if (zVar != null && (recyclerView = zVar.f63873d) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
            com.transsion.startup.pref.consume.c.f54529a.o(TrendingFragment.this.getActivity());
            return true;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class d implements CustomSwipeRefreshLayout.b {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(TrendingFragment trendingFragment) {
            trendingFragment.c0();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(TrendingFragment trendingFragment) {
            trendingFragment.c0();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout.b
        public void a(String action, float f11, float f12) {
            CustomSwipeRefreshLayout customSwipeRefreshLayout;
            CustomSwipeRefreshLayout customSwipeRefreshLayout2;
            gl.z zVar;
            CustomSwipeRefreshLayout customSwipeRefreshLayout3;
            CustomSwipeRefreshLayout customSwipeRefreshLayout4;
            CustomSwipeRefreshLayout customSwipeRefreshLayout5;
            CustomSwipeRefreshLayout customSwipeRefreshLayout6;
            gl.z zVar2;
            CustomSwipeRefreshLayout customSwipeRefreshLayout7;
            Intrinsics.h(action, "action");
            if (Intrinsics.c(action, CustomSwipeRefreshLayout.DOWN)) {
                TrendingFragment trendingFragment = TrendingFragment.this;
                FragmentActivity activity = trendingFragment.getActivity();
                BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
                trendingFragment.hasAd = baseActivity != null ? baseActivity.hasAd() : false;
            }
            if (!TrendingFragment.this.hasAd) {
                if (Intrinsics.c(action, CustomSwipeRefreshLayout.DOWN) && (zVar2 = (gl.z) TrendingFragment.this.getMViewBinding()) != null && (customSwipeRefreshLayout7 = zVar2.f63874e) != null) {
                    customSwipeRefreshLayout7.setProgressViewOffset(false, TrendingFragment.this.mHeaderBgHeight, TrendingFragment.this.mHeaderBgHeight + com.blankj.utilcode.util.a0.a(50.0f));
                }
                gl.z zVar3 = (gl.z) TrendingFragment.this.getMViewBinding();
                if (zVar3 == null || (customSwipeRefreshLayout6 = zVar3.f63874e) == null) {
                    return;
                }
                customSwipeRefreshLayout6.setCurrentState(CustomSwipeRefreshLayout.IDLE);
                return;
            }
            FragmentActivity activity2 = TrendingFragment.this.getActivity();
            BaseActivity baseActivity2 = activity2 instanceof BaseActivity ? (BaseActivity) activity2 : null;
            if (baseActivity2 != null) {
                baseActivity2.onAction(action, f11, f12);
            }
            int iHashCode = action.hashCode();
            if (iHashCode == -1435393951) {
                if (action.equals(CustomSwipeRefreshLayout.SECOND_FLOOR)) {
                    gl.z zVar4 = (gl.z) TrendingFragment.this.getMViewBinding();
                    if (zVar4 != null && (customSwipeRefreshLayout2 = zVar4.f63874e) != null) {
                        customSwipeRefreshLayout2.setRefreshing(true);
                    }
                    gl.z zVar5 = (gl.z) TrendingFragment.this.getMViewBinding();
                    if (zVar5 == null || (customSwipeRefreshLayout = zVar5.f63874e) == null) {
                        return;
                    }
                    final TrendingFragment trendingFragment2 = TrendingFragment.this;
                    customSwipeRefreshLayout.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.x1
                        @Override // java.lang.Runnable
                        public final void run() {
                            TrendingFragment.d.e(trendingFragment2);
                        }
                    }, 300L);
                    return;
                }
                return;
            }
            if (iHashCode == 2715) {
                action.equals(CustomSwipeRefreshLayout.UP);
                return;
            }
            if (iHashCode == 2104482) {
                if (!action.equals(CustomSwipeRefreshLayout.DOWN) || (zVar = (gl.z) TrendingFragment.this.getMViewBinding()) == null || (customSwipeRefreshLayout3 = zVar.f63874e) == null) {
                    return;
                }
                customSwipeRefreshLayout3.setProgressViewOffset(false, -600, -600);
                return;
            }
            if (iHashCode == 1803427515 && action.equals(CustomSwipeRefreshLayout.REFRESH)) {
                gl.z zVar6 = (gl.z) TrendingFragment.this.getMViewBinding();
                if (zVar6 != null && (customSwipeRefreshLayout5 = zVar6.f63874e) != null) {
                    customSwipeRefreshLayout5.setRefreshing(true);
                }
                gl.z zVar7 = (gl.z) TrendingFragment.this.getMViewBinding();
                if (zVar7 == null || (customSwipeRefreshLayout4 = zVar7.f63874e) == null) {
                    return;
                }
                final TrendingFragment trendingFragment3 = TrendingFragment.this;
                customSwipeRefreshLayout4.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.w1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrendingFragment.d.d(trendingFragment3);
                    }
                }, 300L);
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class e implements hl.a {
        e() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            List<BannerData> banners;
            androidx.p009lifecycle.b0 b0VarW;
            List<BannerData> items;
            try {
                com.transsion.home.adapter.trending.b bVar = TrendingFragment.this.mAdapter;
                com.transsion.home.adapter.trending.b bVar2 = null;
                if (bVar == null) {
                    Intrinsics.z("mAdapter");
                    bVar = null;
                }
                OperateItem operateItem = (OperateItem) bVar.getData().get(i11);
                TrendingFragment.this.l2(i11);
                String type = operateItem.getType();
                if (Intrinsics.c(type, PostItemType.OP_SUBJECTS_MOVIE.getValue())) {
                    List<AppointSubject> subjects = operateItem.getSubjects();
                    if (subjects != null) {
                        rl.c.f74547a.s(operateItem, operateItem.getType() + "_Full", subjects, j11, i11);
                        return;
                    }
                    return;
                }
                if (Intrinsics.c(type, PostItemType.CUSTOM_DATA.getValue())) {
                    CustomData customData = operateItem.getCustomData();
                    if (customData == null || (items = customData.getItems()) == null) {
                        return;
                    }
                    rl.c.f74547a.b(operateItem, operateItem.getType() + "_Full", items, j11, i11);
                    return;
                }
                if (!Intrinsics.c(type, PostItemType.HORIZONTAL_BANNER.getValue()) && !Intrinsics.c(type, PostItemType.BANNER.getValue())) {
                    if (Intrinsics.c(type, PostItemType.SPORT_LIVE.getValue())) {
                        List<LiveListItem> liveList = operateItem.getLiveList();
                        if (liveList != null) {
                            rl.c.f74547a.t(operateItem, operateItem.getType() + "_Full", liveList, j11, i11);
                            return;
                        }
                        return;
                    }
                    if (Intrinsics.c(type, PostItemType.ROOM.getValue())) {
                        TrendingViewModel trendingViewModel = TrendingFragment.this.mPostListModel;
                        if (trendingViewModel == null || (b0VarW = trendingViewModel.W()) == null) {
                            return;
                        }
                        return;
                    }
                    if (Intrinsics.c(type, PostItemType.SINGLE_IMAGE.getValue())) {
                        rl.c.f74547a.e(i11, j11, operateItem);
                        return;
                    }
                    hl.c postListReport = TrendingFragment.this.getPostListReport();
                    if (postListReport != null) {
                        com.transsion.home.adapter.trending.b bVar3 = TrendingFragment.this.mAdapter;
                        if (bVar3 == null) {
                            Intrinsics.z("mAdapter");
                        } else {
                            bVar2 = bVar3;
                        }
                        postListReport.a(bVar2, i11, j11);
                        return;
                    }
                    return;
                }
                BannerBean banner = operateItem.getBanner();
                if (banner == null || (banners = banner.getBanners()) == null) {
                    return;
                }
                rl.c.f74547a.b(operateItem, operateItem.getType() + "_Full", banners, j11, i11);
            } catch (Exception e11) {
                String message = e11.getMessage();
                if (message != null) {
                    lg.a.C0828a.f(lg.a.f68839a, "reportExposure", message, false, 4, null);
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class f extends DiffUtil.e {
        f() {
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

    /* JADX INFO: loaded from: classes5.dex */
    public static final class g extends GridLayoutManager.c {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f45363f;

        g(int i11) {
            this.f45363f = i11;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i11) {
            com.transsion.home.adapter.trending.b bVar = TrendingFragment.this.mAdapter;
            com.transsion.home.adapter.trending.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            if (!bVar.getIsGridTrendingAdapter()) {
                return this.f45363f;
            }
            com.transsion.home.adapter.trending.b bVar3 = TrendingFragment.this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar2 = bVar3;
            }
            if (Intrinsics.c(((OperateItem) bVar2.getItem(i11)).getType(), PostItemType.SUBJECT.getValue())) {
                return 1;
            }
            return this.f45363f;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class h implements nh.n {
        h() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            TrendingFragment.this.j2();
            if (TrendingFragment.this.isResumed()) {
                com.transsion.home.adapter.trending.b bVar = TrendingFragment.this.mAdapter;
                if (bVar == null) {
                    Intrinsics.z("mAdapter");
                    bVar = null;
                }
                if (bVar.getData().isEmpty() || PreloadTrendingData.f45886n.a().K().f() == null) {
                    lg.a.C0828a.f(lg.a.f68839a, "TrendingFragment", "onConnected", false, 4, null);
                    TrendingFragment.this.Y1(false);
                }
            }
        }

        @Override // nh.n
        public void onDisconnected() {
            TrendingFragment.this.X1();
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class i implements ViewTreeObserver.OnPreDrawListener {
        i() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            RecyclerView recyclerView;
            ViewTreeObserver viewTreeObserver;
            Unit unit;
            TrendingFragment trendingFragment = TrendingFragment.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                FragmentActivity activity = trendingFragment.getActivity();
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
            gl.z zVar = (gl.z) TrendingFragment.this.getMViewBinding();
            if (zVar == null || (recyclerView = zVar.f63873d) == null || (viewTreeObserver = recyclerView.getViewTreeObserver()) == null) {
                return true;
            }
            viewTreeObserver.removeOnPreDrawListener(this);
            return true;
        }
    }

    /* JADX INFO: renamed from: com.transsion.home.fragment.tab.TrendingFragment$initViewModel$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.fragment.tab.TrendingFragment$initViewModel$2", f = "TrendingFragment.kt", l = {453}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        /* JADX INFO: renamed from: com.transsion.home.fragment.tab.TrendingFragment$initViewModel$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        @DebugMetadata(c = "com.transsion.home.fragment.tab.TrendingFragment$initViewModel$2$1", f = "TrendingFragment.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
            /* synthetic */ boolean Z$0;
            int label;
            final /* synthetic */ TrendingFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TrendingFragment trendingFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = trendingFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                anonymousClass1.Z$0 = ((Boolean) obj).booleanValue();
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke(((Boolean) obj).booleanValue(), (Continuation<? super Unit>) obj2);
            }

            public final Object invoke(boolean z10, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(Boolean.valueOf(z10), continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                androidx.p009lifecycle.b0 b0VarV;
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                boolean z10 = this.Z$0;
                TrendingViewModel trendingViewModel = this.this$0.mPostListModel;
                if (trendingViewModel != null && (b0VarV = trendingViewModel.V()) != null) {
                    b0VarV.n(Boxing.a(z10));
                }
                return Unit.f67061a;
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TrendingFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            kotlinx.coroutines.flow.i1 i1VarD;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
                if (iMemberApi != null && (i1VarD = iMemberApi.d()) != null) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(TrendingFragment.this, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.d.i(i1VarD, anonymousClass1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    static final class j implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45366a;

        j(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45366a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45366a;
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
            this.f45366a.invoke(obj);
        }
    }

    private final int A1(List opreateItems) {
        int i11 = 0;
        for (Object obj : opreateItems) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (Intrinsics.c(((OperateItem) obj).getType(), PostItemType.BANNER.getValue())) {
                return i12;
            }
            i11 = i12;
        }
        return 0;
    }

    private final int B1() {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
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

    private final String C1() {
        String str;
        if (this.mPageName == null) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof HomeFragment) {
                this.mPageName = ((HomeFragment) parentFragment).J0();
            }
        }
        return (TextUtils.isEmpty(this.mPageName) || (str = this.mPageName) == null) ? "Trending" : str;
    }

    private final void F1(List opreateItems) {
        Integer groupPos;
        Integer groupPos2;
        Integer groupPos3;
        int iA1;
        HashMap mapG;
        List<OperateItem> items;
        List<OperateItem> listI0;
        ArrayList arrayList;
        MainOperateData mainOperateData = this.operatingResp;
        if (mainOperateData != null && (items = mainOperateData.getItems()) != null && (listI0 = CollectionsKt.I0(items, new Comparator() { // from class: com.transsion.home.fragment.tab.TrendingFragment$handleOpList$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(((OperateItem) t11).getPosition(), ((OperateItem) t12).getPosition());
            }
        })) != null) {
            for (OperateItem operateItem : listI0) {
                String type = operateItem.getType();
                if (Intrinsics.c(type, PostItemType.BANNER.getValue())) {
                    BannerBean banner = operateItem.getBanner();
                    List<BannerData> banners = banner != null ? banner.getBanners() : null;
                    if (banners != null && !banners.isEmpty()) {
                        BannerBean banner2 = operateItem.getBanner();
                        if (banner2 != null) {
                            banner2.setBanners(G1(operateItem));
                        }
                    }
                }
                if (Intrinsics.c(type, PostItemType.SPORT_LIVE.getValue())) {
                    List<LiveListItem> liveList = operateItem.getLiveList();
                    if (liveList != null) {
                        arrayList = new ArrayList();
                        for (Object obj : liveList) {
                            if (!Intrinsics.c(((LiveListItem) obj).getStatus(), SportLiveAdapter.P)) {
                                arrayList.add(obj);
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                    if (arrayList == null || arrayList.isEmpty()) {
                    }
                }
                com.transsion.home.adapter.trending.b bVar = this.mAdapter;
                if (bVar == null) {
                    Intrinsics.z("mAdapter");
                    bVar = null;
                }
                Set<String> setKeySet = bVar.S1().keySet();
                Intrinsics.g(setKeySet, "<get-keys>(...)");
                if (CollectionsKt.b0(setKeySet, type)) {
                    List<AppointSubject> subjects = operateItem.getSubjects();
                    if (subjects != null) {
                        int size = subjects.size();
                        if (!Intrinsics.c(type, PostItemType.OP_SUBJECTS_MOVIE.getValue()) || size >= 3) {
                        }
                    }
                    opreateItems.add(operateItem);
                }
            }
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            MainOperateData mainOperateData2 = this.operatingResp;
        }
        if (!nh.m.f70474a.e() && (iA1 = A1(opreateItems)) >= 0 && iA1 < opreateItems.size()) {
            opreateItems.add(iA1, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null));
        }
        opreateItems.add(new OperateItem(getString(R$string.short_tv_most_trending), PostItemType.FEEDS_TITLE.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483644, null));
        MainOperateData mainOperateData3 = this.operatingResp;
        if (((mainOperateData3 == null || (groupPos3 = mainOperateData3.getGroupPos()) == null) ? 0 : groupPos3.intValue()) > 0) {
            aq.h.f16093a.m(true);
            MainOperateData mainOperateData4 = this.operatingResp;
            int iIntValue = (mainOperateData4 == null || (groupPos2 = mainOperateData4.getGroupPos()) == null) ? 0 : groupPos2.intValue();
            if (iIntValue >= opreateItems.size()) {
                opreateItems.add(new OperateItem(null, PostItemType.ROOM.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null));
            } else {
                opreateItems.add(iIntValue, new OperateItem(null, PostItemType.ROOM.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null));
            }
        }
        aq.h hVar = aq.h.f16093a;
        MainOperateData mainOperateData5 = this.operatingResp;
        hVar.m(((mainOperateData5 == null || (groupPos = mainOperateData5.getGroupPos()) == null) ? 0 : groupPos.intValue()) > 0);
        HomePreferencesUiHelperKt.f(getMTabCode(), z1(), opreateItems);
    }

    private final List G1(OperateItem it) {
        List<BannerData> banners;
        BannerBean banner = it.getBanner();
        if (banner != null) {
            banner.setRefreshAd(true);
        }
        BannerBean banner2 = it.getBanner();
        if (banner2 == null || (banners = banner2.getBanners()) == null) {
            return null;
        }
        return CollectionsKt.U0(banners);
    }

    private final boolean H1() {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
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
    public final boolean I1() {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() <= 0) {
            return false;
        }
        com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
        if (bVar3 == null) {
            Intrinsics.z("mAdapter");
        } else {
            bVar2 = bVar3;
        }
        return Intrinsics.c(((OperateItem) bVar2.getData().get(0)).getType(), PostItemType.BANNER.getValue());
    }

    private final boolean J1(List items) {
        OperateItem operateItem;
        return Intrinsics.c((items == null || (operateItem = (OperateItem) CollectionsKt.k0(items)) == null) ? null : operateItem.getType(), PostItemType.BANNER.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HomePreferencesViewModel K1(TrendingFragment trendingFragment) {
        Fragment fragmentRequireParentFragment = trendingFragment.requireParentFragment();
        Intrinsics.g(fragmentRequireParentFragment, "requireParentFragment(...)");
        return (HomePreferencesViewModel) new androidx.p009lifecycle.v0(fragmentRequireParentFragment).a(HomePreferencesViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void L1(TrendingFragment trendingFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        gl.z zVar = (gl.z) trendingFragment.getMViewBinding();
        int progressViewEndOffset = 0;
        trendingFragment.mProgressViewStartOffset = (zVar == null || (customSwipeRefreshLayout2 = zVar.f63874e) == null) ? 0 : customSwipeRefreshLayout2.getProgressViewStartOffset();
        gl.z zVar2 = (gl.z) trendingFragment.getMViewBinding();
        if (zVar2 != null && (customSwipeRefreshLayout = zVar2.f63874e) != null) {
            progressViewEndOffset = customSwipeRefreshLayout.getProgressViewEndOffset();
        }
        trendingFragment.mProgressViewEndOffset = progressViewEndOffset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void M1() {
        int i11;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        Context context = getContext();
        if (context == null || !com.transsion.baseui.util.b.a(context)) {
            i11 = 3;
        } else {
            i11 = com.blankj.utilcode.util.y.e() > com.blankj.utilcode.util.y.c() ? 5 : 4;
        }
        hl.b bVar = this.exposureHelper;
        KeyEventDispatcher.Component activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.home.preload.MainXMLPreload");
        com.transsion.home.preload.b xmlPreload = ((com.transsion.home.preload.a) activity).getXmlPreload();
        TrendingViewModel trendingViewModel = this.mPostListModel;
        Function1 function1 = this.mOnAppointmentClick;
        Context context2 = getContext();
        final com.transsion.home.adapter.trending.b bVar2 = new com.transsion.home.adapter.trending.b(bVar, xmlPreload, this, trendingViewModel, function1, context2 != null && com.transsion.baseui.util.b.a(context2), i11);
        bVar2.h0().z(true);
        bVar2.h0().y(true);
        bVar2.h0().E(4);
        bVar2.h0().D(new p6.f() { // from class: com.transsion.home.fragment.tab.v1
            @Override // p6.f
            public final void a() {
                TrendingFragment.O1(this.f45506a);
            }
        });
        bVar2.R0(new f());
        bVar2.w1(new p6.d() { // from class: com.transsion.home.fragment.tab.v0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                TrendingFragment.P1(this.f45505a, baseQuickAdapter, view, i12);
            }
        });
        bVar2.l(R$id.ll_download);
        bVar2.s1(new p6.b() { // from class: com.transsion.home.fragment.tab.w0
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                TrendingFragment.Q1(this.f45507a, bVar2, baseQuickAdapter, view, i12);
            }
        });
        bVar2.U1(new Function0() { // from class: com.transsion.home.fragment.tab.x0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingFragment.N1(this.f45511a);
            }
        });
        this.mAdapter = bVar2;
        BaseItemProvider baseItemProvider = bVar2.S1().get(PostItemType.PREFERENCES.getValue());
        com.transsion.home.adapter.trending.b bVar3 = null;
        com.transsion.home.adapter.trending.provider.e eVar = baseItemProvider instanceof com.transsion.home.adapter.trending.provider.e ? (com.transsion.home.adapter.trending.provider.e) baseItemProvider : null;
        if (eVar != null) {
            HomePreferencesViewModel homePreferencesViewModelZ1 = z1();
            com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
            if (bVar4 == null) {
                Intrinsics.z("mAdapter");
                bVar4 = null;
            }
            int mTabId = getMTabId();
            String mTabCode = getMTabCode();
            if (mTabCode == null) {
                mTabCode = "";
            }
            HomePreferencesUiHelperKt.j(eVar, homePreferencesViewModelZ1, bVar4, mTabId, mTabCode);
        }
        NpaGridLayoutManager npaGridLayoutManager = new NpaGridLayoutManager(requireContext(), i11);
        g gVar = new g(i11);
        gVar.i(true);
        npaGridLayoutManager.d0(gVar);
        initExposureHelper();
        gl.z zVar = (gl.z) getMViewBinding();
        RecyclerView recyclerView = zVar != null ? zVar.f63873d : null;
        hl.b bVar5 = this.exposureHelper;
        if (bVar5 != null && recyclerView != null) {
            recyclerView.addOnScrollListener(bVar5);
        }
        if (recyclerView != null) {
            recyclerView.setLayoutManager(npaGridLayoutManager);
            npaGridLayoutManager.setInitialPrefetchItemCount(6);
            ig.h hVar = new ig.h(com.blankj.utilcode.util.a0.a(12.0f), i11);
            hVar.d(com.blankj.utilcode.util.a0.a(6.0f));
            recyclerView.addItemDecoration(hVar);
            recyclerView.setItemAnimator(null);
            com.transsion.home.adapter.trending.b bVar6 = this.mAdapter;
            if (bVar6 == null) {
                Intrinsics.z("mAdapter");
                bVar6 = null;
            }
            recyclerView.setAdapter(bVar6);
            com.transsion.home.adapter.trending.b bVar7 = this.mAdapter;
            if (bVar7 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar3 = bVar7;
            }
            recyclerView.addOnScrollListener(new fk.a(bVar3.h0()));
        }
        if (recyclerView != null) {
            HomePreferencesUiHelperKt.h(this, recyclerView, npaGridLayoutManager, z1(), new Function0() { // from class: com.transsion.home.fragment.tab.y0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Integer.valueOf(TrendingFragment.R1(this.f45514a));
                }
            });
        }
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 == null || (customSwipeRefreshLayout = zVar2.f63874e) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.home.fragment.tab.z0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
            public final void a() {
                TrendingFragment.S1(this.f45516a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(TrendingFragment trendingFragment) {
        if (nh.m.f70474a.e()) {
            trendingFragment.j2();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O1(TrendingFragment trendingFragment) {
        trendingFragment.b2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P1(TrendingFragment trendingFragment, BaseQuickAdapter adapter, View view, int i11) {
        OperateItem operateItem;
        Subject feedsSubject;
        String subjectId;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (!(item instanceof OperateItem) || (feedsSubject = (operateItem = (OperateItem) item).getFeedsSubject()) == null || (subjectId = feedsSubject.getSubjectId()) == null || subjectId.length() <= 0) {
            return;
        }
        Subject feedsSubject2 = operateItem.getFeedsSubject();
        Intrinsics.e(feedsSubject2);
        rl.h.f(feedsSubject2, "opt_feeds");
        hl.c cVar = trendingFragment.postListReport;
        if (cVar != null) {
            Subject feedsSubject3 = operateItem.getFeedsSubject();
            Intrinsics.e(feedsSubject3);
            cVar.b(i11, feedsSubject3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void Q1(TrendingFragment trendingFragment, com.transsion.home.adapter.trending.b bVar, BaseQuickAdapter adapter, View view, int i11) {
        Subject feedsSubject;
        TrendingViewModel trendingViewModel;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 2000L)) {
            return;
        }
        Object item = adapter.getItem(i11);
        String strG = null;
        OperateItem operateItem = item instanceof OperateItem ? (OperateItem) item : null;
        if (view.getId() == R$id.ll_download) {
            strG = rl.h.g(operateItem != null ? operateItem.getFeedsSubject() : null, trendingFragment.getPageName(), bVar.getContext(), "opt_feeds");
        }
        if (operateItem == null || (feedsSubject = operateItem.getFeedsSubject()) == null || (trendingViewModel = trendingFragment.mPostListModel) == null) {
            return;
        }
        if (strG == null) {
            strG = "";
        }
        trendingViewModel.a0(feedsSubject, i11, strG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int R1(TrendingFragment trendingFragment) {
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        return bVar.getData().size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S1(TrendingFragment trendingFragment) {
        trendingFragment.c0();
        trendingFragment.c2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void T1(final TrendingFragment trendingFragment, Map permissions) {
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
        gl.z zVar = (gl.z) trendingFragment.getMViewBinding();
        if (zVar == null || (recyclerView = zVar.f63873d) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.home.fragment.tab.s1
            @Override // java.lang.Runnable
            public final void run() {
                TrendingFragment.U1(this.f45495a, booleanRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(TrendingFragment trendingFragment, Ref.BooleanRef booleanRef) {
        Function1 function1 = trendingFragment.mPermissionCallback;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(booleanRef.element));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V1(TrendingFragment trendingFragment, TrendingRespData trendingRespData) {
        List<OperateItem> items;
        MainOperateData mainOperateData = trendingFragment.operatingResp;
        boolean z10 = false;
        boolean z11 = ((mainOperateData == null || (items = mainOperateData.getItems()) == null) ? 0 : items.size()) > 0;
        if (!z11) {
            com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            if (bVar.getData().size() > 0 && Intrinsics.c(trendingFragment.nextPage, "1")) {
                z10 = true;
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "PreloadTrending", "load feeds isFresh " + z10 + " hasOperating " + z11, false, 4, null);
        trendingFragment.r2(trendingRespData, z10);
        return Unit.f67061a;
    }

    private final void W1(MemberRemindData remindData) {
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        if (bVar.getData().isEmpty()) {
            return;
        }
        OperateItem operateItem = new OperateItem(null, PostItemType.MEMBER_BANNER.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, remindData, null, null, null, null, null, null, 2130706429, null);
        com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
        if (bVar3 == null) {
            Intrinsics.z("mAdapter");
        } else {
            bVar2 = bVar3;
        }
        bVar2.n(1, operateItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X1() {
        if (H1()) {
            return;
        }
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        int iA1 = A1(bVar.getData());
        if (iA1 >= 0) {
            com.transsion.home.adapter.trending.b bVar2 = this.mAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mAdapter");
                bVar2 = null;
            }
            if (iA1 < bVar2.getData().size()) {
                com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mAdapter");
                    bVar3 = null;
                }
                bVar3.getData().add(iA1, new OperateItem(null, PostItemType.NO_NETWORK.getValue(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147483645, null));
                com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
                if (bVar4 == null) {
                    Intrinsics.z("mAdapter");
                    bVar4 = null;
                }
                bVar4.notifyItemInserted(iA1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y1(boolean showProgress) {
        if (showProgress) {
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            if (bVar.getData().size() <= 2) {
                showProgress();
            }
        }
        PreloadTrendingData preloadTrendingDataA = PreloadTrendingData.f45886n.a();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        preloadTrendingDataA.U(contextRequireContext);
    }

    static /* synthetic */ void Z1(TrendingFragment trendingFragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        trendingFragment.Y1(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a2() {
        BiddingFloatingIrregularView biddingFloatingIrregularView;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (biddingFloatingIrregularView = zVar.f63871b) == null) {
            return;
        }
        biddingFloatingIrregularView.loadAd();
    }

    private final void b2() {
        int i11 = this.mPerPage;
        if (i11 <= 0) {
            i11 = 12;
        }
        TrendingViewModel trendingViewModel = this.mPostListModel;
        if (trendingViewModel != null) {
            String str = this.nextPage;
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            trendingViewModel.Y(str, i11, bVar.getIsGridTrendingAdapter());
        }
    }

    private final void c2() {
        this.adHandler.removeCallbacksAndMessages(null);
        if (this.hasAd) {
            return;
        }
        this.adHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.u1
            @Override // java.lang.Runnable
            public final void run() {
                TrendingFragment.d2(this.f45504a);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d2(TrendingFragment trendingFragment) {
        FragmentActivity activity = trendingFragment.getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.loadTwoLevelAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e2(TrendingFragment trendingFragment, Function1 callback) {
        Intrinsics.h(callback, "callback");
        trendingFragment.mPermissionCallback = callback;
        androidx.activity.result.b bVar = trendingFragment.mLauncher;
        if (bVar != null) {
            bVar.a(new String[]{"android.permission.READ_CALENDAR", "android.permission.WRITE_CALENDAR"});
        }
        return Unit.f67061a;
    }

    private final void f1(List newList, TrendingRespItem item) {
        Integer type = item.getType();
        int value = TrendingRespItemType.SUBJECT.getValue();
        if (type == null || type.intValue() != value || item.getSubject() == null) {
            return;
        }
        newList.add(new OperateItem(null, PostItemType.SUBJECT.getValue(), null, null, null, null, null, null, null, null, null, null, item.getSubject(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 2147479549, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f2(int i11, int i12, TrendingFragment trendingFragment, OperateItem operateItem) {
        com.transsion.home.adapter.trending.b bVar = null;
        if (i11 < 0 || i11 > i12) {
            com.transsion.home.adapter.trending.b bVar2 = trendingFragment.mAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar = bVar2;
            }
            bVar.p(operateItem);
            return;
        }
        com.transsion.home.adapter.trending.b bVar3 = trendingFragment.mAdapter;
        if (bVar3 == null) {
            Intrinsics.z("mAdapter");
        } else {
            bVar = bVar3;
        }
        bVar.n(i11, operateItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void g1() {
        RecyclerView recyclerView;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (recyclerView = zVar.f63873d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void g2() {
        BaseActivity baseActivity;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        if (this.hasAd) {
            gl.z zVar = (gl.z) getMViewBinding();
            String currentState = (zVar == null || (customSwipeRefreshLayout = zVar.f63874e) == null) ? null : customSwipeRefreshLayout.getCurrentState();
            if (currentState != null) {
                int iHashCode = currentState.hashCode();
                String str = CustomSwipeRefreshLayout.IDLE;
                if (iHashCode != -1435393951) {
                    if (iHashCode != 2242516) {
                        if (iHashCode == 1803427515 && currentState.equals(CustomSwipeRefreshLayout.REFRESH)) {
                            String str2 = CustomSwipeRefreshLayout.INSTANCE.b() ? CustomSwipeRefreshLayout.HOVER_FULL : CustomSwipeRefreshLayout.HOVER_HALF;
                            if (isVisible()) {
                                str = str2;
                            }
                            FragmentActivity activity = getActivity();
                            baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
                            if (baseActivity != null) {
                                baseActivity.onAction(str, 0.0f, 0.0f);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (!currentState.equals(CustomSwipeRefreshLayout.IDLE)) {
                        return;
                    }
                } else if (!currentState.equals(CustomSwipeRefreshLayout.SECOND_FLOOR)) {
                    return;
                }
                FragmentActivity activity2 = getActivity();
                baseActivity = activity2 instanceof BaseActivity ? (BaseActivity) activity2 : null;
                if (baseActivity != null) {
                    baseActivity.onAction(CustomSwipeRefreshLayout.IDLE, 0.0f, 0.0f);
                }
            }
        }
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.ic_no_content);
        String string = context.getString(com.tn.lib.widget.R$string.no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.home.fragment.tab.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrendingFragment.s1(this.f45468a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final String getPageName() {
        return C1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h1() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null && (customSwipeRefreshLayout = zVar.f63874e) != null) {
            customSwipeRefreshLayout.setCurrentState(CustomSwipeRefreshLayout.IDLE);
        }
        FragmentActivity activity = getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.onAction(CustomSwipeRefreshLayout.IDLE, 0.0f, 0.0f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void hideProgress() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        gl.m0 m0Var;
        ConstraintLayout constraintLayout;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null && (m0Var = zVar.f63872c) != null && (constraintLayout = m0Var.f63784h) != null) {
            jg.c.g(constraintLayout);
        }
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 != null && (customSwipeRefreshLayout3 = zVar2.f63874e) != null) {
            customSwipeRefreshLayout3.setEnabled(true);
        }
        gl.z zVar3 = (gl.z) getMViewBinding();
        if (zVar3 == null || (customSwipeRefreshLayout = zVar3.f63874e) == null || !customSwipeRefreshLayout.isRefreshing()) {
            return;
        }
        gl.z zVar4 = (gl.z) getMViewBinding();
        if (zVar4 != null && (customSwipeRefreshLayout2 = zVar4.f63874e) != null) {
            customSwipeRefreshLayout2.setRefreshing(false);
        }
        g2();
    }

    private final void i1() {
        final Function1 function1 = new Function1() { // from class: com.transsion.home.fragment.tab.d1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrendingFragment.j1(this.f45416a, ((Boolean) obj).booleanValue());
            }
        };
        lg.a.C0828a c0828a = lg.a.f68839a;
        PreloadTrendingData.a aVar = PreloadTrendingData.f45886n;
        lg.a.C0828a.f(c0828a, "lgx", "preObserve fragment:" + this + " " + aVar.a().J() + "  " + aVar.a().K(), false, 4, null);
        aVar.a().J().j(this, new j(new Function1() { // from class: com.transsion.home.fragment.tab.e1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrendingFragment.l1(this.f45421a, function1, (MainOperateData) obj);
            }
        }));
        aVar.a().K().j(this, new j(new Function1() { // from class: com.transsion.home.fragment.tab.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrendingFragment.m1(this.f45436a, function1, (MainOperateData) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void i2(TrendingFragment trendingFragment) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        gl.z zVar = (gl.z) trendingFragment.getMViewBinding();
        if (zVar != null && (customSwipeRefreshLayout = zVar.f63874e) != null) {
            customSwipeRefreshLayout.setRefreshing(true);
        }
        trendingFragment.c0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initAd() {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null && (customSwipeRefreshLayout2 = zVar.f63874e) != null) {
            customSwipeRefreshLayout2.post(new Runnable() { // from class: com.transsion.home.fragment.tab.c1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingFragment.L1(this.f45410a);
                }
            });
        }
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 == null || (customSwipeRefreshLayout = zVar2.f63874e) == null) {
            return;
        }
        customSwipeRefreshLayout.setOnSwipeActionListener(new d());
    }

    private final void initExposureHelper() {
        this.postListReport = new hl.c(getPageName());
        hl.b bVar = new hl.b(0.6f, new e(), false, 4, null);
        this.exposureHelper = bVar;
        bVar.l(2);
    }

    private final void initViewModel() {
        TrendingViewModel trendingViewModel = this.mPostListModel;
        if (trendingViewModel != null) {
            trendingViewModel.X().j(this, new j(new Function1() { // from class: com.transsion.home.fragment.tab.a1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TrendingFragment.V1(this.f45391a, (TrendingRespData) obj);
                }
            }));
        }
        com.transsion.home.adapter.trending.b bVar = null;
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass2(null), 3, null);
        i1();
        HomePreferencesViewModel homePreferencesViewModelZ1 = z1();
        com.transsion.home.adapter.trending.b bVar2 = this.mAdapter;
        if (bVar2 == null) {
            Intrinsics.z("mAdapter");
        } else {
            bVar = bVar2;
        }
        HomePreferencesUiHelperKt.o(this, homePreferencesViewModelZ1, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit j1(final TrendingFragment trendingFragment, boolean z10) {
        gl.z zVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        ViewTreeObserver viewTreeObserver;
        RecyclerView recyclerView4;
        TrendingViewModel trendingViewModel;
        Integer groupPos;
        hj.b logViewConfig = trendingFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        MainOperateData mainOperateData = trendingFragment.operatingResp;
        if (((mainOperateData == null || (groupPos = mainOperateData.getGroupPos()) == null) ? 0 : groupPos.intValue()) > 0 && (trendingViewModel = trendingFragment.mPostListModel) != null) {
            trendingViewModel.T(z10);
        }
        final ArrayList arrayList = new ArrayList();
        trendingFragment.F1(arrayList);
        String mTabCode = trendingFragment.getMTabCode();
        if (mTabCode != null) {
            trendingFragment.z1().E(mTabCode, arrayList);
        }
        MainOperateData mainOperateData2 = trendingFragment.operatingResp;
        rl.h.c(arrayList, mainOperateData2 != null ? mainOperateData2.getOps() : null);
        final boolean zJ1 = trendingFragment.J1(arrayList);
        gl.z zVar2 = (gl.z) trendingFragment.getMViewBinding();
        if (zVar2 != null && (recyclerView4 = zVar2.f63873d) != null) {
            recyclerView4.post(new Runnable() { // from class: com.transsion.home.fragment.tab.j1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingFragment.k1(this.f45456a, arrayList, zJ1);
                }
            });
        }
        gl.z zVar3 = (gl.z) trendingFragment.getMViewBinding();
        if (zVar3 != null && (recyclerView3 = zVar3.f63873d) != null && (viewTreeObserver = recyclerView3.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(trendingFragment.new c());
        }
        lg.a.C0828a.f(lg.a.f68839a, "lgx", "hide1 fragment:" + trendingFragment, false, 4, null);
        trendingFragment.hideProgress();
        gl.z zVar4 = (gl.z) trendingFragment.getMViewBinding();
        if (((zVar4 == null || (recyclerView2 = zVar4.f63873d) == null) ? 0 : recyclerView2.computeVerticalScrollOffset()) > 10 && (zVar = (gl.z) trendingFragment.getMViewBinding()) != null && (recyclerView = zVar.f63873d) != null) {
            recyclerView.scrollBy(0, 1);
        }
        if (!z10) {
            com.transsion.home.preload.c.b(arrayList);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j2() {
        int iB1 = B1();
        if (iB1 >= 0) {
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            com.transsion.home.adapter.trending.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            if (iB1 < bVar.getData().size()) {
                com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mAdapter");
                    bVar3 = null;
                }
                bVar3.getData().remove(iB1);
                com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
                if (bVar4 == null) {
                    Intrinsics.z("mAdapter");
                } else {
                    bVar2 = bVar4;
                }
                bVar2.notifyItemRemoved(iB1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(TrendingFragment trendingFragment, List list, boolean z10) {
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        bVar.n1(list);
        trendingFragment.W1(null);
        q1(trendingFragment, z10, 0, 2, null);
    }

    private final List k2(List feedsList) {
        ArrayList arrayList = new ArrayList();
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        List<Object> data = bVar.getData();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : data) {
            if (((OperateItem) obj).getFeedsSubject() != null) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt.v(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Subject feedsSubject = ((OperateItem) it.next()).getFeedsSubject();
            arrayList3.add(feedsSubject != null ? feedsSubject.getSubjectId() : null);
        }
        Iterator it2 = feedsList.iterator();
        while (it2.hasNext()) {
            TrendingRespItem trendingRespItem = (TrendingRespItem) it2.next();
            if (trendingRespItem.getSubject() != null) {
                Subject subject = trendingRespItem.getSubject();
                if (arrayList3.contains(subject != null ? subject.getSubjectId() : null)) {
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    Subject subject2 = trendingRespItem.getSubject();
                    String title = subject2 != null ? subject2.getTitle() : null;
                    Subject subject3 = trendingRespItem.getSubject();
                    lg.a.C0828a.f(c0828a, "Trending", "find same item title..." + title + " id  " + (subject3 != null ? subject3.getSubjectId() : null), false, 4, null);
                }
            }
            f1(arrayList, trendingRespItem);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(TrendingFragment trendingFragment, Function1 function1, MainOperateData mainOperateData) {
        HashMap mapG;
        List<OperateItem> items;
        lg.a.C0828a.f(lg.a.f68839a, "lgx", "observe1 fragment:" + trendingFragment, false, 4, null);
        hj.b logViewConfig = trendingFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterCache", String.valueOf((mainOperateData == null || (items = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items.size())));
        }
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() == 0) {
            List<OperateItem> items2 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items2 != null && !items2.isEmpty()) {
                trendingFragment.operatingResp = mainOperateData;
                function1.invoke(Boolean.TRUE);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l2(int position) {
        HashMap mapG;
        HashMap mapG2;
        String str;
        Integer numV;
        hj.b logViewConfig = getLogViewConfig();
        int iIntValue = (logViewConfig == null || (mapG2 = logViewConfig.g()) == null || (str = (String) mapG2.get("scrollPosition")) == null || (numV = StringsKt.v(str)) == null) ? 0 : numV.intValue();
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
            return;
        }
        mapG.put("scrollPosition", String.valueOf(RangesKt.f(iIntValue, position)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit m1(TrendingFragment trendingFragment, Function1 function1, MainOperateData mainOperateData) {
        List<OperateItem> items;
        gl.z zVar;
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        HashMap mapG;
        List<OperateItem> items2;
        List<OperateItem> items3;
        List<OperateItem> items4;
        List<OperateItem> items5;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "lgx", "observe2 fragment:" + trendingFragment, false, 4, null);
        MainOperateData mainOperateData2 = (MainOperateData) PreloadTrendingData.f45886n.a().J().f();
        c0828a.c("PreloadTrending", "operating preload cache " + ((mainOperateData2 == null || (items5 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items5.size())) + "  net:" + ((mainOperateData == null || (items4 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items4.size())), true);
        hj.b logViewConfig = trendingFragment.getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("enterNet", "cache:" + ((mainOperateData2 == null || (items3 = mainOperateData2.getItems()) == null) ? null : Integer.valueOf(items3.size())) + " net:" + ((mainOperateData == null || (items2 = mainOperateData.getItems()) == null) ? null : Integer.valueOf(items2.size())));
        }
        List<OperateItem> items6 = mainOperateData != null ? mainOperateData.getItems() : null;
        if (items6 != null && !items6.isEmpty()) {
            trendingFragment.operatingResp = mainOperateData;
        } else if (trendingFragment.operatingResp == null) {
            trendingFragment.operatingResp = mainOperateData2;
        }
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0 && ((zVar = (gl.z) trendingFragment.getMViewBinding()) == null || (customSwipeRefreshLayout = zVar.f63874e) == null || !customSwipeRefreshLayout.isRefreshing())) {
            List<OperateItem> items7 = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items7 == null || items7.isEmpty()) {
                return Unit.f67061a;
            }
        }
        MainOperateData mainOperateData3 = trendingFragment.operatingResp;
        if (mainOperateData3 == null || (items = mainOperateData3.getItems()) == null || !(!items.isEmpty())) {
            trendingFragment.b2();
            q1(trendingFragment, false, 0, 3, null);
        } else {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f67061a;
    }

    private final void n1() {
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit n2(TrendingFragment trendingFragment, String state) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        Intrinsics.h(state, "state");
        gl.z zVar = (gl.z) trendingFragment.getMViewBinding();
        if (zVar != null && (customSwipeRefreshLayout = zVar.f63874e) != null) {
            customSwipeRefreshLayout.setCurrentState(state);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IFissionProvider o1() {
        return (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void o2(float alpha) {
        View view;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (view = zVar.f63875f) == null) {
            return;
        }
        view.setAlpha(alpha);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1(final boolean hasTopBanner, final int retryCount) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        View view;
        CustomSwipeRefreshLayout customSwipeRefreshLayout3;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (customSwipeRefreshLayout = zVar.f63874e) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = customSwipeRefreshLayout.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            if (retryCount < 2) {
                customSwipeRefreshLayout.post(new Runnable() { // from class: com.transsion.home.fragment.tab.t1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrendingFragment.r1(this.f45499a, hasTopBanner, retryCount);
                    }
                });
                return;
            }
            return;
        }
        if (hasTopBanner) {
            layoutParams2.topMargin = 0;
            gl.z zVar2 = (gl.z) getMViewBinding();
            if (zVar2 != null && (customSwipeRefreshLayout3 = zVar2.f63874e) != null) {
                int i11 = this.mHeaderBgHeight;
                customSwipeRefreshLayout3.setProgressViewOffset(false, i11, com.blankj.utilcode.util.a0.a(50.0f) + i11);
            }
            o2(0.0f);
            b0(true);
            return;
        }
        gl.z zVar3 = (gl.z) getMViewBinding();
        int height = (zVar3 == null || (view = zVar3.f63875f) == null) ? 0 : view.getHeight();
        if (height <= 0) {
            height = this.mHeaderBgHeight;
        }
        layoutParams2.topMargin = height;
        gl.z zVar4 = (gl.z) getMViewBinding();
        if (zVar4 != null && (customSwipeRefreshLayout2 = zVar4.f63874e) != null) {
            customSwipeRefreshLayout2.setProgressViewOffset(false, 0, com.blankj.utilcode.util.a0.a(50.0f));
        }
        o2(1.0f);
        b0(false);
    }

    private final void p2() {
        this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.k1
            @Override // java.lang.Runnable
            public final void run() {
                TrendingFragment.q2(this.f45463a);
            }
        }, 200L);
    }

    static /* synthetic */ void q1(TrendingFragment trendingFragment, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = trendingFragment.I1();
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        trendingFragment.p1(z10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q2(TrendingFragment trendingFragment) {
        if (trendingFragment.isDetached() || !trendingFragment.isAdded() || trendingFragment.getContext() == null) {
            return;
        }
        trendingFragment.hideProgress();
        Context contextRequireContext = trendingFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View viewT1 = trendingFragment.t1(contextRequireContext);
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        bVar.Y0(viewT1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r1(TrendingFragment trendingFragment, boolean z10, int i11) {
        if (trendingFragment.isAdded()) {
            trendingFragment.p1(z10, i11 + 1);
        }
    }

    private final void r2(TrendingRespData baseBean, boolean isRefresh) {
        String nextPage;
        List<TrendingRespItem> list;
        List<TrendingRespItem> list2;
        Integer perPage;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "PreloadTrending", "updateTrendingList baseBean.data=" + baseBean, false, 4, null);
        com.transsion.home.adapter.trending.b bVar = null;
        if (baseBean == null) {
            MainOperateData mainOperateData = this.operatingResp;
            List<OperateItem> items = mainOperateData != null ? mainOperateData.getItems() : null;
            if (items == null || items.isEmpty()) {
                p2();
            }
            com.transsion.home.adapter.trending.b bVar2 = this.mAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mAdapter");
                bVar2 = null;
            }
            if (bVar2.h0().r()) {
                com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
                if (bVar3 == null) {
                    Intrinsics.z("mAdapter");
                } else {
                    bVar = bVar3;
                }
                bVar.h0().v();
                return;
            }
            return;
        }
        hideProgress();
        List<TrendingRespItem> items2 = baseBean.getItems();
        lg.a.C0828a.f(c0828a, "TrendingFragment", "updateTrendingList subjectBean " + (items2 != null ? Integer.valueOf(items2.size()) : null), false, 4, null);
        Pager pager = baseBean.getPager();
        this.mPerPage = (pager == null || (perPage = pager.getPerPage()) == null) ? this.mPerPage : perPage.intValue();
        Pager pager2 = baseBean.getPager();
        if (pager2 == null || (nextPage = pager2.getNextPage()) == null) {
            nextPage = "1";
        }
        this.nextPage = nextPage;
        List<TrendingRespItem> items3 = baseBean.getItems();
        if (isRefresh && (list2 = items3) != null && !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator<TrendingRespItem> it = items3.iterator();
            while (it.hasNext()) {
                f1(arrayList, it.next());
            }
            com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
            if (bVar4 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar = bVar4;
            }
            bVar.n1(arrayList);
            return;
        }
        com.transsion.home.adapter.trending.b bVar5 = this.mAdapter;
        if (bVar5 == null) {
            Intrinsics.z("mAdapter");
        } else {
            bVar = bVar5;
        }
        if (bVar.getData().size() == 0 && ((list = items3) == null || list.isEmpty())) {
            showEmpty();
        } else {
            if (items3 == null) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.h1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrendingFragment.s2(this.f45443a);
                    }
                }, 200L);
                return;
            }
            final List listK2 = k2(items3);
            com.transsion.home.preload.c.a(getContext(), listK2);
            this.mHandler.postDelayed(new Runnable() { // from class: com.transsion.home.fragment.tab.i1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingFragment.t2(this.f45449a, listK2);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s1(TrendingFragment trendingFragment, DefaultView defaultView, View view) {
        Z1(trendingFragment, false, 1, null);
        defaultView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s2(TrendingFragment trendingFragment) {
        com.transsion.home.adapter.trending.b bVar = trendingFragment.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        bVar.h0().v();
    }

    private final void showEmpty() {
        hideProgress();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        View emptyView = getEmptyView(contextRequireContext);
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        bVar.Y0(emptyView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void showProgress() {
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

    private final View t1(Context context) {
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(context);
        this.mNoNetworkView = noNetworkBigView;
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.tab.m1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingFragment.u1(this.f45474a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.tab.n1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TrendingFragment.v1(this.f45478a);
            }
        });
        com.tn.lib.view.r.a(getPageName());
        return noNetworkBigView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t2(TrendingFragment trendingFragment, List list) {
        if (trendingFragment.getContext() == null) {
            return;
        }
        com.transsion.home.adapter.trending.b bVar = null;
        if (list.isEmpty()) {
            com.transsion.home.adapter.trending.b bVar2 = trendingFragment.mAdapter;
            if (bVar2 == null) {
                Intrinsics.z("mAdapter");
                bVar2 = null;
            }
            r6.f.u(bVar2.h0(), false, 1, null);
            return;
        }
        com.transsion.home.adapter.trending.b bVar3 = trendingFragment.mAdapter;
        if (bVar3 == null) {
            Intrinsics.z("mAdapter");
            bVar3 = null;
        }
        bVar3.q(list);
        com.transsion.home.adapter.trending.b bVar4 = trendingFragment.mAdapter;
        if (bVar4 == null) {
            Intrinsics.z("mAdapter");
            bVar4 = null;
        }
        if (bVar4.h0().r()) {
            com.transsion.home.adapter.trending.b bVar5 = trendingFragment.mAdapter;
            if (bVar5 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar = bVar5;
            }
            bVar.h0().s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(TrendingFragment trendingFragment) {
        Z1(trendingFragment, false, 1, null);
        com.tn.lib.view.r.b(trendingFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(TrendingFragment trendingFragment) {
        com.tn.lib.view.r.c(trendingFragment.getPageName());
        return Unit.f67061a;
    }

    private final String w1() {
        return ay.a.f16171a.b();
    }

    private final IFissionProvider x1() {
        return (IFissionProvider) this.fissionProvider.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final float y1() {
        View view;
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar == null || (view = zVar.f63875f) == null) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    private final HomePreferencesViewModel z1() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    /* JADX INFO: renamed from: D1, reason: from getter */
    public final hl.c getPostListReport() {
        return this.postListReport;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: E1, reason: merged with bridge method [inline-methods] */
    public gl.z getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        KeyEventDispatcher.Component activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.home.preload.MainXMLPreload");
        com.transsion.home.preload.b xmlPreload = ((com.transsion.home.preload.a) activity).getXmlPreload();
        Boolean boolValueOf = xmlPreload != null ? Boolean.valueOf(xmlPreload.e()) : null;
        View viewF = xmlPreload != null ? xmlPreload.f() : null;
        if (viewF == null || !Intrinsics.c(boolValueOf, Boolean.FALSE)) {
            gl.z zVarC = gl.z.c(inflater);
            Intrinsics.g(zVarC, "inflate(...)");
            return zVarC;
        }
        lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "postlist root ", false, 4, null);
        gl.z zVarA = gl.z.a(viewF);
        Intrinsics.g(zVarA, "bind(...)");
        return zVarA;
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void c0() {
        String version;
        super.c0();
        BiddingListManager v3ListManager = getV3ListManager();
        if (v3ListManager != null) {
            v3ListManager.C(true);
        }
        this.nextPage = "1";
        Context context = getContext();
        if (context != null) {
            PreloadTrendingData preloadTrendingDataA = PreloadTrendingData.f45886n.a();
            MainOperateData mainOperateData = this.operatingResp;
            if (mainOperateData == null || (version = mainOperateData.getVersion()) == null) {
                version = "";
            }
            if (preloadTrendingDataA.X(context, version)) {
                return;
            }
            hideProgress();
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

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public String g0() {
        return w1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h2() {
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
            customSwipeRefreshLayout.post(new Runnable() { // from class: com.transsion.home.fragment.tab.r1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingFragment.i2(this.f45491a);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        CustomSwipeRefreshLayout customSwipeRefreshLayout;
        CustomSwipeRefreshLayout customSwipeRefreshLayout2;
        View view2;
        ViewGroup.LayoutParams layoutParams;
        RecyclerView recyclerView;
        ViewTreeObserver viewTreeObserver;
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        TrendingViewModel trendingViewModel = this.mPostListModel;
        if (trendingViewModel != null) {
            trendingViewModel.N(getPageName());
        }
        M1();
        AppStartReport appStartReport = AppStartReport.f54517a;
        appStartReport.l("trending_list");
        initViewModel();
        appStartReport.l("trending_vm");
        setNetListener(new h());
        gl.z zVar = (gl.z) getMViewBinding();
        if (zVar != null && (recyclerView = zVar.f63873d) != null && (viewTreeObserver = recyclerView.getViewTreeObserver()) != null) {
            viewTreeObserver.addOnPreDrawListener(new i());
        }
        this.mLauncher = registerForActivityResult(new f.h(), new androidx.activity.result.a() { // from class: com.transsion.home.fragment.tab.u0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                TrendingFragment.T1(this.f45503a, (Map) obj);
            }
        });
        g1();
        this.mHeaderBgHeight = h0();
        gl.z zVar2 = (gl.z) getMViewBinding();
        if (zVar2 != null && (view2 = zVar2.f63875f) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = this.mHeaderBgHeight;
        }
        gl.z zVar3 = (gl.z) getMViewBinding();
        ViewGroup.LayoutParams layoutParams2 = (zVar3 == null || (customSwipeRefreshLayout2 = zVar3.f63874e) == null) ? null : customSwipeRefreshLayout2.getLayoutParams();
        FrameLayout.LayoutParams layoutParams3 = layoutParams2 instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams2 : null;
        if (layoutParams3 != null) {
            layoutParams3.topMargin = this.mHeaderBgHeight;
            gl.z zVar4 = (gl.z) getMViewBinding();
            if (zVar4 != null && (customSwipeRefreshLayout = zVar4.f63874e) != null) {
                customSwipeRefreshLayout.setLayoutParams(layoutParams3);
            }
        }
        if (savedInstanceState != null && savedInstanceState.getBoolean("operate_items", false)) {
            lg.a.C0828a.f(lg.a.f68839a, "lgx", "get save instance", false, 4, null);
            List listL = PreloadTrendingData.f45886n.a().L();
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            bVar.n1(listL);
            q1(this, J1(listL), 0, 2, null);
        }
        initAd();
        appStartReport.l("trending_view_init");
    }

    /* JADX WARN: Code duplicated, block: B:22:0x009e  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment
    public void l0(final int lastAdPosition, BiddingNativeManager wrapperNativeManager) {
        String value;
        RecyclerView recyclerView;
        Intrinsics.h(wrapperNativeManager, "wrapperNativeManager");
        if (wrapperNativeManager != null) {
            final OperateItem operateItem = new OperateItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, Integer.MAX_VALUE, null);
            operateItem.setNonAdDelegate(wrapperNativeManager);
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            com.transsion.home.adapter.trending.b bVar2 = null;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            final int size = bVar.getData().size();
            com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.z("mAdapter");
                bVar3 = null;
            }
            if (!bVar3.getIsGridTrendingAdapter()) {
                value = PostItemType.TRENDING_NATIVE_AD.getValue();
            } else if (1 > lastAdPosition || lastAdPosition >= size) {
                value = PostItemType.SUBJECT.getValue();
            } else {
                com.transsion.home.adapter.trending.b bVar4 = this.mAdapter;
                if (bVar4 == null) {
                    Intrinsics.z("mAdapter");
                } else {
                    bVar2 = bVar4;
                }
                if (Intrinsics.c(((OperateItem) bVar2.getData().get(lastAdPosition)).getType(), PostItemType.SUBJECT.getValue())) {
                    value = PostItemType.SUBJECT.getValue();
                } else {
                    value = PostItemType.TRENDING_NATIVE_AD.getValue();
                }
            }
            operateItem.setType(value);
            if (Intrinsics.c(operateItem.getType(), PostItemType.SUBJECT.getValue())) {
                BiddingListManager v3ListManager = getV3ListManager();
                if (v3ListManager != null) {
                    v3ListManager.C(false);
                    return;
                }
                return;
            }
            gl.z zVar = (gl.z) getMViewBinding();
            if (zVar == null || (recyclerView = zVar.f63873d) == null) {
                return;
            }
            recyclerView.post(new Runnable() { // from class: com.transsion.home.fragment.tab.b1
                @Override // java.lang.Runnable
                public final void run() {
                    TrendingFragment.f2(lastAdPosition, size, this, operateItem);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        List<OperateItem> items;
        MainOperateData mainOperateData = this.operatingResp;
        if (mainOperateData == null || (items = mainOperateData.getItems()) == null || !(!items.isEmpty())) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            boolean z10 = this.operatingResp == null;
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            c0828a.c("PreloadTrending", "lazyLoadData " + z10 + " " + bVar.getData().size(), true);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("load1 fragment:");
            sb2.append(this);
            lg.a.C0828a.f(c0828a, "lgx", sb2.toString(), false, 4, null);
            Z1(this, false, 1, null);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logResume() {
        super.logResume();
        IFissionProvider iFissionProviderX1 = x1();
        if (iFissionProviderX1 != null) {
            IFissionProvider.a.a(iFissionProviderX1, false, 1, null);
        }
        IFissionProvider iFissionProviderX2 = x1();
        if (iFissionProviderX2 != null) {
            iFissionProviderX2.c(false);
        }
        rm.e.f74566a.h();
    }

    public final void m2() {
        FragmentActivity activity = getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.setStateCallback(new Function1() { // from class: com.transsion.home.fragment.tab.q1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TrendingFragment.n2(this.f45488a, (String) obj);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        if (bVar.getIsGridTrendingAdapter()) {
            com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar2 = bVar3;
            }
            bVar2.notifyDataSetChanged();
        }
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("onCreate", "true");
        }
        AppStartReport.f54517a.f(new AppStartDotState(AppStartDotState.TRENDING_CREATE, 0L, 2, null));
        super.onCreate(savedInstanceState);
        this.mPostListModel = (TrendingViewModel) new androidx.p009lifecycle.v0(this).a(TrendingViewModel.class);
        m2();
    }

    @Override // com.transsion.home.fragment.tab.BaseHomeSubFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        rl.c.f74547a.a();
        BannerADDataHelper.f44654a.j();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            h1();
        }
        if (isResumed()) {
            if (hidden) {
                logPause();
                n1();
            } else {
                logResume();
                a2();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        n1();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        HashMap mapG;
        super.onResume();
        lg.a.C0828a c0828a = lg.a.f68839a;
        View view = this.mNoNetworkView;
        lg.a.C0828a.f(c0828a, "TrendingFragment", "visible = " + (view != null ? Integer.valueOf(view.getVisibility()) : null) + "  " + this, false, 4, null);
        View view2 = this.mNoNetworkView;
        if (view2 != null && view2.getVisibility() == 0 && nh.m.f70474a.e()) {
            com.transsion.home.adapter.trending.b bVar = this.mAdapter;
            if (bVar == null) {
                Intrinsics.z("mAdapter");
                bVar = null;
            }
            if (bVar.getData().size() < 2) {
                Z1(this, false, 1, null);
            }
        }
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("scrollPosition", "0");
        }
        if (this.isAdLoadDisabled) {
            return;
        }
        c2();
        a2();
        this.isAdLoadDisabled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        com.transsion.home.adapter.trending.b bVar = this.mAdapter;
        com.transsion.home.adapter.trending.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.z("mAdapter");
            bVar = null;
        }
        if (bVar.getData().size() > 0) {
            PreloadTrendingData preloadTrendingDataA = PreloadTrendingData.f45886n.a();
            com.transsion.home.adapter.trending.b bVar3 = this.mAdapter;
            if (bVar3 == null) {
                Intrinsics.z("mAdapter");
            } else {
                bVar2 = bVar3;
            }
            preloadTrendingDataA.b0(bVar2.getData());
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
}
