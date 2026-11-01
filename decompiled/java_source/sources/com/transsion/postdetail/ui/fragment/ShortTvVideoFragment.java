package com.transsion.postdetail.ui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.DefaultView;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.TnTextView;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.memberapi.IMemberApi;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.config.RenderType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.control.SubjectVideoPagerChangeControl;
import com.transsion.postdetail.helper.ShortTvImmVideoHelper;
import com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoader;
import com.transsion.postdetail.ui.view.ImmVideoLoadMoreView;
import com.transsion.postdetail.ui.view.ImmVideoNoNetworkView;
import com.transsion.postdetail.viewmodel.ImmVideoRequestEntity;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u0087\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001BB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u0017\u0010\"\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u0017\u0010'\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0019\u0010+\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J!\u00101\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b1\u00102J!\u00103\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b3\u00102J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u0017\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\u0005J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020)H\u0016¢\u0006\u0004\b?\u0010,J\u000f\u0010@\u001a\u00020\u0006H\u0016¢\u0006\u0004\b@\u0010\u0005R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010F\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010CR\u0016\u0010I\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010L\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR$\u0010R\u001a\u0004\u0018\u00010A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010C\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u0016\u0010T\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010CR\u0016\u0010V\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010HR\u0016\u0010X\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010KR\u001b\u0010^\u001a\u00020Y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\u0018\u0010b\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0016\u0010t\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010KR\u0016\u0010v\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010KR\u0016\u0010x\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010KR\u0016\u0010z\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010HR%\u0010\u0082\u0001\u001a\u00020{8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001¨\u0006\u0088\u0001"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lso/u;", "Lzm/e;", "<init>", "()V", "", "initPlayer", "initAdapter", "initViewModel", "initBack", "observeRemoveVideo", "Lcom/transsion/moviedetailapi/bean/ShortTVRespData;", "subjectBean", "K0", "(Lcom/transsion/moviedetailapi/bean/ShortTVRespData;)V", "showNotNetError", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "getNotNetErrorView", "hideProgress", "showProgress", "loadMore", "loadData", "doLoadData", "", "it", "scrollToPosition", "(I)V", "initAd", "I0", "(Landroid/content/Context;)V", "initNonAd", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lso/u;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "onPause", "", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "onDestroy", "outState", "onSaveInstanceState", "onMemberStateChange", "", "a", "Ljava/lang/String;", "mPostId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mItemType", "c", "I", "mTabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "fromComment", "e", "getTran_ops", "()Ljava/lang/String;", "setTran_ops", "(Ljava/lang/String;)V", "tran_ops", "f", "mNextPage", "g", "mPerPage", "h", "videoLoadMore", "Lcom/transsion/postdetail/viewmodel/x;", "i", "Lkotlin/Lazy;", "u0", "()Lcom/transsion/postdetail/viewmodel/x;", "mVideoViewModel", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "j", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "mPagerLayoutManager", "Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/postdetail/control/SubjectVideoPagerChangeControl;", "mPagerChangeControl", "Lcom/transsion/postdetail/ui/adapter/l;", "l", "Lcom/transsion/postdetail/ui/adapter/l;", "mAdapter", "Lcom/transsion/player/orplayer/g;", "m", "Lcom/transsion/player/orplayer/g;", "mOrPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "n", "Lcom/transsion/player/ui/ORPlayerView;", "mOrPlayerView", "o", "isLoadingData", TtmlNode.TAG_P, "isFirstLoadMore", CampaignEx.JSON_KEY_AD_Q, "attachToMain", CampaignEx.JSON_KEY_AD_R, "savedCurrentIndex", "", "s", "J", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "t", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", TmcStartParams.KEY_URL_SHORT, "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvVideoFragment extends BaseFragment<so.u> implements zm.e {

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int mTabId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean fromComment;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String tran_ops;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean videoLoadMore;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy mVideoViewModel;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager mPagerLayoutManager;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private SubjectVideoPagerChangeControl mPagerChangeControl;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.ui.adapter.l mAdapter;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g mOrPlayer;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView mOrPlayerView;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadingData;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstLoadMore;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean attachToMain;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private int savedCurrentIndex;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private long resumeTimeStamp;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private BiddingListManager v3ListManager;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String mPostId = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String mItemType = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String mNextPage = "1";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 5;

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.ShortTvVideoFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvVideoFragment a(Context context, String str, String str2, Integer num, boolean z10, boolean z11, String str3, boolean z12) {
            String string;
            Intrinsics.h(context, "context");
            ShortTvVideoFragment shortTvVideoFragment = new ShortTvVideoFragment();
            shortTvVideoFragment.I0(context);
            ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
            immVideoRequestEntity.setPage("1");
            immVideoRequestEntity.setPerPage(5);
            immVideoRequestEntity.setSessionId(yg.b.f79009a.h());
            Uri uriC = com.transsion.baselib.report.h.f43348a.c();
            if (uriC == null || (string = uriC.toString()) == null) {
                string = "";
            }
            immVideoRequestEntity.setDeepLink(string);
            immVideoRequestEntity.setUserPrefer("");
            immVideoRequestEntity.setLatest_events(new wj.a(wj.b.f77693a.e()));
            immVideoRequestEntity.setPostId("0");
            immVideoRequestEntity.setTabId(num != null ? num.intValue() : 0);
            immVideoRequestEntity.setImmersiveRecType(1);
            shortTvVideoFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("id", str), TuplesKt.a("item_type", str2), TuplesKt.a("tab_id", num), TuplesKt.a("video_load_more", Boolean.valueOf(z10)), TuplesKt.a("from_comment", Boolean.valueOf(z11)), TuplesKt.a("rec_ops", str3), TuplesKt.a("attach_to_main", Boolean.valueOf(z12)), TuplesKt.a("yy_preload_id", Integer.valueOf(qm.e.f73644a.c(new VideoImmersiveDataLoader(immVideoRequestEntity))))));
            return shortTvVideoFragment;
        }
    }

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            FragmentActivity activity = ShortTvVideoFragment.this.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public static final class c implements nh.n {
        c() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            r6.f fVarH0;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (((ShortTVRespData) ShortTvVideoFragment.this.u0().l().f()) == null) {
                ShortTvVideoFragment.this.loadData();
                return;
            }
            com.transsion.postdetail.ui.adapter.l lVar = ShortTvVideoFragment.this.mAdapter;
            if (((lVar == null || (fVarH0 = lVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail) {
                ShortTvVideoFragment.this.loadMore();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49639a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49639a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49639a;
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
            this.f49639a.invoke(obj);
        }
    }

    public ShortTvVideoFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.postdetail.ui.fragment.ShortTvVideoFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.mVideoViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.postdetail.viewmodel.x.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.fragment.ShortTvVideoFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.fragment.ShortTvVideoFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.isFirstLoadMore = true;
        this.savedCurrentIndex = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(ShortTvVideoFragment shortTvVideoFragment) {
        shortTvVideoFragment.loadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ShortTvVideoFragment shortTvVideoFragment) {
        r6.f fVarH0;
        shortTvVideoFragment.isLoadingData = false;
        com.transsion.postdetail.ui.adapter.l lVar = shortTvVideoFragment.mAdapter;
        if (lVar == null || (fVarH0 = lVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(ShortTvVideoFragment shortTvVideoFragment, View view) {
        shortTvVideoFragment.requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D0(ShortTvVideoFragment shortTvVideoFragment, ShortTVRespData shortTVRespData) {
        r6.f fVarH0;
        com.transsion.postdetail.ui.adapter.l lVar;
        r6.f fVarH1;
        List<Object> data;
        shortTvVideoFragment.isLoadingData = false;
        if (shortTVRespData == null) {
            com.transsion.postdetail.ui.adapter.l lVar2 = shortTvVideoFragment.mAdapter;
            if (lVar2 == null || (data = lVar2.getData()) == null || data.size() != 0) {
                com.transsion.postdetail.ui.adapter.l lVar3 = shortTvVideoFragment.mAdapter;
                if (lVar3 != null && (fVarH0 = lVar3.h0()) != null && fVarH0.r() && (lVar = shortTvVideoFragment.mAdapter) != null && (fVarH1 = lVar.h0()) != null) {
                    fVarH1.v();
                }
            } else if (nh.m.f70474a.e()) {
                shortTvVideoFragment.showEmpty();
            } else {
                shortTvVideoFragment.showNotNetError();
            }
        } else {
            shortTvVideoFragment.K0(shortTVRespData);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(ShortTvVideoFragment shortTvVideoFragment, String str) {
        if (TextUtils.equals("0", str)) {
            ty.b.f76417a.a().e(shortTvVideoFragment.mPostId);
            FragmentActivity activity = shortTvVideoFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        } else {
            uh.b.a aVar = uh.b.f76753a;
            FragmentActivity activity2 = shortTvVideoFragment.getActivity();
            aVar.e(activity2 != null ? activity2.getString(R$string.delete_post_failed) : null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(ShortTvVideoFragment shortTvVideoFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            shortTvVideoFragment.showProgress();
            shortTvVideoFragment.loadData();
        } else {
            shortTvVideoFragment.K0(new ShortTVRespData(CollectionsKt.U0(list2), null, false));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(final ShortTvVideoFragment shortTvVideoFragment, final Integer num) {
        RecyclerView recyclerView;
        try {
            if (num.intValue() >= 0) {
                SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = shortTvVideoFragment.mPagerChangeControl;
                if (subjectVideoPagerChangeControl != null) {
                    subjectVideoPagerChangeControl.r();
                }
                com.transsion.postdetail.ui.adapter.l lVar = shortTvVideoFragment.mAdapter;
                if (lVar != null) {
                    Intrinsics.e(num);
                    lVar.G0(num.intValue());
                }
                so.u mViewBinding = shortTvVideoFragment.getMViewBinding();
                if (mViewBinding != null && (recyclerView = mViewBinding.f75728d) != null) {
                    recyclerView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.l5
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShortTvVideoFragment.H0(this.f49753a, num);
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(ShortTvVideoFragment shortTvVideoFragment, Integer num) {
        RecyclerView.b0 b0VarFindViewHolderForAdapterPosition;
        RecyclerView recyclerView;
        Integer numValueOf;
        so.u mViewBinding = shortTvVideoFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f75728d) == null) {
            b0VarFindViewHolderForAdapterPosition = null;
        } else {
            com.transsion.postdetail.ui.adapter.l lVar = shortTvVideoFragment.mAdapter;
            if (lVar != null) {
                int iA0 = lVar.a0();
                Intrinsics.e(num);
                numValueOf = Integer.valueOf(iA0 + num.intValue());
            } else {
                numValueOf = num;
            }
            Intrinsics.e(numValueOf);
            b0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(numValueOf.intValue());
        }
        SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = shortTvVideoFragment.mPagerChangeControl;
        if (subjectVideoPagerChangeControl != null) {
            Intrinsics.e(num);
            subjectVideoPagerChangeControl.f(num.intValue(), true, b0VarFindViewHolderForAdapterPosition != null ? b0VarFindViewHolderForAdapterPosition.itemView : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I0(Context context) {
        ShortTvImmVideoHelper.f48854k.a().v(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(ShortTvVideoFragment shortTvVideoFragment, int i11) {
        PagerLayoutManager pagerLayoutManager = shortTvVideoFragment.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewT = pagerLayoutManager.T();
            if (viewT != null) {
                lg.a.C0828a.r(lg.a.f68839a, "ShortTvImmVideoPlayer", new String[]{"initView2， scrollToPosition ：" + i11}, false, 4, null);
                SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = shortTvVideoFragment.mPagerChangeControl;
                if (subjectVideoPagerChangeControl != null) {
                    subjectVideoPagerChangeControl.f(i11, true, viewT);
                    return;
                }
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = pagerLayoutManager.getChildAt(i12);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i11) {
                    lg.a.C0828a.r(lg.a.f68839a, "ShortTvImmVideoPlayer", new String[]{"initView， scrollToPosition ：" + i11}, false, 4, null);
                    SubjectVideoPagerChangeControl subjectVideoPagerChangeControl2 = shortTvVideoFragment.mPagerChangeControl;
                    if (subjectVideoPagerChangeControl2 != null) {
                        subjectVideoPagerChangeControl2.f(i11, true, childAt);
                        return;
                    }
                    return;
                }
            }
        }
    }

    private final void K0(ShortTVRespData subjectBean) {
        String nextPage;
        com.transsion.postdetail.ui.adapter.l lVar;
        r6.f fVarH0;
        r6.f fVarH1;
        com.transsion.postdetail.ui.adapter.l lVar2;
        r6.f fVarH2;
        String url;
        Media video;
        hideProgress();
        Pager pager = subjectBean.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "1";
        }
        this.mNextPage = nextPage;
        List<Subject> items = subjectBean.getItems();
        if (items != null) {
            Iterator<Subject> it = items.iterator();
            while (it.hasNext()) {
                Subject next = it.next();
                ShortTVItem shortTVFirstEp = next.getShortTVFirstEp();
                if (((shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) ? null : video.getVideoAddress()) != null) {
                    ShortTVItem shortTVFirstEp2 = next.getShortTVFirstEp();
                    Media video2 = shortTVFirstEp2 != null ? shortTVFirstEp2.getVideo() : null;
                    Intrinsics.e(video2);
                    Video videoAddress = video2.getVideoAddress();
                    if (videoAddress == null || (url = videoAddress.getUrl()) == null || url.length() != 0) {
                    }
                }
                it.remove();
            }
            com.transsion.postdetail.ui.adapter.l lVar3 = this.mAdapter;
            List<Object> data = lVar3 != null ? lVar3.getData() : null;
            ArrayList arrayList = new ArrayList();
            if (data == null || !(!data.isEmpty())) {
                arrayList.addAll(items);
            } else {
                Iterator<Subject> it2 = items.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl != null) {
                subjectVideoPagerChangeControl.g(arrayList);
            }
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl2 = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl2 != null) {
                subjectVideoPagerChangeControl2.o();
            }
            if (this.attachToMain) {
                ShortTvImmVideoHelper shortTvImmVideoHelperA = ShortTvImmVideoHelper.f48854k.a();
                com.transsion.postdetail.ui.adapter.l lVar4 = this.mAdapter;
                shortTvImmVideoHelperA.z(lVar4 != null ? lVar4.getData() : null);
            }
        }
        com.transsion.postdetail.ui.adapter.l lVar5 = this.mAdapter;
        if (lVar5 != null && (fVarH1 = lVar5.h0()) != null && fVarH1.r() && (lVar2 = this.mAdapter) != null && (fVarH2 = lVar2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager2 = subjectBean.getPager();
        if ((pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) && (lVar = this.mAdapter) != null && (fVarH0 = lVar.h0()) != null) {
            r6.f.u(fVarH0, false, 1, null);
        }
        int i11 = this.savedCurrentIndex;
        if (i11 >= 0) {
            scrollToPosition(i11);
            this.savedCurrentIndex = -1;
        }
    }

    private final void doLoadData() {
        if (this.isLoadingData) {
            return;
        }
        this.isLoadingData = true;
        u0().k(this.mPostId, this.mTabId, this.mNextPage, this.mPerPage, 1);
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
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
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.r5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvVideoFragment.t0(this.f49810a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final View getNotNetErrorView(Context context) {
        final ImmVideoNoNetworkView immVideoNoNetworkView = new ImmVideoNoNetworkView(context);
        jg.c.e(immVideoNoNetworkView);
        immVideoNoNetworkView.retry(new Function0() { // from class: com.transsion.postdetail.ui.fragment.o5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvVideoFragment.v0(immVideoNoNetworkView, this);
            }
        });
        immVideoNoNetworkView.goToSetting(new Function0() { // from class: com.transsion.postdetail.ui.fragment.p5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvVideoFragment.w0();
            }
        });
        com.tn.lib.view.r.a("shorttv_detail_video");
        return immVideoNoNetworkView;
    }

    private final void hideProgress() {
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        this.v3ListManager = biddingListManager;
        so.u mViewBinding = getMViewBinding();
        biddingListManager.F(mViewBinding != null ? mViewBinding.f75728d : null);
        BiddingListManager biddingListManager2 = this.v3ListManager;
        if (biddingListManager2 != null) {
            biddingListManager2.A(androidx.p009lifecycle.v.a(this));
        }
        BiddingListManager biddingListManager3 = this.v3ListManager;
        if (biddingListManager3 != null) {
            biddingListManager3.G("VideoForYouListScene");
        }
        BiddingListManager biddingListManager4 = this.v3ListManager;
        if (biddingListManager4 != null) {
            biddingListManager4.z(new Function2() { // from class: com.transsion.postdetail.ui.fragment.s5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ShortTvVideoFragment.y0(this.f49818a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
                }
            });
        }
    }

    private final void initAdapter() {
        com.transsion.postdetail.ui.adapter.l lVar = new com.transsion.postdetail.ui.adapter.l(new ArrayList(), this, this.mPostId, this.mItemType, this.attachToMain);
        lVar.h0().z(this.videoLoadMore);
        if (this.videoLoadMore) {
            lVar.h0().C(new ImmVideoLoadMoreView());
            lVar.h0().z(true);
            lVar.h0().y(true);
            lVar.h0().E(2);
            lVar.h0().D(new p6.f() { // from class: com.transsion.postdetail.ui.fragment.u5
                @Override // p6.f
                public final void a() {
                    ShortTvVideoFragment.z0(this.f49833a);
                }
            });
        }
        this.mAdapter = lVar;
    }

    private final void initBack() {
        AppCompatImageView appCompatImageView;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView2;
        ConstraintLayout constraintLayout;
        so.u mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (constraintLayout = mViewBinding.f75729e) == null) ? null : constraintLayout.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).topMargin = com.blankj.utilcode.util.d.c();
        if (this.mPostId.length() == 0) {
            so.u mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (appCompatImageView2 = mViewBinding2.f75726b) == null) {
                return;
            }
            jg.c.g(appCompatImageView2);
            return;
        }
        so.u mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (tnTextView = mViewBinding3.f75730f) != null) {
            jg.c.g(tnTextView);
        }
        so.u mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView = mViewBinding4.f75726b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.t5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTvVideoFragment.C0(this.f49825a, view);
                }
            });
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new b());
    }

    private final void initNonAd() {
    }

    private final void initPlayer() {
        com.transsion.player.orplayer.g gVarA;
        ap.b bVar = ap.b.f16089a;
        if (bVar.b()) {
            gVarA = new lo.e(null, 1, null);
            gVarA.setLooping(true);
            gVarA.prepare();
            gVarA.play();
        } else {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            gVarA = new com.transsion.player.orplayer.g.a(contextRequireContext).b(new bo.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, true, false, false, false, null, 126975, null)).a();
        }
        this.mOrPlayer = gVarA;
        if (bVar.b()) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            ORPlayerView oRPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.SURFACE_VIEW);
            this.mOrPlayerView = oRPlayerView;
            com.transsion.player.orplayer.g gVar = this.mOrPlayer;
            if (gVar != null) {
                gVar.setSurfaceView(oRPlayerView.getSurface());
            }
        } else {
            FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
            ORPlayerView oRPlayerView2 = new ORPlayerView(fragmentActivityRequireActivity2, RenderType.TEXTURE_VIEW);
            this.mOrPlayerView = oRPlayerView2;
            com.transsion.player.orplayer.g gVar2 = this.mOrPlayer;
            if (gVar2 != null) {
                gVar2.setTextureView(oRPlayerView2.getTextureView());
            }
        }
        com.transsion.player.orplayer.g gVar3 = this.mOrPlayer;
        if (gVar3 != null) {
            gVar3.setLooping(true);
        }
    }

    private final void initViewModel() {
        u0().l().j(this, new d(new Function1() { // from class: com.transsion.postdetail.ui.fragment.h5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvVideoFragment.D0(this.f49721a, (ShortTVRespData) obj);
            }
        }));
        u0().j().j(this, new d(new Function1() { // from class: com.transsion.postdetail.ui.fragment.m5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvVideoFragment.E0(this.f49761a, (String) obj);
            }
        }));
        if (this.attachToMain) {
            ShortTvImmVideoHelper.f48854k.a().n().j(this, new d(new Function1() { // from class: com.transsion.postdetail.ui.fragment.n5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShortTvVideoFragment.F0(this.f49766a, (List) obj);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        doLoadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadMore() {
        loadData();
    }

    private final void observeRemoveVideo() {
        u0().o().j(this, new d(new Function1() { // from class: com.transsion.postdetail.ui.fragment.q5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvVideoFragment.G0(this.f49803a, (Integer) obj);
            }
        }));
    }

    private final void scrollToPosition(final int it) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<Object> data;
        com.transsion.postdetail.ui.adapter.l lVar = this.mAdapter;
        if (((lVar == null || (data = lVar.getData()) == null) ? 0 : data.size()) <= it) {
            return;
        }
        so.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f75728d) != null) {
            recyclerView2.scrollToPosition(it);
        }
        so.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f75728d) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.i5
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvVideoFragment.J0(this.f49731a, it);
            }
        });
    }

    private final void showEmpty() {
        com.transsion.postdetail.ui.adapter.l lVar;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.l lVar2 = this.mAdapter;
        if (lVar2 == null || (data = lVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View emptyView = getEmptyView(contextRequireContext);
            if (emptyView == null || (lVar = this.mAdapter) == null) {
                return;
            }
            lVar.Y0(emptyView);
        }
    }

    private final void showNotNetError() {
        com.transsion.postdetail.ui.adapter.l lVar;
        List<Object> data;
        hideProgress();
        com.transsion.postdetail.ui.adapter.l lVar2 = this.mAdapter;
        if (lVar2 == null || (data = lVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View notNetErrorView = getNotNetErrorView(contextRequireContext);
            if (notNetErrorView == null || (lVar = this.mAdapter) == null) {
                return;
            }
            lVar.Y0(notNetErrorView);
        }
    }

    private final void showProgress() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(ShortTvVideoFragment shortTvVideoFragment, DefaultView defaultView, View view) {
        shortTvVideoFragment.loadData();
        defaultView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.postdetail.viewmodel.x u0() {
        return (com.transsion.postdetail.viewmodel.x) this.mVideoViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(ImmVideoNoNetworkView immVideoNoNetworkView, ShortTvVideoFragment shortTvVideoFragment) {
        jg.c.g(immVideoNoNetworkView);
        shortTvVideoFragment.showProgress();
        shortTvVideoFragment.loadData();
        com.tn.lib.view.r.b("shorttv_detail_video");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0() {
        com.tn.lib.view.r.c("shorttv_detail_video");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(ShortTvVideoFragment shortTvVideoFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -1, 134217727, null);
            subject.setNonAdDelegate(current);
            com.transsion.postdetail.ui.adapter.l lVar = shortTvVideoFragment.mAdapter;
            int size = (lVar == null || (data = lVar.getData()) == null) ? 0 : data.size();
            if (i11 <= size) {
                com.transsion.postdetail.ui.adapter.l lVar2 = shortTvVideoFragment.mAdapter;
                if (lVar2 != null) {
                    lVar2.n(i11, subject);
                }
            } else {
                com.transsion.postdetail.ui.adapter.l lVar3 = shortTvVideoFragment.mAdapter;
                if (lVar3 != null) {
                    lVar3.n(size, subject);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(final ShortTvVideoFragment shortTvVideoFragment) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (!nh.m.f70474a.e()) {
            so.u mViewBinding = shortTvVideoFragment.getMViewBinding();
            if (mViewBinding == null || (recyclerView = mViewBinding.f75728d) == null) {
                return;
            }
            recyclerView.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.k5
                @Override // java.lang.Runnable
                public final void run() {
                    ShortTvVideoFragment.B0(this.f49746a);
                }
            }, 500L);
            return;
        }
        if (shortTvVideoFragment.isFirstLoadMore) {
            shortTvVideoFragment.isFirstLoadMore = false;
            shortTvVideoFragment.loadMore();
            return;
        }
        so.u mViewBinding2 = shortTvVideoFragment.getMViewBinding();
        if (mViewBinding2 == null || (recyclerView2 = mViewBinding2.f75728d) == null) {
            return;
        }
        recyclerView2.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.j5
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvVideoFragment.A0(this.f49739a);
            }
        }, 500L);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0030  */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        List listK;
        String nextPage;
        Intrinsics.h(view, "view");
        setNetListener(new c());
        initViewModel();
        ShortTVRespData shortTVRespDataN = u0().n();
        if (shortTVRespDataN == null) {
            listK = ShortTvImmVideoHelper.f48854k.a().k();
        } else {
            Pager pager = shortTVRespDataN.getPager();
            if (pager == null || (nextPage = pager.getNextPage()) == null) {
                nextPage = "1";
            }
            this.mNextPage = nextPage;
            listK = shortTVRespDataN.getItems();
            if (listK == null) {
                listK = ShortTvImmVideoHelper.f48854k.a().k();
            }
        }
        if (!listK.isEmpty()) {
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl != null) {
                subjectVideoPagerChangeControl.g(listK);
                return;
            }
            return;
        }
        if (this.attachToMain) {
            ShortTvImmVideoHelper.f48854k.a().t();
        } else {
            showProgress();
            loadData();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        int i11 = savedInstanceState != null ? savedInstanceState.getInt("CURRENT_INDEX") : -1;
        this.savedCurrentIndex = i11;
        lg.a.C0828a.r(lg.a.f68839a, "ShortTvImmVideoPlayer", new String[]{"initView， savedCurrentIndex ：" + i11}, false, 4, null);
        initAd();
        initNonAd();
        initAdapter();
        initPlayer();
        initBack();
        observeRemoveVideo();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.mPagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        SubjectVideoPagerChangeControl aVar = ap.b.f16089a.b() ? new com.transsion.postdetail.control.a(this, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, this.mPagerLayoutManager) : new SubjectVideoPagerChangeControl(this, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, this.mPagerLayoutManager);
        this.mPagerChangeControl = aVar;
        PagerLayoutManager pagerLayoutManager = this.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            pagerLayoutManager.X(aVar);
        }
        so.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f75728d) != null) {
            recyclerView.setLayoutManager(this.mPagerLayoutManager);
            recyclerView.setAdapter(this.mAdapter);
            recyclerView.setHasFixedSize(true);
        }
        ShortTvImmVideoHelper shortTvImmVideoHelperA = ShortTvImmVideoHelper.f48854k.a();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
        shortTvImmVideoHelperA.p(fragmentActivityRequireActivity2);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f43344a.n("shorttv_detail_video", Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("shorttv_detail_video", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String string;
        HashMap mapG;
        HashMap mapG2;
        String string2;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("id")) == null) {
            string = "";
        }
        this.mPostId = string;
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string2 = arguments2.getString("item_type")) != null) {
            str = string2;
        }
        this.mItemType = str;
        Bundle arguments3 = getArguments();
        this.mTabId = arguments3 != null ? arguments3.getInt("tab_id") : 0;
        Bundle arguments4 = getArguments();
        this.videoLoadMore = arguments4 != null ? arguments4.getBoolean("video_load_more", true) : true;
        Bundle arguments5 = getArguments();
        this.fromComment = arguments5 != null ? arguments5.getBoolean("from_comment") : false;
        Bundle arguments6 = getArguments();
        this.tran_ops = arguments6 != null ? arguments6.getString("rec_ops") : null;
        Bundle arguments7 = getArguments();
        this.attachToMain = arguments7 != null ? arguments7.getBoolean("attach_to_main") : false;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
        }
        com.transsion.postdetail.viewmodel.x xVarU0 = u0();
        if (xVarU0 != null) {
            Bundle arguments8 = getArguments();
            xVarU0.q(arguments8 != null ? Integer.valueOf(arguments8.getInt("yy_preload_id")) : null);
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.E(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.transsion.player.orplayer.g gVar = this.mOrPlayer;
        this.mOrPlayer = null;
        if (gVar != null) {
            gVar.release();
        }
        ShortTvImmVideoHelper.f48854k.a().j();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.t(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                com.transsion.player.orplayer.g gVar = this.mOrPlayer;
                if (gVar != null) {
                    gVar.pause();
                }
                logPause();
            } else {
                com.transsion.player.orplayer.g gVar2 = this.mOrPlayer;
                if (gVar2 != null) {
                    gVar2.play();
                }
                logResume();
            }
            SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
            if (subjectVideoPagerChangeControl != null) {
                subjectVideoPagerChangeControl.p(hidden);
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // zm.e
    public void onMemberStateChange() {
        lg.a.C0828a.f(lg.a.f68839a, "co_mem", "VideoFragment --> onMemberStateChange() --> refresh list", false, 4, null);
        com.transsion.postdetail.ui.adapter.l lVar = this.mAdapter;
        if (lVar != null) {
            lVar.n1(null);
        }
        loadData();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        SubjectVideoPagerChangeControl subjectVideoPagerChangeControl = this.mPagerChangeControl;
        outState.putInt("CURRENT_INDEX", subjectVideoPagerChangeControl != null ? subjectVideoPagerChangeControl.i() : 0);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public so.u getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        so.u uVarC = so.u.c(inflater);
        Intrinsics.g(uVarC, "inflate(...)");
        return uVarC;
    }
}
