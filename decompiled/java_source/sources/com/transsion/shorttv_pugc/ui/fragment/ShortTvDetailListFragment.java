package com.transsion.shorttv_pugc.ui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.fragment.PageStatusFragment;
import com.transsion.shorttv_pugc.base.pager.PagerLayoutManager;
import com.transsion.shorttv_pugc.base.util.DeviceKeyMonitor;
import com.transsion.shorttv_pugc.base.widget.DefaultView;
import com.transsion.shorttv_pugc.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv_pugc.ui.dialog.ShortTvEpisodeListDialog;
import com.transsion.shorttv_pugc.ui.widget.ShortTvLoadMoreView;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0002¢\u0001\u0018\u0000 f2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002µ\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u0005J\r\u0010\u001e\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u0005J\r\u0010\u001f\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010\u0005J\u0017\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010,\u001a\u00020\u00062\b\u0010+\u001a\u0004\u0018\u00010*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\u0005J\u001f\u00103\u001a\u00020\u00062\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u0015\u00109\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0014¢\u0006\u0004\b9\u0010\u0017J\r\u0010:\u001a\u00020\u0006¢\u0006\u0004\b:\u0010\u0005J\r\u0010;\u001a\u00020\u0006¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\u0005J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020'H\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0006H\u0016¢\u0006\u0004\bA\u0010\u0005J\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010\u0005J\r\u0010C\u001a\u00020\u0006¢\u0006\u0004\bC\u0010\u0005J\u0019\u0010F\u001a\u00020\u00062\b\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bF\u0010GJ\u0019\u0010I\u001a\u00020\u00062\b\u0010H\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\bI\u0010JJ!\u0010M\u001a\u00020\u00062\u0006\u0010L\u001a\u00020K2\b\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bM\u0010NJ\u0019\u0010O\u001a\u00020\u00062\b\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bO\u0010GJ\u000f\u0010P\u001a\u00020\u0006H\u0016¢\u0006\u0004\bP\u0010\u0005J\u000f\u0010Q\u001a\u00020\u0006H\u0016¢\u0006\u0004\bQ\u0010\u0005J\u0011\u0010S\u001a\u0004\u0018\u00010RH\u0016¢\u0006\u0004\bS\u0010TJ\r\u0010U\u001a\u00020$¢\u0006\u0004\bU\u0010&J\u0019\u0010V\u001a\u00020\u00062\b\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bV\u0010GJ\u0019\u0010W\u001a\u00020\u00062\b\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bW\u0010GJ\u0017\u0010Y\u001a\u00020\u00062\u0006\u0010X\u001a\u00020'H\u0016¢\u0006\u0004\bY\u0010@J\u000f\u0010Z\u001a\u00020\u0006H\u0016¢\u0006\u0004\bZ\u0010\u0005J\u0017\u0010\\\u001a\u00020\u00062\u0006\u0010[\u001a\u00020'H\u0016¢\u0006\u0004\b\\\u0010@R\u0018\u0010`\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010c\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010g\u001a\u00020d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010iR\u0018\u0010p\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010iR\u0018\u0010r\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010iR\u0016\u0010t\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010iR\u0016\u0010v\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010bR\u001b\u0010|\u001a\u00020w8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010}8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001c\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0016\u0010\u0092\u0001\u001a\u00020$8\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010iR\u0018\u0010\u0094\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010iR\u0019\u0010\u0097\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R&\u0010\u009b\u0001\u001a\u00020'8\u0000@\u0000X\u0080\u000e¢\u0006\u0015\n\u0005\b\u0098\u0001\u0010b\u001a\u0005\b\u0099\u0001\u0010)\"\u0005\b\u009a\u0001\u0010@R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0018\u0010¡\u0001\u001a\u00020d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010fR\u0018\u0010¥\u0001\u001a\u00030¢\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R(\u0010«\u0001\u001a\u00020d8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b¦\u0001\u0010f\u001a\u0006\b§\u0001\u0010¨\u0001\"\u0006\b©\u0001\u0010ª\u0001R\u001a\u0010L\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u0018\u0010±\u0001\u001a\u00030®\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u0018\u0010´\u0001\u001a\u00030²\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0096\u0001\u0010³\u0001¨\u0006¶\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;", "Lms/c0;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "", "initView", "E0", "initAdapter", "showEmpty", "Landroid/content/Context;", "context", "Landroid/view/View;", "getEmptyView", "(Landroid/content/Context;)Landroid/view/View;", "loadData", "J0", "M0", "v0", "", "toPosition", "scrollToPosition", "(I)V", "C0", "R0", "Lot/d;", "x0", "()Lot/d;", "Q0", "K0", "S0", "Landroid/view/LayoutInflater;", "inflater", "y0", "(Landroid/view/LayoutInflater;)Lms/c0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "initViewModel", "initListener", "retryLoadData", "ep", "N0", "hideLoading", "startLoading", "onResume", "onPause", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "L0", "Lao/e;", "mediaSource", "onCompletion", "(Lao/e;)V", "uuid", "onMediaItemTransition", "(Ljava/lang/String;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onPrepare", "onDestroyView", "onDestroy", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "getPageName", "onVideoPause", "onVideoStart", "videoPlaying", "T0", "onStop", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;", "i", "Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;", "shortListDialog", "j", "Z", "isNewPlayer", "", CampaignEx.JSON_KEY_AD_K, "J", "lastShowNetWorkErrToastTime", "l", "Ljava/lang/String;", "ugcVideoId", "m", "subjectId", "n", "collectionId", "o", "fromOptId", TtmlNode.TAG_P, "ops", CampaignEx.JSON_KEY_AD_Q, "mItemType", CampaignEx.JSON_KEY_AD_R, "ugcWithoutHistory", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "s", "Lkotlin/Lazy;", "z0", "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "viewModel", "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "t", "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "mPagerLayoutManager", "Lcom/transsion/shorttv_pugc/ui/widget/u;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/shorttv_pugc/ui/widget/u;", "mPagerChangeControl", "Lcom/transsion/shorttv_pugc/ui/adapter/e;", "v", "Lcom/transsion/shorttv_pugc/ui/adapter/e;", "mAdapter", "Llo/f;", "w", "Llo/f;", "mOrPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "x", "Lcom/transsion/player/ui/ORPlayerView;", "mOrPlayerView", "y", "loggerTag", "z", "lastPageFrom", "A", "I", "lastEp", "B", "isClickPause$shortTvLib_release", "P0", "isClickPause", "Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;", "C", "Lcom/transsion/shorttv_pugc/base/util/DeviceKeyMonitor;", "deviceKeyMonitor", "D", "pageStartTime", "com/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$d", "E", "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment$d;", "loadingHandler", "F", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", "G", "Lcom/transsion/player/orplayer/PlayError;", "Lst/j;", "H", "Lst/j;", "downloadListener", "Lbt/b;", "Lbt/b;", "exposureHelper", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvDetailListFragment extends PageStatusFragment<ms.c0> implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private int lastEp;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean isClickPause;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private DeviceKeyMonitor deviceKeyMonitor;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private final d loadingHandler;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private long resumeTimeStamp;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private PlayError errorInfo;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final st.j downloadListener;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final bt.b exposureHelper;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ShortTvEpisodeListDialog shortListDialog;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private long lastShowNetWorkErrToastTime;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String ugcVideoId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String collectionId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String fromOptId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean ugcWithoutHistory;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager mPagerLayoutManager;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private com.transsion.shorttv_pugc.ui.widget.u mPagerChangeControl;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private com.transsion.shorttv_pugc.ui.adapter.e mAdapter;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private lo.f mOrPlayer;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView mOrPlayerView;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isNewPlayer = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String mItemType = "";

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final String loggerTag = "ShortTvListFragment";

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom = "";

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private long pageStartTime = System.currentTimeMillis();

    public static final class b implements bt.a {
        b() {
        }

        @Override // bt.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            com.transsion.shorttv_pugc.ui.adapter.e eVar = ShortTvDetailListFragment.this.mAdapter;
            if (eVar == null || (data = eVar.getData()) == null) {
                return;
            }
            ShortTvDetailListFragment shortTvDetailListFragment = ShortTvDetailListFragment.this;
            if (data.size() < i11) {
                return;
            }
            ut.a aVar = ut.a.f76891a;
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.l0(data, i11);
            String str = shortTvDetailListFragment.ops;
            if (str == null) {
                str = "";
            }
            aVar.d(j11, uGCVideo, "", str);
        }
    }

    public static final class c extends DiffUtil.e {
        c() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(ShorttvModel.UGCVideo oldItem, ShorttvModel.UGCVideo newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.getEp() == newItem.getEp();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(ShorttvModel.UGCVideo oldItem, ShorttvModel.UGCVideo newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.getEp() == newItem.getEp();
        }
    }

    public static final class d extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f54177a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f54178b;

        d(Looper looper) {
            super(looper);
            this.f54177a = 1;
            this.f54178b = 300L;
        }

        public final long a() {
            return this.f54178b;
        }

        public final int b() {
            return this.f54177a;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ms.c0 c0Var;
            ProgressBar progressBar;
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            if (msg.what != this.f54177a || (c0Var = (ms.c0) ShortTvDetailListFragment.this.getMViewBinding()) == null || (progressBar = c0Var.f69727b) == null) {
                return;
            }
            ct.b.d(progressBar);
        }
    }

    public static final class e implements DeviceKeyMonitor.b {
        e() {
        }

        @Override // com.transsion.shorttv_pugc.base.util.DeviceKeyMonitor.b
        public void onHomeClick() {
            ShortTvDetailListFragment.this.R0();
        }

        @Override // com.transsion.shorttv_pugc.base.util.DeviceKeyMonitor.b
        public void onRecentClick() {
            ShortTvDetailListFragment.this.R0();
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54182a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54182a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54182a;
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
            this.f54182a.invoke(obj);
        }
    }

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$loadData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$loadData$1", f = "ShortTvDetailListFragment.kt", l = {477}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ShortTvDetailListFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                ShortTvViewModel shortTvViewModelZ0 = ShortTvDetailListFragment.this.z0();
                String str = ShortTvDetailListFragment.this.collectionId;
                Intrinsics.e(str);
                shortTvViewModelZ0.e0(str);
                ShortTvViewModel shortTvViewModelZ1 = ShortTvDetailListFragment.this.z0();
                String str2 = ShortTvDetailListFragment.this.ugcVideoId;
                this.label = 1;
                obj = shortTvViewModelZ1.C(str2, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            ShortTvInnerPlayBean shortTvInnerPlayBean = (ShortTvInnerPlayBean) obj;
            int iMax = Math.max(1, (shortTvInnerPlayBean != null ? shortTvInnerPlayBean.getPosition() : 1) - 2);
            ShortTvViewModel shortTvViewModelZ2 = ShortTvDetailListFragment.this.z0();
            String str3 = ShortTvDetailListFragment.this.collectionId;
            Intrinsics.e(str3);
            shortTvViewModelZ2.Z(str3, iMax, iMax + 10);
            return Unit.f67061a;
        }
    }

    public ShortTvDetailListFragment() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.loadingHandler = new d(looperMyLooper);
        this.downloadListener = new st.j() { // from class: com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment$downloadListener$1
            @Override // st.j
            public void a(String str, int i11) {
                if (Intrinsics.c(str, this.f54180a.ugcVideoId)) {
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f54180a), null, null, new ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$1(this.f54180a, str, null), 3, null);
                }
            }
        };
        this.exposureHelper = new bt.b(0.6f, new b(), false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(ShortTvDetailListFragment shortTvDetailListFragment) {
        shortTvDetailListFragment.loadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ShortTvDetailListFragment shortTvDetailListFragment) {
        shortTvDetailListFragment.J0();
    }

    private final void C0() {
        FrameLayout root;
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var == null || (root = c0Var.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.a0
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvDetailListFragment.D0(this.f54200a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(ShortTvDetailListFragment shortTvDetailListFragment) {
        st.e eVarN;
        FragmentActivity activity = shortTvDetailListFragment.getActivity();
        if (activity == null || (eVarN = shortTvDetailListFragment.z0().N()) == null) {
            return;
        }
        String str = shortTvDetailListFragment.ugcVideoId;
        if (str == null) {
            str = "";
        }
        eVarN.b(activity, str, shortTvDetailListFragment.getPageName(), shortTvDetailListFragment.ops);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0093  */
    /* JADX WARN: Code duplicated, block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v5, types: [lo.e] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.transsion.player.shorttv.preload.c, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.SurfaceView] */
    /* JADX WARN: Type inference failed for: r1v4, types: [lo.f] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    private final void E0() {
        st.e eVarN;
        lo.f fVar;
        ?? r11;
        lo.e eVar;
        lo.e eVar2;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.mOrPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.SURFACE_VIEW);
        st.e eVarN2 = z0().N();
        ?? r12 = 0;
        SurfaceView surface = null;
        ?? r13 = 0;
        com.transsion.player.orplayer.g gVarD = eVarN2 != null ? eVarN2.d(this.ugcVideoId) : null;
        int i11 = 1;
        boolean z10 = gVarD == null;
        this.isNewPlayer = z10;
        lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "initOrPlayer isNewPlayer:" + z10 + ", mSubjectId:" + this.ugcVideoId + "}", false, 4, null);
        if (gVarD != null) {
            if (gVarD instanceof lo.e) {
                eVar2 = (lo.e) gVarD;
            } else {
                eVar = null;
            }
            if (eVar != null) {
                ORPlayerView oRPlayerView = this.mOrPlayerView;
                if (oRPlayerView != null) {
                    eVar = eVar2;
                    surface = oRPlayerView.getSurface();
                }
                eVar = eVar2;
                eVar.setSurfaceView(surface);
                r11 = eVar;
            }
            eVar = eVar2;
            this.mOrPlayer = r13;
            eVarN = z0().N();
            if (eVarN != null) {
                eVarN.c();
            }
            fVar = this.mOrPlayer;
            if (fVar != null) {
                fVar.addPlayerListener(this);
            }
        }
        ?? eVar3 = new lo.e(r12, i11, r12);
        ORPlayerView oRPlayerView2 = this.mOrPlayerView;
        eVar3.setSurfaceView(oRPlayerView2 != null ? oRPlayerView2.getSurface() : 0);
        r11 = eVar3;
        r13 = r11;
        eVar = eVar2;
        this.mOrPlayer = r13;
        eVarN = z0().N();
        if (eVarN != null) {
            eVarN.c();
        }
        fVar = this.mOrPlayer;
        if (fVar != null) {
            fVar.addPlayerListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(ShortTvDetailListFragment shortTvDetailListFragment) {
        shortTvDetailListFragment.K0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:59:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00fe  */
    public static final Unit G0(ShortTvDetailListFragment shortTvDetailListFragment, ShorttvModel.UGCVideo uGCVideo) {
        hj.b logViewConfig;
        String strE;
        hj.b logViewConfig2 = shortTvDetailListFragment.getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.g().put("load_duration", String.valueOf(System.currentTimeMillis() - shortTvDetailListFragment.pageStartTime));
        }
        if (uGCVideo == null) {
            logViewConfig = shortTvDetailListFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(false);
            }
            shortTvDetailListFragment.showEmpty();
        } else {
            hj.b logViewConfig3 = shortTvDetailListFragment.getLogViewConfig();
            if (logViewConfig3 != null) {
                logViewConfig3.k(true);
            }
            String str = shortTvDetailListFragment.collectionId;
            Unit unit = null;
            if (str != null && str.length() != 0) {
                int iMax = Math.max(1, uGCVideo.getEp() - 2);
                int i11 = iMax + 10;
                ShortTvViewModel shortTvViewModelZ0 = shortTvDetailListFragment.z0();
                ShorttvModel.UGCVideoCollection belongToCollection = uGCVideo.getBelongToCollection();
                shortTvViewModelZ0.e0(belongToCollection != null ? belongToCollection.getCollectionId() : null);
                ShortTvViewModel.a0(shortTvDetailListFragment.z0(), null, iMax, i11, 1, null);
            }
            hj.b logViewConfig4 = shortTvDetailListFragment.getLogViewConfig();
            if (logViewConfig4 != null) {
                HashMap mapG = logViewConfig4.g();
                String collectionId = shortTvDetailListFragment.collectionId;
                if (collectionId == null) {
                    ShorttvModel.UGCVideoCollection belongToCollection2 = uGCVideo.getBelongToCollection();
                    collectionId = belongToCollection2 != null ? belongToCollection2.getCollectionId() : null;
                }
                mapG.put("belong_to_collection_id", collectionId);
            }
            hj.b logViewConfig5 = shortTvDetailListFragment.getLogViewConfig();
            if (logViewConfig5 != null) {
                logViewConfig5.g().put("refer_subject_id", uGCVideo.getSubjectId());
            }
            if (shortTvDetailListFragment.z0().p().isEmpty()) {
                shortTvDetailListFragment.showEmpty();
                return Unit.f67061a;
            }
            com.transsion.shorttv_pugc.ui.adapter.e eVar = shortTvDetailListFragment.mAdapter;
            if (eVar != null) {
                eVar.n1(shortTvDetailListFragment.z0().p());
            }
            com.transsion.shorttv_pugc.ui.adapter.e eVar2 = shortTvDetailListFragment.mAdapter;
            if (eVar2 != null) {
                eVar2.notifyDataSetChanged();
            }
            shortTvDetailListFragment.hideLoading();
            ao.e eVarA = com.transsion.shorttv_pugc.a.a(uGCVideo);
            if (eVarA != null && (strE = eVarA.e()) != null) {
                lo.f fVar = shortTvDetailListFragment.mOrPlayer;
                if (fVar != null) {
                    fVar.addDataSource(eVarA);
                }
                lo.f fVar2 = shortTvDetailListFragment.mOrPlayer;
                if (fVar2 != null) {
                    fVar2.prepare();
                }
                lo.f fVar3 = shortTvDetailListFragment.mOrPlayer;
                if (fVar3 != null) {
                    ShortTvInnerPlayBean shortTvInnerPlayBean = (ShortTvInnerPlayBean) shortTvDetailListFragment.z0().D().f();
                    fVar3.seekTo(strE, shortTvInnerPlayBean != null ? shortTvInnerPlayBean.getProgress() : 0L);
                    unit = Unit.f67061a;
                }
            }
            if (unit == null) {
                logViewConfig = shortTvDetailListFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(false);
                }
                shortTvDetailListFragment.showEmpty();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(ShortTvDetailListFragment shortTvDetailListFragment, Pair pair) {
        com.transsion.shorttv_pugc.ui.adapter.e eVar;
        List<Object> data;
        List<ShorttvModel.UGCVideo> listE;
        lo.f fVar;
        shortTvDetailListFragment.hideLoading();
        List list = (List) pair.getSecond();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ao.e eVarA = com.transsion.shorttv_pugc.a.a((ShorttvModel.UGCVideo) it.next());
                if (eVarA != null && eVarA.e() != null && (fVar = shortTvDetailListFragment.mOrPlayer) != null) {
                    fVar.addDataSource(eVarA);
                }
            }
        }
        List list2 = (List) pair.getSecond();
        if (list2 != null && !list2.isEmpty() && (eVar = shortTvDetailListFragment.mAdapter) != null && (data = eVar.getData()) != null && (listE = ShortTvExtKt.e(data, list2)) != null) {
            for (ShorttvModel.UGCVideo uGCVideo : listE) {
                com.transsion.shorttv_pugc.ui.adapter.e eVar2 = shortTvDetailListFragment.mAdapter;
                if (eVar2 != null) {
                    eVar2.notifyItemChanged(ShortTvExtKt.d(uGCVideo.getEp()));
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(ShortTvDetailListFragment shortTvDetailListFragment, Integer num) {
        Intrinsics.e(num);
        shortTvDetailListFragment.N0(num.intValue());
        if (shortTvDetailListFragment.lastEp != 0) {
            if (num.intValue() >= shortTvDetailListFragment.lastEp) {
                int iG = shortTvDetailListFragment.z0().G();
                if (num.intValue() + 3 >= iG) {
                    ShortTvViewModel.a0(shortTvDetailListFragment.z0(), null, iG, iG + 5, 1, null);
                }
            } else {
                int iF = shortTvDetailListFragment.z0().F();
                if (iF > 1) {
                    ShortTvViewModel.a0(shortTvDetailListFragment.z0(), null, iF - 6, iF - 1, 1, null);
                }
            }
        }
        shortTvDetailListFragment.lastEp = num.intValue();
        return Unit.f67061a;
    }

    private final void J0() {
        int iIntValue;
        String strR = z0().r();
        if (strR != null) {
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(z0().z());
            if (uGCVideo != null) {
                iIntValue = uGCVideo.getEp();
            } else {
                Integer num = (Integer) z0().s().f();
                iIntValue = num != null ? num.intValue() : 1;
            }
            z0().Z(strR, Math.max(iIntValue - 10, 1), iIntValue);
        }
    }

    private final void M0() {
        com.transsion.shorttv_pugc.ui.widget.u uVar = this.mPagerChangeControl;
        long jH = uVar != null ? uVar.h() : 0L;
        ShorttvModel.UGCVideo uGCVideoT = z0().t();
        if (uGCVideoT == null) {
            return;
        }
        lo.f fVar = this.mOrPlayer;
        uGCVideoT.setDurationMillis(fVar != null ? fVar.getDuration() : 0L);
        z0().b0(uGCVideoT, jH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(ShortTvDetailListFragment shortTvDetailListFragment, int i11) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        PagerLayoutManager pagerLayoutManager = shortTvDetailListFragment.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewT = pagerLayoutManager.T();
            Log.e(shortTvDetailListFragment.loggerTag, "post   itemView:" + viewT);
            if (viewT != null) {
                Log.e(shortTvDetailListFragment.loggerTag, "post   itemView: 22222");
                com.transsion.shorttv_pugc.ui.widget.u uVar = shortTvDetailListFragment.mPagerChangeControl;
                if (uVar != null) {
                    uVar.d(i11, true, viewT);
                }
                ms.c0 c0Var = (ms.c0) shortTvDetailListFragment.getMViewBinding();
                if (c0Var == null || (recyclerView = c0Var.f69728c) == null) {
                    return;
                }
                recyclerView.requestLayout();
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = pagerLayoutManager.getChildAt(i12);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i11) {
                    com.transsion.shorttv_pugc.ui.widget.u uVar2 = shortTvDetailListFragment.mPagerChangeControl;
                    if (uVar2 != null) {
                        uVar2.d(i11, true, childAt);
                    }
                    ms.c0 c0Var2 = (ms.c0) shortTvDetailListFragment.getMViewBinding();
                    if (c0Var2 != null && (recyclerView2 = c0Var2.f69728c) != null) {
                        recyclerView2.requestLayout();
                    }
                    Log.e(shortTvDetailListFragment.loggerTag, "post   itemView: 11111");
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R0() {
        ot.d dVarX0;
        st.e eVarN;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        if (this.isClickPause) {
            lg.a.f68839a.c("video_float", "shottv 视频暂停，无需触发画中画", true);
        } else {
            if (this.mOrPlayer == null || this.mOrPlayerView == null || (dVarX0 = x0()) == null || (eVarN = z0().N()) == null) {
                return;
            }
            eVarN.h(activity, dVarX0);
        }
    }

    private final View getEmptyView(Context context) {
        final DefaultView defaultView = new DefaultView(context, DefaultView.ModelStyle.MODEL_STYLE_NIGHT);
        defaultView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        defaultView.setGravity(17);
        defaultView.setDefaultImageViewVisibility(0);
        defaultView.setDefaultImage(R$mipmap.short_tv_ic_no_content);
        String string = context.getString(R$string.short_tv_no_content);
        Intrinsics.g(string, "getString(...)");
        defaultView.setDescText(string);
        defaultView.setStyle(DefaultView.DefaultViewStyle.STYLE_IMAGE_DESC_BTN);
        defaultView.setBtnVisibility(0);
        String string2 = context.getString(R$string.short_tv_Retry);
        Intrinsics.g(string2, "getString(...)");
        defaultView.setBtnText(string2);
        defaultView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvDetailListFragment.w0(this.f54280a, defaultView, view);
            }
        });
        defaultView.setVisibility(0);
        return defaultView;
    }

    private final void initAdapter() {
        com.transsion.shorttv_pugc.ui.adapter.e eVar = new com.transsion.shorttv_pugc.ui.adapter.e(new ArrayList(), this, false, this.ugcVideoId, this.mItemType, false, 32, null);
        eVar.h0().C(new ShortTvLoadMoreView());
        eVar.h0().z(false);
        eVar.h0().y(false);
        eVar.h0().D(new p6.f() { // from class: com.transsion.shorttv_pugc.ui.fragment.y
            @Override // p6.f
            public final void a() {
                ShortTvDetailListFragment.A0(this.f54282a);
            }
        });
        eVar.o0().d(true);
        eVar.o0().c(2);
        eVar.o0().b(new p6.g() { // from class: com.transsion.shorttv_pugc.ui.fragment.z
            @Override // p6.g
            public final void a() {
                ShortTvDetailListFragment.B0(this.f54283a);
            }
        });
        eVar.R0(new c());
        this.mAdapter = eVar;
    }

    private final void initView() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        RecyclerView recyclerView4;
        initAdapter();
        E0();
        C0();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.mPagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        com.transsion.shorttv_pugc.ui.widget.u uVar = new com.transsion.shorttv_pugc.ui.widget.u(this, this.mAdapter, this.mOrPlayer, this.mOrPlayerView, this.mPagerLayoutManager);
        this.mPagerChangeControl = uVar;
        PagerLayoutManager pagerLayoutManager = this.mPagerLayoutManager;
        if (pagerLayoutManager != null) {
            pagerLayoutManager.X(uVar);
        }
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var != null && (recyclerView4 = c0Var.f69728c) != null) {
            recyclerView4.setLayoutManager(this.mPagerLayoutManager);
        }
        ms.c0 c0Var2 = (ms.c0) getMViewBinding();
        if (c0Var2 != null && (recyclerView3 = c0Var2.f69728c) != null) {
            recyclerView3.setAdapter(this.mAdapter);
        }
        ms.c0 c0Var3 = (ms.c0) getMViewBinding();
        if (c0Var3 != null && (recyclerView2 = c0Var3.f69728c) != null) {
            recyclerView2.addOnScrollListener(this.exposureHelper);
        }
        ms.c0 c0Var4 = (ms.c0) getMViewBinding();
        if (c0Var4 != null && (recyclerView = c0Var4.f69728c) != null) {
            recyclerView.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.t
                @Override // java.lang.Runnable
                public final void run() {
                    ShortTvDetailListFragment.F0(this.f54276a);
                }
            });
        }
        com.transsion.shorttv_pugc.utils.e eVarA = com.transsion.shorttv_pugc.utils.e.f54441c.a();
        FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
        eVarA.e(fragmentActivityRequireActivity2);
    }

    private final void loadData() {
        if (z0().A().f() == null) {
            z0().Y(this.ugcVideoId, this.subjectId, this.collectionId);
            String str = this.collectionId;
            if (str == null || str.length() == 0) {
                return;
            }
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
            return;
        }
        String strR = z0().r();
        if (strR != null) {
            Integer num = (Integer) z0().s().f();
            int iMax = Math.max(1, num != null ? num.intValue() : 1);
            z0().Z(strR, iMax, iMax + 10);
        }
    }

    private final void scrollToPosition(final int toPosition) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        this.isNewPlayer = true;
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var != null && (recyclerView2 = c0Var.f69728c) != null) {
            recyclerView2.scrollToPosition(toPosition);
        }
        ms.c0 c0Var2 = (ms.c0) getMViewBinding();
        if (c0Var2 == null || (recyclerView = c0Var2.f69728c) == null) {
            return;
        }
        recyclerView.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.b0
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvDetailListFragment.O0(this.f54202a, toPosition);
            }
        });
    }

    private final void showEmpty() {
        com.transsion.shorttv_pugc.ui.adapter.e eVar;
        List<Object> data;
        hideLoading();
        com.transsion.shorttv_pugc.ui.adapter.e eVar2 = this.mAdapter;
        if (eVar2 == null || (data = eVar2.getData()) == null || !(!data.isEmpty())) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            View emptyView = getEmptyView(contextRequireContext);
            if (emptyView == null || (eVar = this.mAdapter) == null) {
                return;
            }
            eVar.Y0(emptyView);
        }
    }

    private final void v0() {
        Integer num = (Integer) z0().s().f();
        if (num != null) {
            int iIntValue = num.intValue();
            int i11 = iIntValue + 1;
            com.transsion.shorttv_pugc.ui.adapter.e eVar = this.mAdapter;
            if ((eVar != null ? com.transsion.shorttv_pugc.ui.adapter.e.R1(eVar, i11, false, 2, null) : null) != null) {
                z0().c0(i11);
                lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "autoPlayNext  currentEp:" + iIntValue + "  nextEp:" + i11, false, 4, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(ShortTvDetailListFragment shortTvDetailListFragment, DefaultView defaultView, View view) {
        shortTvDetailListFragment.loadData();
        defaultView.setVisibility(8);
    }

    private final ot.d x0() {
        String ugcVideoId;
        Integer num = (Integer) z0().s().f();
        if (num != null) {
            int iIntValue = num.intValue();
            List<ShorttvModel.UGCVideo> listP = z0().p();
            if (this.mOrPlayer != null && this.mOrPlayerView != null) {
                ArrayList arrayList = new ArrayList();
                ShorttvModel.UGCVideo uGCVideo = null;
                for (ShorttvModel.UGCVideo uGCVideo2 : listP) {
                    if (uGCVideo2.getEp() == iIntValue) {
                        uGCVideo = uGCVideo2;
                    }
                    arrayList.add(uGCVideo2);
                }
                ORPlayerView oRPlayerView = this.mOrPlayerView;
                Intrinsics.e(oRPlayerView);
                lo.f fVar = this.mOrPlayer;
                Intrinsics.e(fVar);
                if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
                    ugcVideoId = "";
                }
                return new ot.d(oRPlayerView, fVar, ugcVideoId, uGCVideo != null ? uGCVideo.getEp() : 1, getPageName(), uGCVideo != null ? uGCVideo.getOps() : null, this.lastPageFrom, arrayList, uGCVideo);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTvViewModel z0() {
        return (ShortTvViewModel) this.viewModel.getValue();
    }

    public final void K0() {
        if (this.shortListDialog == null) {
            ShortTvEpisodeListDialog shortTvEpisodeListDialog = new ShortTvEpisodeListDialog(this.ops);
            this.shortListDialog = shortTvEpisodeListDialog;
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            shortTvEpisodeListDialog.show(childFragmentManager, "preload");
            ShortTvEpisodeListDialog shortTvEpisodeListDialog2 = this.shortListDialog;
            if (shortTvEpisodeListDialog2 != null) {
                shortTvEpisodeListDialog2.dismissAllowingStateLoss();
            }
        }
    }

    public final void L0() {
        st.e eVarN = z0().N();
        if (eVarN != null && eVarN.f(this.mOrPlayer)) {
            st.e eVarN2 = z0().N();
            if (eVarN2 != null && eVarN2.e(this.mOrPlayer)) {
                lg.a.f68839a.c(this.loggerTag, " 播放器在缓存中，这里不能release", true);
                return;
            }
            lo.f fVar = this.mOrPlayer;
            if (fVar != null) {
                fVar.stop();
            }
            lo.f fVar2 = this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.release();
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, this.loggerTag, "onDestroy  removePlayerListener", false, 4, null);
        lo.f fVar3 = this.mOrPlayer;
        if (fVar3 != null) {
            fVar3.removePlayerListener(this);
        }
        st.c cVarL = z0().L();
        if (cVarL != null) {
            cVarL.c();
        }
        DeviceKeyMonitor deviceKeyMonitor = this.deviceKeyMonitor;
        if (deviceKeyMonitor != null) {
            deviceKeyMonitor.b();
        }
    }

    public final void N0(int ep2) {
        com.transsion.shorttv_pugc.ui.widget.u uVar = this.mPagerChangeControl;
        if (uVar != null) {
            int iG = uVar.g();
            if (iG == ShortTvExtKt.d(ep2)) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String str = this.loggerTag;
                com.transsion.shorttv_pugc.ui.widget.u uVar2 = this.mPagerChangeControl;
                lg.a.C0828a.f(c0828a, str, "scrollToEpisode current:" + (uVar2 != null ? Integer.valueOf(uVar2.g()) : null) + " == " + ep2, false, 4, null);
                return;
            }
            if (ep2 >= 0 && ep2 <= z0().p().size()) {
                if (iG >= z0().p().size()) {
                    return;
                }
                com.transsion.shorttv_pugc.ui.widget.u uVar3 = this.mPagerChangeControl;
                if (uVar3 != null) {
                    uVar3.k(true);
                }
                scrollToPosition(ShortTvExtKt.d(ep2));
                return;
            }
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String str2 = this.loggerTag;
            com.transsion.shorttv_pugc.ui.widget.u uVar4 = this.mPagerChangeControl;
            lg.a.C0828a.f(c0828a2, str2, "scrollToEpisode current:" + (uVar4 != null ? Integer.valueOf(uVar4.g()) : null) + " over bounds", false, 4, null);
        }
    }

    public final void P0(boolean z10) {
        this.isClickPause = z10;
    }

    public final void Q0() {
        if (this.shortListDialog == null) {
            this.shortListDialog = new ShortTvEpisodeListDialog(this.ops);
        }
        ShortTvEpisodeListDialog shortTvEpisodeListDialog = this.shortListDialog;
        if (shortTvEpisodeListDialog != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            shortTvEpisodeListDialog.show(childFragmentManager, "immComment");
        }
    }

    public final void S0() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastShowNetWorkErrToastTime > ToastStrategy.LONG_DURATION_TIMEOUT) {
            this.lastShowNetWorkErrToastTime = jCurrentTimeMillis;
            com.transsion.shorttv_pugc.base.widget.toast.core.h.f53969a.h(R$string.short_tv_no_network_toast);
        }
    }

    public void T0(boolean videoPlaying) {
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity activity = getActivity();
            if (activity != null && !activity.isDestroyed() && !activity.isFinishing()) {
                st.e eVarN = z0().N();
                Unit unit = null;
                if (eVarN != null) {
                    ORPlayerView oRPlayerView = this.mOrPlayerView;
                    ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
                    eVarN.a(activity, true, videoPlaying, parent instanceof ViewGroup ? (ViewGroup) parent : null);
                    unit = Unit.f67061a;
                }
                Result.m454constructorimpl(unit);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final String getPageName() {
        return "/ugc_shorts/detail";
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void hideLoading() {
        ProgressBar progressBar;
        ms.c0 c0Var = (ms.c0) getMViewBinding();
        if (c0Var != null && (progressBar = c0Var.f69727b) != null) {
            ct.b.b(progressBar);
        }
        d dVar = this.loadingHandler;
        dVar.removeMessages(dVar.b());
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewData() {
        initView();
        startLoading();
        loadData();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewModel() {
        z0().A().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.G0(this.f54277a, (ShorttvModel.UGCVideo) obj);
            }
        }));
        z0().u().j(getViewLifecycleOwner(), new f(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.H0(this.f54278a, (Pair) obj);
            }
        }));
        z0().s().j(this, new f(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvDetailListFragment.I0(this.f54279a, (Integer) obj);
            }
        }));
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            st.d dVarM = z0().M();
            if (dVarM != null) {
                dVarM.a(getPageName(), Long.valueOf(jElapsedRealtime), getContext());
            }
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/ugc_shorts/detail", false, 2, null);
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
    public void onCompletion(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.e(this, mediaSource);
        v0();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        lo.f fVar;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        Log.e(this.loggerTag, "onConnected");
        String strR = z0().r();
        if (strR == null || strR.length() == 0) {
            loadData();
        }
        com.transsion.shorttv_pugc.ui.widget.u uVar = this.mPagerChangeControl;
        if (uVar != null) {
            uVar.i();
        }
        if (this.errorInfo == null || (fVar = this.mOrPlayer) == null) {
            return;
        }
        fVar.prepare();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        super.onCreate(savedInstanceState);
        this.lastPageFrom = hj.i.f64505a.i();
        Bundle arguments = getArguments();
        this.ugcVideoId = arguments != null ? arguments.getString("id") : null;
        Bundle arguments2 = getArguments();
        this.subjectId = arguments2 != null ? arguments2.getString("subjectId") : null;
        Bundle arguments3 = getArguments();
        this.collectionId = arguments3 != null ? arguments3.getString("collectionId") : null;
        Bundle arguments4 = getArguments();
        this.fromOptId = arguments4 != null ? arguments4.getString("fromOptId") : null;
        Bundle arguments5 = getArguments();
        this.ops = arguments5 != null ? arguments5.getString("ops") : null;
        Bundle arguments6 = getArguments();
        this.ugcWithoutHistory = arguments6 != null ? arguments6.getBoolean("ugc_without_history") : false;
        z0().g0(this.ops);
        z0().h0(this.ugcWithoutHistory);
        String str = this.ugcVideoId;
        if (str == null || str.length() == 0) {
            requireActivity().finish();
        }
        st.c cVarL = z0().L();
        if (cVarL != null) {
            cVarL.d(this.downloadListener);
        }
        Context context = getContext();
        if (context != null) {
            this.deviceKeyMonitor = new DeviceKeyMonitor(context, new e());
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put("belong_to_collection_id", this.collectionId);
            mapG.put("content_id", this.ugcVideoId);
            mapG.put("ops", this.ops);
            mapG.put("content_type", "ugc_video");
        }
        hj.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.n(this.ops);
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DeviceKeyMonitor deviceKeyMonitor = this.deviceKeyMonitor;
        if (deviceKeyMonitor != null) {
            deviceKeyMonitor.b();
        }
        super.onDestroy();
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                lo.f fVar = this.mOrPlayer;
                if (fVar != null) {
                    fVar.pause();
                }
                logPause();
                return;
            }
            lo.f fVar2 = this.mOrPlayer;
            if (fVar2 != null) {
                fVar2.play();
            }
            logResume();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.player.orplayer.f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.player.orplayer.f.a.k(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f.a.o(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String uuid) {
        List<Object> arrayList;
        View viewF;
        ShorttvModel.UGCVideo uGCVideo;
        this.isNewPlayer = true;
        Integer num = (Integer) z0().s().f();
        if (num != null) {
            int iIntValue = num.intValue();
            com.transsion.shorttv_pugc.ui.adapter.e eVar = this.mAdapter;
            if (eVar != null) {
                int iT1 = com.transsion.shorttv_pugc.ui.adapter.e.T1(eVar, iIntValue, false, 2, null);
                com.transsion.shorttv_pugc.ui.adapter.e eVar2 = this.mAdapter;
                if (eVar2 == null || ((ShorttvModel.UGCVideo) eVar2.f0(iT1)) == null || iT1 == -1) {
                    return;
                }
                com.transsion.shorttv_pugc.ui.adapter.e eVar3 = this.mAdapter;
                if (eVar3 == null || (arrayList = eVar3.getData()) == null) {
                    arrayList = new ArrayList<>();
                }
                int i11 = iT1 + 1;
                ShorttvModel.UGCVideo uGCVideo2 = (ShorttvModel.UGCVideo) CollectionsKt.l0(arrayList, i11);
                if (uGCVideo2 == null) {
                    return;
                }
                lg.a.C0828a c0828a = lg.a.f68839a;
                lg.a.C0828a.f(c0828a, this.loggerTag, "onMediaItemTransition uuid:" + uuid + " nextItem:" + uGCVideo2, false, 4, null);
                if (uGCVideo2.isDataNotComplete()) {
                    lo.f fVar = this.mOrPlayer;
                    if (fVar != null) {
                        fVar.pause();
                        return;
                    }
                    return;
                }
                com.transsion.shorttv_pugc.ui.adapter.e eVar4 = this.mAdapter;
                if (eVar4 != null) {
                    eVar4.notifyItemInserted(iT1);
                }
                com.transsion.shorttv_pugc.ui.widget.u uVar = this.mPagerChangeControl;
                if (uVar == null || (viewF = uVar.f()) == 0) {
                    return;
                }
                if (viewF instanceof com.transsion.shorttv_pugc.ui.widget.a) {
                    com.transsion.player.orplayer.f fVar2 = (com.transsion.player.orplayer.f) viewF;
                    String ugcVideoId = uGCVideo2.getUgcVideoId();
                    if (ugcVideoId == null) {
                        ugcVideoId = "";
                    }
                    fVar2.onMediaItemTransition(ugcVideoId);
                    uGCVideo = uGCVideo2;
                    com.transsion.shorttv_pugc.ui.widget.a.C0671a.a((com.transsion.shorttv_pugc.ui.widget.a) viewF, uGCVideo2, this, Integer.valueOf(i11), false, null, null, false, false, 128, null);
                    com.transsion.shorttv_pugc.ui.widget.u uVar2 = this.mPagerChangeControl;
                    if (uVar2 != null) {
                        uVar2.d(i11, false, viewF);
                    }
                    lo.f fVar3 = this.mOrPlayer;
                    boolean zIsPlaying = fVar3 != null ? fVar3.isPlaying() : false;
                    lg.a.C0828a.f(c0828a, this.loggerTag, "onMediaItemTransition  isPlaying:" + zIsPlaying, false, 4, null);
                    if (zIsPlaying) {
                        fVar2.onRenderFirstFrame();
                    }
                } else {
                    uGCVideo = uGCVideo2;
                }
                z0().c0(uGCVideo.getEp());
            }
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        M0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        st.e eVarN;
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        ot.d dVarX0 = x0();
        if (dVarX0 == null || (eVarN = z0().N()) == null) {
            return;
        }
        eVarN.g(isInPictureInPictureMode, getActivity(), dVarX0);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, mediaSource);
        this.errorInfo = errorInfo;
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
    public void onPrepare(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.w(this, mediaSource);
        this.errorInfo = null;
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.y(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
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
    public void onVideoPause(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.F(this, mediaSource);
        T0(false);
        hideLoading();
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
        T0(true);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    public final void startLoading() {
        d dVar = this.loadingHandler;
        if (dVar.hasMessages(dVar.b())) {
            return;
        }
        d dVar2 = this.loadingHandler;
        dVar2.sendEmptyMessageDelayed(dVar2.b(), this.loadingHandler.a());
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
    public ms.c0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ms.c0 c0VarC = ms.c0.c(inflater);
        Intrinsics.g(c0VarC, "inflate(...)");
        return c0VarC;
    }
}
