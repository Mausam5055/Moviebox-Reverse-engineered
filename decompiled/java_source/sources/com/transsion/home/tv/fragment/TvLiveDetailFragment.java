package com.transsion.home.tv.fragment;

import android.R;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.NetworkUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.meituan.android.walle.ChannelReader;
import com.noober.background.view.BLFrameLayout;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.base.report.athena.BrowseType;
import com.transsion.base.report.athena.ClickType;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.home.R$layout;
import com.transsion.home.tv.bean.StreamItem;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.home.tv.bean.TvChannelListDataBean;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$string;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORVideoView;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import ko.l0;
import kotlin.Function;
import kotlin.Lazy;
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
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0006*\u0002\u008c\u0001\b\u0007\u0018\u0000 \u0090\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001JB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u0018H\u0002¢\u0006\u0004\b \u0010\u001bJ\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\"\u0010\u001bJ\u000f\u0010#\u001a\u00020\u0005H\u0002¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0018H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0002¢\u0006\u0004\b&\u0010\u0004J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020\u0005H\u0002¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0002¢\u0006\u0004\b-\u0010\u0004J\u000f\u0010.\u001a\u00020\u0005H\u0002¢\u0006\u0004\b.\u0010\u0004J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0018H\u0002¢\u0006\u0004\b0\u0010\u001bJ\u0011\u00102\u001a\u0004\u0018\u000101H\u0002¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004J\u0017\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205H\u0016¢\u0006\u0004\b7\u00108J\u000f\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0018H\u0016¢\u0006\u0004\b<\u0010%J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0004J\u000f\u0010>\u001a\u00020\u0005H\u0016¢\u0006\u0004\b>\u0010\u0004J\u000f\u0010?\u001a\u00020\u0005H\u0016¢\u0006\u0004\b?\u0010\u0004J\u000f\u0010@\u001a\u00020\u0005H\u0016¢\u0006\u0004\b@\u0010\u0004J\u000f\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bB\u0010CJ\u0011\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0005H\u0016¢\u0006\u0004\bG\u0010\u0004J\u000f\u0010H\u001a\u00020\u0005H\u0016¢\u0006\u0004\bH\u0010\u0004J\u000f\u0010I\u001a\u00020\u0005H\u0016¢\u0006\u0004\bI\u0010\u0004R\u0018\u0010L\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010N\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010KR\u001b\u0010T\u001a\u00020O8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R$\u0010a\u001a\u0012\u0012\u0004\u0012\u0002090]j\b\u0012\u0004\u0012\u000209`^8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b_\u0010`R\u0018\u0010d\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010k\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010m\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010jR\u0016\u0010o\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010jR\u0016\u0010q\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010jR\u0016\u0010s\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010jR\u0018\u0010u\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010KR\u0018\u0010x\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0018\u0010{\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010\u007f\u001a\u00020|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u0018\u0010\u0081\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010jR\u0018\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u008b\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0088\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u008c\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001¨\u0006\u0091\u0001"}, d2 = {"Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lgl/c0;", "<init>", "()V", "", "loadData", "w1", "y1", "initExposureHelper", "initPlayer", "Lcom/transsion/home/tv/bean/TvChannelItem;", ChannelReader.CHANNEL_KEY, "p1", "(Lcom/transsion/home/tv/bean/TvChannelItem;)V", "q1", "O0", "P0", "Q0", "r1", "G1", "I1", "h1", "U0", "", "autoHide", "A1", "(Z)V", "W0", "v1", "u1", PushConstants.PUSH_SERVICE_TYPE_SHOW, "F1", "isNoNet", "B1", "Y0", "m1", "()Z", "s1", "Lcom/transsion/player/ui/ORVideoView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "N0", "(Lcom/transsion/player/ui/ORVideoView;)V", "H1", "n1", "o1", "T0", "isHide", "M0", "Landroidx/fragment/app/FragmentActivity;", "t1", "()Landroidx/fragment/app/FragmentActivity;", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "R0", "(Landroid/view/LayoutInflater;)Lgl/c0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isRegisteDeviceKeyMonitor", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "onResume", "onStop", "onDestroyView", "a", "Ljava/lang/String;", TmcStartParams.KEY_CHANNEL_ID, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "countryCode", "Lcom/transsion/home/tv/g;", "c", "Lkotlin/Lazy;", "S0", "()Lcom/transsion/home/tv/g;", "viewModel", "Lcom/transsion/home/tv/adapter/h;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/home/tv/adapter/h;", "channelDetailAdapter", "Lhl/b;", "e", "Lhl/b;", "exposureHelper", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "f", "Ljava/util/HashSet;", "exposedStreamUrls", "g", "Lcom/transsion/player/ui/ORVideoView;", "playerView", "Lpl/a;", "h", "Lpl/a;", "playDotLayer", "i", "Z", "isFullscreen", "j", "isControlsLocked", CampaignEx.JSON_KEY_AD_K, "isOverlayVisible", "l", "isLockButtonVisible", "m", "isVideoPlaying", "n", "currentChannelName", "o", "Lcom/transsion/home/tv/bean/TvChannelItem;", "currentChannel", TtmlNode.TAG_P, "Landroid/view/View;", "errorLayout", "", CampaignEx.JSON_KEY_AD_Q, "J", "loadStartTime", CampaignEx.JSON_KEY_AD_R, "isFirstPlay", "Landroid/os/Handler;", "s", "Landroid/os/Handler;", "overlayHandler", "Ljava/lang/Runnable;", "t", "Ljava/lang/Runnable;", "hideOverlayRunnable", TmcStartParams.KEY_URL_SHORT, "hideLockButtonRunnable", "com/transsion/home/tv/fragment/TvLiveDetailFragment$d", "v", "Lcom/transsion/home/tv/fragment/TvLiveDetailFragment$d;", "playerListener", "w", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TvLiveDetailFragment extends PageStatusFragment<gl.c0> {

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f45627x = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String channelId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String countryCode;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final com.transsion.home.tv.adapter.h channelDetailAdapter;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private hl.b exposureHelper;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final HashSet exposedStreamUrls;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private ORVideoView playerView;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private pl.a playDotLayer;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isFullscreen;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isControlsLocked;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isOverlayVisible;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isLockButtonVisible;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isVideoPlaying;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String currentChannelName;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private TvChannelItem currentChannel;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private View errorLayout;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private long loadStartTime;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstPlay;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Handler overlayHandler;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Runnable hideOverlayRunnable;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Runnable hideLockButtonRunnable;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final d playerListener;

    /* JADX INFO: renamed from: com.transsion.home.tv.fragment.TvLiveDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TvLiveDetailFragment a() {
            return new TvLiveDetailFragment();
        }
    }

    public static final class b implements hl.a {
        b() {
        }

        @Override // hl.a
        public void a(int i11, long j11, View view) {
            List<StreamItem> streams;
            StreamItem streamItem;
            String url;
            TvChannelItem tvChannelItem = (TvChannelItem) CollectionsKt.l0(TvLiveDetailFragment.this.channelDetailAdapter.getData(), i11);
            if (tvChannelItem == null || (streams = tvChannelItem.getStreams()) == null || (streamItem = streams.get(0)) == null || (url = streamItem.getUrl()) == null || TvLiveDetailFragment.this.exposedStreamUrls.contains(url)) {
                return;
            }
            TvLiveDetailFragment.this.exposedStreamUrls.add(url);
            HashMap map = new HashMap();
            map.put("content_id", url);
            map.put(RequestParameters.POSITION, String.valueOf(i11 + 1));
            hj.i.f64505a.E("tv_channel_detail", map, BrowseType.CONTENT);
        }
    }

    public static final class c extends androidx.activity.u {
        c() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            TvLiveDetailFragment.this.T0();
        }
    }

    public static final class d implements com.transsion.player.orplayer.f {
        d() {
        }

        @Override // com.transsion.player.orplayer.f
        public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
            com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void initPlayer() {
            com.transsion.player.orplayer.f.a.b(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
            com.transsion.player.orplayer.f.a.c(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onBufferedPosition(long j11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.d(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onCompletion(ao.e eVar) {
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.isVideoPlaying = false;
                TvLiveDetailFragment.this.F1(false);
                TvLiveDetailFragment.this.A1(false);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onFocusChange(boolean z10) {
            com.transsion.player.orplayer.f.a.g(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onIsPlayingChanged(boolean z10) {
            com.transsion.player.orplayer.f.a.h(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingBegin(ao.e eVar) {
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.isVideoPlaying = false;
                TvLiveDetailFragment.this.Y0();
                TvLiveDetailFragment.this.F1(true);
                TvLiveDetailFragment.this.A1(false);
                pl.a aVar = TvLiveDetailFragment.this.playDotLayer;
                if (aVar != null) {
                    aVar.c();
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingEnd(ao.e eVar) {
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.Y0();
                TvLiveDetailFragment.this.F1(false);
                pl.a aVar = TvLiveDetailFragment.this.playDotLayer;
                if (aVar != null) {
                    aVar.d();
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingProgress(int i11, float f11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoopingStart() {
            com.transsion.player.orplayer.f.a.o(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onMediaItemTransition(String str) {
            com.transsion.player.orplayer.f.a.p(this, str);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayError(PlayError errorInfo, ao.e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.isVideoPlaying = false;
                TvLiveDetailFragment.this.F1(false);
                TvLiveDetailFragment.this.A1(false);
                TvLiveDetailFragment.this.B1(!nh.m.f70474a.e());
                pl.a aVar = TvLiveDetailFragment.this.playDotLayer;
                if (aVar != null) {
                    aVar.e(errorInfo);
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerRelease(ao.e eVar) {
            com.transsion.player.orplayer.f.a.t(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerReset() {
            com.transsion.player.orplayer.f.a.v(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPrepare(ao.e eVar) {
            com.transsion.player.orplayer.f.a.w(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onProgress(long j11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.y(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onRenderFirstFrame() {
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.Y0();
                TvLiveDetailFragment.this.F1(false);
                pl.a aVar = TvLiveDetailFragment.this.playDotLayer;
                if (aVar != null) {
                    aVar.g();
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onSetDataSource() {
            com.transsion.player.orplayer.f.a.B(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksAudioBitrateChange(int i11) {
            com.transsion.player.orplayer.f.a.C(this, i11);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksChange(mo.c cVar) {
            com.transsion.player.orplayer.f.a.D(this, cVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksVideoBitrateChange(int i11) {
            com.transsion.player.orplayer.f.a.E(this, i11);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoPause(ao.e eVar) {
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.isVideoPlaying = false;
                TvLiveDetailFragment.this.A1(false);
                pl.a aVar = TvLiveDetailFragment.this.playDotLayer;
                if (aVar != null) {
                    aVar.h();
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoSizeChanged(int i11, int i12) {
            com.transsion.player.orplayer.f.a.H(this, i11, i12);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoStart(ao.e eVar) {
            if (TvLiveDetailFragment.this.isAdded()) {
                TvLiveDetailFragment.this.isVideoPlaying = true;
                TvLiveDetailFragment.this.Y0();
                TvLiveDetailFragment.this.F1(false);
                TvLiveDetailFragment tvLiveDetailFragment = TvLiveDetailFragment.this;
                tvLiveDetailFragment.A1(tvLiveDetailFragment.isFullscreen);
                pl.a aVar = TvLiveDetailFragment.this.playDotLayer;
                if (aVar != null) {
                    aVar.i();
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void setOnSeekCompleteListener() {
            com.transsion.player.orplayer.f.a.K(this);
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45653a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45653a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45653a;
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
            this.f45653a.invoke(obj);
        }
    }

    public TvLiveDetailFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.home.tv.fragment.TvLiveDetailFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.home.tv.g.class), new Function0<x0>() { // from class: com.transsion.home.tv.fragment.TvLiveDetailFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.home.tv.fragment.TvLiveDetailFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.channelDetailAdapter = new com.transsion.home.tv.adapter.h();
        this.exposedStreamUrls = new HashSet();
        this.isOverlayVisible = true;
        this.isLockButtonVisible = true;
        this.loadStartTime = -1L;
        this.isFirstPlay = true;
        this.overlayHandler = new Handler(Looper.getMainLooper());
        this.hideOverlayRunnable = new Runnable() { // from class: com.transsion.home.tv.fragment.x
            @Override // java.lang.Runnable
            public final void run() {
                TvLiveDetailFragment.X0(this.f45684a);
            }
        };
        this.hideLockButtonRunnable = new Runnable() { // from class: com.transsion.home.tv.fragment.y
            @Override // java.lang.Runnable
            public final void run() {
                TvLiveDetailFragment.V0(this.f45685a);
            }
        };
        this.playerListener = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A1(boolean autoHide) {
        if (this.isControlsLocked) {
            this.isLockButtonVisible = true;
            I1();
            if (autoHide) {
                u1();
                return;
            } else {
                this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
                return;
            }
        }
        this.isOverlayVisible = true;
        this.isLockButtonVisible = true;
        I1();
        if (autoHide) {
            v1();
        } else {
            this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B1(boolean isNoNet) {
        gl.c0 mViewBinding;
        TextView textView;
        TextView textView2;
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            if (activity == null || !activity.isDestroyed()) {
                FragmentActivity activity2 = getActivity();
                if ((activity2 == null || !activity2.isFinishing()) && (mViewBinding = getMViewBinding()) != null) {
                    if (this.errorLayout == null) {
                        final View viewInflate = mViewBinding.f63668s.inflate();
                        ((TextView) viewInflate.findViewById(R$id.tv_fail_right_btn)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.u
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                TvLiveDetailFragment.C1(this.f45681a, view);
                            }
                        });
                        ((ImageView) viewInflate.findViewById(R$id.iv_fail_back)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.v
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                TvLiveDetailFragment.D1(this.f45682a, view);
                            }
                        });
                        ((TextView) viewInflate.findViewById(R$id.tv_fail_left_btn)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.w
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                TvLiveDetailFragment.E1(viewInflate, view);
                            }
                        });
                        this.errorLayout = viewInflate;
                    }
                    View view = this.errorLayout;
                    if (view != null && (textView2 = (TextView) view.findViewById(R$id.tv_fail_title)) != null) {
                        textView2.setText(getString(isNoNet ? R$string.long_vod_load_failed : com.tn.lib.widget.R$string.error_load_failed));
                    }
                    View view2 = this.errorLayout;
                    if (view2 != null && (textView = (TextView) view2.findViewById(R$id.tv_fail_left_btn)) != null) {
                        textView.setVisibility(isNoNet ? 0 : 8);
                    }
                    F1(false);
                    this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
                    this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
                    ORVideoView oRVideoView = this.playerView;
                    if (oRVideoView != null) {
                        oRVideoView.pause();
                    }
                    View view3 = this.errorLayout;
                    if (view3 != null) {
                        view3.setVisibility(0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.s1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(View view, View view2) {
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
    public final void F1(boolean show) {
        ProgressBar progressBar;
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (progressBar = mViewBinding.f63660k) == null) {
            return;
        }
        progressBar.setVisibility(show ? 0 : 8);
    }

    private final void G1() {
        if (this.isFullscreen) {
            boolean z10 = this.isControlsLocked;
            this.isControlsLocked = !z10;
            if (z10) {
                this.isOverlayVisible = true;
                this.isLockButtonVisible = true;
                this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
                I1();
                v1();
                return;
            }
            this.isOverlayVisible = false;
            this.isLockButtonVisible = true;
            this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
            u1();
            I1();
        }
    }

    private final void H1(ORVideoView view) {
        view.removePayerListener(this.playerListener);
    }

    /* JADX WARN: Code duplicated, block: B:96:0x0107  */
    private final void I1() {
        boolean z10;
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && isAdded()) {
            FragmentActivity activity = getActivity();
            if (activity == null || !activity.isDestroyed()) {
                FragmentActivity activity2 = getActivity();
                if (activity2 == null || !activity2.isFinishing()) {
                    boolean z11 = this.isFullscreen;
                    boolean z12 = !z11 || (!this.isControlsLocked && this.isOverlayVisible);
                    LinearLayout fsControls = mViewBinding.f63654e;
                    Intrinsics.g(fsControls, "fsControls");
                    fsControls.setVisibility(!z11 || (this.isFullscreen && z12) ? 0 : 8);
                    LinearLayout btnHelp = mViewBinding.f63652c;
                    Intrinsics.g(btnHelp, "btnHelp");
                    btnHelp.setVisibility(!z11 || (this.isFullscreen && z12) ? 0 : 8);
                    ImageView ivBack = mViewBinding.f63655f;
                    Intrinsics.g(ivBack, "ivBack");
                    ivBack.setVisibility(z12 ? 0 : 8);
                    View topGradient = mViewBinding.f63664o;
                    Intrinsics.g(topGradient, "topGradient");
                    topGradient.setVisibility(z12 ? 0 : 8);
                    TextView tvChannelName = mViewBinding.f63665p;
                    Intrinsics.g(tvChannelName, "tvChannelName");
                    tvChannelName.setVisibility(this.isFullscreen && z12 ? 0 : 8);
                    mViewBinding.f63665p.setText(this.currentChannelName);
                    boolean z13 = !z11 || this.isOverlayVisible;
                    View bottomGradient = mViewBinding.f63651b;
                    Intrinsics.g(bottomGradient, "bottomGradient");
                    bottomGradient.setVisibility(z13 ? 0 : 8);
                    BLFrameLayout liveBadge = mViewBinding.f63658i;
                    Intrinsics.g(liveBadge, "liveBadge");
                    liveBadge.setVisibility(z13 ? 0 : 8);
                    ImageView ivFullscreen = mViewBinding.f63656g;
                    Intrinsics.g(ivFullscreen, "ivFullscreen");
                    ivFullscreen.setVisibility(!z11 && z13 ? 0 : 8);
                    LinearLayout tapToLockLayout = mViewBinding.f63663n;
                    Intrinsics.g(tapToLockLayout, "tapToLockLayout");
                    if (this.isFullscreen) {
                        z10 = this.isControlsLocked ? this.isLockButtonVisible : this.isOverlayVisible;
                    }
                    tapToLockLayout.setVisibility(z10 ? 0 : 8);
                    mViewBinding.f63667r.setText(getString(this.isControlsLocked ? com.transsion.baseui.R$string.play_tap_unlock : com.transsion.home.R$string.home_tv_fullscreen_tap_to_lock));
                    mViewBinding.f63657h.setSelected(this.isControlsLocked);
                }
            }
        }
    }

    private final void M0(boolean isHide) {
        Window window;
        FragmentActivity fragmentActivityT1 = t1();
        if (fragmentActivityT1 == null || (window = fragmentActivityT1.getWindow()) == null) {
            return;
        }
        WindowCompat.setDecorFitsSystemWindows(window, !isHide);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
        if (!isHide) {
            windowInsetsControllerCompat.show(WindowInsetsCompat.Type.systemBars());
        } else {
            windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
            windowInsetsControllerCompat.setSystemBarsBehavior(2);
        }
    }

    private final void N0(ORVideoView view) {
        view.addPlayerListener(this.playerListener);
    }

    private final void O0() {
        this.isFullscreen = true;
        this.isControlsLocked = false;
        this.isOverlayVisible = true;
        this.isLockButtonVisible = true;
        requireActivity().setRequestedOrientation(6);
        M0(true);
        Q0();
        A1(true);
        HashMap map = new HashMap();
        map.put("module_name", "full_screen");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, RewardPlus.ICON);
        hj.i.f64505a.q("tv_channel_detail", map, ClickType.FEATURE);
    }

    private final void P0() {
        this.isFullscreen = false;
        this.isControlsLocked = false;
        this.isOverlayVisible = true;
        this.isLockButtonVisible = true;
        requireActivity().setRequestedOrientation(1);
        M0(false);
        r1();
        this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
        this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
        HashMap map = new HashMap();
        map.put("module_name", "back");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, RewardPlus.ICON);
        hj.i.f64505a.q("tv_channel_detail", map, ClickType.FEATURE);
    }

    private final void Q0() {
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = mViewBinding.f63659j.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar == null) {
            return;
        }
        bVar.I = null;
        bVar.f7678i = 0;
        bVar.f7680j = -1;
        bVar.f7684l = 0;
        mViewBinding.f63659j.setLayoutParams(bVar);
        RecyclerView rvChannels = mViewBinding.f63661l;
        Intrinsics.g(rvChannels, "rvChannels");
        rvChannels.setVisibility(8);
        View statusBarPlaceholder = mViewBinding.f63662m;
        Intrinsics.g(statusBarPlaceholder, "statusBarPlaceholder");
        statusBarPlaceholder.setVisibility(8);
        I1();
    }

    private final com.transsion.home.tv.g S0() {
        return (com.transsion.home.tv.g) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0() {
        if (this.isFullscreen) {
            P0();
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void U0() {
        if (!m1() && this.isFullscreen) {
            if (!this.isControlsLocked) {
                if (this.isOverlayVisible) {
                    W0();
                    return;
                } else {
                    A1(true);
                    return;
                }
            }
            this.isLockButtonVisible = !this.isLockButtonVisible;
            I1();
            if (this.isLockButtonVisible) {
                u1();
            } else {
                this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(TvLiveDetailFragment tvLiveDetailFragment) {
        if (tvLiveDetailFragment.isFullscreen && tvLiveDetailFragment.isControlsLocked && tvLiveDetailFragment.isVideoPlaying) {
            tvLiveDetailFragment.isLockButtonVisible = false;
            tvLiveDetailFragment.I1();
        }
    }

    private final void W0() {
        if (this.isControlsLocked) {
            return;
        }
        this.isOverlayVisible = false;
        this.isLockButtonVisible = false;
        this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
        I1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(TvLiveDetailFragment tvLiveDetailFragment) {
        if (tvLiveDetailFragment.isFullscreen && !tvLiveDetailFragment.isControlsLocked && tvLiveDetailFragment.isVideoPlaying) {
            tvLiveDetailFragment.isOverlayVisible = false;
            tvLiveDetailFragment.I1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0() {
        View view = this.errorLayout;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(TvLiveDetailFragment tvLiveDetailFragment) {
        String str = tvLiveDetailFragment.countryCode;
        if (str == null) {
            return;
        }
        tvLiveDetailFragment.S0().k(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.A1(tvLiveDetailFragment.isFullscreen);
        tvLiveDetailFragment.T0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.A1(tvLiveDetailFragment.isFullscreen);
        if (tvLiveDetailFragment.isFullscreen) {
            tvLiveDetailFragment.P0();
        } else {
            tvLiveDetailFragment.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.A1(tvLiveDetailFragment.isFullscreen);
        tvLiveDetailFragment.n1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.A1(tvLiveDetailFragment.isFullscreen);
        tvLiveDetailFragment.o1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.G1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewGroup f1(TvLiveDetailFragment tvLiveDetailFragment, FragmentActivity fragmentActivity) {
        if (tvLiveDetailFragment.t1() != null) {
            return (ViewGroup) fragmentActivity.findViewById(R.id.content);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.U0();
    }

    private final void h1() {
        FrameLayout frameLayout;
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (frameLayout = mViewBinding.f63659j) == null) {
            return;
        }
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.i1(this.f45673a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(TvLiveDetailFragment tvLiveDetailFragment, View view) {
        tvLiveDetailFragment.U0();
    }

    private final void initExposureHelper() {
        if (this.exposureHelper != null) {
            return;
        }
        hl.b bVar = new hl.b(0.6f, new b(), false, 4, null);
        bVar.l(2);
        this.exposureHelper = bVar;
    }

    private final void initPlayer() {
        FrameLayout frameLayout;
        final FragmentActivity fragmentActivityT1 = t1();
        if (fragmentActivityT1 == null) {
            return;
        }
        pl.a aVar = new pl.a();
        aVar.b();
        this.playDotLayer = aVar;
        ORVideoView oRVideoView = new ORVideoView(fragmentActivityT1);
        oRVideoView.initCreatePlayer(fragmentActivityT1, l0.f66968a.s());
        oRVideoView.setActivityContainerCallback(new Function0() { // from class: com.transsion.home.tv.fragment.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TvLiveDetailFragment.f1(this.f45655a, fragmentActivityT1);
            }
        });
        N0(oRVideoView);
        oRVideoView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.g1(this.f45658a, view);
            }
        });
        this.playerView = oRVideoView;
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f63659j) != null) {
            frameLayout.addView(oRVideoView, new ViewGroup.LayoutParams(-1, -1));
        }
        showLoadingView();
        loadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(TvLiveDetailFragment tvLiveDetailFragment, TvChannelItem tvChannelItem) {
        HashMap mapG;
        if (tvLiveDetailFragment.t1() == null) {
            return Unit.f67061a;
        }
        tvLiveDetailFragment.showContentView();
        if (tvChannelItem == null) {
            uh.b.f76753a.d(com.transsion.home.R$string.home_tv_play_error);
            return Unit.f67061a;
        }
        hj.b logViewConfig = tvLiveDetailFragment.getLogViewConfig();
        if (logViewConfig != null && !logViewConfig.i()) {
            hj.b logViewConfig2 = tvLiveDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
            hj.b logViewConfig3 = tvLiveDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            }
        }
        tvLiveDetailFragment.channelDetailAdapter.H1(tvChannelItem.getChannelId());
        tvLiveDetailFragment.p1(tvChannelItem);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k1(TvLiveDetailFragment tvLiveDetailFragment, TvChannelListDataBean tvChannelListDataBean) {
        if (tvChannelListDataBean == null) {
            if (tvLiveDetailFragment.channelDetailAdapter.h0().r()) {
                tvLiveDetailFragment.channelDetailAdapter.h0().v();
            }
            return Unit.f67061a;
        }
        List<TvChannelItem> items = tvChannelListDataBean.getItems();
        if (items == null) {
            items = CollectionsKt.l();
        }
        if (tvLiveDetailFragment.S0().i()) {
            tvLiveDetailFragment.channelDetailAdapter.n1(items);
        } else {
            tvLiveDetailFragment.channelDetailAdapter.q(items);
        }
        if (tvLiveDetailFragment.channelDetailAdapter.h0().r()) {
            tvLiveDetailFragment.channelDetailAdapter.h0().s();
        }
        if (!tvLiveDetailFragment.S0().h()) {
            r6.f.u(tvLiveDetailFragment.channelDetailAdapter.h0(), false, 1, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(TvLiveDetailFragment tvLiveDetailFragment, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        String url;
        StreamItem streamItem;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        TvChannelItem tvChannelItem = (TvChannelItem) tvLiveDetailFragment.channelDetailAdapter.getItem(i11);
        String channelId = tvChannelItem.getChannelId();
        if (channelId == null || channelId.length() == 0) {
            uh.b.f76753a.d(com.transsion.home.R$string.home_tv_play_error);
            return;
        }
        if (Intrinsics.c(channelId, tvLiveDetailFragment.channelId)) {
            return;
        }
        HashMap map = new HashMap();
        List<StreamItem> streams = tvChannelItem.getStreams();
        if (streams == null || (streamItem = streams.get(0)) == null || (url = streamItem.getUrl()) == null) {
            url = "";
        }
        map.put("content_id", url);
        map.put(RequestParameters.POSITION, String.valueOf(i11 + 1));
        hj.i.f64505a.q("tv_channel_detail", map, ClickType.CONTENT);
        lg.a.f68839a.c("TvLiveDetailFragment", "switchChannel channelId=" + channelId, false);
        tvLiveDetailFragment.channelId = channelId;
        tvLiveDetailFragment.S0().j(channelId);
    }

    private final void loadData() {
        this.loadStartTime = System.currentTimeMillis();
        String str = this.channelId;
        if (str != null) {
            S0().j(str);
        }
        String str2 = this.countryCode;
        if (str2 != null) {
            S0().l(str2);
        }
    }

    private final boolean m1() {
        View view = this.errorLayout;
        return view != null && view.getVisibility() == 0;
    }

    private final void n1() {
        Navigator.x(TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.channelId), requireContext(), null, 2, null);
    }

    private final void o1() {
        Navigator.x(TheRouter.c("/profile/watch_option"), requireContext(), null, 2, null);
    }

    private final void p1(TvChannelItem channel) {
        gl.c0 mViewBinding;
        TextView textView;
        StreamItem streamItem;
        List<StreamItem> streams = channel.getStreams();
        String url = (streams == null || (streamItem = (StreamItem) CollectionsKt.k0(streams)) == null) ? null : streamItem.getUrl();
        if (url == null || url.length() == 0) {
            lg.a.f68839a.x("TvLiveDetailFragment", "playStream: stream url is empty for channel=" + channel.getChannelId(), true);
            uh.b.f76753a.d(com.transsion.home.R$string.home_tv_play_error);
            return;
        }
        lg.a.f68839a.c("TvLiveDetailFragment", "playStream url=" + url, false);
        if (this.isFirstPlay) {
            this.isFirstPlay = false;
        } else {
            pl.a aVar = this.playDotLayer;
            if (aVar != null) {
                aVar.a();
            }
        }
        pl.a aVar2 = this.playDotLayer;
        if (aVar2 != null) {
            aVar2.f(url);
        }
        this.currentChannelName = channel.getTitle();
        this.currentChannel = channel;
        Y0();
        F1(true);
        A1(false);
        if (this.isFullscreen && (mViewBinding = getMViewBinding()) != null && (textView = mViewBinding.f63665p) != null) {
            textView.setText(this.currentChannelName);
        }
        ao.e eVar = new ao.e(String.valueOf(url.hashCode()), url, 0, null, null, 28, null);
        eVar.r(true);
        eVar.p(true);
        eVar.s(true);
        ORVideoView oRVideoView = this.playerView;
        if (oRVideoView != null) {
            oRVideoView.setMediaData(eVar);
            oRVideoView.prepare();
            oRVideoView.play();
        }
    }

    private final void q1() {
        pl.a aVar = this.playDotLayer;
        if (aVar != null) {
            aVar.a();
        }
        this.playDotLayer = null;
        ORVideoView oRVideoView = this.playerView;
        if (oRVideoView != null) {
            H1(oRVideoView);
        }
        ORVideoView oRVideoView2 = this.playerView;
        if (oRVideoView2 != null) {
            oRVideoView2.release();
        }
        this.playerView = null;
        this.isVideoPlaying = false;
        this.currentChannel = null;
        this.errorLayout = null;
        F1(false);
        this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
        this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
    }

    private final void r1() {
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = mViewBinding.f63659j.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar == null) {
            return;
        }
        bVar.I = "h,16:9";
        bVar.f7678i = -1;
        bVar.f7680j = com.transsion.home.R$id.statusBarPlaceholder;
        bVar.f7684l = -1;
        mViewBinding.f63659j.setLayoutParams(bVar);
        RecyclerView rvChannels = mViewBinding.f63661l;
        Intrinsics.g(rvChannels, "rvChannels");
        rvChannels.setVisibility(0);
        View statusBarPlaceholder = mViewBinding.f63662m;
        Intrinsics.g(statusBarPlaceholder, "statusBarPlaceholder");
        statusBarPlaceholder.setVisibility(0);
        I1();
    }

    private final void s1() {
        if (nh.m.f70474a.e()) {
            TvChannelItem tvChannelItem = this.currentChannel;
            if (tvChannelItem != null) {
                p1(tvChannelItem);
                return;
            }
            String str = this.channelId;
            if (str == null || str.length() == 0) {
                uh.b.f76753a.d(com.transsion.home.R$string.home_tv_play_error);
            } else {
                S0().j(str);
            }
        }
    }

    private final FragmentActivity t1() {
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return null;
        }
        return activity;
    }

    private final void u1() {
        this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
        if (this.isFullscreen && this.isControlsLocked && this.isVideoPlaying) {
            this.overlayHandler.postDelayed(this.hideLockButtonRunnable, 3000L);
        }
    }

    private final void v1() {
        this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
        if (this.isFullscreen && !this.isControlsLocked && this.isVideoPlaying) {
            this.overlayHandler.postDelayed(this.hideOverlayRunnable, 3000L);
        }
    }

    private final void w1() {
        RecyclerView recyclerView;
        initExposureHelper();
        this.channelDetailAdapter.G1(new Function1() { // from class: com.transsion.home.tv.fragment.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TvLiveDetailFragment.x1(this.f45686a, ((Integer) obj).intValue());
            }
        });
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f63661l) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(this.channelDetailAdapter);
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            recyclerView.removeOnScrollListener(bVar);
            recyclerView.addOnScrollListener(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(TvLiveDetailFragment tvLiveDetailFragment, int i11) {
        hl.b bVar;
        RecyclerView recyclerView;
        gl.c0 mViewBinding = tvLiveDetailFragment.getMViewBinding();
        RecyclerView.m layoutManager = (mViewBinding == null || (recyclerView = mViewBinding.f63661l) == null) ? null : recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager != null && (bVar = tvLiveDetailFragment.exposureHelper) != null) {
            bVar.h(linearLayoutManager, i11, true);
        }
        return Unit.f67061a;
    }

    private final void y1() {
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        final RecyclerView rvChannels = mViewBinding.f63661l;
        Intrinsics.g(rvChannels, "rvChannels");
        final int paddingBottom = rvChannels.getPaddingBottom();
        ViewCompat.setOnApplyWindowInsetsListener(mViewBinding.getRoot(), new OnApplyWindowInsetsListener() { // from class: com.transsion.home.tv.fragment.t
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return TvLiveDetailFragment.z1(rvChannels, paddingBottom, view, windowInsetsCompat);
            }
        });
        ViewCompat.requestApplyInsets(mViewBinding.getRoot());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat z1(RecyclerView recyclerView, int i11, View view, WindowInsetsCompat insets) {
        Intrinsics.h(view, "<unused var>");
        Intrinsics.h(insets, "insets");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i11 + insets.getInsets(WindowInsetsCompat.Type.navigationBars()).f79128d);
        return insets;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: R0, reason: merged with bridge method [inline-methods] */
    public gl.c0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gl.c0 c0VarC = gl.c0.c(inflater);
        Intrinsics.g(c0VarC, "inflate(...)");
        return c0VarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        return LayoutInflater.from(requireContext()).inflate(R$layout.default_tv_live_detail_skeleton_drawing_layout, (ViewGroup) getFlStateView(), false);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        mViewBinding.f63655f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.a1(this.f45665a, view);
            }
        });
        mViewBinding.f63656g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.b1(this.f45674a, view);
            }
        });
        mViewBinding.f63652c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.c1(this.f45675a, view);
            }
        });
        mViewBinding.f63653d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.d1(this.f45676a, view);
            }
        });
        mViewBinding.f63663n.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.tv.fragment.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TvLiveDetailFragment.e1(this.f45677a, view);
            }
        });
        this.channelDetailAdapter.h0().D(new p6.f() { // from class: com.transsion.home.tv.fragment.s
            @Override // p6.f
            public final void a() {
                TvLiveDetailFragment.Z0(this.f45678a);
            }
        });
        requireActivity().getOnBackPressedDispatcher().i(this, new c());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        View view;
        View view2;
        ViewGroup.LayoutParams layoutParams;
        gl.c0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view2 = mViewBinding.f63662m) != null && (layoutParams = view2.getLayoutParams()) != null) {
            layoutParams.height = com.blankj.utilcode.util.d.c();
        }
        gl.c0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (view = mViewBinding2.f63662m) != null) {
            view.requestLayout();
        }
        w1();
        y1();
        initPlayer();
        h1();
        I1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        S0().e().j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.home.tv.fragment.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TvLiveDetailFragment.j1(this.f45660a, (TvChannelItem) obj);
            }
        }));
        S0().f().j(getViewLifecycleOwner(), new e(new Function1() { // from class: com.transsion.home.tv.fragment.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TvLiveDetailFragment.k1(this.f45661a, (TvChannelListDataBean) obj);
            }
        }));
        this.channelDetailAdapter.w1(new p6.d() { // from class: com.transsion.home.tv.fragment.e0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                TvLiveDetailFragment.l1(this.f45663a, baseQuickAdapter, view, i11);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("tv_channel_detail", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (this.isFullscreen) {
            P0();
        } else {
            M0(false);
        }
        super.onDestroyView();
        q1();
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        this.exposureHelper = null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        List<StreamItem> streams;
        StreamItem streamItem;
        String url;
        pl.a aVar;
        super.onResume();
        M0(this.isFullscreen);
        ORVideoView oRVideoView = this.playerView;
        if ((oRVideoView == null || !oRVideoView.isComplete()) && !m1()) {
            ORVideoView oRVideoView2 = this.playerView;
            if (oRVideoView2 != null) {
                oRVideoView2.play();
            }
            TvChannelItem tvChannelItem = this.currentChannel;
            if (tvChannelItem != null && (streams = tvChannelItem.getStreams()) != null && (streamItem = (StreamItem) CollectionsKt.k0(streams)) != null && (url = streamItem.getUrl()) != null && (aVar = this.playDotLayer) != null) {
                aVar.f(url);
            }
        }
        if (this.isFullscreen) {
            v1();
            u1();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        ORVideoView oRVideoView = this.playerView;
        if (oRVideoView != null) {
            oRVideoView.pause();
        }
        hl.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.e();
        }
        this.overlayHandler.removeCallbacks(this.hideOverlayRunnable);
        this.overlayHandler.removeCallbacks(this.hideLockButtonRunnable);
        FragmentActivity activity = getActivity();
        if (activity != null && activity.isFinishing()) {
            q1();
            return;
        }
        pl.a aVar = this.playDotLayer;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        Bundle arguments = getArguments();
        this.channelId = arguments != null ? arguments.getString(TmcStartParams.KEY_CHANNEL_ID) : null;
        Bundle arguments2 = getArguments();
        this.countryCode = arguments2 != null ? arguments2.getString("countryCode") : null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        loadData();
    }
}
