package com.transsion.shorttv_pugc.ui.fragment.download;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
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
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.base.widget.DefaultView;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.DownloadItem;
import com.transsion.shorttv_pugc.bean.DownloadListBean;
import com.transsion.shorttv_pugc.bean.ShortTVFavInfo;
import com.transsion.shorttv_pugc.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.ui.adapter.ShortTvDownloadEpListAdapter;
import com.transsion.shorttv_pugc.ui.widget.ShortTvDownloadInfoExtendView;
import com.transsion.shorttv_pugc.viewmodel.ShortTvDownloadViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
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
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 \u009c\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u009d\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\"\u0010!J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b#\u0010!J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0005H\u0002¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0002¢\u0006\u0004\b*\u0010\u0004J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000fH\u0002¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00052\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00052\u0006\u00106\u001a\u00020$H\u0002¢\u0006\u0004\b7\u0010'J\u0019\u0010:\u001a\u00020\u00052\b\u00109\u001a\u0004\u0018\u000108H\u0002¢\u0006\u0004\b:\u0010;J\u0017\u0010<\u001a\u00020\u00052\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b<\u00105J/\u0010B\u001a\u00020\u00052\u000e\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=2\u0006\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020$H\u0002¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020\u0005H\u0002¢\u0006\u0004\bD\u0010\u0004J\u000f\u0010E\u001a\u00020\u0005H\u0002¢\u0006\u0004\bE\u0010\u0004J\u000f\u0010F\u001a\u00020\u0005H\u0002¢\u0006\u0004\bF\u0010\u0004J\u000f\u0010G\u001a\u00020\u0005H\u0002¢\u0006\u0004\bG\u0010\u0004J\u000f\u0010H\u001a\u00020\u001eH\u0002¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u001eH\u0002¢\u0006\u0004\bJ\u0010IJ)\u0010O\u001a\u00020\u001e2\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020\u000f2\b\b\u0002\u0010N\u001a\u00020\u0012H\u0002¢\u0006\u0004\bO\u0010PJ\u0011\u0010Q\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\bQ\u0010IJ\u000f\u0010R\u001a\u00020\u0005H\u0002¢\u0006\u0004\bR\u0010\u0004J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0012H\u0002¢\u0006\u0004\bT\u0010UJ\u0017\u0010V\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0012H\u0002¢\u0006\u0004\bV\u0010UJ\u000f\u0010W\u001a\u00020\u0012H\u0002¢\u0006\u0004\bW\u0010\u0014J\u0017\u0010Y\u001a\u00020\u00052\u0006\u0010X\u001a\u00020\u0012H\u0002¢\u0006\u0004\bY\u0010UJ\u0017\u0010Z\u001a\u00020\u00052\u0006\u0010X\u001a\u00020\u0012H\u0002¢\u0006\u0004\bZ\u0010UJ\u0017\u0010[\u001a\u00020\u00052\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b[\u0010.R\u0014\u0010^\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010`\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010]R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u0016\u0010i\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010o\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010]R\u0016\u0010q\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010]R \u0010u\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020>0r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR \u0010w\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020>0r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010tR\u0016\u0010y\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010]R\u0016\u0010{\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010]R\u0016\u0010}\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010]R\u0017\u0010\u0080\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010\u007fR\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001a\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010\u007fR\u001a\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010\u007fR\u001a\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010\u007fR\u0018\u0010\u008e\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008d\u0001\u0010hR\u0018\u0010\u0090\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010hR\u0018\u0010\u0092\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010]R\u0018\u0010\u0094\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010\u007fR\u0017\u0010\u0095\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010hR\"\u0010\u0099\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001¨\u0006\u009e\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;", "Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTvDownloadReBaseFragment;", "Lms/d;", "<init>", "()V", "", "initViewData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "S0", "(Landroid/view/LayoutInflater;)Lms/d;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", TmcConstants.NAVIGATION_ON_START, "onDestroy", "t1", "initHistory", "initView", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "n1", "(Landroid/view/View;)V", "l1", "q1", "", RequestParameters.POSITION, "m1", "(I)V", "K0", "loadData", "C1", "", "totalSize", "p1", "(J)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "r1", "(Ljava/lang/String;)V", "Lcom/transsion/shorttv_pugc/bean/DownloadListBean;", "listBean", "D1", "(Lcom/transsion/shorttv_pugc/bean/DownloadListBean;)V", "totalEpisode", "I0", "Lcom/google/android/material/tabs/TabLayout$Tab;", "tab", "k1", "(Lcom/google/android/material/tabs/TabLayout$Tab;)V", "J0", "", "Lcom/transsion/shorttv_pugc/bean/DownloadItem;", "list", "start", TtmlNode.END, "E1", "(Ljava/util/List;II)V", "showNotNetError", "B1", "showLoading", "A1", "Q0", "()Landroid/view/View;", "P0", "Landroid/content/Context;", "context", "desText", "showRightBtn", "M0", "(Landroid/content/Context;Ljava/lang/String;Z)Landroid/view/View;", "L0", "o1", "selectAll", "u1", "(Z)V", "w1", "i1", "isSelected", "y1", "x1", "j1", "m", "I", "padding", "n", "itemHeight", "Lcom/transsion/shorttv_pugc/utils/b;", "o", "Lkotlin/Lazy;", "R0", "()Lcom/transsion/shorttv_pugc/utils/b;", "shortTVReporter", TtmlNode.TAG_P, "Z", "isContentDataRequested", "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvDownloadEpListAdapter;", "shortTVEpAdapter", CampaignEx.JSON_KEY_AD_R, "curUnlockAllCount", "s", "perUnlockCount", "", "t", "Ljava/util/Map;", "unlockDownloadLst", TmcStartParams.KEY_URL_SHORT, "inDownloadStatusMap", "v", "startPosition", "w", "endPosition", "x", "curDownloadTabPosition", "y", "Ljava/lang/String;", "pageFrom", "z", "lastPageFrom", "Lcom/transsion/shorttv_pugc/bean/Subject;", "A", "Lcom/transsion/shorttv_pugc/bean/Subject;", "subject", "B", "subjectId", "C", "ops", "D", "moduleName", "E", "scroll2Download", "F", "isSelectAll", "G", "unableSize", "H", "formatSize", "isRequestingData", "Lkotlin/Function0;", "J", "Lkotlin/jvm/functions/Function0;", "selectAllCallback", "K", "Lcom/transsion/shorttv_pugc/bean/DownloadListBean;", "L", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class ShortTVDownloadReFragment extends ShortTvDownloadReBaseFragment<ms.d> {

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean scroll2Download;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private boolean isSelectAll;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private int unableSize;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private boolean isRequestingData;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private Function0 selectAllCallback;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private DownloadListBean listBean;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isContentDataRequested;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private ShortTvDownloadEpListAdapter shortTVEpAdapter;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private int curUnlockAllCount;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int perUnlockCount;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private int curDownloadTabPosition;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final int padding = a0.a(12.0f);

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final int itemHeight = (y.e() - a0.a(24.0f)) / 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTVReporter = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVDownloadReFragment.z1();
        }
    });

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Map unlockDownloadLst = new LinkedHashMap();

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Map inDownloadStatusMap = new LinkedHashMap();

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private int startPosition = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private int endPosition = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private String pageFrom = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom = "";

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private String formatSize = "";

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.ui.fragment.download.ShortTVDownloadReFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTVDownloadReFragment a(String str, String str2, Subject subject, String str3, String str4, boolean z10) {
            ShortTVDownloadReFragment shortTVDownloadReFragment = new ShortTVDownloadReFragment();
            shortTVDownloadReFragment.setArguments(androidx.core.os.d.b(TuplesKt.a(WebConstants.PAGE_FROM, str), TuplesKt.a("last_page_from", str2), TuplesKt.a("subject", subject), TuplesKt.a("ops", str3), TuplesKt.a("module_name", str4), TuplesKt.a("download_scroll_to_download", Boolean.valueOf(z10))));
            return shortTVDownloadReFragment;
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
            ShortTVDownloadReFragment.this.k1(tab);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public static final class c extends RecyclerView.r {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            ms.d dVar;
            TabLayout tabLayout;
            TabLayout.Tab tabAt;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i11, i12);
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
            int iFindFirstVisibleItemPosition = ((gridLayoutManager != null ? gridLayoutManager.findFirstVisibleItemPosition() : 0) + 24) / 25;
            if (iFindFirstVisibleItemPosition == ShortTVDownloadReFragment.this.curDownloadTabPosition || (dVar = (ms.d) ShortTVDownloadReFragment.this.getMViewBinding()) == null || (tabLayout = dVar.f69748t) == null || (tabAt = tabLayout.getTabAt(iFindFirstVisibleItemPosition)) == null) {
                return;
            }
            tabAt.select();
        }
    }

    static final class d implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54225a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54225a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54225a;
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
            this.f54225a.invoke(obj);
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv_pugc.ui.fragment.download.ShortTVDownloadReFragment$initHistory$1", f = "ShortTVDownloadReFragment.kt", l = {194, 196}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ShortTVDownloadReFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x005c A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ShortTVDownloadReFragment shortTVDownloadReFragment;
            ShortTvInnerPlayBean shortTvInnerPlayBean;
            a2 a2VarC;
            ShortTVDownloadReFragment$initHistory$1$1$1 shortTVDownloadReFragment$initHistory$1$1$1;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                String str = ShortTVDownloadReFragment.this.subjectId;
                if (str != null) {
                    shortTVDownloadReFragment = ShortTVDownloadReFragment.this;
                    st.f fVarO = shortTVDownloadReFragment.g0().O();
                    if (fVarO != null) {
                        this.L$0 = shortTVDownloadReFragment;
                        this.label = 1;
                        obj = fVarO.c(str, this);
                        if (obj == objF) {
                            return objF;
                        }
                        shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
                    } else {
                        shortTvInnerPlayBean = null;
                    }
                    a2VarC = y0.c();
                    shortTVDownloadReFragment$initHistory$1$1$1 = new ShortTVDownloadReFragment$initHistory$1$1$1(shortTVDownloadReFragment, shortTvInnerPlayBean, null);
                    this.L$0 = null;
                    this.label = 2;
                    if (kotlinx.coroutines.i.g(a2VarC, shortTVDownloadReFragment$initHistory$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 1) {
                shortTVDownloadReFragment = (ShortTVDownloadReFragment) this.L$0;
                ResultKt.b(obj);
                shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
                a2VarC = y0.c();
                shortTVDownloadReFragment$initHistory$1$1$1 = new ShortTVDownloadReFragment$initHistory$1$1$1(shortTVDownloadReFragment, shortTvInnerPlayBean, null);
                this.L$0 = null;
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, shortTVDownloadReFragment$initHistory$1$1$1, this) == objF) {
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

    private final void A1() {
        FrameLayout frameLayout;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar == null || (frameLayout = dVar.f69736h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(8);
    }

    private final void B1() {
        FrameLayout frameLayout;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar == null || (frameLayout = dVar.f69736h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(P0());
    }

    private final void C1() {
        b0 b0VarE;
        b0 b0VarN;
        b0 b0VarH;
        List data;
        if (!nh.m.f70474a.e()) {
            kt.b.f68391a.d(R$string.short_tv_no_network_toast);
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "showWatchAd", false, 4, null);
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        int size = ((shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data.size()) - this.curUnlockAllCount;
        int i11 = this.perUnlockCount;
        String string = size <= i11 ? Utils.a().getString(R$string.download_short_tv_watch_ad_all) : String.valueOf(i11);
        Intrinsics.e(string);
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null && (b0VarH = shortTvDownloadViewModelH0.h()) != null) {
            b0VarH.q(string);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarN = shortTvDownloadViewModelH1.n()) != null) {
            b0VarN.q(this.subjectId);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
        if (shortTvDownloadViewModelH2 != null && (b0VarE = shortTvDownloadViewModelH2.e()) != null) {
            b0VarE.q("download_short_tv_ad");
        }
        com.transsion.shorttv_pugc.utils.b.d(R0(), this.subjectId, "dialog_minitv_download_unlock", null, 4, null);
    }

    private final void D1(DownloadListBean listBean) {
        List data;
        String subjectId;
        ShortTvDownloadInfoExtendView shortTvDownloadInfoExtendView;
        BLImageView bLImageView;
        AppCompatTextView appCompatTextView;
        ShapeableImageView shapeableImageView;
        String thumbnail;
        String url;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        Subject subject;
        this.listBean = listBean;
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
            this.subject = new Subject(listBean.getSubjectId(), Integer.valueOf(listBean.getSubjectType()), listBean.getSubjectTitle(), null, null, null, listBean.getDescription(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, -72, 4194303, null);
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
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar != null && (appCompatTextView3 = dVar.D) != null) {
            appCompatTextView3.setText(listBean.getSubjectTitle());
        }
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 != null && (appCompatTextView2 = dVar2.C) != null) {
            appCompatTextView2.setText(listBean.getSubjectTitle());
        }
        ms.d dVar3 = (ms.d) getMViewBinding();
        if (dVar3 != null && (shapeableImageView = dVar3.f69741m) != null) {
            et.b.a aVar = et.b.f61995a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            Cover cover = listBean.getCover();
            String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            int i12 = R$color.short_tv_module_04;
            int width = shapeableImageView.getWidth();
            int height = shapeableImageView.getHeight();
            Cover cover2 = listBean.getCover();
            aVar.i(contextRequireContext, shapeableImageView, str, (32448 & 8) != 0 ? R$color.image_skeleton : i12, (32448 & 16) != 0 ? aVar.c() : width, (32448 & 32) != 0 ? aVar.b() : height, (32448 & 64) != 0 ? 0 : 0, (32448 & 128) != 0, (32448 & 256) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (32448 & 512) != 0, (32448 & 1024) != 0, (32448 & 2048) != 0 ? false : false, (32448 & 4096) != 0 ? false : false, (32448 & 8192) != 0 ? false : false, (32448 & 16384) != 0 ? 25 : 0);
        }
        J0(listBean);
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
            ms.d dVar4 = (ms.d) getMViewBinding();
            if (dVar4 != null && (appCompatTextView = dVar4.f69753y) != null) {
                appCompatTextView.setText(stringBuffer);
            }
        }
        ms.d dVar5 = (ms.d) getMViewBinding();
        if (dVar5 != null && (bLImageView = dVar5.f69742n) != null) {
            ShortTVFavInfo shortTVFavInfo4 = listBean.getShortTVFavInfo();
            bLImageView.setSelected(shortTVFavInfo4 != null ? shortTVFavInfo4.getHasFavorite() : false);
        }
        ms.d dVar6 = (ms.d) getMViewBinding();
        if (dVar6 != null && (shortTvDownloadInfoExtendView = dVar6.f69737i) != null) {
            String description = listBean.getDescription();
            if (description == null) {
                description = "";
            }
            shortTvDownloadInfoExtendView.showData(description);
        }
        Subject subject3 = this.subject;
        int totalEpisode4 = subject3 != null ? subject3.getTotalEpisode() : 0;
        Integer totalEpisode5 = listBean.getTotalEpisode();
        int iMax = Math.max(totalEpisode4, totalEpisode5 != null ? totalEpisode5.intValue() : 0);
        if (iMax > 0) {
            I0(iMax);
            int i13 = 0;
            while (i13 < iMax) {
                ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
                if (shortTvDownloadEpListAdapter != null && (data = shortTvDownloadEpListAdapter.getData()) != null) {
                    Subject subject4 = this.subject;
                    data.add(new ot.c((subject4 == null || (subjectId = subject4.getSubjectId()) == null) ? "" : subjectId, i13, i13 < this.curUnlockAllCount, false, this.inDownloadStatusMap.containsKey(Integer.valueOf(i13)), 8, null));
                }
                i13++;
            }
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter2 != null) {
                shortTvDownloadEpListAdapter2.notifyItemRangeChanged(0, iMax);
            }
        }
    }

    private final void E1(List list, int start, int end) {
    }

    private final void I0(int totalEpisode) {
        TabLayout tabLayout;
        TabLayout tabLayout2;
        TabLayout tabLayout3;
        int i11 = (totalEpisode + 24) / 25;
        if (i11 <= 1) {
            ms.d dVar = (ms.d) getMViewBinding();
            if (dVar == null || (tabLayout3 = dVar.f69748t) == null) {
                return;
            }
            ct.b.b(tabLayout3);
            return;
        }
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 != null && (tabLayout2 = dVar2.f69748t) != null) {
            tabLayout2.removeAllTabs();
            tabLayout2.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        }
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i12 * 25;
            int i14 = i13 + 1;
            int i15 = RangesKt.i(i13 + 25, totalEpisode);
            ms.d dVar3 = (ms.d) getMViewBinding();
            if (dVar3 != null && (tabLayout = dVar3.f69748t) != null) {
                tabLayout.addTab(tabLayout.newTab().setText(i14 + "-" + i15));
            }
        }
    }

    private final void J0(DownloadListBean listBean) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<String> tags = listBean.getTags();
        if (tags == null || tags.isEmpty()) {
            ms.d dVar = (ms.d) getMViewBinding();
            if (dVar == null || (recyclerView = dVar.f69747s) == null) {
                return;
            }
            ct.b.b(recyclerView);
            return;
        }
        List<String> tags2 = listBean.getTags();
        Intrinsics.e(tags2);
        com.transsion.shorttv_pugc.ui.adapter.q qVar = new com.transsion.shorttv_pugc.ui.adapter.q(tags2);
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 == null || (recyclerView2 = dVar2.f69747s) == null) {
            return;
        }
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView2.getContext());
        flexboxLayoutManager.c0(0);
        flexboxLayoutManager.d0(1);
        flexboxLayoutManager.e0(0);
        recyclerView2.setLayoutManager(flexboxLayoutManager);
        com.google.android.flexbox.d dVar3 = new com.google.android.flexbox.d(recyclerView2.getContext());
        dVar3.l(3);
        dVar3.i(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_space_tag_decoration));
        recyclerView2.addItemDecoration(dVar3);
        recyclerView2.setAdapter(qVar);
    }

    private final void K0() {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        b0 b0VarL;
        Map map;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        int size = (shortTvDownloadViewModelH0 == null || (b0VarL = shortTvDownloadViewModelH0.l()) == null || (map = (Map) b0VarL.f()) == null) ? 0 : map.size();
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "checkSelectAll, selectedCount: " + size + ", curUnlockCount:" + this.curUnlockAllCount + ", downloadize:" + this.inDownloadStatusMap.size(), false, 4, null);
        this.isSelectAll = size == this.curUnlockAllCount - this.inDownloadStatusMap.size();
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar != null && (appCompatImageView = dVar.f69739k) != null) {
            appCompatImageView.setSelected(this.isSelectAll);
        }
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 == null || (appCompatTextView = dVar2.f69751w) == null) {
            return;
        }
        appCompatTextView.setVisibility(size > 0 ? 0 : 8);
        appCompatTextView.setText(Utils.a().getString(R$string.short_tv_download_ep_selected_count, String.valueOf(size)));
    }

    private final View L0() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(requireContext());
        int i11 = R$layout.short_tv_layout_download_loading;
        ms.d dVar = (ms.d) getMViewBinding();
        return layoutInflaterFrom.inflate(i11, (ViewGroup) (dVar != null ? dVar.f69736h : null), false);
    }

    private final View M0(Context context, String desText, boolean showRightBtn) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_DES_BTN);
        defaultView.setDescText(desText);
        defaultView.setDescTextColor(-1);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_NO_IMAGE);
        defaultView.setBtnVisibility(showRightBtn ? 0 : 8);
        String string = context.getString(R$string.short_tv_go_to_setting);
        Intrinsics.g(string, "getString(...)");
        defaultView.setBtnText(string);
        defaultView.setTipOperationVisibility(8);
        defaultView.setBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_download_empty_btn_bg));
        defaultView.setBtnTextColor(-1);
        defaultView.setBackgroundColor(0);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReFragment.N0(view);
            }
        });
        defaultView.setLeftBtnVisibility(0);
        String string2 = context.getString(R$string.short_tv_Retry);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setLeftBtnText(string2);
        defaultView.setLeftBtnBg(androidx.core.content.b.getDrawable(Utils.a(), R$drawable.short_tv_download_empty_btn_bg));
        defaultView.setLeftBtnTextColor(-1);
        defaultView.setLeftBtnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReFragment.O0(this.f54243a, defaultView, view);
            }
        });
        defaultView.setTitleViewVisibility(8);
        int iA = a0.a(16.0f);
        defaultView.setPadding(iA, a0.a(110.0f), iA, 0);
        defaultView.setVisibility(0);
        return defaultView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(View view) {
        NetworkUtils.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(ShortTVDownloadReFragment shortTVDownloadReFragment, DefaultView defaultView, View view) {
        shortTVDownloadReFragment.showLoading();
        shortTVDownloadReFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final View P0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.short_tv_error_load_failed);
        Intrinsics.g(string, "getString(...)");
        return M0(contextRequireContext, string, false);
    }

    private final View Q0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        String string = Utils.a().getString(R$string.short_tv_no_network_title);
        Intrinsics.g(string, "getString(...)");
        return M0(contextRequireContext, string, true);
    }

    private final com.transsion.shorttv_pugc.utils.b R0() {
        return (com.transsion.shorttv_pugc.utils.b) this.shortTVReporter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.n1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.l1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        Intrinsics.e(view);
        shortTVDownloadReFragment.q1(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        shortTVDownloadReFragment.o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(ShortTVDownloadReFragment shortTVDownloadReFragment, View view) {
        b0 b0VarM;
        Long l11;
        b0 b0VarL;
        FrameLayout frameLayout;
        if (ht.c.f64838a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            kt.b.f68391a.d(R$string.short_tv_no_network_toast);
            return;
        }
        ms.d dVar = (ms.d) shortTVDownloadReFragment.getMViewBinding();
        if (dVar != null && (frameLayout = dVar.f69735g) != null && frameLayout.getVisibility() == 0) {
            lg.a.f68839a.p("Download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReFragment.getViewModel();
        Map map = (shortTvDownloadViewModelH0 == null || (b0VarL = shortTvDownloadViewModelH0.l()) == null) ? null : (Map) b0VarL.f();
        if (map == null || map.isEmpty()) {
            kt.b.f68391a.e(Utils.a().getString(R$string.download_short_tv_unselected_toast));
        } else {
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = shortTVDownloadReFragment.getViewModel();
            shortTVDownloadReFragment.j1((shortTvDownloadViewModelH1 == null || (b0VarM = shortTvDownloadViewModelH1.m()) == null || (l11 = (Long) b0VarM.f()) == null) ? 0L : l11.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a1(ShortTVDownloadReFragment shortTVDownloadReFragment, int i11) {
        shortTVDownloadReFragment.m1(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(ShortTVDownloadReFragment shortTVDownloadReFragment, DownloadListBean downloadListBean) {
        List data;
        shortTVDownloadReFragment.A1();
        if (downloadListBean == null) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = shortTVDownloadReFragment.shortTVEpAdapter;
            if (shortTvDownloadEpListAdapter != null && (data = shortTvDownloadEpListAdapter.getData()) != null && data.size() == 0) {
                shortTVDownloadReFragment.B1();
            }
            return Unit.f67061a;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = shortTVDownloadReFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        List<DownloadItem> items = downloadListBean.getItems();
        lg.a.C0828a.f(c0828a, tag, "get data from  net, size = " + (items != null ? Integer.valueOf(items.size()) : null), false, 4, null);
        Integer totalEpisode = downloadListBean.getTotalEpisode();
        if (totalEpisode != null && totalEpisode.intValue() == 0) {
            Subject subject = shortTVDownloadReFragment.subject;
            downloadListBean.setTotalEpisode(Integer.valueOf(subject != null ? subject.getTotalEpisode() : 0));
        }
        shortTVDownloadReFragment.D1(downloadListBean);
        shortTVDownloadReFragment.E1(downloadListBean.getItems(), downloadListBean.getStartPosition(), downloadListBean.getEndPosition());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(ShortTVDownloadReFragment shortTVDownloadReFragment, Subject subject) {
        if (subject != null) {
            shortTVDownloadReFragment.subject = subject;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(ShortTVDownloadReFragment shortTVDownloadReFragment, Map map) {
        shortTVDownloadReFragment.K0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e1(ShortTVDownloadReFragment shortTVDownloadReFragment, Long l11) {
        Intrinsics.e(l11);
        shortTVDownloadReFragment.p1(l11.longValue());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(ShortTVDownloadReFragment shortTVDownloadReFragment, String str) {
        Intrinsics.e(str);
        shortTVDownloadReFragment.r1(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(Integer num) {
        int i11;
        if (num != null && num.intValue() == 0) {
            i11 = R$string.short_tv_error_load_failed;
        } else {
            i11 = (num != null && num.intValue() == 2) ? R$string.short_tv_favorite_remove_toast : R$string.short_tv_favorite_toast;
        }
        kt.b.f68391a.d(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h1(ShortTVDownloadReFragment shortTVDownloadReFragment, uy.c value) {
        BLImageView bLImageView;
        ShortTVFavInfo shortTVFavInfo;
        Intrinsics.h(value, "value");
        try {
            if (!TextUtils.equals(value.c(), shortTVDownloadReFragment.subjectId)) {
                return Unit.f67061a;
            }
            Subject subject = shortTVDownloadReFragment.subject;
            if (subject != null && (shortTVFavInfo = subject.getShortTVFavInfo()) != null) {
                shortTVFavInfo.setFavoriteNum(value.b());
                shortTVFavInfo.setHasFavorite(value.a());
            }
            ms.d dVar = (ms.d) shortTVDownloadReFragment.getMViewBinding();
            if (dVar != null && (bLImageView = dVar.f69742n) != null) {
                bLImageView.setSelected(value.a());
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    private final boolean i1() {
        return this.unableSize < this.curUnlockAllCount;
    }

    private final void initHistory() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    private final void initView() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        AppBarLayout appBarLayout;
        AppCompatTextView appCompatTextView;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar != null && (appCompatTextView = dVar.C) != null) {
            Subject subject = this.subject;
            appCompatTextView.setText(subject != null ? subject.getTitle() : null);
        }
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 != null && (appBarLayout = dVar2.f69730b) != null) {
            appBarLayout.setExpanded(!this.scroll2Download);
        }
        ms.d dVar3 = (ms.d) getMViewBinding();
        if (dVar3 != null && (recyclerView2 = dVar3.f69746r) != null) {
            int i11 = this.padding;
            recyclerView2.setPadding(i11, 0, i11, 0);
            recyclerView2.setLayoutManager(new GridLayoutManager(recyclerView2.getContext(), 5, 1, false));
            recyclerView2.addOnScrollListener(new c());
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = new ShortTvDownloadEpListAdapter();
        shortTvDownloadEpListAdapter.l(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTVDownloadReFragment.a1(this.f54251a, ((Integer) obj).intValue());
            }
        });
        this.shortTVEpAdapter = shortTvDownloadEpListAdapter;
        ms.d dVar4 = (ms.d) getMViewBinding();
        if (dVar4 == null || (recyclerView = dVar4.f69746r) == null) {
            return;
        }
        recyclerView.setAdapter(this.shortTVEpAdapter);
    }

    private final void j1(long totalSize) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k1(TabLayout.Tab tab) {
        RecyclerView recyclerView;
        ms.d dVar;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (tab == null || !tab.isSelected()) {
            return;
        }
        this.curDownloadTabPosition = tab.getPosition();
        int position = tab.getPosition() * 25;
        ms.d dVar2 = (ms.d) getMViewBinding();
        RecyclerView.m layoutManager = (dVar2 == null || (recyclerView3 = dVar2.f69746r) == null) ? null : recyclerView3.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        if (gridLayoutManager != null) {
            int iFindFirstCompletelyVisibleItemPosition = ((position - gridLayoutManager.findFirstCompletelyVisibleItemPosition()) / 5) * this.itemHeight;
            ms.d dVar3 = (ms.d) getMViewBinding();
            if (dVar3 == null || (recyclerView = dVar3.f69746r) == null || !recyclerView.canScrollVertically(iFindFirstCompletelyVisibleItemPosition) || (dVar = (ms.d) getMViewBinding()) == null || (recyclerView2 = dVar.f69746r) == null) {
                return;
            }
            recyclerView2.scrollBy(0, iFindFirstCompletelyVisibleItemPosition);
        }
    }

    private final void l1(View view) {
        ShortTVFavInfo shortTVFavInfo;
        if (ht.c.f64838a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            kt.b.f68391a.d(R$string.short_tv_no_network_toast);
            return;
        }
        com.transsion.shorttv_pugc.utils.b bVarR0 = R0();
        String str = this.subjectId;
        Subject subject = this.subject;
        bVarR0.e(str, "", (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) ? false : shortTVFavInfo.getHasFavorite(), "minitv_download");
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            shortTvDownloadViewModelH0.d(this.subject);
        }
    }

    private final void loadData() {
        String subjectId;
        if (!nh.m.f70474a.e()) {
            showNotNetError();
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "loadData ,  startPosition:" + this.startPosition + ", endPosition:" + this.endPosition, false, 4, null);
        this.isRequestingData = true;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            Subject subject = this.subject;
            if (subject == null || (subjectId = subject.getSubjectId()) == null) {
                subjectId = "";
            }
            shortTvDownloadViewModelH0.g(subjectId, this.startPosition, this.endPosition);
        }
    }

    private final void m1(int position) {
        b0 b0VarM;
        b0 b0VarM2;
        b0 b0VarM3;
        Long l11;
        Long size;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        Intrinsics.e(shortTvDownloadEpListAdapter);
        List data = shortTvDownloadEpListAdapter.getData();
        if (position >= data.size()) {
            return;
        }
        ot.c cVar = (ot.c) data.get(position);
        if (cVar.b()) {
            return;
        }
        if (!cVar.c()) {
            if (position == this.curUnlockAllCount) {
                C1();
                return;
            } else {
                kt.b.f68391a.d(R$string.short_tv_unlock_in_order);
                return;
            }
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        if (shortTvDownloadViewModelH0 != null) {
            shortTvDownloadViewModelH0.q(cVar);
        }
        DownloadItem downloadItem = (DownloadItem) this.unlockDownloadLst.get(Integer.valueOf(position));
        long jLongValue = 0;
        long jLongValue2 = (downloadItem == null || (size = downloadItem.getSize()) == null) ? 0L : size.longValue();
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarM3 = shortTvDownloadViewModelH1.m()) != null && (l11 = (Long) b0VarM3.f()) != null) {
            jLongValue = l11.longValue();
        }
        if (cVar.d()) {
            cVar.f(false);
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarM2 = shortTvDownloadViewModelH2.m()) != null) {
                b0VarM2.q(Long.valueOf(jLongValue - jLongValue2));
            }
        } else {
            cVar.f(true);
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null && (b0VarM = shortTvDownloadViewModelH3.m()) != null) {
                b0VarM.q(Long.valueOf(jLongValue + jLongValue2));
            }
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter2 != null) {
            shortTvDownloadEpListAdapter2.notifyItemChanged(position, cVar);
        }
    }

    private final void n1(View view) {
        if (ht.c.f64838a.a(view.getId(), 500L)) {
            return;
        }
        Navigator navigatorC = TheRouter.c(ls.a.f69034a.b());
        Subject subject = this.subject;
        Navigator.x(navigatorC.K("id", subject != null ? subject.getSubjectId() : null), requireContext(), null, 2, null);
        f0();
    }

    private final void o1() {
        AppCompatImageView appCompatImageView;
        if (ht.c.f64838a.a(-912345, 1000L)) {
            return;
        }
        if (!i1()) {
            kt.b.f68391a.d(R$string.short_tv_download_no_options_toast);
            return;
        }
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar == null || (appCompatImageView = dVar.f69739k) == null) {
            return;
        }
        boolean z10 = !appCompatImageView.isSelected();
        this.isSelectAll = z10;
        u1(z10);
    }

    private final void p1(long totalSize) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (totalSize <= 0) {
            ms.d dVar = (ms.d) getMViewBinding();
            if (dVar == null || (appCompatTextView2 = dVar.f69750v) == null) {
                return;
            }
            appCompatTextView2.setText(Utils.a().getString(R$string.short_tv_download));
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.v(c0828a, tag, "observe totalSize:" + totalSize, false, 4, null);
        String strB = com.blankj.utilcode.util.i.b(totalSize, 1);
        Intrinsics.g(strB, "byte2FitMemorySize(...)");
        this.formatSize = strB;
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 == null || (appCompatTextView = dVar2.f69750v) == null) {
            return;
        }
        appCompatTextView.setText(Utils.a().getString(R$string.short_tv_download) + " · " + this.formatSize);
    }

    private final void q1(View view) {
        if (ht.c.f64838a.a(view.getId(), 500L)) {
            return;
        }
        com.transsion.shorttv_pugc.utils.b.g(R0(), this.subjectId, null, 2, null);
        st.h hVarP = g0().P();
        if (hVarP != null) {
            String str = this.subjectId;
            Subject subject = this.subject;
            hVarP.a(this, str, subject != null ? subject.getTitle() : null, this.pageFrom);
        }
    }

    private final void r1(String type) {
        b0 b0VarL;
        List data;
        List data2;
        List data3;
        b0 b0VarL2;
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
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        if (i12 > ((shortTvDownloadEpListAdapter == null || (data6 = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data6.size())) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
            this.endPosition = (shortTvDownloadEpListAdapter2 == null || (data5 = shortTvDownloadEpListAdapter2.getData()) == null) ? 0 : data5.size();
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "广告解锁成功 , 请求新数据， start：" + this.startPosition + ", end:" + this.endPosition, false, 4, null);
        com.transsion.shorttv_pugc.utils.h hVar = com.transsion.shorttv_pugc.utils.h.f54445a;
        String str = this.subjectId;
        if (str == null) {
            str = "";
        }
        hVar.k(str, this.endPosition);
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter3 = this.shortTVEpAdapter;
        final String string = ((shortTvDownloadEpListAdapter3 == null || (data4 = shortTvDownloadEpListAdapter3.getData()) == null) ? 0 : data4.size()) - this.curUnlockAllCount <= this.perUnlockCount ? Utils.a().getString(R$string.download_short_tv_watch_ad_all) : String.valueOf((this.endPosition - this.startPosition) + 1);
        Intrinsics.e(string);
        new Handler().postDelayed(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.h
            @Override // java.lang.Runnable
            public final void run() {
                ShortTVDownloadReFragment.s1(string);
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
        com.transsion.shorttv_pugc.utils.b bVarR0 = R0();
        Subject subject = this.subject;
        String string2 = sb2.toString();
        Intrinsics.g(string2, "toString(...)");
        com.transsion.shorttv_pugc.utils.b.i(bVarR0, subject, type, string2, null, 8, null);
        int i15 = this.curUnlockAllCount;
        int i16 = this.endPosition;
        if (i15 < i16) {
            this.curUnlockAllCount = i16;
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            Map linkedHashMap = (shortTvDownloadViewModelH0 == null || (b0VarL2 = shortTvDownloadViewModelH0.l()) == null) ? null : (Map) b0VarL2.f();
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter4 = this.shortTVEpAdapter;
            int size = (shortTvDownloadEpListAdapter4 == null || (data3 = shortTvDownloadEpListAdapter4.getData()) == null) ? 0 : data3.size();
            int i17 = this.endPosition;
            if (size >= i17) {
                for (int i18 = this.startPosition - 1; i18 < i17; i18++) {
                    ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter5 = this.shortTVEpAdapter;
                    if (i18 < ((shortTvDownloadEpListAdapter5 == null || (data2 = shortTvDownloadEpListAdapter5.getData()) == null) ? 0 : data2.size())) {
                        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter6 = this.shortTVEpAdapter;
                        ot.c cVar = (shortTvDownloadEpListAdapter6 == null || (data = shortTvDownloadEpListAdapter6.getData()) == null) ? null : (ot.c) data.get(i18);
                        if (cVar != null) {
                            if (this.isSelectAll) {
                                cVar.f(true);
                                linkedHashMap.put(Integer.valueOf(i18), cVar);
                            }
                            cVar.e(true);
                            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter7 = this.shortTVEpAdapter;
                            if (shortTvDownloadEpListAdapter7 != null) {
                                shortTvDownloadEpListAdapter7.notifyItemChanged(i18, cVar);
                            }
                        }
                    }
                }
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
            if (shortTvDownloadViewModelH1 != null && (b0VarL = shortTvDownloadViewModelH1.l()) != null) {
                b0VarL.q(linkedHashMap);
            }
        }
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s1(String str) {
        kt.b.f68391a.e(Utils.a().getString(R$string.download_short_tv_unlock_success_toast, str));
    }

    private final void showLoading() {
        FrameLayout frameLayout;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar == null || (frameLayout = dVar.f69736h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(L0());
    }

    private final void showNotNetError() {
        FrameLayout frameLayout;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar == null || (frameLayout = dVar.f69736h) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        frameLayout.addView(Q0());
    }

    private final void t1() {
        BiddingInterstitialManager.Companion.b(BiddingInterstitialManager.f41965w, "ShortTvInterstitialScene", null, 2, null);
        BiddingVideoManager.Companion.b(BiddingVideoManager.f42049w, "ShortTvVideoScene", null, 2, null);
    }

    private final void u1(final boolean selectAll) {
        FrameLayout frameLayout;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "selectAll click, selectAll = " + selectAll + " ", false, 4, null);
        this.isSelectAll = selectAll;
        if (!this.isRequestingData) {
            w1(selectAll);
            return;
        }
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar != null && (frameLayout = dVar.f69735g) != null) {
            ct.b.d(frameLayout);
        }
        this.selectAllCallback = new Function0() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVDownloadReFragment.v1(this.f54241a, selectAll);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(ShortTVDownloadReFragment shortTVDownloadReFragment, boolean z10) {
        shortTVDownloadReFragment.w1(z10);
        shortTVDownloadReFragment.selectAllCallback = null;
        return Unit.f67061a;
    }

    private final void w1(boolean selectAll) {
        if (this.curUnlockAllCount > 30) {
            y1(selectAll);
        } else {
            x1(selectAll);
        }
    }

    private final void x1(boolean isSelected) {
        b0 b0VarM;
        b0 b0VarL;
        DownloadItem downloadItem;
        Long size;
        List data;
        List data2;
        b0 b0VarL2;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        Map linkedHashMap = (shortTvDownloadViewModelH0 == null || (b0VarL2 = shortTvDownloadViewModelH0.l()) == null) ? null : (Map) b0VarL2.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        linkedHashMap.clear();
        int i11 = this.curUnlockAllCount;
        long jLongValue = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
            if (i12 < ((shortTvDownloadEpListAdapter == null || (data2 = shortTvDownloadEpListAdapter.getData()) == null) ? 0 : data2.size())) {
                ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter2 = this.shortTVEpAdapter;
                ot.c cVar = (shortTvDownloadEpListAdapter2 == null || (data = shortTvDownloadEpListAdapter2.getData()) == null) ? null : (ot.c) data.get(i12);
                if (this.unlockDownloadLst.containsKey(Integer.valueOf(i12)) && (((downloadItem = (DownloadItem) this.unlockDownloadLst.get(Integer.valueOf(i12))) == null || !downloadItem.isUnable()) && cVar != null)) {
                    cVar.f(isSelected);
                    if (isSelected) {
                        jLongValue += (downloadItem == null || (size = downloadItem.getSize()) == null) ? 0L : size.longValue();
                        linkedHashMap.put(Integer.valueOf(i12), cVar);
                    } else {
                        linkedHashMap.remove(Integer.valueOf(i12));
                    }
                }
            }
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
        if (shortTvDownloadViewModelH1 != null && (b0VarL = shortTvDownloadViewModelH1.l()) != null) {
            b0VarL.q(linkedHashMap);
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
        if (shortTvDownloadViewModelH2 != null && (b0VarM = shortTvDownloadViewModelH2.m()) != null) {
            b0VarM.q(Long.valueOf(jLongValue));
        }
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter3 = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter3 != null) {
            shortTvDownloadEpListAdapter3.notifyItemRangeChanged(0, this.curUnlockAllCount);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, java.util.LinkedHashMap] */
    private final void y1(boolean isSelected) {
        b0 b0VarL;
        FrameLayout frameLayout;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar != null && (frameLayout = dVar.f69735g) != null) {
            ct.b.d(frameLayout);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        T t11 = (shortTvDownloadViewModelH0 == null || (b0VarL = shortTvDownloadViewModelH0.l()) == null) ? 0 : (Map) b0VarL.f();
        objectRef.element = t11;
        if (t11 == 0) {
            objectRef.element = new LinkedHashMap();
        }
        ((Map) objectRef.element).clear();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1(this, isSelected, objectRef, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.shorttv_pugc.utils.b z1() {
        return new com.transsion.shorttv_pugc.utils.b();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: S0, reason: merged with bridge method [inline-methods] */
    public ms.d getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ms.d dVarC = ms.d.c(inflater);
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initListener() {
        LinearLayoutCompat linearLayoutCompat;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        BLImageView bLImageView;
        BLImageView bLImageView2;
        BLView bLView;
        ImageView imageView;
        ms.d dVar = (ms.d) getMViewBinding();
        if (dVar != null && (imageView = dVar.f69740l) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.T0(this.f54252a, view);
                }
            });
        }
        ms.d dVar2 = (ms.d) getMViewBinding();
        if (dVar2 != null && (bLView = dVar2.G) != null) {
            bLView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.U0(this.f54234a, view);
                }
            });
        }
        ms.d dVar3 = (ms.d) getMViewBinding();
        if (dVar3 != null && (bLImageView2 = dVar3.f69742n) != null) {
            bLImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.V0(this.f54235a, view);
                }
            });
        }
        ms.d dVar4 = (ms.d) getMViewBinding();
        if (dVar4 != null && (bLImageView = dVar4.f69743o) != null) {
            bLImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.W0(this.f54236a, view);
                }
            });
        }
        ms.d dVar5 = (ms.d) getMViewBinding();
        if (dVar5 != null && (appCompatTextView = dVar5.A) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.X0(this.f54237a, view);
                }
            });
        }
        ms.d dVar6 = (ms.d) getMViewBinding();
        if (dVar6 != null && (appCompatImageView = dVar6.f69739k) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReFragment.Y0(this.f54238a, view);
                }
            });
        }
        ms.d dVar7 = (ms.d) getMViewBinding();
        if (dVar7 == null || (linearLayoutCompat = dVar7.f69732d) == null) {
            return;
        }
        linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReFragment.Z0(this.f54239a, view);
            }
        });
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewData() {
        initView();
        t1();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewModel() {
        b0 b0VarK;
        b0 b0VarI;
        b0 b0VarJ;
        b0 b0VarO;
        b0 b0VarM;
        b0 b0VarL;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
            if (shortTvDownloadViewModelH0 != null && (b0VarL = shortTvDownloadViewModelH0.l()) != null) {
                b0VarL.j(parentFragment, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.l
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.d1(this.f54245a, (Map) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH1 = getViewModel();
            if (shortTvDownloadViewModelH1 != null && (b0VarM = shortTvDownloadViewModelH1.m()) != null) {
                b0VarM.j(parentFragment, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.m
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.e1(this.f54246a, (Long) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH2 = getViewModel();
            if (shortTvDownloadViewModelH2 != null && (b0VarO = shortTvDownloadViewModelH2.o()) != null) {
                b0VarO.j(parentFragment, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.n
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.f1(this.f54247a, (String) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH3 = getViewModel();
            if (shortTvDownloadViewModelH3 != null && (b0VarJ = shortTvDownloadViewModelH3.j()) != null) {
                b0VarJ.j(parentFragment, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.o
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.g1((Integer) obj);
                    }
                }));
            }
        }
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTVDownloadReFragment.h1(this.f54248a, (uy.c) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = uy.c.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
        Fragment parentFragment2 = getParentFragment();
        if (parentFragment2 != null && getViewModel() != null) {
            ShortTvDownloadViewModel shortTvDownloadViewModelH4 = getViewModel();
            if (shortTvDownloadViewModelH4 != null && (b0VarI = shortTvDownloadViewModelH4.i()) != null) {
                b0VarI.j(parentFragment2, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.q
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.b1(this.f54249a, (DownloadListBean) obj);
                    }
                }));
            }
            ShortTvDownloadViewModel shortTvDownloadViewModelH5 = getViewModel();
            if (shortTvDownloadViewModelH5 != null && (b0VarK = shortTvDownloadViewModelH5.k()) != null) {
                b0VarK.j(parentFragment2, new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.r
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return ShortTVDownloadReFragment.c1(this.f54250a, (Subject) obj);
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

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        String string4;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        HashMap mapG5;
        String subjectId;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString(WebConstants.PAGE_FROM)) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("module_name")) == null) {
            string4 = "";
        }
        this.moduleName = string4;
        Bundle arguments6 = getArguments();
        this.scroll2Download = arguments6 != null ? arguments6.getBoolean("download_scroll_to_download") : false;
        Subject subject = this.subject;
        this.subjectId = subject != null ? subject.getSubjectId() : null;
        com.transsion.shorttv_pugc.utils.h hVar = com.transsion.shorttv_pugc.utils.h.f54445a;
        Subject subject2 = this.subject;
        if (subject2 != null && (subjectId = subject2.getSubjectId()) != null) {
            str = subjectId;
        }
        this.curUnlockAllCount = hVar.e(str);
        this.perUnlockCount = hVar.h();
        int i11 = this.curUnlockAllCount;
        if (i11 > 20) {
            i11 = 20;
        }
        this.endPosition = i11;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "ShortTv download init subjectId:" + this.subjectId + ", curUnlockAllCount:" + this.curUnlockAllCount + ", perUnlockCount:" + this.perUnlockCount, false, 4, null);
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
        com.transsion.shorttv_pugc.utils.b.d(R0(), this.subjectId, "dialog_minitv_download", null, 4, null);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        initHistory();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void retryLoadData() {
        List data;
        ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter = this.shortTVEpAdapter;
        if (shortTvDownloadEpListAdapter == null || (data = shortTvDownloadEpListAdapter.getData()) == null || data.size() != 0) {
            return;
        }
        showLoading();
        loadData();
    }
}
