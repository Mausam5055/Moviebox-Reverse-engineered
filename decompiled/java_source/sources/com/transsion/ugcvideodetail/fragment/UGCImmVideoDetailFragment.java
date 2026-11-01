package com.transsion.ugcvideodetail.fragment;

import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.pager.PagerLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import com.transsion.ugcvideodetail.widget.UGCImmVideoLoadMoreView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\b\u0006\n\u0002\b\u0006*\u0004¼\u0001Â\u0001\u0018\u0000 Æ\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001SB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0013\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0019\u0010\u001d\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010\u0005J\u000f\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u0010\u0005J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\r\u00105\u001a\u00020\u0006¢\u0006\u0004\b5\u0010\u0005J\u001f\u0010:\u001a\u00020\u00062\u0006\u00107\u001a\u0002062\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u0019\u0010>\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\b>\u0010?J\u0019\u0010A\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\bA\u0010BJ!\u0010E\u001a\u00020\u00062\u0006\u0010D\u001a\u00020C2\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\bE\u0010FJ\u0019\u0010G\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\bG\u0010?J\u000f\u0010H\u001a\u00020\u0006H\u0016¢\u0006\u0004\bH\u0010\u0005J\r\u0010I\u001a\u00020\u0006¢\u0006\u0004\bI\u0010\u0005J\r\u0010J\u001a\u00020\u0006¢\u0006\u0004\bJ\u0010\u0005J\u000f\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bN\u0010\u0005J\u000f\u0010O\u001a\u00020\u0006H\u0016¢\u0006\u0004\bO\u0010\u0005J\u0017\u0010Q\u001a\u00020\u00062\b\u0010P\u001a\u0004\u0018\u00010%¢\u0006\u0004\bQ\u0010BR\u001b\u0010W\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u001b\u0010\\\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010T\u001a\u0004\bZ\u0010[R\u0018\u0010_\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R$\u0010c\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010^\u001a\u0004\ba\u0010'\"\u0004\bb\u0010BR\u0018\u0010e\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010^R\u0018\u0010h\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010^R\u0018\u0010l\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010^R\u0016\u0010o\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010^R\u0018\u0010s\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010^R\"\u0010w\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010^\u001a\u0004\bu\u0010'\"\u0004\bv\u0010BR$\u0010{\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u0010^\u001a\u0004\by\u0010'\"\u0004\bz\u0010BR$\u0010\u007f\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b|\u0010^\u001a\u0004\b}\u0010'\"\u0004\b~\u0010BR(\u0010\u0083\u0001\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0080\u0001\u0010^\u001a\u0005\b\u0081\u0001\u0010'\"\u0005\b\u0082\u0001\u0010BR\u0018\u0010\u0085\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010nR\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009d\u0001\u001a\u00030\u009a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001c\u0010¡\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u001a\u0010£\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010^R'\u0010¨\u0001\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\b¤\u0001\u0010n\u001a\u0005\b¥\u0001\u0010)\"\u0006\b¦\u0001\u0010§\u0001R\u001a\u0010¬\u0001\u001a\u00030©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001R!\u0010±\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010®\u00010\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R \u0010³\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b²\u0001\u0010°\u0001R!\u0010¶\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010´\u00010\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010°\u0001R\u001f\u0010¹\u0001\u001a\n\u0012\u0005\u0012\u00030·\u00010\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010°\u0001R\u001a\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R\u0018\u0010¿\u0001\u001a\u00030¼\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001a\u0010Á\u0001\u001a\u00030©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010«\u0001R\u0018\u0010Å\u0001\u001a\u00030Â\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001¨\u0006Ç\u0001"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lqv/f;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "", "O0", "initAdapter", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "g1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "newList", "", "isLoadDown", "hasMore", "R0", "(Ljava/util/List;ZZ)V", "B0", "T0", "U0", "e1", "x0", "y0", "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", "f1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "Z0", "V0", "Landroid/view/LayoutInflater;", "inflater", "J0", "(Landroid/view/LayoutInflater;)Lqv/f;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "()Z", "receiveArguments", "initViewData", "Landroidx/appcompat/widget/AppCompatImageView;", "L0", "()Landroidx/appcompat/widget/AppCompatImageView;", "initViewModel", "initListener", "retryLoadData", "onStop", "onPause", "onResume", "Y0", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Lao/e;", "mediaSource", "onCompletion", "(Lao/e;)V", "uuid", "onMediaItemTransition", "(Ljava/lang/String;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onPrepare", "onDestroyView", "hideLoading", "startLoading", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "logResume", "logPause", "ugcVideoId", "c1", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "D0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "detailViewModel", "Lcom/transsnet/downloader/manager/g;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "E0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "c", "Ljava/lang/String;", "ops", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "C0", "setCollectionId", "collectionId", "e", "firstUgcVideoId", "f", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "firstUgcVideo", "g", "ugcVideoType", "h", "subjectId", "i", "Z", "withoutHistory", "j", "tabId", CampaignEx.JSON_KEY_AD_K, "fromOptId", "l", "I0", "setTrackId", "trackId", "m", "H0", "setPreviousTrackId", "previousTrackId", "n", "G0", "setPreviousPageVideoId", "previousPageVideoId", "o", "F0", "setLastPageFrom", "lastPageFrom", TtmlNode.TAG_P, "isNewPlayer", "Llo/f;", CampaignEx.JSON_KEY_AD_Q, "Llo/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "Lcom/transsion/ugcvideodetail/adapter/a;", "s", "Lcom/transsion/ugcvideodetail/adapter/a;", "detailAdapter", "Lcom/tn/lib/pager/PagerLayoutManager;", "t", "Lcom/tn/lib/pager/PagerLayoutManager;", "pagerLayoutManager", "Lcom/transsion/ugcvideodetail/hepler/b;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/ugcvideodetail/hepler/b;", "pagerChangeControl", "Landroid/os/Handler;", "v", "Landroid/os/Handler;", "downloadPopHandler", "Ljava/lang/Runnable;", "w", "Ljava/lang/Runnable;", "downloadPopHideRunnable", "x", "downloadingUgcVideoId", "y", "isClickPause$UGCVideoDetail_psRelease", "b1", "(Z)V", "isClickPause", "", "z", "J", "pageLoadStartTime", "Landroidx/lifecycle/c0;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "A", "Landroidx/lifecycle/c0;", "historyObserver", "B", "detailObserver", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;", "C", "listObserver", "", "D", "playingEpObserver", "E", "Lcom/transsion/player/orplayer/PlayError;", "com/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c", "F", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;", "loadingHandler", "G", "resumeTimeStamp", "com/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b", "H", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;", "downloadListener", "I", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoDetailFragment extends PageStatusFragment<qv.f> implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 historyObserver;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 detailObserver;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 listObserver;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 playingEpObserver;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private PlayError errorInfo;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final c loadingHandler;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private long resumeTimeStamp;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final b downloadListener;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadManager = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.fragment.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCImmVideoDetailFragment.A0();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private String collectionId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String firstUgcVideoId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideo firstUgcVideo;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String ugcVideoType;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean withoutHistory;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String tabId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String fromOptId;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String trackId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String previousTrackId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String previousPageVideoId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean isNewPlayer;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private lo.f orPlayer;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.adapter.a detailAdapter;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager pagerLayoutManager;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.hepler.b pagerChangeControl;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Handler downloadPopHandler;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private Runnable downloadPopHideRunnable;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private String downloadingUgcVideoId;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean isClickPause;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private long pageLoadStartTime;

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCImmVideoDetailFragment a() {
            return new UGCImmVideoDetailFragment();
        }
    }

    public static final class b extends ny.d {
        b() {
        }

        @Override // ny.d
        public void h(DownloadBean bean, int i11) {
            com.transsion.ugcvideodetail.adapter.a aVar;
            List<Object> data;
            Intrinsics.h(bean, "bean");
            com.transsion.ugcvideodetail.adapter.a aVar2 = UGCImmVideoDetailFragment.this.detailAdapter;
            int i12 = -1;
            if (aVar2 != null && (data = aVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i13 = 0;
                while (it.hasNext()) {
                    UGCVideo ugcVideo = ((UGCImmVideo) it.next()).getUgcVideo();
                    if (Intrinsics.c(ugcVideo != null ? ugcVideo.getUgcVideoId() : null, bean.getUgcVideoId())) {
                        i12 = i13;
                        break;
                    }
                    i13++;
                }
            }
            if (i12 >= 0 && (aVar = UGCImmVideoDetailFragment.this.detailAdapter) != null) {
                aVar.notifyItemChanged(i12, Integer.valueOf(i11));
            }
            UGCImmVideoDetailFragment.this.f1(bean);
        }
    }

    public static final class c extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f56075a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f56076b;

        c(Looper looper) {
            super(looper);
            this.f56075a = 1;
            this.f56076b = 300L;
        }

        public final long a() {
            return this.f56076b;
        }

        public final int b() {
            return this.f56075a;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            qv.f mViewBinding;
            ProgressBar progressBar;
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            if (msg.what != this.f56075a || (mViewBinding = UGCImmVideoDetailFragment.this.getMViewBinding()) == null || (progressBar = mViewBinding.f73729e) == null) {
                return;
            }
            jg.c.k(progressBar);
        }
    }

    public UGCImmVideoDetailFragment() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.trackId = string;
        this.isNewPlayer = true;
        this.downloadPopHandler = new Handler(Looper.getMainLooper());
        this.historyObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.d
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.K0(this.f56206a, (UGCVideoDetailPlayBean) obj);
            }
        };
        this.detailObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.e
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.z0(this.f56209a, (UGCImmVideo) obj);
            }
        };
        this.listObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.f
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.S0(this.f56213a, (UGCImmVideoContent) obj);
            }
        };
        this.playingEpObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.g
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.W0(this.f56217a, ((Integer) obj).intValue());
            }
        };
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.loadingHandler = new c(looperMyLooper);
        this.downloadListener = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g A0() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    private final void B0() {
        String str;
        startLoading();
        if (!nh.m.f70474a.e()) {
            String str2 = this.firstUgcVideoId;
            if (str2 != null) {
                if (StringsKt.q0(str2)) {
                    str2 = null;
                }
                if (str2 != null) {
                    D0().T0(str2, this.collectionId);
                    return;
                }
            }
            String str3 = this.subjectId;
            if (str3 != null) {
                if (StringsKt.q0(str3)) {
                    str3 = null;
                }
                if (str3 != null) {
                    hideLoading();
                    PageStatusFragment.showErrorView$default(this, false, 1, null);
                    return;
                }
                return;
            }
            return;
        }
        String str4 = this.collectionId;
        if (str4 == null || str4.length() == 0 || this.withoutHistory) {
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "firstLoadData---1 withoutHistory:" + this.withoutHistory, false, 4, null);
            T0();
            if (this.withoutHistory || (str = this.firstUgcVideoId) == null) {
                return;
            }
            D0().Z0(str, false);
            return;
        }
        String str5 = this.firstUgcVideoId;
        if (str5 != null) {
            if (StringsKt.q0(str5)) {
                str5 = null;
            }
            if (str5 != null) {
                D0().Z0(str5, true);
                return;
            }
        }
        String str6 = this.subjectId;
        if (str6 != null) {
            String str7 = StringsKt.q0(str6) ? null : str6;
            if (str7 != null) {
                D0().K0(str7);
            }
        }
    }

    private final UGCImmVideoDetailViewModel D0() {
        return (UGCImmVideoDetailViewModel) this.detailViewModel.getValue();
    }

    private final com.transsnet.downloader.manager.g E0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "historyObserver: " + uGCVideoDetailPlayBean + ", withoutHistory=" + uGCImmVideoDetailFragment.withoutHistory + "， shouldRequestDetail:" + uGCImmVideoDetailFragment.D0().U0(), false, 4, null);
        if (uGCVideoDetailPlayBean != null && !uGCImmVideoDetailFragment.withoutHistory) {
            uGCImmVideoDetailFragment.firstUgcVideoId = uGCVideoDetailPlayBean.getUgcVideoId();
            uGCImmVideoDetailFragment.D0().D().q(uGCImmVideoDetailFragment.firstUgcVideoId);
        }
        if (uGCImmVideoDetailFragment.D0().U0()) {
            uGCImmVideoDetailFragment.T0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment) {
        uGCImmVideoDetailFragment.U0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment) {
        if (nh.m.f70474a.e()) {
            uGCImmVideoDetailFragment.e1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void O0() {
        lo.e eVar;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.orPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.TEXTURE_VIEW);
        com.transsion.player.orplayer.g gVarB = com.transsion.videofloat.manager.a0.f57933a.b("ImmVideo" + this.firstUgcVideoId);
        int i11 = 1;
        boolean z10 = gVarB == null;
        this.isNewPlayer = z10;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "initOrPlayer isNewPlayer:" + z10, false, 4, null);
        com.transsion.player.shorttv.preload.c cVar = null;
        Object[] objArr = 0;
        if (gVarB != null) {
            eVar = gVarB instanceof lo.e ? (lo.e) gVarB : null;
            if (eVar != null) {
                ORPlayerView oRPlayerView = this.orPlayerView;
                eVar.setTextureView(oRPlayerView != null ? oRPlayerView.getTextureView() : null);
            } else {
                eVar = null;
            }
        } else {
            eVar = new lo.e(cVar, i11, objArr == true ? 1 : 0);
            ORPlayerView oRPlayerView2 = this.orPlayerView;
            eVar.setTextureView(oRPlayerView2 != null ? oRPlayerView2.getTextureView() : null);
        }
        this.orPlayer = eVar;
        ox.b.C0878b.a(ox.b.f72191a.c(), false, 1, null);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        boolean z11 = bVar.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false);
        float f11 = bVar.b().getFloat("KEY_UGC_IMM_VIDEO_SPEED", 1.0f);
        lo.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.addPlayerListener(this);
        }
        lo.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.setLooping(!z11);
        }
        lo.f fVar3 = this.orPlayer;
        if (fVar3 != null) {
            fVar3.setSpeed(f11);
        }
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "initOrPlayer speed:" + f11 + ", autoPlay:" + z11, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, View view) {
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "download_view"), TuplesKt.a("module_name", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW)));
        uGCImmVideoDetailFragment.V0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, View view) {
        FragmentActivity activity = uGCImmVideoDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x0132  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    private final void R0(List newList, boolean isLoadDown, boolean hasMore) {
        int iVideoUGCPosition;
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        Object next;
        Pair pairA;
        ?? r11;
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        if (aVar == null) {
            return;
        }
        List<Object> data = aVar.getData();
        if (data.isEmpty()) {
            aVar.n1(CollectionsKt.U0(newList));
            r6.f fVarH0 = isLoadDown ? aVar.h0() : null;
            if (fVarH0 == null) {
                aVar.o0().e(false);
                return;
            } else if (hasMore) {
                fVarH0.s();
                return;
            } else {
                fVarH0.t(true);
                fVarH0.z(false);
                return;
            }
        }
        List<Object> list = data;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UGCVideo ugcVideo3 = ((UGCImmVideo) it.next()).getUgcVideo();
            Integer numValueOf = ugcVideo3 != null ? Integer.valueOf(ugcVideo3.videoUGCPosition()) : null;
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        Set setW0 = CollectionsKt.W0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = newList.iterator();
        while (true) {
            iVideoUGCPosition = -1;
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            UGCImmVideo uGCImmVideo = (UGCImmVideo) next2;
            UGCVideo ugcVideo4 = uGCImmVideo.getUgcVideo();
            if ((ugcVideo4 != null ? ugcVideo4.videoUGCPosition() : -1) > 0) {
                Set set = setW0;
                UGCVideo ugcVideo5 = uGCImmVideo.getUgcVideo();
                if (CollectionsKt.b0(set, ugcVideo5 != null ? Integer.valueOf(ugcVideo5.videoUGCPosition()) : null)) {
                    r11 = false;
                } else {
                    r11 = true;
                }
            } else {
                r11 = false;
            }
            if (r11 != false) {
                arrayList2.add(next2);
            }
        }
        List listI0 = CollectionsKt.I0(arrayList2, new Comparator() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment$insertCollectionList$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                UGCVideo ugcVideo6 = ((UGCImmVideo) t11).getUgcVideo();
                Integer numValueOf2 = Integer.valueOf(ugcVideo6 != null ? ugcVideo6.videoUGCPosition() : -1);
                UGCVideo ugcVideo7 = ((UGCImmVideo) t12).getUgcVideo();
                return ComparisonsKt.d(numValueOf2, Integer.valueOf(ugcVideo7 != null ? ugcVideo7.videoUGCPosition() : -1));
            }
        });
        if (listI0.isEmpty()) {
            r6.f fVarH1 = isLoadDown ? aVar.h0() : null;
            if (fVarH1 == null) {
                aVar.o0().e(false);
                return;
            } else if (hasMore) {
                fVarH1.s();
                return;
            } else {
                fVarH1.t(true);
                fVarH1.z(false);
                return;
            }
        }
        ArrayList arrayList3 = new ArrayList();
        int i11 = 0;
        for (Object obj : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            UGCVideo ugcVideo6 = ((UGCImmVideo) obj).getUgcVideo();
            if (ugcVideo6 != null) {
                Integer numValueOf2 = Integer.valueOf(ugcVideo6.videoUGCPosition());
                if ((numValueOf2.intValue() > 0) == false) {
                    numValueOf2 = null;
                }
                if (numValueOf2 != null) {
                    pairA = TuplesKt.a(Integer.valueOf(numValueOf2.intValue()), Integer.valueOf(i11));
                } else {
                    pairA = null;
                }
            } else {
                pairA = null;
            }
            if (pairA != null) {
                arrayList3.add(pairA);
            }
            i11 = i12;
        }
        Map mapS = MapsKt.s(arrayList3);
        List<UGCImmVideo> list2 = listI0;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.v(list2, 10));
        for (UGCImmVideo uGCImmVideo2 : list2) {
            UGCVideo ugcVideo7 = uGCImmVideo2.getUgcVideo();
            int iVideoUGCPosition2 = ugcVideo7 != null ? ugcVideo7.videoUGCPosition() : -1;
            Iterator it3 = mapS.entrySet().iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while ((((Number) ((Map.Entry) next).getKey()).intValue() >= iVideoUGCPosition2) == false);
            Map.Entry entry = (Map.Entry) next;
            arrayList4.add(TuplesKt.a(uGCImmVideo2, Integer.valueOf(entry != null ? ((Number) entry.getValue()).intValue() : data.size())));
        }
        for (Pair pair : CollectionsKt.D0(arrayList4)) {
            aVar.n(((Number) pair.component2()).intValue(), (UGCImmVideo) pair.component1());
        }
        r6.f fVarH2 = aVar.h0();
        if (!isLoadDown) {
            fVarH2 = null;
        }
        if (fVarH2 == null) {
            aVar.o0().e(false);
        } else if (hasMore) {
            fVarH2.s();
        } else {
            r6.f.u(fVarH2, false, 1, null);
            fVarH2.z(false);
        }
        UGCImmVideo uGCImmVideo3 = (UGCImmVideo) CollectionsKt.k0(aVar.getData());
        if (uGCImmVideo3 != null && (ugcVideo2 = uGCImmVideo3.getUgcVideo()) != null) {
            Integer numValueOf3 = Integer.valueOf(ugcVideo2.videoUGCPosition());
            if ((numValueOf3.intValue() > 1 ? numValueOf3 : null) != null) {
                aVar.o0().d(true);
            }
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        int size = listI0.size();
        int size2 = aVar.getData().size();
        UGCImmVideo uGCImmVideo4 = (UGCImmVideo) CollectionsKt.k0(aVar.getData());
        if (uGCImmVideo4 != null && (ugcVideo = uGCImmVideo4.getUgcVideo()) != null) {
            iVideoUGCPosition = ugcVideo.videoUGCPosition();
        }
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "insertCollectionList: inserted=" + size + ", adapterSize=" + size2 + ", firstPosition=" + iVideoUGCPosition, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, UGCImmVideoContent uGCImmVideoContent) {
        r6.f fVarH0;
        Map mapA;
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        List<UGCImmVideo> list = uGCImmVideoContent != null ? uGCImmVideoContent.getList() : null;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "listObserver: " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List<UGCImmVideo> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        boolean zY0 = uGCImmVideoDetailFragment.D0().Y0();
        boolean zIsLoadDown = uGCImmVideoContent.isLoadDown();
        UGCImmVideo uGCImmVideo2 = (UGCImmVideo) CollectionsKt.k0(list);
        int iVideoUGCPosition = (uGCImmVideo2 == null || (ugcVideo2 = uGCImmVideo2.getUgcVideo()) == null) ? -1 : ugcVideo2.videoUGCPosition();
        com.transsion.ugcvideodetail.adapter.a aVar = uGCImmVideoDetailFragment.detailAdapter;
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "listObserver, isCollection: " + zY0 + ", isLoadDown:" + zIsLoadDown + ", firstPosition:" + iVideoUGCPosition + ", adapterFirstPosition:" + ((aVar == null || (data = aVar.getData()) == null || (uGCImmVideo = (UGCImmVideo) CollectionsKt.k0(data)) == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? -1 : ugcVideo.videoUGCPosition()) + " ", false, 4, null);
        if (zY0) {
            boolean zIsLoadDown2 = uGCImmVideoContent.isLoadDown();
            Pager pager = uGCImmVideoContent.getPager();
            uGCImmVideoDetailFragment.R0(list, zIsLoadDown2, pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false);
        } else {
            com.transsion.ugcvideodetail.adapter.a aVar2 = uGCImmVideoDetailFragment.detailAdapter;
            if (aVar2 != null && (fVarH0 = aVar2.h0()) != null) {
                Pager pager2 = uGCImmVideoContent.getPager();
                if (pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.TRUE) : false) {
                    fVarH0.s();
                } else {
                    fVarH0.t(true);
                    fVarH0.z(false);
                }
            }
            com.transsion.ugcvideodetail.adapter.a aVar3 = uGCImmVideoDetailFragment.detailAdapter;
            if (aVar3 != null) {
                aVar3.q(list2);
            }
        }
        for (UGCImmVideo uGCImmVideo3 : list) {
            ao.e mediaSource = uGCImmVideo3.toMediaSource();
            if (mediaSource != null) {
                lo.f fVar = uGCImmVideoDetailFragment.orPlayer;
                boolean zContainsKey = (fVar == null || (mapA = fVar.a()) == null) ? false : mapA.containsKey(mediaSource.e());
                lg.a.C0828a c0828a2 = lg.a.f68839a;
                UGCVideo ugcVideo3 = uGCImmVideo3.getUgcVideo();
                lg.a.C0828a.f(c0828a2, "UGCImmVideoDetail", "listAddDataSource----isCollection:" + zY0 + " ,inPlayerList:" + zContainsKey + ", Position:" + (ugcVideo3 != null ? ugcVideo3.videoUGCPosition() : -1), false, 4, null);
                if (uGCImmVideoDetailFragment.isNewPlayer || !zContainsKey) {
                    lo.f fVar2 = uGCImmVideoDetailFragment.orPlayer;
                    if (fVar2 != null) {
                        fVar2.addDataSource(mediaSource);
                    }
                }
            }
        }
    }

    private final void T0() {
        String str = this.firstUgcVideoId;
        if (str != null) {
            if (StringsKt.q0(str)) {
                str = null;
            }
            if (str != null) {
                D0().J0(str, this.collectionId);
                return;
            }
        }
        String str2 = this.subjectId;
        if (str2 != null) {
            String str3 = StringsKt.q0(str2) ? null : str2;
            if (str3 != null) {
                D0().K0(str3);
            }
        }
    }

    private final void U0() {
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        String str = this.collectionId;
        int iVideoUGCPosition = 0;
        if (str == null || str.length() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "loadMoreData, getImmVideoRecommentList, ugcVideoId:" + this.firstUgcVideoId, false, 4, null);
            D0().S0(false, this.firstUgcVideoId);
            return;
        }
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        if (aVar != null && (data = aVar.getData()) != null && (uGCImmVideo = (UGCImmVideo) CollectionsKt.v0(data)) != null && (ugcVideo = uGCImmVideo.getUgcVideo()) != null) {
            iVideoUGCPosition = ugcVideo.videoUGCPosition();
        }
        int i11 = iVideoUGCPosition + 1;
        int i12 = iVideoUGCPosition + 9;
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "loadMoreData, startPosition:" + i11 + ", endPosition:" + i12, false, 4, null);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelD0 = D0();
        String str2 = this.collectionId;
        Intrinsics.e(str2);
        UGCImmVideoDetailViewModel.Q0(uGCImmVideoDetailViewModelD0, str2, i11, i12, true, false, 16, null);
    }

    private final void V0() {
        Navigator.x(TheRouter.c("/download/ugc_my_downloads").F("main_tab_index", 0), requireContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(final UGCImmVideoDetailFragment uGCImmVideoDetailFragment, int i11) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<Object> data;
        com.transsion.ugcvideodetail.adapter.a aVar = uGCImmVideoDetailFragment.detailAdapter;
        final int i12 = -1;
        if (aVar != null && (data = aVar.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i13 = 0;
            while (it.hasNext()) {
                UGCVideo ugcVideo = ((UGCImmVideo) it.next()).getUgcVideo();
                if (ugcVideo != null && ugcVideo.videoUGCPosition() == i11) {
                    i12 = i13;
                    break;
                }
                i13++;
            }
        }
        if (i12 < 0) {
            return;
        }
        lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetail", new String[]{"scrollToPosition:" + i12 + ", ep:" + i11}, false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            qv.f mViewBinding = uGCImmVideoDetailFragment.getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f73730f) != null) {
                recyclerView2.scrollToPosition(i12);
            }
            qv.f mViewBinding2 = uGCImmVideoDetailFragment.getMViewBinding();
            Result.m454constructorimpl((mViewBinding2 == null || (recyclerView = mViewBinding2.f73730f) == null) ? null : Boolean.valueOf(recyclerView.post(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.l
                @Override // java.lang.Runnable
                public final void run() {
                    UGCImmVideoDetailFragment.X0(this.f56237a, i12);
                }
            })));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, int i11) {
        PagerLayoutManager pagerLayoutManager = uGCImmVideoDetailFragment.pagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewU = pagerLayoutManager.U();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.r(c0828a, "UGCImmVideoDetail", new String[]{"post   itemView:" + viewU}, false, 4, null);
            if (viewU != null) {
                lg.a.C0828a.r(c0828a, "UGCImmVideoDetail", new String[]{"post   itemView: 22222"}, false, 4, null);
                com.transsion.ugcvideodetail.hepler.b bVar = uGCImmVideoDetailFragment.pagerChangeControl;
                if (bVar != null) {
                    bVar.d(i11, true, viewU);
                    return;
                }
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = pagerLayoutManager.getChildAt(i12);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i11) {
                    com.transsion.ugcvideodetail.hepler.b bVar2 = uGCImmVideoDetailFragment.pagerChangeControl;
                    if (bVar2 != null) {
                        bVar2.d(i11, true, childAt);
                    }
                    lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetail", new String[]{"post   itemView: 11111"}, false, 4, null);
                    return;
                }
            }
        }
    }

    private final void Z0() {
        Runnable runnable = this.downloadPopHideRunnable;
        if (runnable != null) {
            this.downloadPopHandler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.c
            @Override // java.lang.Runnable
            public final void run() {
                UGCImmVideoDetailFragment.a1(this.f56203a);
            }
        };
        this.downloadPopHideRunnable = runnable2;
        Handler handler = this.downloadPopHandler;
        Intrinsics.e(runnable2);
        handler.postDelayed(runnable2, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a1(UGCImmVideoDetailFragment uGCImmVideoDetailFragment) {
        qv.m mVar;
        FrameLayout root;
        qv.f mViewBinding = uGCImmVideoDetailFragment.getMViewBinding();
        if (mViewBinding == null || (mVar = mViewBinding.f73728d) == null || (root = mVar.getRoot()) == null) {
            return;
        }
        jg.c.g(root);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, DownloadBean downloadBean) {
        uGCImmVideoDetailFragment.f1(downloadBean);
        return Unit.f67061a;
    }

    private final void e1() {
        r6.g gVarO0;
        r6.g gVarO1;
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        int iVideoUGCPosition = (aVar == null || (data = aVar.getData()) == null || (uGCImmVideo = (UGCImmVideo) CollectionsKt.v0(data)) == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? 1 : ugcVideo.videoUGCPosition();
        if (iVideoUGCPosition <= 1) {
            com.transsion.ugcvideodetail.adapter.a aVar2 = this.detailAdapter;
            if (aVar2 == null || (gVarO1 = aVar2.o0()) == null) {
                return;
            }
            gVarO1.d(false);
            return;
        }
        com.transsion.ugcvideodetail.adapter.a aVar3 = this.detailAdapter;
        if (aVar3 != null && (gVarO0 = aVar3.o0()) != null) {
            gVarO0.e(true);
        }
        int iMax = Math.max(iVideoUGCPosition - 9, 1);
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "upFetchData, firstPosition:" + iVideoUGCPosition + ", startPosition:" + iMax, false, 4, null);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelD0 = D0();
        String str = this.collectionId;
        Intrinsics.e(str);
        UGCImmVideoDetailViewModel.Q0(uGCImmVideoDetailViewModelD0, str, iMax, iVideoUGCPosition + (-1), false, false, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1(DownloadBean bean) {
        String resourceId;
        qv.m mVar;
        AppCompatTextView appCompatTextView;
        String str = this.downloadingUgcVideoId;
        if (str == null) {
            return;
        }
        if (bean == null || (resourceId = bean.getUgcVideoId()) == null) {
            resourceId = bean != null ? bean.getResourceId() : null;
            if (resourceId == null) {
                return;
            }
        }
        if (Intrinsics.c(resourceId, str)) {
            long jN = bean != null ? RangesKt.n(bean.getProgress(), 0L, 100L) : 0L;
            qv.f mViewBinding = getMViewBinding();
            if (mViewBinding == null || (mVar = mViewBinding.f73728d) == null || (appCompatTextView = mVar.f73801c) == null) {
                return;
            }
            appCompatTextView.setText(jN + "%");
        }
    }

    private final void g1(UGCVideo video) {
        hj.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        hj.b logViewConfig2;
        HashMap mapG3;
        hj.b logViewConfig3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        HashMap mapG7;
        HashMap mapG8;
        String collectionId;
        HashMap mapG9;
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            String ops = video.getOps();
            if (ops == null) {
                ops = this.ops;
            }
            logViewConfig4.n(ops);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG9 = logViewConfig5.g()) != null) {
            String ugcVideoId = video.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
        }
        hj.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 != null && (mapG8 = logViewConfig6.g()) != null) {
            UGCVideoBelongToCollection belongToCollection = video.getBelongToCollection();
            if ((belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) && (collectionId = this.collectionId) == null) {
                collectionId = "";
            }
        }
        hj.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG7 = logViewConfig7.g()) != null) {
            String subjectId = video.getSubjectId();
        }
        hj.b logViewConfig8 = getLogViewConfig();
        if (logViewConfig8 != null && (mapG6 = logViewConfig8.g()) != null) {
        }
        hj.b logViewConfig9 = getLogViewConfig();
        if (logViewConfig9 != null && (mapG5 = logViewConfig9.g()) != null) {
            String str = this.collectionId;
        }
        y0();
        String str2 = this.fromOptId;
        if (str2 != null && (logViewConfig3 = getLogViewConfig()) != null && (mapG4 = logViewConfig3.g()) != null) {
        }
        String str3 = this.previousPageVideoId;
        if (str3 != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG3 = logViewConfig2.g()) != null) {
        }
        hj.b logViewConfig10 = getLogViewConfig();
        if (logViewConfig10 != null && (mapG2 = logViewConfig10.g()) != null) {
        }
        String str4 = this.previousTrackId;
        if (str4 != null && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        hj.b logViewConfig11 = getLogViewConfig();
        if (logViewConfig11 != null) {
            logViewConfig11.k(true);
        }
    }

    private final void initAdapter() {
        com.transsion.ugcvideodetail.adapter.a aVar = new com.transsion.ugcvideodetail.adapter.a(this, this.trackId, this.previousTrackId, this.previousPageVideoId);
        aVar.h0().C(new UGCImmVideoLoadMoreView());
        aVar.h0().z(true);
        aVar.h0().E(3);
        aVar.h0().D(new p6.f() { // from class: com.transsion.ugcvideodetail.fragment.j
            @Override // p6.f
            public final void a() {
                UGCImmVideoDetailFragment.M0(this.f56230a);
            }
        });
        aVar.o0().d(false);
        aVar.o0().c(2);
        aVar.o0().b(new p6.g() { // from class: com.transsion.ugcvideodetail.fragment.k
            @Override // p6.g
            public final void a() {
                UGCImmVideoDetailFragment.N0(this.f56233a);
            }
        });
        this.detailAdapter = aVar;
    }

    private final void x0() {
        UGCVideo ugcVideo;
        UGCImmVideo uGCImmVideo = (UGCImmVideo) D0().L0().f();
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        if (aVar != null) {
            int iG0 = aVar.g0(uGCImmVideo) + 1;
            com.transsion.ugcvideodetail.adapter.a aVar2 = this.detailAdapter;
            if (iG0 >= (aVar2 != null ? aVar2.getItemCount() : 0)) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "autoPlayNext", false, 4, null);
            com.transsion.ugcvideodetail.adapter.a aVar3 = this.detailAdapter;
            UGCImmVideo uGCImmVideo2 = aVar3 != null ? (UGCImmVideo) aVar3.f0(iG0) : null;
            if (uGCImmVideo2 == null || (ugcVideo = uGCImmVideo2.getUgcVideo()) == null) {
                return;
            }
            D0().O0().q(Integer.valueOf(ugcVideo.videoUGCPosition()));
        }
    }

    private final void y0() {
        HashMap mapG;
        if (this.pageLoadStartTime > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pageLoadStartTime;
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "load_duration: " + jCurrentTimeMillis + " ms", false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, UGCImmVideo uGCImmVideo) {
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        lo.f fVar;
        Map mapA;
        com.transsion.ugcvideodetail.adapter.a aVar;
        r6.g gVarO0;
        UGCVideoBelongToCollection belongToCollection2;
        Integer videoNum;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "detailObserver: " + uGCImmVideo, false, 4, null);
        if (uGCImmVideo != null) {
            UGCVideo ugcVideo2 = uGCImmVideo.getUgcVideo();
            String ugcVideoId = ugcVideo2 != null ? ugcVideo2.getUgcVideoId() : null;
            UGCVideo ugcVideo3 = uGCImmVideo.getUgcVideo();
            String ops = ugcVideo3 != null ? ugcVideo3.getOps() : null;
            if ((ops == null || ops.length() == 0) && (ugcVideo = uGCImmVideo.getUgcVideo()) != null) {
                ugcVideo.setOps(uGCImmVideoDetailFragment.ops);
            }
            uGCImmVideoDetailFragment.firstUgcVideo = uGCImmVideo;
            UGCVideo ugcVideo4 = uGCImmVideo.getUgcVideo();
            uGCImmVideoDetailFragment.firstUgcVideoId = ugcVideoId;
            uGCImmVideoDetailFragment.D0().D().q(uGCImmVideoDetailFragment.firstUgcVideoId);
            String str = uGCImmVideoDetailFragment.collectionId;
            if (str == null || str.length() == 0) {
                UGCVideo ugcVideo5 = uGCImmVideo.getUgcVideo();
                uGCImmVideoDetailFragment.collectionId = (ugcVideo5 == null || (belongToCollection = ugcVideo5.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId();
                uGCImmVideoDetailFragment.D0().B().q(uGCImmVideoDetailFragment.collectionId);
            }
            UGCVideo ugcVideo6 = uGCImmVideo.getUgcVideo();
            boolean zContainsKey = false;
            if (((ugcVideo6 == null || (belongToCollection2 = ugcVideo6.getBelongToCollection()) == null || (videoNum = belongToCollection2.getVideoNum()) == null) ? 0 : videoNum.intValue()) <= 1) {
                uGCImmVideoDetailFragment.collectionId = null;
            }
            String str2 = uGCImmVideoDetailFragment.collectionId;
            if (!(str2 == null || str2.length() == 0)) {
                if ((ugcVideo4 != null ? ugcVideo4.videoUGCPosition() : 1) > 1 && (aVar = uGCImmVideoDetailFragment.detailAdapter) != null && (gVarO0 = aVar.o0()) != null) {
                    gVarO0.d(true);
                }
            }
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelD0 = uGCImmVideoDetailFragment.D0();
            String str3 = uGCImmVideoDetailFragment.collectionId;
            uGCImmVideoDetailViewModelD0.b1(!(str3 == null || str3.length() == 0));
            com.transsion.ugcvideodetail.adapter.a aVar2 = uGCImmVideoDetailFragment.detailAdapter;
            if (aVar2 != null) {
                aVar2.p(uGCImmVideo);
            }
            UGCVideo ugcVideo7 = uGCImmVideo.getUgcVideo();
            if (ugcVideo7 != null) {
                uGCImmVideoDetailFragment.g1(ugcVideo7);
            }
            ao.e mediaSource = uGCImmVideo.toMediaSource();
            if (mediaSource != null) {
                lo.f fVar2 = uGCImmVideoDetailFragment.orPlayer;
                if (fVar2 != null && (mapA = fVar2.a()) != null) {
                    zContainsKey = mapA.containsKey(mediaSource.e());
                }
                boolean z10 = zContainsKey;
                lg.a.C0828a.f(c0828a, "UGCImmVideoDetail", "detailAddDataSource---- ,inPlayerList:" + z10, false, 4, null);
                if ((uGCImmVideoDetailFragment.isNewPlayer || !z10) && (fVar = uGCImmVideoDetailFragment.orPlayer) != null) {
                    fVar.addDataSource(mediaSource);
                }
                lo.f fVar3 = uGCImmVideoDetailFragment.orPlayer;
                if (fVar3 != null) {
                    fVar3.prepare();
                }
                lo.f fVar4 = uGCImmVideoDetailFragment.orPlayer;
                if (fVar4 != null) {
                    fVar4.play();
                }
            }
        }
    }

    /* JADX INFO: renamed from: C0, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    /* JADX INFO: renamed from: F0, reason: from getter */
    public final String getLastPageFrom() {
        return this.lastPageFrom;
    }

    /* JADX INFO: renamed from: G0, reason: from getter */
    public final String getPreviousPageVideoId() {
        return this.previousPageVideoId;
    }

    /* JADX INFO: renamed from: H0, reason: from getter */
    public final String getPreviousTrackId() {
        return this.previousTrackId;
    }

    /* JADX INFO: renamed from: I0, reason: from getter */
    public final String getTrackId() {
        return this.trackId;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public qv.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.f fVarC = qv.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    public final AppCompatImageView L0() {
        qv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f73727c;
        }
        return null;
    }

    public final void Y0() {
        lo.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.release();
        }
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar != null) {
            bVar.g();
        }
        E0().x(this.downloadListener);
        Runnable runnable = this.downloadPopHideRunnable;
        if (runnable != null) {
            this.downloadPopHandler.removeCallbacks(runnable);
        }
    }

    public final void b1(boolean z10) {
        this.isClickPause = z10;
    }

    public final void c1(String ugcVideoId) {
        qv.m mVar;
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            return;
        }
        this.downloadingUgcVideoId = ugcVideoId;
        qv.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (mVar = mViewBinding.f73728d) == null) {
            return;
        }
        FrameLayout root = mVar.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        jg.c.k(root);
        mVar.f73801c.setText("0%");
        E0().s(ugcVideoId, new Function1() { // from class: com.transsion.ugcvideodetail.fragment.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCImmVideoDetailFragment.d1(this.f56200a, (DownloadBean) obj);
            }
        });
        Z0();
        hj.i.f64505a.r("/ugc_video/immersive_detail", MapsKt.f(TuplesKt.a("dialog_name", "download_view")));
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void hideLoading() {
        ProgressBar progressBar;
        qv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f73729e) != null) {
            jg.c.g(progressBar);
        }
        c cVar = this.loadingHandler;
        cVar.removeMessages(cVar.b());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        E0().e(this.downloadListener);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        FrameLayout frameLayout;
        qv.m mVar;
        FrameLayout root;
        qv.m mVar2;
        FrameLayout root2;
        qv.m mVar3;
        FrameLayout root3;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        this.pageLoadStartTime = System.currentTimeMillis();
        initAdapter();
        O0();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        PagerLayoutManager pagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        pagerLayoutManager.Y(true);
        this.pagerLayoutManager = pagerLayoutManager;
        com.transsion.ugcvideodetail.hepler.b bVar = new com.transsion.ugcvideodetail.hepler.b(this, this.detailAdapter, this.orPlayer, this.orPlayerView, this.pagerLayoutManager);
        this.pagerChangeControl = bVar;
        PagerLayoutManager pagerLayoutManager2 = this.pagerLayoutManager;
        if (pagerLayoutManager2 != null) {
            pagerLayoutManager2.Z(bVar);
        }
        qv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f73730f) != null) {
            recyclerView2.setLayoutManager(this.pagerLayoutManager);
        }
        qv.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f73730f) != null) {
            recyclerView.setAdapter(this.detailAdapter);
        }
        qv.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (mVar3 = mViewBinding3.f73728d) != null && (root3 = mVar3.getRoot()) != null) {
            jg.c.g(root3);
        }
        qv.f mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (mVar2 = mViewBinding4.f73728d) != null && (root2 = mVar2.getRoot()) != null) {
            jg.c.e(root2);
        }
        qv.f mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (mVar = mViewBinding5.f73728d) != null && (root = mVar.getRoot()) != null) {
            root.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoDetailFragment.P0(this.f56223a, view);
                }
            });
        }
        qv.f mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (frameLayout = mViewBinding6.f73726b) != null) {
            jg.c.e(frameLayout);
        }
        qv.f mViewBinding7 = getMViewBinding();
        if (mViewBinding7 == null || (appCompatImageView = mViewBinding7.f73727c) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCImmVideoDetailFragment.Q0(this.f56227a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        D0().D().q(this.firstUgcVideoId);
        D0().B().q(this.collectionId);
        D0().J().j(this, this.historyObserver);
        D0().I0().j(this, this.detailObserver);
        D0().R0().j(this, this.listObserver);
        D0().O0().j(this, this.playingEpObserver);
        D0().d1(this.ops);
        D0().j0(this.trackId);
        D0().h0(this.previousTrackId);
        D0().g0(this.previousPageVideoId);
        B0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            lg.a.C0828a.r(lg.a.f68839a, "Report", new String[]{"UGCImmVideoDetail fb log duration:" + jElapsedRealtime}, false, 4, null);
            com.transsion.baselib.report.e.f43344a.n("UGCImmVideoDetailFragment", Long.valueOf(jElapsedRealtime), getContext());
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/ugc_video/immersive_detail", false, 2, null);
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
        if (com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false)) {
            x0();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        lo.f fVar;
        UGCImmVideoItemView uGCImmVideoItemViewF;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "onConnected", false, 4, null);
        T0();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar != null && (uGCImmVideoItemViewF = bVar.f()) != null) {
            uGCImmVideoItemViewF.onNetConnect();
        }
        if (this.errorInfo == null || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.prepare();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
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

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String uuid) {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        ao.e mediaSource;
        UGCImmVideo uGCImmVideo = this.firstUgcVideo;
        if (Intrinsics.c(uuid, (uGCImmVideo == null || (mediaSource = uGCImmVideo.toMediaSource()) == null) ? null : mediaSource.e())) {
            lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoDetail", new String[]{"onMediaItemTransition ：" + uuid + ",是当前视频，跳过"}, false, 4, null);
            return;
        }
        boolean z10 = com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false);
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "onMediaItemTransition autoPlay:" + z10 + ", uuid：" + uuid, false, 4, null);
        if (z10) {
            x0();
            com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
            if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
                return;
            }
            uGCImmVideoItemViewF.onItemViewMediaItemTransition();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        super.onPause();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
            return;
        }
        uGCImmVideoItemViewF.onPagePause();
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

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        super.onResume();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
            return;
        }
        uGCImmVideoItemViewF.onPageResume();
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        super.onStop();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
            return;
        }
        uGCImmVideoItemViewF.onPageStop();
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
        com.transsion.player.orplayer.f.a.F(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        com.transsion.player.orplayer.f.a.I(this, eVar);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        super.receiveArguments();
        this.lastPageFrom = hj.i.f64505a.i();
        Bundle arguments = getArguments();
        this.firstUgcVideoId = arguments != null ? arguments.getString("id") : null;
        Bundle arguments2 = getArguments();
        this.collectionId = arguments2 != null ? arguments2.getString("collection_id") : null;
        Bundle arguments3 = getArguments();
        this.subjectId = arguments3 != null ? arguments3.getString("subject_id") : null;
        Bundle arguments4 = getArguments();
        this.ugcVideoType = arguments4 != null ? arguments4.getString("ugcCategory") : null;
        Bundle arguments5 = getArguments();
        this.ops = arguments5 != null ? arguments5.getString("ops") : null;
        Bundle arguments6 = getArguments();
        this.previousPageVideoId = arguments6 != null ? arguments6.getString("parent_video_id") : null;
        Bundle arguments7 = getArguments();
        this.tabId = arguments7 != null ? arguments7.getString("tab_id") : null;
        Bundle arguments8 = getArguments();
        this.withoutHistory = arguments8 != null ? arguments8.getBoolean("ugc_without_history", false) : false;
        Bundle arguments9 = getArguments();
        this.fromOptId = arguments9 != null ? arguments9.getString("from_opt_id") : null;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.j(this.lastPageFrom);
        }
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoDetail", "receiveArguments: collectionId:" + this.collectionId + ", ugcVideoId=" + this.firstUgcVideoId + ", previousPageVideoId=" + this.previousPageVideoId, false, 4, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    public final void startLoading() {
        c cVar = this.loadingHandler;
        if (cVar.hasMessages(cVar.b())) {
            return;
        }
        c cVar2 = this.loadingHandler;
        cVar2.sendEmptyMessageDelayed(cVar2.b(), this.loadingHandler.a());
    }
}
