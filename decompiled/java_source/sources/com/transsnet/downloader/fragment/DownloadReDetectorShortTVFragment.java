package com.transsnet.downloader.fragment;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLFrameLayout;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.ShortTVPlayBean;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.adapter.DownloadShortTvEpListAdapter;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.transsnet.downloader.widget.DownloadInfoExtendView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
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

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 ±\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002²\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\"\u0010!J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b#\u0010!J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0005H\u0002¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0002¢\u0006\u0004\b*\u0010\u0004J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000fH\u0002¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00052\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00052\u0006\u00106\u001a\u00020$H\u0002¢\u0006\u0004\b7\u0010'J\u0019\u0010:\u001a\u00020\u00052\b\u00109\u001a\u0004\u0018\u000108H\u0002¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u00020\u00052\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b<\u00105J/\u0010B\u001a\u00020\u00052\u000e\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=2\u0006\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020$H\u0002¢\u0006\u0004\bB\u0010CJ\u0017\u0010D\u001a\u00020\u00052\u0006\u0010A\u001a\u00020$H\u0002¢\u0006\u0004\bD\u0010'J\u000f\u0010E\u001a\u00020\u0005H\u0002¢\u0006\u0004\bE\u0010\u0004J\u000f\u0010F\u001a\u00020\u0005H\u0002¢\u0006\u0004\bF\u0010\u0004J\u000f\u0010G\u001a\u00020\u0005H\u0002¢\u0006\u0004\bG\u0010\u0004J\u000f\u0010H\u001a\u00020\u0005H\u0002¢\u0006\u0004\bH\u0010\u0004J\u000f\u0010I\u001a\u00020\u001eH\u0002¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u001eH\u0002¢\u0006\u0004\bK\u0010JJ)\u0010P\u001a\u00020\u001e2\u0006\u0010M\u001a\u00020L2\u0006\u0010N\u001a\u00020\u000f2\b\b\u0002\u0010O\u001a\u00020\u0012H\u0002¢\u0006\u0004\bP\u0010QJ\u0011\u0010R\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\bR\u0010JJ\u000f\u0010S\u001a\u00020\u0005H\u0002¢\u0006\u0004\bS\u0010\u0004J\u0017\u0010U\u001a\u00020\u00052\u0006\u0010T\u001a\u00020\u0012H\u0002¢\u0006\u0004\bU\u0010VJ\u0017\u0010W\u001a\u00020\u00052\u0006\u0010T\u001a\u00020\u0012H\u0002¢\u0006\u0004\bW\u0010VJ\u000f\u0010X\u001a\u00020\u0012H\u0002¢\u0006\u0004\bX\u0010\u0014J\u0017\u0010Z\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u0012H\u0002¢\u0006\u0004\bZ\u0010VJ\u0017\u0010[\u001a\u00020\u00052\u0006\u0010Y\u001a\u00020\u0012H\u0002¢\u0006\u0004\b[\u0010VJ\u0017\u0010\\\u001a\u00020\u00052\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b\\\u0010.JQ\u0010d\u001a\u00020\u00052\b\u0010]\u001a\u0004\u0018\u00010\u000f2\u0006\u0010^\u001a\u00020\u000f2\b\u0010_\u001a\u0004\u0018\u00010\u000f2\b\u0010`\u001a\u0004\u0018\u00010\u000f2\b\u0010a\u001a\u0004\u0018\u00010\u000f2\b\u0010b\u001a\u0004\u0018\u00010\u000f2\u0006\u0010c\u001a\u00020\u000fH\u0002¢\u0006\u0004\bd\u0010eR\u0014\u0010h\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010j\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010gR\u001b\u0010p\u001a\u00020k8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u001b\u0010u\u001a\u00020q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010m\u001a\u0004\bs\u0010tR\u001b\u0010z\u001a\u00020v8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bw\u0010m\u001a\u0004\bx\u0010yR\u0016\u0010}\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010gR\u0018\u0010\u0085\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010gR$\u0010\u0089\u0001\u001a\u000f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020>0\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R$\u0010\u008b\u0001\u001a\u000f\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020>0\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0088\u0001R\u0018\u0010\u008d\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010gR\u0018\u0010\u008f\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010gR\u0018\u0010\u0091\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0090\u0001\u0010gR\u0018\u0010^\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0095\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0093\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001a\u0010_\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0093\u0001R\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0093\u0001R\u001a\u0010a\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0093\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u0093\u0001R\u0018\u0010¡\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010|R\u0018\u0010£\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010|R\u0017\u0010¤\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010gR\u0019\u0010¦\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010\u0093\u0001R\u001c\u0010ª\u0001\u001a\u0005\u0018\u00010§\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u0018\u0010¬\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b«\u0001\u0010|R\"\u0010°\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00ad\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¯\u0001¨\u0006³\u0001"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorShortTVFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lpy/f0;", "<init>", "()V", "", "initViewData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "A1", "(Landroid/view/LayoutInflater;)Lpy/f0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", TmcConstants.NAVIGATION_ON_START, "onDestroy", "b2", "initHistory", "initView", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "V1", "(Landroid/view/View;)V", "T1", "Y1", "", RequestParameters.POSITION, "U1", "(I)V", "p1", "loadData", "l2", "", "totalSize", "X1", "(J)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "Z1", "(Ljava/lang/String;)V", "Lcom/transsnet/downloader/bean/DownloadListBean;", "listBean", "n2", "(Lcom/transsnet/downloader/bean/DownloadListBean;)V", "totalEpisode", "m1", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "S1", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "n1", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "start", TtmlNode.END, "o2", "(Ljava/util/List;II)V", "o1", "showNotNetError", "k2", "showLoading", "j2", "w1", "()Landroid/view/View;", "v1", "Landroid/content/Context;", "context", "desText", "showRightBtn", "s1", "(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;", "r1", "W1", "selectAll", "c2", "(Z)V", "e2", "P1", "isSelected", "g2", "f2", "Q1", "pageName", "pageFrom", "subjectId", "postId", "ops", "resourceId", "taskId", "q1", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "l", "I", "padding", "m", "itemHeight", "Lcom/transsnet/downloader/manager/StartDownloadHelper;", "n", "Lkotlin/Lazy;", "z1", "()Lcom/transsnet/downloader/manager/StartDownloadHelper;", "startDownloadHelper", "Lcom/transsion/baselib/db/video/ShortTVPlayDao;", "o", "x1", "()Lcom/transsion/baselib/db/video/ShortTVPlayDao;", "shortTVPlayDao", "Lry/f;", TtmlNode.TAG_P, "y1", "()Lry/f;", "shortTVReporter", CampaignEx.JSON_KEY_AD_Q, "Z", "isContentDataRequested", "Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter;", "shortTVEpAdapter", "s", "curUnlockAllCount", "t", "perUnlockCount", "", TmcStartParams.KEY_URL_SHORT, "Ljava/util/Map;", "unlockDownloadLst", "v", "inDownloadStatusMap", "w", "startPosition", "x", "endPosition", "y", "curDownloadTabPosition", "z", "Ljava/lang/String;", "A", "lastPageFrom", "Lcom/transsion/moviedetailapi/bean/Subject;", "B", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "C", "D", "groupId", "E", "F", "moduleName", "G", "scroll2Download", "H", "isSelectAll", "unableSize", "J", "formatSize", "Lcom/transsion/share/share/ShareDialogFragment;", "K", "Lcom/transsion/share/share/ShareDialogFragment;", "shareDialog", "L", "isRequestingData", "Lkotlin/Function0;", "M", "Lkotlin/jvm/functions/Function0;", "selectAllCallback", "N", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public class DownloadReDetectorShortTVFragment extends DownloadReDetectorBaseFragment<py.f0> {

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private String groupId;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private boolean scroll2Download;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean isSelectAll;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private int unableSize;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private ShareDialogFragment shareDialog;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private boolean isRequestingData;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private Function0 selectAllCallback;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isContentDataRequested;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private DownloadShortTvEpListAdapter shortTVEpAdapter;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int curUnlockAllCount;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private int perUnlockCount;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private int curDownloadTabPosition;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final int padding = com.blankj.utilcode.util.a0.a(12.0f);

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final int itemHeight = (com.blankj.utilcode.util.y.e() - com.blankj.utilcode.util.a0.a(24.0f)) / 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy startDownloadHelper = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.z3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadReDetectorShortTVFragment.m2();
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTVPlayDao = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.a4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadReDetectorShortTVFragment.h2();
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTVReporter = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.b4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadReDetectorShortTVFragment.i2();
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Map unlockDownloadLst = new LinkedHashMap();

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Map inDownloadStatusMap = new LinkedHashMap();

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int startPosition = 1;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private int endPosition = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private String pageFrom = "";

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private String lastPageFrom = "";

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private String formatSize = "";

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorShortTVFragment a(String str, String str2, Subject subject, String str3, String str4, String str5, String str6, boolean z10) {
            DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment = new DownloadReDetectorShortTVFragment();
            downloadReDetectorShortTVFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str), TuplesKt.a("extra_last_page_from", str2), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_subject_id", str3), TuplesKt.a("extra_group_id", str4), TuplesKt.a("extra_ops", str5), TuplesKt.a("extra_module_name", str6), TuplesKt.a("extra_download_scroll_to_download", Boolean.valueOf(z10))));
            return downloadReDetectorShortTVFragment;
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            DownloadReDetectorShortTVFragment.this.S1(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public static final class c extends RecyclerView.r {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            py.f0 f0Var;
            TabLayout tabLayout;
            TabLayout.Tab tabAt;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i11, i12);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
            int iFindFirstVisibleItemPosition = ((gridLayoutManager != null ? gridLayoutManager.findFirstVisibleItemPosition() : 0) + 24) / 25;
            if (iFindFirstVisibleItemPosition == DownloadReDetectorShortTVFragment.this.curDownloadTabPosition || (f0Var = (py.f0) DownloadReDetectorShortTVFragment.this.getMViewBinding()) == null || (tabLayout = f0Var.f72705t) == null || (tabAt = tabLayout.getTabAt(iFindFirstVisibleItemPosition)) == null) {
                return;
            }
            tabAt.select();
        }
    }

    public static final class d implements com.transsion.share.share.a {
        d() {
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
        }

        @Override // com.transsion.share.share.a
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
        }

        @Override // com.transsion.share.share.a
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void e(String str) {
            com.transsion.share.share.a.C0656a.c(this, str);
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f58999a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58999a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f58999a;
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
            this.f58999a.invoke(obj);
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$initHistory$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVFragment$initHistory$1", f = "DownloadReDetectorShortTVFragment.kt", l = {226, 227}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadReDetectorShortTVFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0054 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment;
            kotlinx.coroutines.a2 a2VarC;
            DownloadReDetectorShortTVFragment$initHistory$1$1$1 downloadReDetectorShortTVFragment$initHistory$1$1$1;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                String str = DownloadReDetectorShortTVFragment.this.subjectId;
                if (str != null) {
                    downloadReDetectorShortTVFragment = DownloadReDetectorShortTVFragment.this;
                    ShortTVPlayDao shortTVPlayDaoX1 = downloadReDetectorShortTVFragment.x1();
                    this.L$0 = downloadReDetectorShortTVFragment;
                    this.label = 1;
                    obj = shortTVPlayDaoX1.e(str, this);
                    if (obj == objF) {
                        return objF;
                    }
                    a2VarC = kotlinx.coroutines.y0.c();
                    downloadReDetectorShortTVFragment$initHistory$1$1$1 = new DownloadReDetectorShortTVFragment$initHistory$1$1$1(downloadReDetectorShortTVFragment, (ShortTVPlayBean) obj, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (kotlinx.coroutines.i.g(a2VarC, downloadReDetectorShortTVFragment$initHistory$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 1) {
                downloadReDetectorShortTVFragment = (DownloadReDetectorShortTVFragment) this.L$0;
                ResultKt.b(obj);
                a2VarC = kotlinx.coroutines.y0.c();
                downloadReDetectorShortTVFragment$initHistory$1$1$1 = new DownloadReDetectorShortTVFragment$initHistory$1$1$1(downloadReDetectorShortTVFragment, (ShortTVPlayBean) obj, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, downloadReDetectorShortTVFragment$initHistory$1$1$1, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        downloadReDetectorShortTVFragment.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        Intrinsics.e(view);
        downloadReDetectorShortTVFragment.V1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        Intrinsics.e(view);
        downloadReDetectorShortTVFragment.T1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        Intrinsics.e(view);
        downloadReDetectorShortTVFragment.Y1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        downloadReDetectorShortTVFragment.W1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        downloadReDetectorShortTVFragment.W1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void H1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, View view) {
        androidx.p009lifecycle.b0 b0VarG;
        Long l11;
        androidx.p009lifecycle.b0 b0VarF;
        FrameLayout frameLayout;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        py.f0 f0Var = (py.f0) downloadReDetectorShortTVFragment.getMViewBinding();
        if (f0Var != null && (frameLayout = f0Var.f72692g) != null && frameLayout.getVisibility() == 0) {
            lg.a.f68839a.p("download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorShortTVFragment.getViewModel();
        Map map = (viewModel == null || (b0VarF = viewModel.F()) == null) ? null : (Map) b0VarF.f();
        if (map == null || map.isEmpty()) {
            uh.b.f76753a.e(Utils.a().getString(com.transsnet.downloader.R$string.download_short_tv_unselected_toast));
        } else {
            DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorShortTVFragment.getViewModel();
            downloadReDetectorShortTVFragment.Q1((viewModel2 == null || (b0VarG = viewModel2.G()) == null || (l11 = (Long) b0VarG.f()) == null) ? 0L : l11.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, int i11) {
        downloadReDetectorShortTVFragment.U1(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, DownloadListBean downloadListBean) {
        String title;
        List data;
        downloadReDetectorShortTVFragment.j2();
        if (downloadListBean == null) {
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = downloadReDetectorShortTVFragment.shortTVEpAdapter;
            if (downloadShortTvEpListAdapter != null && (data = downloadShortTvEpListAdapter.getData()) != null && data.size() == 0) {
                downloadReDetectorShortTVFragment.k2();
            }
            return Unit.f67061a;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = downloadReDetectorShortTVFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        List<DownloadItem> items = downloadListBean.getItems();
        lg.a.C0828a.f(c0828a, tag, "get data from  net, size = " + (items != null ? Integer.valueOf(items.size()) : null), false, 4, null);
        Integer totalEpisode = downloadListBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            Subject subject = downloadReDetectorShortTVFragment.subject;
            downloadListBean.setTotalEpisode(Integer.valueOf(subject != null ? subject.getTotalEpisode() : 0));
        }
        downloadReDetectorShortTVFragment.n2(downloadListBean);
        DownloadUtil downloadUtil = DownloadUtil.f59900a;
        Subject subject2 = downloadReDetectorShortTVFragment.subject;
        String str = downloadReDetectorShortTVFragment.groupId;
        String str2 = downloadReDetectorShortTVFragment.pageFrom;
        String str3 = downloadReDetectorShortTVFragment.lastPageFrom;
        String str4 = downloadReDetectorShortTVFragment.ops;
        if (subject2 == null || (title = subject2.getTitle()) == null) {
            title = "";
        }
        downloadReDetectorShortTVFragment.o2(downloadUtil.x(downloadListBean, subject2, (128 & 4) != 0 ? null : str, (128 & 8) != 0 ? null : str2, (128 & 16) != 0 ? null : str3, (128 & 32) != 0 ? null : str4, (128 & 64) != 0 ? null : title, (128 & 128) != 0 ? null : null), downloadListBean.getStartPosition(), downloadListBean.getEndPosition());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, Map map) {
        downloadReDetectorShortTVFragment.p1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, Long l11) {
        Intrinsics.e(l11);
        downloadReDetectorShortTVFragment.X1(l11.longValue());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, String str) {
        Intrinsics.e(str);
        downloadReDetectorShortTVFragment.Z1(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(Integer num) {
        int i11;
        if (num != null && num.intValue() == 0) {
            i11 = R$string.failed_toast;
        } else {
            i11 = (num != null && num.intValue() == 2) ? com.transsnet.downloader.R$string.short_tv_favorite_remove_toast : com.transsnet.downloader.R$string.short_tv_favorite_toast;
        }
        uh.b.f76753a.d(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit O1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, uy.c value) {
        BLImageView bLImageView;
        ShortTVFavInfo shortTVFavInfo;
        Intrinsics.h(value, "value");
        try {
            if (!TextUtils.equals(value.c(), downloadReDetectorShortTVFragment.subjectId)) {
                return Unit.f67061a;
            }
            Subject subject = downloadReDetectorShortTVFragment.subject;
            if (subject != null && (shortTVFavInfo = subject.getShortTVFavInfo()) != null) {
                shortTVFavInfo.setFavoriteNum(value.b());
                shortTVFavInfo.setHasFavorite(value.a());
            }
            py.f0 f0Var = (py.f0) downloadReDetectorShortTVFragment.getMViewBinding();
            if (f0Var != null && (bLImageView = f0Var.f72699n) != null) {
                bLImageView.setSelected(value.a());
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    private final boolean P1() {
        return this.unableSize < this.curUnlockAllCount;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00f4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [T, com.transsion.baselib.db.download.DownloadBean] */
    private final void Q1(long totalSize) {
        ProgressBar progressBar;
        BLFrameLayout bLFrameLayout;
        ProgressBar progressBar2;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        View view;
        androidx.p009lifecycle.b0 b0VarF;
        Map map;
        DownloadBean downloadBean;
        if (u0(totalSize)) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarF = viewModel.F()) != null && (map = (Map) b0VarF.f()) != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (this.unlockDownloadLst.containsKey(entry.getKey()) && (downloadBean = (DownloadBean) this.unlockDownloadLst.get(entry.getKey())) != null) {
                    arrayList.add(downloadBean);
                }
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "onDownload ", false, 4, null);
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (view = f0Var.F) != null) {
            jg.c.k(view);
        }
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 != null && (appCompatImageView = f0Var2.f72695j) != null) {
            jg.c.g(appCompatImageView);
        }
        py.f0 f0Var3 = (py.f0) getMViewBinding();
        if (f0Var3 != null && (appCompatTextView = f0Var3.f72707v) != null) {
            jg.c.g(appCompatTextView);
        }
        py.f0 f0Var4 = (py.f0) getMViewBinding();
        if (f0Var4 != null && (progressBar2 = f0Var4.f72701p) != null) {
            jg.c.k(progressBar2);
        }
        py.f0 f0Var5 = (py.f0) getMViewBinding();
        if (f0Var5 != null && (bLFrameLayout = f0Var5.f72691f) != null) {
            jg.c.k(bLFrameLayout);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        int i11 = 0;
        for (Object obj : arrayList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            ?? r11 = (DownloadBean) obj;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            r11.setTaskId(string);
            if (objectRef.element != 0) {
                int ep2 = r11.getEp();
                DownloadBean downloadBean2 = (DownloadBean) objectRef.element;
                if (ep2 < (downloadBean2 != null ? downloadBean2.getEp() : 0)) {
                    objectRef.element = r11;
                }
            } else {
                objectRef.element = r11;
            }
            q1(this.pageFrom, this.lastPageFrom, r11.getSubjectId(), r11.getPostId(), this.ops, r11.getResourceId(), string);
            lg.a.f68839a.p("download", new String[]{"剧集多资源，下载点击，开始下载: subjectId = " + r11.getSubjectId() + ",resourceId = " + r11.getResourceId() + ", name = " + r11.getTotalTitleName()}, true);
            i11 = i12;
        }
        p0().D(arrayList);
        z1().f(arrayList);
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new DownloadReDetectorShortTVFragment$onDownload$3(this, null), 3, null);
        long size = ((long) ((arrayList.size() / 20) * 100)) + 300;
        py.f0 f0Var6 = (py.f0) getMViewBinding();
        if (f0Var6 == null || (progressBar = f0Var6.f72701p) == null) {
            return;
        }
        progressBar.postDelayed(new Runnable() { // from class: com.transsnet.downloader.fragment.d4
            @Override // java.lang.Runnable
            public final void run() {
                DownloadReDetectorShortTVFragment.R1(arrayList, this, objectRef);
            }
        }, size);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void R1(List list, DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, Ref.ObjectRef objectRef) {
        androidx.p009lifecycle.b0 b0VarI;
        DownloadBean downloadBean;
        androidx.p009lifecycle.b0 b0VarM;
        if (list.isEmpty()) {
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorShortTVFragment.getViewModel();
        if (viewModel != null && (b0VarM = viewModel.m()) != null) {
            b0VarM.q(Boolean.TRUE);
        }
        DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorShortTVFragment.getViewModel();
        if (viewModel2 != null && (b0VarI = viewModel2.i()) != null) {
            int size = list.size();
            String str = downloadReDetectorShortTVFragment.formatSize;
            T t11 = objectRef.element;
            if (t11 != 0) {
                Intrinsics.e(t11);
                downloadBean = (DownloadBean) t11;
            } else {
                downloadBean = (DownloadBean) list.get(0);
            }
            b0VarI.q(new com.transsnet.downloader.viewmodel.b(size, str, downloadBean, false));
        }
        downloadReDetectorShortTVFragment.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void S1(TabLayout.Tab tab) {
        RecyclerView recyclerView;
        py.f0 f0Var;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (tab == null || !tab.isSelected()) {
            return;
        }
        this.curDownloadTabPosition = tab.getPosition();
        int position = tab.getPosition() * 25;
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        RecyclerView.m layoutManager = (f0Var2 == null || (recyclerView3 = f0Var2.f72703r) == null) ? null : recyclerView3.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        if (gridLayoutManager != null) {
            int iFindFirstCompletelyVisibleItemPosition = ((position - gridLayoutManager.findFirstCompletelyVisibleItemPosition()) / 5) * this.itemHeight;
            py.f0 f0Var3 = (py.f0) getMViewBinding();
            if (f0Var3 == null || (recyclerView = f0Var3.f72703r) == null || !recyclerView.canScrollVertically(iFindFirstCompletelyVisibleItemPosition) || (f0Var = (py.f0) getMViewBinding()) == null || (recyclerView2 = f0Var.f72703r) == null) {
                return;
            }
            recyclerView2.scrollBy(0, iFindFirstCompletelyVisibleItemPosition);
        }
    }

    private final void T1(View view) {
        ShortTVFavInfo shortTVFavInfo;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        ry.f fVarY1 = y1();
        String str = this.subjectId;
        Subject subject = this.subject;
        fVarY1.e(str, "", (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) ? false : shortTVFavInfo.getHasFavorite(), "minitv_download");
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null) {
            viewModel.f(this.subject);
        }
    }

    private final void U1(int position) {
        androidx.p009lifecycle.b0 b0VarG;
        androidx.p009lifecycle.b0 b0VarG2;
        androidx.p009lifecycle.b0 b0VarG3;
        Long l11;
        Long size;
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.shortTVEpAdapter;
        Intrinsics.e(downloadShortTvEpListAdapter);
        List data = downloadShortTvEpListAdapter.getData();
        if (position >= data.size()) {
            return;
        }
        my.c cVar = (my.c) data.get(position);
        if (cVar.b()) {
            return;
        }
        if (!cVar.c()) {
            if (position == this.curUnlockAllCount) {
                l2();
                return;
            } else {
                uh.b.f76753a.d(com.transsnet.downloader.R$string.unlock_in_order);
                return;
            }
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null) {
            viewModel.L(cVar);
        }
        DownloadBean downloadBean = (DownloadBean) this.unlockDownloadLst.get(Integer.valueOf(position));
        long jLongValue = 0;
        long jLongValue2 = (downloadBean == null || (size = downloadBean.getSize()) == null) ? 0L : size.longValue();
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarG3 = viewModel2.G()) != null && (l11 = (Long) b0VarG3.f()) != null) {
            jLongValue = l11.longValue();
        }
        if (cVar.d()) {
            cVar.g(false);
            DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
            if (viewModel3 != null && (b0VarG2 = viewModel3.G()) != null) {
                b0VarG2.q(Long.valueOf(jLongValue - jLongValue2));
            }
        } else {
            cVar.g(true);
            DownloadResourcesDetectorViewModel viewModel4 = getViewModel();
            if (viewModel4 != null && (b0VarG = viewModel4.G()) != null) {
                b0VarG.q(Long.valueOf(jLongValue + jLongValue2));
            }
        }
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter2 = this.shortTVEpAdapter;
        if (downloadShortTvEpListAdapter2 != null) {
            downloadShortTvEpListAdapter2.notifyItemChanged(position, cVar);
        }
    }

    private final void V1(View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        Navigator navigatorC = TheRouter.c(ls.a.f69034a.b());
        Subject subject = this.subject;
        Navigator.x(navigatorC.K("id", subject != null ? subject.getSubjectId() : null), requireContext(), null, 2, null);
        m0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void W1() {
        AppCompatImageView appCompatImageView;
        if (com.transsion.baseui.util.c.f43504a.a(-912345, 1000L)) {
            return;
        }
        if (!P1()) {
            uh.b.f76753a.d(com.transsnet.downloader.R$string.download_no_options_toast);
            return;
        }
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var == null || (appCompatImageView = f0Var.f72696k) == null) {
            return;
        }
        boolean z10 = !appCompatImageView.isSelected();
        this.isSelectAll = z10;
        c2(z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void X1(long totalSize) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (totalSize <= 0) {
            py.f0 f0Var = (py.f0) getMViewBinding();
            if (f0Var == null || (appCompatTextView2 = f0Var.f72707v) == null) {
                return;
            }
            appCompatTextView2.setText(Utils.a().getString(com.transsnet.downloader.R$string.str_download));
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.v(c0828a, tag, "observe totalSize:" + totalSize, false, 4, null);
        this.formatSize = oh.b.a(totalSize, 1);
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 == null || (appCompatTextView = f0Var2.f72707v) == null) {
            return;
        }
        appCompatTextView.setText(Utils.a().getString(com.transsnet.downloader.R$string.str_download) + " · " + this.formatSize);
    }

    private final void Y1(View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        ry.f.g(y1(), this.subjectId, null, 2, null);
        if (this.shareDialog == null) {
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.SHORT_TV_TYPE;
            String str = this.subjectId;
            String value = ReportType.SUBJECT.getValue();
            Subject subject = this.subject;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, str, "", value, (3328 & 16) != 0 ? "" : subject != null ? subject.getTitle() : null, (3328 & 32) != 0 ? "" : null, (3328 & 64) != 0 ? false : false, (3328 & 128) != 0 ? false : false, (3328 & 256) != 0 ? false : false, "subjectdetail", (3328 & 1024) != 0 ? "" : null, (3328 & 2048) != 0 ? "" : null);
            this.shareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new d());
            }
        }
        try {
            if (isAdded()) {
                Context context = getContext();
                m0();
                ShareDialogFragment shareDialogFragment = this.shareDialog;
                if (shareDialogFragment != null) {
                    shareDialogFragment.K0(context, "share");
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private final void Z1(String type) {
        androidx.p009lifecycle.b0 b0VarF;
        List data;
        List data2;
        List data3;
        androidx.p009lifecycle.b0 b0VarF2;
        List data4;
        List data5;
        List data6;
        int iHashCode = type.hashCode();
        if (iHashCode != -1747705881) {
            if (iHashCode != 229859771) {
                if (iHashCode != 298697238) {
                    return;
                }
                type.equals("ad_cancel");
                return;
            } else if (!type.equals("ad_load_fail")) {
                return;
            }
        } else if (!type.equals("ad_success")) {
            return;
        }
        int i11 = this.endPosition;
        this.startPosition = i11 + 1;
        int i12 = i11 + this.perUnlockCount;
        this.endPosition = i12;
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.shortTVEpAdapter;
        if (i12 > ((downloadShortTvEpListAdapter == null || (data6 = downloadShortTvEpListAdapter.getData()) == null) ? 0 : data6.size())) {
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter2 = this.shortTVEpAdapter;
            this.endPosition = (downloadShortTvEpListAdapter2 == null || (data5 = downloadShortTvEpListAdapter2.getData()) == null) ? 0 : data5.size();
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "广告解锁成功 , 请求新数据， start：" + this.startPosition + ", end:" + this.endPosition, false, 4, null);
        com.transsnet.downloader.util.d0 d0Var = com.transsnet.downloader.util.d0.f59926a;
        String str = this.subjectId;
        if (str == null) {
            str = "";
        }
        d0Var.g(str, this.endPosition);
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter3 = this.shortTVEpAdapter;
        final String string = ((downloadShortTvEpListAdapter3 == null || (data4 = downloadShortTvEpListAdapter3.getData()) == null) ? 0 : data4.size()) - this.curUnlockAllCount <= this.perUnlockCount ? Utils.a().getString(com.transsnet.downloader.R$string.download_short_tv_watch_ad_all) : String.valueOf((this.endPosition - this.startPosition) + 1);
        Intrinsics.e(string);
        new Handler().postDelayed(new Runnable() { // from class: com.transsnet.downloader.fragment.e4
            @Override // java.lang.Runnable
            public final void run() {
                DownloadReDetectorShortTVFragment.a2(string);
            }
        }, 400L);
        StringBuilder sb2 = new StringBuilder();
        int i13 = this.startPosition;
        int i14 = this.endPosition;
        if (i13 <= i14) {
            while (true) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(i13);
                if (i13 == i14) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        ry.f fVarY1 = y1();
        Subject subject = this.subject;
        String string2 = sb2.toString();
        Intrinsics.g(string2, "toString(...)");
        ry.f.i(fVarY1, subject, type, string2, null, 8, null);
        int i15 = this.curUnlockAllCount;
        int i16 = this.endPosition;
        if (i15 < i16) {
            this.curUnlockAllCount = i16;
            DownloadResourcesDetectorViewModel viewModel = getViewModel();
            Map linkedHashMap = (viewModel == null || (b0VarF2 = viewModel.F()) == null) ? null : (Map) b0VarF2.f();
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter4 = this.shortTVEpAdapter;
            int size = (downloadShortTvEpListAdapter4 == null || (data3 = downloadShortTvEpListAdapter4.getData()) == null) ? 0 : data3.size();
            int i17 = this.endPosition;
            if (size >= i17) {
                for (int i18 = this.startPosition - 1; i18 < i17; i18++) {
                    DownloadShortTvEpListAdapter downloadShortTvEpListAdapter5 = this.shortTVEpAdapter;
                    if (i18 < ((downloadShortTvEpListAdapter5 == null || (data2 = downloadShortTvEpListAdapter5.getData()) == null) ? 0 : data2.size())) {
                        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter6 = this.shortTVEpAdapter;
                        my.c cVar = (downloadShortTvEpListAdapter6 == null || (data = downloadShortTvEpListAdapter6.getData()) == null) ? null : (my.c) data.get(i18);
                        if (cVar != null) {
                            if (this.isSelectAll) {
                                cVar.g(true);
                                linkedHashMap.put(Integer.valueOf(i18), cVar);
                            }
                            cVar.f(true);
                            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter7 = this.shortTVEpAdapter;
                            if (downloadShortTvEpListAdapter7 != null) {
                                downloadShortTvEpListAdapter7.notifyItemChanged(i18, cVar);
                            }
                        }
                    }
                }
            }
            DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
            if (viewModel2 != null && (b0VarF = viewModel2.F()) != null) {
                b0VarF.q(linkedHashMap);
            }
        }
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a2(String str) {
        uh.b.f76753a.e(Utils.a().getString(com.transsnet.downloader.R$string.download_short_tv_unlock_success_toast, str));
    }

    private final void b2() {
        BiddingInterstitialManager.Companion companion = BiddingInterstitialManager.f41965w;
        com.transsion.ad.strategy.d dVar = com.transsion.ad.strategy.d.f42231a;
        Subject subject = this.subject;
        companion.a("ShortTvInterstitialScene", dVar.a(subject != null ? subject.getGenre() : null));
        BiddingVideoManager.Companion companion2 = BiddingVideoManager.f42049w;
        Subject subject2 = this.subject;
        companion2.a("ShortTvVideoScene", dVar.a(subject2 != null ? subject2.getGenre() : null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c2(final boolean selectAll) {
        FrameLayout frameLayout;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "selectAll click, selectAll = " + selectAll + " ", false, 4, null);
        this.isSelectAll = selectAll;
        if (!this.isRequestingData) {
            e2(selectAll);
            return;
        }
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (frameLayout = f0Var.f72692g) != null) {
            jg.c.k(frameLayout);
        }
        this.selectAllCallback = new Function0() { // from class: com.transsnet.downloader.fragment.f4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadReDetectorShortTVFragment.d2(this.f59190a, selectAll);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d2(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, boolean z10) {
        downloadReDetectorShortTVFragment.e2(z10);
        downloadReDetectorShortTVFragment.selectAllCallback = null;
        return Unit.f67061a;
    }

    private final void e2(boolean selectAll) {
        if (this.curUnlockAllCount > 30) {
            g2(selectAll);
        } else {
            f2(selectAll);
        }
    }

    private final void f2(boolean isSelected) {
        androidx.p009lifecycle.b0 b0VarG;
        androidx.p009lifecycle.b0 b0VarF;
        DownloadBean downloadBean;
        Long size;
        List data;
        List data2;
        androidx.p009lifecycle.b0 b0VarF2;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        Map linkedHashMap = (viewModel == null || (b0VarF2 = viewModel.F()) == null) ? null : (Map) b0VarF2.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        linkedHashMap.clear();
        int i11 = this.curUnlockAllCount;
        long jLongValue = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.shortTVEpAdapter;
            if (i12 < ((downloadShortTvEpListAdapter == null || (data2 = downloadShortTvEpListAdapter.getData()) == null) ? 0 : data2.size())) {
                DownloadShortTvEpListAdapter downloadShortTvEpListAdapter2 = this.shortTVEpAdapter;
                my.c cVar = (downloadShortTvEpListAdapter2 == null || (data = downloadShortTvEpListAdapter2.getData()) == null) ? null : (my.c) data.get(i12);
                if (this.unlockDownloadLst.containsKey(Integer.valueOf(i12)) && (((downloadBean = (DownloadBean) this.unlockDownloadLst.get(Integer.valueOf(i12))) == null || !downloadBean.isUnable()) && cVar != null)) {
                    cVar.g(isSelected);
                    if (isSelected) {
                        jLongValue += (downloadBean == null || (size = downloadBean.getSize()) == null) ? 0L : size.longValue();
                        linkedHashMap.put(Integer.valueOf(i12), cVar);
                    } else {
                        linkedHashMap.remove(Integer.valueOf(i12));
                    }
                }
            }
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarF = viewModel2.F()) != null) {
            b0VarF.q(linkedHashMap);
        }
        DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
        if (viewModel3 != null && (b0VarG = viewModel3.G()) != null) {
            b0VarG.q(Long.valueOf(jLongValue));
        }
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter3 = this.shortTVEpAdapter;
        if (downloadShortTvEpListAdapter3 != null) {
            downloadShortTvEpListAdapter3.notifyItemRangeChanged(0, this.curUnlockAllCount);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, java.util.LinkedHashMap] */
    private final void g2(boolean isSelected) {
        androidx.p009lifecycle.b0 b0VarF;
        FrameLayout frameLayout;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (frameLayout = f0Var.f72692g) != null) {
            jg.c.k(frameLayout);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        T t11 = (viewModel == null || (b0VarF = viewModel.F()) == null) ? 0 : (Map) b0VarF.f();
        objectRef.element = t11;
        if (t11 == 0) {
            objectRef.element = new LinkedHashMap();
        }
        ((Map) objectRef.element).clear();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new DownloadReDetectorShortTVFragment$selectAllWithSizeMoreThan30$1(this, isSelected, objectRef, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortTVPlayDao h2() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).x1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ry.f i2() {
        return new ry.f();
    }

    private final void initHistory() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        AppBarLayout appBarLayout;
        AppCompatTextView appCompatTextView;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (appCompatTextView = f0Var.C) != null) {
            Subject subject = this.subject;
            appCompatTextView.setText(subject != null ? subject.getTitle() : null);
        }
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 != null && (appBarLayout = f0Var2.f72687b) != null) {
            appBarLayout.setExpanded(!this.scroll2Download);
        }
        py.f0 f0Var3 = (py.f0) getMViewBinding();
        if (f0Var3 != null && (recyclerView2 = f0Var3.f72703r) != null) {
            int i11 = this.padding;
            recyclerView2.setPadding(i11, 0, i11, 0);
            recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 5, 1, false));
            recyclerView2.addOnScrollListener(new c());
        }
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = new DownloadShortTvEpListAdapter();
        downloadShortTvEpListAdapter.l(new Function1() { // from class: com.transsnet.downloader.fragment.c4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadReDetectorShortTVFragment.I1(this.f59154a, ((Integer) obj).intValue());
            }
        });
        this.shortTVEpAdapter = downloadShortTvEpListAdapter;
        py.f0 f0Var4 = (py.f0) getMViewBinding();
        if (f0Var4 == null || (recyclerView = f0Var4.f72703r) == null) {
            return;
        }
        recyclerView.setAdapter(this.shortTVEpAdapter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void j2() {
        FrameLayout frameLayout;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var == null || (frameLayout = f0Var.f72693h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void k2() {
        FrameLayout frameLayout;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var == null || (frameLayout = f0Var.f72693h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(v1());
    }

    private final void l2() {
        androidx.p009lifecycle.b0 b0VarP;
        androidx.p009lifecycle.b0 b0VarH;
        androidx.p009lifecycle.b0 b0VarD;
        List data;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "showWatchAd", false, 4, null);
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.shortTVEpAdapter;
        int size = ((downloadShortTvEpListAdapter == null || (data = downloadShortTvEpListAdapter.getData()) == null) ? 0 : data.size()) - this.curUnlockAllCount;
        int i11 = this.perUnlockCount;
        String string = size <= i11 ? Utils.a().getString(com.transsnet.downloader.R$string.download_short_tv_watch_ad_all) : String.valueOf(i11);
        Intrinsics.e(string);
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarD = viewModel.D()) != null) {
            b0VarD.q(string);
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarH = viewModel2.H()) != null) {
            b0VarH.q(this.subjectId);
        }
        DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
        if (viewModel3 != null && (b0VarP = viewModel3.p()) != null) {
            b0VarP.q(6);
        }
        ry.f.d(y1(), this.subjectId, "dialog_minitv_download_unlock", null, 4, null);
    }

    private final void loadData() {
        if (!nh.m.f70474a.e()) {
            showNotNetError();
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "loadData ,  startPosition:" + this.startPosition + ", endPosition:" + this.endPosition, false, 4, null);
        this.isRequestingData = true;
        DownloadListManager downloadListManagerA = DownloadListManager.f59994m.a();
        Subject subject = this.subject;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        int i11 = this.startPosition;
        int i12 = this.endPosition;
        Subject subject2 = this.subject;
        DownloadListManager.N(downloadListManagerA, subjectId, i11, i12, subject2 != null ? subject2.getTitle() : null, 0, 16, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void m1(int totalEpisode) {
        TabLayout tabLayout;
        TabLayout tabLayout2;
        TabLayout tabLayout3;
        int i11 = (totalEpisode + 24) / 25;
        if (i11 <= 1) {
            py.f0 f0Var = (py.f0) getMViewBinding();
            if (f0Var == null || (tabLayout3 = f0Var.f72705t) == null) {
                return;
            }
            jg.c.g(tabLayout3);
            return;
        }
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 != null && (tabLayout2 = f0Var2.f72705t) != null) {
            tabLayout2.removeAllTabs();
            tabLayout2.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 * 25;
            int i14 = i13 + 1;
            int i15 = RangesKt.i(i13 + 25, totalEpisode);
            py.f0 f0Var3 = (py.f0) getMViewBinding();
            if (f0Var3 != null && (tabLayout = f0Var3.f72705t) != null) {
                tabLayout.addTab(tabLayout.newTab().setText(i14 + "-" + i15));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StartDownloadHelper m2() {
        return new StartDownloadHelper();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n1(DownloadListBean listBean) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<String> tags = listBean.getTags();
        if (tags == null || tags.isEmpty()) {
            py.f0 f0Var = (py.f0) getMViewBinding();
            if (f0Var == null || (recyclerView = f0Var.f72704s) == null) {
                return;
            }
            jg.c.g(recyclerView);
            return;
        }
        List<String> tags2 = listBean.getTags();
        Intrinsics.e(tags2);
        com.transsnet.downloader.adapter.t tVar = new com.transsnet.downloader.adapter.t(tags2);
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 == null || (recyclerView2 = f0Var2.f72704s) == null) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView2.getContext());
        flexboxLayoutManager.c0(0);
        flexboxLayoutManager.d0(1);
        flexboxLayoutManager.e0(0);
        recyclerView2.setLayoutManager(flexboxLayoutManager);
        com.google.android.flexbox.d dVar = new com.google.android.flexbox.d(recyclerView2.getContext());
        dVar.l(3);
        dVar.i(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.space_short_tv_tag_decoration));
        recyclerView2.addItemDecoration(dVar);
        recyclerView2.setAdapter(tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n2(DownloadListBean listBean) {
        List data;
        String subjectId;
        DownloadInfoExtendView downloadInfoExtendView;
        BLImageView bLImageView;
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        String url;
        String thumbnail;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        Subject subject;
        if (this.isContentDataRequested) {
            return;
        }
        Integer totalEpisode = listBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            return;
        }
        int i11 = this.curUnlockAllCount;
        Integer totalEpisode2 = listBean.getTotalEpisode();
        if (i11 > (totalEpisode2 != null ? totalEpisode2.intValue() : 1)) {
            Integer totalEpisode3 = listBean.getTotalEpisode();
            this.curUnlockAllCount = totalEpisode3 != null ? totalEpisode3.intValue() : 1;
        }
        if (this.subject == null) {
            this.subject = new Subject(listBean.getSubjectId(), Integer.valueOf(listBean.getSubjectType()), listBean.getSubjectTitle(), null, null, null, listBean.getDescription(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -72, 134217727, null);
        }
        Subject subject2 = this.subject;
        if ((subject2 != null ? subject2.getShortTVFavInfo() : null) == null && (subject = this.subject) != null) {
            ShortTVFavInfo shortTVFavInfo = listBean.getShortTVFavInfo();
            String favoriteNum = shortTVFavInfo != null ? shortTVFavInfo.getFavoriteNum() : null;
            ShortTVFavInfo shortTVFavInfo2 = listBean.getShortTVFavInfo();
            boolean hasFavorite = shortTVFavInfo2 != null ? shortTVFavInfo2.getHasFavorite() : false;
            ShortTVFavInfo shortTVFavInfo3 = listBean.getShortTVFavInfo();
            subject.setShortTVFavInfo(new ShortTVFavInfo(favoriteNum, hasFavorite, shortTVFavInfo3 != null ? shortTVFavInfo3.getFavoriteTime() : null));
        }
        this.isContentDataRequested = true;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (appCompatTextView3 = f0Var.D) != null) {
            appCompatTextView3.setText(listBean.getSubjectTitle());
        }
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 != null && (appCompatTextView2 = f0Var2.C) != null) {
            appCompatTextView2.setText(listBean.getSubjectTitle());
        }
        py.f0 f0Var3 = (py.f0) getMViewBinding();
        if (f0Var3 != null && (shapeableImageView = f0Var3.f72698m) != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ej.f.b bVarM = aVar.m(contextRequireContext);
            Cover cover = listBean.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ej.f.b bVarC = bVarM.g(url).i(R$color.module_04).m(shapeableImageView.getWidth()).c(shapeableImageView.getHeight());
            Cover cover2 = listBean.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarC.l(thumbnail).d(shapeableImageView);
        }
        n1(listBean);
        String genre = listBean.getGenre();
        if (genre != null && genre.length() != 0) {
            StringBuffer stringBuffer = new StringBuffer();
            String releaseDate = listBean.getReleaseDate();
            if (releaseDate != null && releaseDate.length() > 0) {
                Date dateL = com.blankj.utilcode.util.c0.l(listBean.getReleaseDate(), "yyyy-MM-dd");
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(dateL);
                stringBuffer.append(String.valueOf(calendar.get(1)));
            }
            String genre2 = listBean.getGenre();
            if (genre2 != null && genre2.length() > 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" • ");
                }
                String genre3 = listBean.getGenre();
                stringBuffer.append(genre3 != null ? StringsKt.Q(genre3, "，", " • ", false, 4, null) : null);
            }
            String countryName = listBean.getCountryName();
            if (countryName != null && countryName.length() > 0) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(" • ");
                }
                stringBuffer.append(listBean.getCountryName());
            }
            py.f0 f0Var4 = (py.f0) getMViewBinding();
            if (f0Var4 != null && (appCompatTextView = f0Var4.f72710y) != null) {
                appCompatTextView.setText(stringBuffer);
            }
        }
        py.f0 f0Var5 = (py.f0) getMViewBinding();
        if (f0Var5 != null && (bLImageView = f0Var5.f72699n) != null) {
            ShortTVFavInfo shortTVFavInfo4 = listBean.getShortTVFavInfo();
            bLImageView.setSelected(shortTVFavInfo4 != null ? shortTVFavInfo4.getHasFavorite() : false);
        }
        py.f0 f0Var6 = (py.f0) getMViewBinding();
        if (f0Var6 != null && (downloadInfoExtendView = f0Var6.f72694i) != null) {
            String description = listBean.getDescription();
            if (description == null) {
                description = "";
            }
            downloadInfoExtendView.showData(description);
        }
        Subject subject3 = this.subject;
        int totalEpisode4 = subject3 != null ? subject3.getTotalEpisode() : 0;
        Integer totalEpisode5 = listBean.getTotalEpisode();
        int iMax = Math.max(totalEpisode4, totalEpisode5 != null ? totalEpisode5.intValue() : 0);
        if (iMax > 0) {
            m1(iMax);
            int i12 = 0;
            while (i12 < iMax) {
                DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.shortTVEpAdapter;
                if (downloadShortTvEpListAdapter != null && (data = downloadShortTvEpListAdapter.getData()) != null) {
                    Subject subject4 = this.subject;
                    data.add(new my.c((subject4 == null || (subjectId = subject4.getSubjectId()) == null) ? "" : subjectId, i12, i12 < this.curUnlockAllCount, false, this.inDownloadStatusMap.containsKey(Integer.valueOf(i12)), 8, null));
                }
                i12++;
            }
            DownloadShortTvEpListAdapter downloadShortTvEpListAdapter2 = this.shortTVEpAdapter;
            if (downloadShortTvEpListAdapter2 != null) {
                downloadShortTvEpListAdapter2.notifyItemRangeChanged(0, iMax);
            }
        }
    }

    private final void o1(int end) {
        int i11 = this.curUnlockAllCount;
        if (end >= i11) {
            this.isRequestingData = false;
            Function0 function0 = this.selectAllCallback;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        int i12 = i11 - end;
        if (i12 > 20) {
            this.startPosition = end + 1;
            this.endPosition = end + 20;
        } else {
            int i13 = end + 1;
            this.startPosition = i13;
            this.endPosition = (i13 + i12) - 1;
        }
        loadData();
    }

    private final void o2(List list, int start, int end) {
        HashMap mapG;
        androidx.p009lifecycle.b0 b0VarG;
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter;
        List data;
        List data2;
        androidx.p009lifecycle.b0 b0VarG2;
        Long l11;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "updateList ,  size = " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            this.isRequestingData = false;
            Function0 function0 = this.selectAllCallback;
            if (function0 != null) {
                function0.invoke();
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        long jLongValue = (viewModel == null || (b0VarG2 = viewModel.G()) == null || (l11 = (Long) b0VarG2.f()) == null) ? 0L : l11.longValue();
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag2, "before curTotalSize:" + jLongValue, false, 4, null);
        int size = list2.size();
        long jLongValue2 = jLongValue;
        boolean z10 = false;
        for (int i11 = 0; i11 < size; i11++) {
            int i12 = (start + i11) - 1;
            DownloadBean downloadBean = (DownloadBean) list.get(i11);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBean.getUrl();
            }
            DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
            if (this.isSelectAll) {
                if (downloadBeanQ != null) {
                    downloadBeanQ.setCheck(true);
                }
                downloadBean.setCheck(true);
                Long size2 = downloadBean.getSize();
                jLongValue2 += size2 != null ? size2.longValue() : 0L;
            }
            if (downloadBeanQ != null) {
                downloadBeanQ.setUploadBy(downloadBean.getUploadBy());
                arrayList.add(downloadBeanQ);
                downloadBeanQ.setPosition(i12);
                this.unlockDownloadLst.put(Integer.valueOf(i12), downloadBeanQ);
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                String tag3 = getTAG();
                Intrinsics.g(tag3, "<get-TAG>(...)");
                lg.a.C0828a.f(c0828a2, tag3, "in download ep:" + downloadBeanQ.getEp() + ", status:" + downloadBeanQ.getStatus(), false, 4, null);
            } else {
                downloadBean.setPosition(i12);
                arrayList.add(downloadBean);
                this.unlockDownloadLst.put(Integer.valueOf(i12), downloadBean);
            }
            if (downloadBeanQ != null && downloadBeanQ.isUnable()) {
                this.unableSize++;
                this.inDownloadStatusMap.put(Integer.valueOf(i12), downloadBeanQ);
                lg.a.C0828a c0828a3 = lg.a.f68839a;
                String tag4 = getTAG();
                Intrinsics.g(tag4, "<get-TAG>(...)");
                lg.a.C0828a.v(c0828a3, tag4, "unable index:" + i12 + "， plus size = " + this.unableSize, false, 4, null);
                DownloadShortTvEpListAdapter downloadShortTvEpListAdapter2 = this.shortTVEpAdapter;
                if (i12 < ((downloadShortTvEpListAdapter2 == null || (data2 = downloadShortTvEpListAdapter2.getData()) == null) ? 0 : data2.size())) {
                    DownloadShortTvEpListAdapter downloadShortTvEpListAdapter3 = this.shortTVEpAdapter;
                    my.c cVar = (downloadShortTvEpListAdapter3 == null || (data = downloadShortTvEpListAdapter3.getData()) == null) ? null : (my.c) CollectionsKt.l0(data, i12);
                    if (cVar != null) {
                        cVar.e(true);
                    }
                    z10 = true;
                }
            }
        }
        if (z10 && (downloadShortTvEpListAdapter = this.shortTVEpAdapter) != null) {
            downloadShortTvEpListAdapter.notifyItemRangeChanged(start - 1, list.size());
        }
        lg.a.C0828a c0828a4 = lg.a.f68839a;
        String tag5 = getTAG();
        Intrinsics.g(tag5, "<get-TAG>(...)");
        lg.a.C0828a.v(c0828a4, tag5, "update data curTotalSize:" + jLongValue2, false, 4, null);
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarG = viewModel2.G()) != null) {
            b0VarG.q(Long.valueOf(jLongValue2));
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            mapG.put("size", String.valueOf(arrayList.size()));
        }
        o1(end);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1() {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        androidx.p009lifecycle.b0 b0VarF;
        Map map;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        int size = (viewModel == null || (b0VarF = viewModel.F()) == null || (map = (Map) b0VarF.f()) == null) ? 0 : map.size();
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "checkSelectAll, selectedCount: " + size + ", curUnlockCount:" + this.curUnlockAllCount + ", downloadize:" + this.inDownloadStatusMap.size(), false, 4, null);
        this.isSelectAll = size == this.curUnlockAllCount - this.inDownloadStatusMap.size();
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (appCompatImageView = f0Var.f72696k) != null) {
            appCompatImageView.setSelected(this.isSelectAll);
        }
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 == null || (appCompatTextView = f0Var2.f72708w) == null) {
            return;
        }
        appCompatTextView.setVisibility(size > 0 ? 0 : 8);
        appCompatTextView.setText(Utils.a().getString(com.transsnet.downloader.R$string.download_ep_selected_count, String.valueOf(size)));
    }

    private final void q1(String pageName, String pageFrom, String subjectId, String postId, String ops, String resourceId, String taskId) {
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("subject_id", subjectId);
        map.put("post_id", postId);
        map.put("ops", ops);
        map.put("resource_id", resourceId);
        map.put("task_id", taskId);
        map.put("module_name", this.moduleName);
        hj.i iVar = hj.i.f64505a;
        if (pageName == null) {
            pageName = "download_click";
        }
        iVar.p(pageName, map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        com.transsion.baselib.report.e.f43344a.l("download_click", bundle, getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final View r1() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(requireContext());
        int i11 = R$layout.layout_download_short_tv_loading;
        py.f0 f0Var = (py.f0) getMViewBinding();
        return layoutInflaterFrom.inflate(i11, (ViewGroup) (f0Var != null ? f0Var.f72693h : null), false);
    }

    private final View s1(Context context, String desText, boolean showRightBtn) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_DES_BTN);
        defaultView.setDescText(desText);
        defaultView.setDescTextColor(-1);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_NO_IMAGE);
        defaultView.setBtnVisibility(showRightBtn ? 0 : 8);
        String string = context.getString(R$string.go_to_setting);
        Intrinsics.g(string, "getString(...)");
        defaultView.setBtnText(string);
        defaultView.setTipOperationVisibility(8);
        defaultView.setBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.download_empty_btn_bg));
        defaultView.setBtnTextColor(-1);
        defaultView.setBackgroundColor(0);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.h4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadReDetectorShortTVFragment.t1(defaultView, view);
            }
        });
        defaultView.setLeftBtnVisibility(0);
        String string2 = context.getString(com.transsion.baseui.R$string.retry_text);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setLeftBtnText(string2);
        defaultView.setLeftBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.download_empty_btn_bg));
        defaultView.setLeftBtnTextColor(-1);
        defaultView.setLeftBtnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.i4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadReDetectorShortTVFragment.u1(this.f59220a, defaultView, view);
            }
        });
        defaultView.setTitleViewVisibility(8);
        int iA = com.blankj.utilcode.util.a0.a(16.0f);
        defaultView.setPadding(iA, com.blankj.utilcode.util.a0.a(110.0f), iA, 0);
        defaultView.setVisibility(0);
        return defaultView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void showLoading() {
        FrameLayout frameLayout;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var == null || (frameLayout = f0Var.f72693h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(r1());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void showNotNetError() {
        FrameLayout frameLayout;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var == null || (frameLayout = f0Var.f72693h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(w1());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(DefaultView defaultView, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            NetworkUtils.v();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(DownloadReDetectorShortTVFragment downloadReDetectorShortTVFragment, DefaultView defaultView, View view) {
        downloadReDetectorShortTVFragment.showLoading();
        downloadReDetectorShortTVFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final View v1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.error_load_failed);
        Intrinsics.g(string, "getString(...)");
        return s1(contextRequireContext, string, false);
    }

    private final View w1() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.no_network_title);
        Intrinsics.g(string, "getString(...)");
        return s1(contextRequireContext, string, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTVPlayDao x1() {
        return (ShortTVPlayDao) this.shortTVPlayDao.getValue();
    }

    private final ry.f y1() {
        return (ry.f) this.shortTVReporter.getValue();
    }

    private final StartDownloadHelper z1() {
        return (StartDownloadHelper) this.startDownloadHelper.getValue();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: A1, reason: merged with bridge method [inline-methods] */
    public py.f0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.f0 f0VarC = py.f0.c(inflater);
        Intrinsics.g(f0VarC, "inflate(...)");
        return f0VarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        BLImageView bLImageView;
        BLImageView bLImageView2;
        BLView bLView;
        ImageView imageView;
        py.f0 f0Var = (py.f0) getMViewBinding();
        if (f0Var != null && (imageView = f0Var.f72697l) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.v3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorShortTVFragment.B1(this.f59345a, view);
                }
            });
        }
        py.f0 f0Var2 = (py.f0) getMViewBinding();
        if (f0Var2 != null && (bLView = f0Var2.G) != null) {
            bLView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.g4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorShortTVFragment.C1(this.f59201a, view);
                }
            });
        }
        py.f0 f0Var3 = (py.f0) getMViewBinding();
        if (f0Var3 != null && (bLImageView2 = f0Var3.f72699n) != null) {
            bLImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.j4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorShortTVFragment.D1(this.f59233a, view);
                }
            });
        }
        py.f0 f0Var4 = (py.f0) getMViewBinding();
        if (f0Var4 != null && (bLImageView = f0Var4.f72700o) != null) {
            bLImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.k4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorShortTVFragment.E1(this.f59245a, view);
                }
            });
        }
        py.f0 f0Var5 = (py.f0) getMViewBinding();
        if (f0Var5 != null && (appCompatTextView = f0Var5.A) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.l4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorShortTVFragment.F1(this.f59252a, view);
                }
            });
        }
        py.f0 f0Var6 = (py.f0) getMViewBinding();
        if (f0Var6 != null && (appCompatImageView = f0Var6.f72696k) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.m4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorShortTVFragment.G1(this.f59260a, view);
                }
            });
        }
        py.f0 f0Var7 = (py.f0) getMViewBinding();
        if (f0Var7 == null || (linearLayoutCompat = f0Var7.f72689d) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.n4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadReDetectorShortTVFragment.H1(this.f59270a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        initView();
        b2();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarE;
        androidx.p009lifecycle.b0 b0VarI;
        androidx.p009lifecycle.b0 b0VarG;
        androidx.p009lifecycle.b0 b0VarF;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            DownloadResourcesDetectorViewModel viewModel = getViewModel();
            if (viewModel != null && (b0VarF = viewModel.F()) != null) {
                b0VarF.j(parentFragment, new e(new Function1() { // from class: com.transsnet.downloader.fragment.o4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorShortTVFragment.K1(this.f59277a, (Map) obj);
                    }
                }));
            }
            DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
            if (viewModel2 != null && (b0VarG = viewModel2.G()) != null) {
                b0VarG.j(parentFragment, new e(new Function1() { // from class: com.transsnet.downloader.fragment.p4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorShortTVFragment.L1(this.f59285a, (Long) obj);
                    }
                }));
            }
            DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
            if (viewModel3 != null && (b0VarI = viewModel3.I()) != null) {
                b0VarI.j(parentFragment, new e(new Function1() { // from class: com.transsnet.downloader.fragment.q4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorShortTVFragment.M1(this.f59295a, (String) obj);
                    }
                }));
            }
            DownloadResourcesDetectorViewModel viewModel4 = getViewModel();
            if (viewModel4 != null && (b0VarE = viewModel4.E()) != null) {
                b0VarE.j(parentFragment, new e(new Function1() { // from class: com.transsnet.downloader.fragment.w3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorShortTVFragment.N1((Integer) obj);
                    }
                }));
            }
        }
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.x3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadReDetectorShortTVFragment.O1(this.f59362a, (uy.c) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = uy.c.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
        Fragment parentFragment2 = getParentFragment();
        if (parentFragment2 != null) {
            int i11 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0);
            DownloadListManager.a aVar = DownloadListManager.f59994m;
            aVar.a().r(i11);
            androidx.p009lifecycle.b0 b0Var = (androidx.p009lifecycle.b0) aVar.a().A().get(Integer.valueOf(i11));
            if (b0Var != null) {
                b0Var.j(parentFragment2, new e(new Function1() { // from class: com.transsnet.downloader.fragment.y3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorShortTVFragment.J1(this.f59370a, (DownloadListBean) obj);
                    }
                }));
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "initViewModel ,loadData", false, 4, null);
        showLoading();
        loadData();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String subjectId;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("extra_page_from")) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("extra_last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("extra_subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("extra_subject_id")) == null) {
            string3 = "";
        }
        this.subjectId = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("extra_ops")) == null) {
            string4 = "";
        }
        this.ops = string4;
        Bundle arguments6 = getArguments();
        if (arguments6 == null || (string5 = arguments6.getString("extra_module_name")) == null) {
            string5 = "";
        }
        this.moduleName = string5;
        Bundle arguments7 = getArguments();
        this.scroll2Download = arguments7 != null ? arguments7.getBoolean("extra_download_scroll_to_download") : false;
        Subject subject = this.subject;
        if (subject != null) {
            this.subjectId = subject != null ? subject.getSubjectId() : null;
        }
        com.transsnet.downloader.util.d0 d0Var = com.transsnet.downloader.util.d0.f59926a;
        Subject subject2 = this.subject;
        if (subject2 != null && (subjectId = subject2.getSubjectId()) != null) {
            str = subjectId;
        }
        this.curUnlockAllCount = d0Var.c(str);
        this.perUnlockCount = d0Var.e();
        int i11 = this.curUnlockAllCount;
        if (i11 > 20) {
            i11 = 20;
        }
        this.endPosition = i11;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG5 = logViewConfig.g()) != null) {
            mapG5.put(WebConstants.PAGE_FROM, this.pageFrom);
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG4 = logViewConfig2.g()) != null) {
            mapG4.put("last_page_from", this.lastPageFrom);
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
            Subject subject3 = this.subject;
            mapG3.put("subject_id", subject3 != null ? subject3.getSubjectId() : null);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
            mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
        }
        ry.f.d(y1(), this.subjectId, "dialog_minitv_download", null, 4, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DownloadListManager.a aVar = DownloadListManager.f59994m;
        aVar.a().Y(null);
        try {
            aVar.a().A().clear();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        super.onDestroy();
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        initHistory();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        List data;
        DownloadShortTvEpListAdapter downloadShortTvEpListAdapter = this.shortTVEpAdapter;
        if (downloadShortTvEpListAdapter == null || (data = downloadShortTvEpListAdapter.getData()) == null || data.size() != 0) {
            return;
        }
        showLoading();
        loadData();
    }
}
