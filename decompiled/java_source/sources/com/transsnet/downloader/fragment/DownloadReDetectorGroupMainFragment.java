package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.drawable.DrawableCreator;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLFrameLayout;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.DownloadResolutionItem;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.DubsInfoData;
import com.transsion.moviedetailapi.bean.ResolutionItem;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.view.DownloadMovieAdView;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.transsnet.downloader.widget.DownloadGridTabView;
import com.transsnet.downloader.widget.DownloadResolutionTabView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
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
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 °\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002±\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u0019\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001f\u0010\u0004J\u0019\u0010\"\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b\"\u0010#J#\u0010'\u001a\b\u0012\u0004\u0012\u00020%0$2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$H\u0002¢\u0006\u0004\b'\u0010(J%\u0010+\u001a\u00020\u00052\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b+\u0010,J%\u00100\u001a\u00020\u00052\f\u0010.\u001a\b\u0012\u0004\u0012\u00020-0$2\u0006\u0010/\u001a\u00020)H\u0002¢\u0006\u0004\b0\u0010,J\u000f\u00101\u001a\u00020\u0005H\u0002¢\u0006\u0004\b1\u0010\u0004J\u000f\u00102\u001a\u00020\u0005H\u0002¢\u0006\u0004\b2\u0010\u0004JI\u00108\u001a\u00020\u00052\u0006\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\b\u00104\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u00105\u001a\u0004\u0018\u00010)2\b\b\u0002\u00106\u001a\u00020)2\b\b\u0002\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0005H\u0002¢\u0006\u0004\b:\u0010\u0004J)\u0010<\u001a\u00020;2\u0006\u00103\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\b\b\u0002\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0004\b<\u0010=J%\u0010A\u001a\u00020\u00052\f\u0010?\u001a\b\u0012\u0004\u0012\u00020>0$2\u0006\u0010@\u001a\u00020\u0013H\u0002¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\u0005H\u0002¢\u0006\u0004\bC\u0010\u0004J\u000f\u0010D\u001a\u00020\u0005H\u0002¢\u0006\u0004\bD\u0010\u0004J\u000f\u0010E\u001a\u00020\u0005H\u0002¢\u0006\u0004\bE\u0010\u0004J\u000f\u0010F\u001a\u00020\u0005H\u0002¢\u0006\u0004\bF\u0010\u0004JQ\u0010N\u001a\u00020\u00052\b\u0010G\u001a\u0004\u0018\u00010\u00102\u0006\u0010H\u001a\u00020\u00102\b\u0010I\u001a\u0004\u0018\u00010\u00102\b\u0010J\u001a\u0004\u0018\u00010\u00102\b\u0010K\u001a\u0004\u0018\u00010\u00102\b\u0010L\u001a\u0004\u0018\u00010\u00102\u0006\u0010M\u001a\u00020\u0010H\u0002¢\u0006\u0004\bN\u0010OJ\u0017\u0010P\u001a\u00020\u00052\u0006\u00103\u001a\u00020)H\u0002¢\u0006\u0004\bP\u0010QJ\u001d\u0010T\u001a\u00020\u00052\f\u0010S\u001a\b\u0012\u0004\u0012\u00020R0$H\u0002¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\u0005H\u0002¢\u0006\u0004\bV\u0010\u0004J\u0017\u0010X\u001a\u00020\u00052\u0006\u0010W\u001a\u00020\u0010H\u0002¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\u0005H\u0002¢\u0006\u0004\bZ\u0010\u0004J\u000f\u0010[\u001a\u00020\u0005H\u0002¢\u0006\u0004\b[\u0010\u0004J'\u0010_\u001a\u00020\u00052\u0006\u0010\\\u001a\u00020\u00132\u0006\u0010]\u001a\u00020\u00132\u0006\u0010^\u001a\u00020\u0013H\u0002¢\u0006\u0004\b_\u0010`R\u0016\u0010H\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010d\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010bR\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010bR\u0018\u0010l\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010bR\u0018\u0010K\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010bR\u0018\u0010o\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010bR\u0018\u0010q\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010bR\u0016\u0010t\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010v\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010sR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0016\u0010|\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010bR\u0015\u0010\u0080\u0001\u001a\u00020}8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001b\u0010\u0083\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0019\u0010\u0086\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0088\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0085\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u0019\u0010\u008e\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0085\u0001R\u0019\u0010\u0090\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0085\u0001R \u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00020>0\u0091\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001b\u0010\u0097\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u0099\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0085\u0001R\u001a\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010bR\u0018\u0010\u009c\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010sR \u0010¡\u0001\u001a\u00030\u009d\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\by\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001R!\u0010¦\u0001\u001a\u00030¢\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b£\u0001\u0010\u009e\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001R!\u0010«\u0001\u001a\u00030§\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¨\u0001\u0010\u009e\u0001\u001a\u0006\b©\u0001\u0010ª\u0001R\u0018\u0010\u00ad\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¬\u0001\u0010bR\u0018\u0010¯\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b®\u0001\u0010b¨\u0006²\u0001"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lpy/a0;", "<init>", "()V", "", "initViewData", "onResume", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "x1", "(Landroid/view/LayoutInflater;)Lpy/a0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewModel", "initListener", "retryLoadData", "v0", "x0", "w0", "y0", "onDestroy", "initView", "Lcom/transsnet/downloader/bean/DownloadListBean;", "listBean", "V1", "(Lcom/transsnet/downloader/bean/DownloadListBean;)V", "", "Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "resolutionList", "a2", "(Ljava/util/List;)Ljava/util/List;", "", "resolutionPosition", "G1", "(Ljava/util/List;I)V", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "dubsList", "dubsPosition", "A1", "I1", "l1", "resolution", "audioChannel", "season", "tabIndex", "isShowLoading", "d2", "(IILjava/lang/String;Ljava/lang/Integer;IZ)V", "z1", "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;", "n1", "(IIZ)Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;", "Lcom/transsion/baselib/db/download/DownloadBean;", "selectedList", "selectAll", "Y1", "(Ljava/util/List;Z)V", "X1", "W1", "T1", "S1", "pageName", "pageFrom", "subjectId", "postId", "ops", "resourceId", "taskId", "t1", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "b2", "(I)V", "Lcom/transsnet/downloader/widget/e;", "titleList", "E1", "(Ljava/util/List;)V", "m1", CampaignEx.JSON_KEY_TITLE, "Z1", "(Ljava/lang/String;)V", "f2", "s1", "isVipSubject", "hasFreeEpisode", "isVipResource", "c2", "(ZZZ)V", "l", "Ljava/lang/String;", "m", "lastPageFrom", "Lcom/transsion/moviedetailapi/bean/Subject;", "n", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "o", "curSubjectId", TtmlNode.TAG_P, "groupId", CampaignEx.JSON_KEY_AD_Q, CampaignEx.JSON_KEY_AD_R, "targetResourceId", "s", "moduleName", "t", "Z", "dialogStyle", TmcStartParams.KEY_URL_SHORT, "isSelectAll", "", "v", "J", "localTotalSize", "w", "formatSize", "Lkotlinx/coroutines/n0;", "x", "Lkotlinx/coroutines/n0;", "downloadCoroutineScope", "y", "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;", "curFragment", "z", "I", "targetSeason", "A", "curSeason", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "B", "Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;", "commonNavigator", "C", "curTabIndex", "D", "curTotalEpisode", "Ljava/util/concurrent/CopyOnWriteArrayList;", "E", "Ljava/util/concurrent/CopyOnWriteArrayList;", "checkedList", "F", "Ljava/lang/Integer;", "currentResolution", "G", "currentResolutionPosition", "H", "selectedCurrentAudioSubjectId", "showPremiumIfNeed", "Lcom/transsnet/downloader/manager/StartDownloadHelper;", "Lkotlin/Lazy;", "w1", "()Lcom/transsnet/downloader/manager/StartDownloadHelper;", "startDownloadHelper", "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "K", "v1", "()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;", "groupMainViewModel", "Lcom/transsnet/downloader/viewmodel/k0;", "L", "u1", "()Lcom/transsnet/downloader/viewmodel/k0;", "detailDownloadViewModel", "M", "traceId", "N", "interceptTypeSceneId", "O", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorGroupMainFragment extends DownloadReDetectorBaseFragment<py.a0> {

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private ORCommonNavigator commonNavigator;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private int curTabIndex;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private int curTotalEpisode;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private Integer currentResolution;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private int currentResolutionPosition;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private String selectedCurrentAudioSubjectId;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private boolean showPremiumIfNeed;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private Subject subject;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String curSubjectId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String groupId;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String targetResourceId;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private boolean isSelectAll;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private long localTotalSize;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private DownloadReDetectorGroupFragment curFragment;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private int targetSeason;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String pageFrom = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean dialogStyle = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private String formatSize = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final kotlinx.coroutines.n0 downloadCoroutineScope = kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b());

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private int curSeason = 1;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private CopyOnWriteArrayList checkedList = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final Lazy startDownloadHelper = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.t2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadReDetectorGroupMainFragment.g2();
        }
    });

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final Lazy groupMainViewModel = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.u2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadReDetectorGroupMainFragment.y1(this.f59332a);
        }
    });

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final Lazy detailDownloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.viewmodel.k0.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private String traceId = "";

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private String interceptTypeSceneId = "";

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorGroupMainFragment a(String str, String str2, Subject subject, String str3, String str4, String str5, String str6, int i11, boolean z10) {
            DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment = new DownloadReDetectorGroupMainFragment();
            downloadReDetectorGroupMainFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str), TuplesKt.a("extra_last_page_from", str2), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_group_id", str3), TuplesKt.a("extra_ops", str4), TuplesKt.a("extra_target_resource_id", str5), TuplesKt.a("extra_module_name", str6), TuplesKt.a("extra_season", Integer.valueOf(i11)), TuplesKt.a("extra_dialog_style", Boolean.valueOf(z10))));
            return downloadReDetectorGroupMainFragment;
        }
    }

    public static final class b implements zm.a {
        b() {
        }

        @Override // zm.a
        public void a(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.f(this, memberCheckResult);
        }

        @Override // zm.a
        public void b(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.d(this, memberCheckResult);
        }

        @Override // zm.a
        public void c(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.g(this, memberCheckResult);
        }

        @Override // zm.a
        public void d(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.e(this, memberCheckResult);
        }

        @Override // zm.a
        public void e() {
            zm.a.C0979a.c(this);
            DownloadReDetectorGroupMainFragment.this.W1();
        }

        @Override // zm.a
        public void f(MemberCheckResult memberCheckResult) {
            zm.a.C0979a.a(this, memberCheckResult);
        }

        @Override // zm.a
        public void onFail(String errorMsg) {
            Intrinsics.h(errorMsg, "errorMsg");
            zm.a.C0979a.b(this, errorMsg);
            lg.a.C0828a.f(lg.a.f68839a, "co_mem", "DownloadReDetectorGroupMainFragment --> onSelectAllClickIfNeed() --> 剧集全选 --> " + errorMsg, false, 4, null);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f58924a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58924a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f58924a;
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
            this.f58924a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void A1(List dubsList, int dubsPosition) {
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResolutionTabView downloadResolutionTabView2;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarO;
        DownloadResolutionTabView downloadResolutionTabView3;
        py.a0 a0Var = (py.a0) getMViewBinding();
        if (a0Var != null && (downloadResolutionTabView3 = a0Var.A) != null) {
            downloadResolutionTabView3.setAudioClickListener(new Function0() { // from class: com.transsnet.downloader.fragment.v2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return DownloadReDetectorGroupMainFragment.B1(this.f59344a);
                }
            });
        }
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null && (viewModel = getViewModel()) != null && (b0VarO = viewModel.o()) != null) {
            b0VarO.j(parentFragment, new c(new Function1() { // from class: com.transsnet.downloader.fragment.c2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.C1(this.f59152a, (DubsInfo) obj);
                }
            }));
        }
        py.a0 a0Var2 = (py.a0) getMViewBinding();
        if (a0Var2 != null && (downloadResolutionTabView2 = a0Var2.A) != null) {
            downloadResolutionTabView2.setAudioItemClickListener(new Function2() { // from class: com.transsnet.downloader.fragment.d2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DownloadReDetectorGroupMainFragment.D1(this.f59164a, ((Integer) obj).intValue(), (DubsInfo) obj2);
                }
            });
        }
        py.a0 a0Var3 = (py.a0) getMViewBinding();
        if (a0Var3 == null || (downloadResolutionTabView = a0Var3.A) == null) {
            return;
        }
        downloadResolutionTabView.setAudioContentData(dubsList, dubsPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(9);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit C1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, DubsInfo dubsInfo) {
        DownloadResolutionTabView downloadResolutionTabView;
        androidx.p009lifecycle.b0 b0VarG;
        BLFrameLayout bLFrameLayout;
        String subjectId = dubsInfo.getSubjectId();
        if (subjectId != null) {
            py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var != null && (bLFrameLayout = a0Var.f72572f) != null) {
                jg.c.k(bLFrameLayout);
            }
            downloadReDetectorGroupMainFragment.curSubjectId = subjectId;
            DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel != null && (b0VarG = viewModel.g()) != null) {
                b0VarG.q(subjectId);
            }
            DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel2 != null) {
                viewModel2.u(subjectId);
            }
            py.a0 a0Var2 = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var2 != null && (downloadResolutionTabView = a0Var2.A) != null) {
                downloadResolutionTabView.updateAudioTrack(dubsInfo.getLanName());
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit D1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i11, DubsInfo item) {
        androidx.p009lifecycle.b0 b0VarG;
        BLFrameLayout bLFrameLayout;
        Intrinsics.h(item, "item");
        String subjectId = item.getSubjectId();
        if (subjectId != null) {
            py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var != null && (bLFrameLayout = a0Var.f72572f) != null) {
                jg.c.k(bLFrameLayout);
            }
            downloadReDetectorGroupMainFragment.curSubjectId = subjectId;
            DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel != null && (b0VarG = viewModel.g()) != null) {
                b0VarG.q(downloadReDetectorGroupMainFragment.curSubjectId);
            }
            downloadReDetectorGroupMainFragment.getTAG();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initAudioTab: 切换音轨到:");
            sb2.append(item);
            DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
            if (viewModel2 != null) {
                viewModel2.u(subjectId);
            }
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void E1(final List titleList) {
        DownloadGridTabView downloadGridTabView;
        py.a0 a0Var = (py.a0) getMViewBinding();
        if (a0Var == null || (downloadGridTabView = a0Var.f72592z) == null) {
            return;
        }
        downloadGridTabView.setItemClickCallback(new Function2() { // from class: com.transsnet.downloader.fragment.n2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DownloadReDetectorGroupMainFragment.F1(this.f59267a, titleList, ((Integer) obj).intValue(), (com.transsnet.downloader.widget.e) obj2);
            }
        });
        downloadGridTabView.setDataList(titleList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, List list, int i11, com.transsnet.downloader.widget.e item) {
        Intrinsics.h(item, "item");
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = downloadReDetectorGroupMainFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "ep tab click, resolution:" + downloadReDetectorGroupMainFragment.currentResolution + ", index:" + i11, false, 4, null);
        downloadReDetectorGroupMainFragment.Z1(((com.transsnet.downloader.widget.e) list.get(i11)).a());
        Integer num = downloadReDetectorGroupMainFragment.currentResolution;
        if (num != null) {
            e2(downloadReDetectorGroupMainFragment, num.intValue(), downloadReDetectorGroupMainFragment.currentResolutionPosition, downloadReDetectorGroupMainFragment.curSubjectId, null, i11, false, 40, null);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void G1(List resolutionList, int resolutionPosition) {
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResolutionTabView downloadResolutionTabView2;
        py.a0 a0Var = (py.a0) getMViewBinding();
        if (a0Var != null && (downloadResolutionTabView2 = a0Var.A) != null) {
            downloadResolutionTabView2.setResolutionItemClickListener(new Function2() { // from class: com.transsnet.downloader.fragment.e2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return DownloadReDetectorGroupMainFragment.H1(this.f59179a, ((Integer) obj).intValue(), (DownloadResolutionItem) obj2);
                }
            });
        }
        py.a0 a0Var2 = (py.a0) getMViewBinding();
        if (a0Var2 == null || (downloadResolutionTabView = a0Var2.A) == null) {
            return;
        }
        downloadResolutionTabView.setResolutionContentData(resolutionList, resolutionPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i11, DownloadResolutionItem item) {
        Intrinsics.h(item, "item");
        downloadReDetectorGroupMainFragment.b2(item.getResolution());
        e2(downloadReDetectorGroupMainFragment, item.getResolution(), i11, downloadReDetectorGroupMainFragment.curSubjectId, null, 0, false, 24, null);
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void I1() {
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarZ;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null && (viewModel = getViewModel()) != null && (b0VarZ = viewModel.z()) != null) {
            b0VarZ.j(parentFragment, new c(new Function1() { // from class: com.transsnet.downloader.fragment.f2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.J1(this.f59187a, (Integer) obj);
                }
            }));
        }
        py.a0 a0Var = (py.a0) getMViewBinding();
        if (a0Var == null || (downloadResolutionTabView = a0Var.A) == null) {
            return;
        }
        downloadResolutionTabView.setSeasonClickListener(new Function0() { // from class: com.transsnet.downloader.fragment.g2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DownloadReDetectorGroupMainFragment.K1(this.f59199a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit J1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, Integer num) {
        Integer resolution;
        DownloadResolutionTabView downloadResolutionTabView;
        py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (downloadResolutionTabView = a0Var.A) != null) {
            Intrinsics.e(num);
            downloadResolutionTabView.setSeason(num.intValue());
        }
        Integer num2 = downloadReDetectorGroupMainFragment.currentResolution;
        e2(downloadReDetectorGroupMainFragment, num2 != null ? num2.intValue() : 360, downloadReDetectorGroupMainFragment.currentResolutionPosition, downloadReDetectorGroupMainFragment.curSubjectId, num, 0, false, 16, null);
        downloadReDetectorGroupMainFragment.m1();
        DownloadListBean downloadListBean = (DownloadListBean) downloadReDetectorGroupMainFragment.v1().s().f();
        downloadReDetectorGroupMainFragment.b2((downloadListBean == null || (resolution = downloadListBean.getResolution()) == null) ? com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0) : resolution.intValue());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorGroupMainFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(8);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        downloadReDetectorGroupMainFragment.m0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        downloadReDetectorGroupMainFragment.X1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        downloadReDetectorGroupMainFragment.X1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void O1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, View view) {
        DownloadMovieAdView downloadMovieAdView;
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        }
        if (downloadReDetectorGroupMainFragment.checkedList.isEmpty()) {
            uh.b.f76753a.d(com.transsnet.downloader.R$string.download_unselected_tips);
            return;
        }
        DownloadBean downloadBean = (DownloadBean) CollectionsKt.k0(downloadReDetectorGroupMainFragment.checkedList);
        if (downloadBean != null) {
            com.transsion.baselib.report.launch.b.f43370a.b().putInt("download_last_resolution", downloadBean.getResolution());
        }
        py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (downloadMovieAdView = a0Var.B) != null) {
            downloadMovieAdView.download();
        }
        lg.a.C0828a.f(lg.a.f68839a, "premium_d", "DownloadReDetectorGroupMainFragment --> btnDownload{} --> 点进下载按钮", false, 4, null);
        downloadReDetectorGroupMainFragment.u1().b().q(Boolean.TRUE);
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(downloadReDetectorGroupMainFragment), null, null, new DownloadReDetectorGroupMainFragment$initView$4$2(downloadReDetectorGroupMainFragment, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, DubsInfoData dubsInfoData) {
        List<DubsInfo> dubs;
        String subjectId;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarG;
        DownloadResourcesDetectorViewModel viewModel2;
        if (dubsInfoData != null && (dubs = dubsInfoData.getDubs()) != null) {
            int iIndexOf = 0;
            if (dubs.isEmpty()) {
                String str = downloadReDetectorGroupMainFragment.curSubjectId;
                if (str != null && (viewModel2 = downloadReDetectorGroupMainFragment.getViewModel()) != null) {
                    viewModel2.u(str);
                }
            } else {
                Subject subject = downloadReDetectorGroupMainFragment.subject;
                Object obj = null;
                downloadReDetectorGroupMainFragment.curSubjectId = subject != null ? subject.getSubjectId() : null;
                DownloadResourcesDetectorViewModel viewModel3 = downloadReDetectorGroupMainFragment.getViewModel();
                if (viewModel3 != null && (b0VarG = viewModel3.g()) != null) {
                    b0VarG.q(downloadReDetectorGroupMainFragment.curSubjectId);
                }
                for (Object obj2 : dubs) {
                    String subjectId2 = ((DubsInfo) obj2).getSubjectId();
                    Subject subject2 = downloadReDetectorGroupMainFragment.subject;
                    if (Intrinsics.c(subjectId2, subject2 != null ? subject2.getSubjectId() : null)) {
                        obj = obj2;
                        break;
                    }
                }
                DubsInfo dubsInfo = (DubsInfo) obj;
                if (dubsInfo != null) {
                    dubsInfo.setSelected(true);
                    iIndexOf = dubs.indexOf(dubsInfo);
                }
                Subject subject3 = downloadReDetectorGroupMainFragment.subject;
                if (subject3 != null && (subjectId = subject3.getSubjectId()) != null && (viewModel = downloadReDetectorGroupMainFragment.getViewModel()) != null) {
                    viewModel.u(subjectId);
                }
            }
            downloadReDetectorGroupMainFragment.A1(CollectionsKt.U0(dubs), iIndexOf);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, DownloadListBean downloadListBean) {
        downloadReDetectorGroupMainFragment.V1(downloadListBean);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x013d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0141  */
    /* JADX WARN: Code duplicated, block: B:57:0x0154  */
    /* JADX WARN: Code duplicated, block: B:59:0x0158  */
    /* JADX WARN: Code duplicated, block: B:62:0x0162  */
    /* JADX WARN: Code duplicated, block: B:67:0x017b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0181  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit R1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i11, ResourcesSeasonList resourcesSeasonList) {
        List<ResourcesSeason> seasons;
        Object next;
        Object next2;
        int se2;
        Subject subject;
        DownloadResourcesDetectorViewModel viewModel;
        androidx.p009lifecycle.b0 b0VarH;
        Integer subjectType;
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadResolutionTabView downloadResolutionTabView2;
        DownloadResourcesDetectorViewModel viewModel2;
        Subject subject2;
        String title;
        androidx.p009lifecycle.b0 b0VarH2;
        BLFrameLayout bLFrameLayout;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = downloadReDetectorGroupMainFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "获取当前季跟分辨率的信息,resolution:" + i11 + "， , curSeason:" + downloadReDetectorGroupMainFragment.curSeason, false, 4, null);
        Subject subject3 = downloadReDetectorGroupMainFragment.subject;
        if (subject3 != null) {
            subject3.setSubjectType(resourcesSeasonList != null ? resourcesSeasonList.getSubjectType() : null);
        }
        py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (bLFrameLayout = a0Var.f72572f) != null) {
            jg.c.g(bLFrameLayout);
        }
        if (resourcesSeasonList != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            List<ResourcesSeason> list = seasons;
            Iterator<T> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ResourcesSeason) next).getSe() != downloadReDetectorGroupMainFragment.curSeason);
            ResourcesSeason resourcesSeason = (ResourcesSeason) next;
            if (resourcesSeason != null) {
                se2 = resourcesSeason.getSe();
            } else {
                Iterator<T> it2 = list.iterator();
                if (it2.hasNext()) {
                    next2 = it2.next();
                    if (it2.hasNext()) {
                        int se3 = ((ResourcesSeason) next2).getSe();
                        do {
                            Object next3 = it2.next();
                            int se4 = ((ResourcesSeason) next3).getSe();
                            if (se3 > se4) {
                                next2 = next3;
                                se3 = se4;
                            }
                        } while (it2.hasNext());
                    }
                } else {
                    next2 = null;
                }
                ResourcesSeason resourcesSeason2 = (ResourcesSeason) next2;
                se2 = resourcesSeason2 != null ? resourcesSeason2.getSe() : downloadReDetectorGroupMainFragment.curSeason;
            }
            downloadReDetectorGroupMainFragment.curSeason = se2;
            Pair pairA = DownloadUtil.f59900a.A(seasons, se2, i11);
            int iIntValue = ((Number) pairA.getFirst()).intValue();
            int iIntValue2 = ((Number) pairA.getSecond()).intValue();
            int i12 = RangesKt.i(iIntValue2 + 19, iIntValue);
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            String tag2 = downloadReDetectorGroupMainFragment.getTAG();
            Intrinsics.g(tag2, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a2, tag2, "加载第一刷数据，curSeason:" + downloadReDetectorGroupMainFragment.curSeason + ", start:" + iIntValue2 + ", end:" + i12 + ", total:" + iIntValue + ", resolution:" + i11 + "， audioChannel", false, 4, null);
            Subject subject4 = downloadReDetectorGroupMainFragment.subject;
            if (subject4 != null) {
                Integer subjectType2 = subject4.getSubjectType();
                int value = SubjectType.TV.getValue();
                if (subjectType2 != null && subjectType2.intValue() == value) {
                    if (downloadReDetectorGroupMainFragment.targetSeason <= 0) {
                        downloadReDetectorGroupMainFragment.targetSeason = downloadReDetectorGroupMainFragment.curSeason;
                    }
                    viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
                    if (viewModel2 != null && (b0VarH2 = viewModel2.h()) != null) {
                        b0VarH2.q(Integer.valueOf(downloadReDetectorGroupMainFragment.targetSeason));
                    }
                    DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModelV1 = downloadReDetectorGroupMainFragment.v1();
                    String str = downloadReDetectorGroupMainFragment.curSubjectId;
                    subject2 = downloadReDetectorGroupMainFragment.subject;
                    if (subject2 != null) {
                        title = subject2.getTitle();
                    } else {
                        title = null;
                    }
                    downloadResourcesDetectorViewModelV1.j(str, (920 & 2) != 0 ? "" : title, (920 & 4) != 0 ? 0 : 0, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 1, (920 & 32) != 0 ? 1 : 0, (920 & 64) != 0 ? 1 : 0, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0) : i11);
                } else {
                    subject = downloadReDetectorGroupMainFragment.subject;
                    if (subject != null) {
                        subjectType = subject.getSubjectType();
                        int value2 = SubjectType.EDUCATION.getValue();
                        if (subjectType != null && subjectType.intValue() == value2) {
                            if (downloadReDetectorGroupMainFragment.targetSeason <= 0) {
                                downloadReDetectorGroupMainFragment.targetSeason = downloadReDetectorGroupMainFragment.curSeason;
                            }
                            viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
                            if (viewModel2 != null) {
                                b0VarH2.q(Integer.valueOf(downloadReDetectorGroupMainFragment.targetSeason));
                            }
                            DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModelV2 = downloadReDetectorGroupMainFragment.v1();
                            String str2 = downloadReDetectorGroupMainFragment.curSubjectId;
                            subject2 = downloadReDetectorGroupMainFragment.subject;
                            if (subject2 != null) {
                                title = subject2.getTitle();
                            } else {
                                title = null;
                            }
                            downloadResourcesDetectorViewModelV2.j(str2, (920 & 2) != 0 ? "" : title, (920 & 4) != 0 ? 0 : 0, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 1, (920 & 32) != 0 ? 1 : 0, (920 & 64) != 0 ? 1 : 0, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0) : i11);
                        }
                    }
                    downloadReDetectorGroupMainFragment.curSeason = 0;
                    viewModel = downloadReDetectorGroupMainFragment.getViewModel();
                    if (viewModel != null && (b0VarH = viewModel.h()) != null) {
                        b0VarH.q(0);
                    }
                    downloadReDetectorGroupMainFragment.showPremiumIfNeed = true;
                    e2(downloadReDetectorGroupMainFragment, 0, 0, downloadReDetectorGroupMainFragment.curSubjectId, null, 0, false, 56, null);
                }
            } else {
                subject = downloadReDetectorGroupMainFragment.subject;
                if (subject != null) {
                    subjectType = subject.getSubjectType();
                    int value3 = SubjectType.EDUCATION.getValue();
                    if (subjectType != null) {
                        if (downloadReDetectorGroupMainFragment.targetSeason <= 0) {
                            downloadReDetectorGroupMainFragment.targetSeason = downloadReDetectorGroupMainFragment.curSeason;
                        }
                        viewModel2 = downloadReDetectorGroupMainFragment.getViewModel();
                        if (viewModel2 != null) {
                            b0VarH2.q(Integer.valueOf(downloadReDetectorGroupMainFragment.targetSeason));
                        }
                        DownloadResourcesDetectorViewModel downloadResourcesDetectorViewModelV3 = downloadReDetectorGroupMainFragment.v1();
                        String str3 = downloadReDetectorGroupMainFragment.curSubjectId;
                        subject2 = downloadReDetectorGroupMainFragment.subject;
                        if (subject2 != null) {
                            title = subject2.getTitle();
                        } else {
                            title = null;
                        }
                        downloadResourcesDetectorViewModelV3.j(str3, (920 & 2) != 0 ? "" : title, (920 & 4) != 0 ? 0 : 0, (920 & 8) != 0 ? "1" : null, (920 & 16) != 0 ? 20 : 1, (920 & 32) != 0 ? 1 : 0, (920 & 64) != 0 ? 1 : 0, (920 & 128) != 0 ? 1 : 0, (920 & 256) != 0 ? 1 : 0, (920 & 512) == 0 ? 0 : 1, (920 & 1024) != 0 ? com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0) : i11);
                    }
                }
                downloadReDetectorGroupMainFragment.curSeason = 0;
                viewModel = downloadReDetectorGroupMainFragment.getViewModel();
                if (viewModel != null) {
                    b0VarH.q(0);
                }
                downloadReDetectorGroupMainFragment.showPremiumIfNeed = true;
                e2(downloadReDetectorGroupMainFragment, 0, 0, downloadReDetectorGroupMainFragment.curSubjectId, null, 0, false, 56, null);
            }
            py.a0 a0Var2 = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var2 != null && (downloadResolutionTabView2 = a0Var2.A) != null) {
                downloadResolutionTabView2.setSeasons(seasons.size());
            }
            py.a0 a0Var3 = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var3 != null && (downloadResolutionTabView = a0Var3.A) != null) {
                downloadResolutionTabView.setSeason(downloadReDetectorGroupMainFragment.curSeason);
            }
        }
        return Unit.f67061a;
    }

    private final void S1() {
        androidx.p009lifecycle.b0 b0VarP;
        androidx.p009lifecycle.b0 b0VarI;
        if (this.checkedList.isEmpty()) {
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarI = viewModel.i()) != null) {
            int size = this.checkedList.size();
            String str = this.formatSize;
            Object obj = this.checkedList.get(0);
            Intrinsics.g(obj, "get(...)");
            b0VarI.q(new com.transsnet.downloader.viewmodel.b(size, str, (DownloadBean) obj, false));
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 == null || (b0VarP = viewModel2.p()) == null) {
            return;
        }
        b0VarP.q(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void T1() {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        View view;
        FrameLayout frameLayout;
        u1().b().q(Boolean.FALSE);
        if (u0(this.localTotalSize)) {
            return;
        }
        py.a0 a0Var = (py.a0) getMViewBinding();
        if (a0Var != null && (frameLayout = a0Var.f72574h) != null && frameLayout.getVisibility() == 0) {
            lg.a.f68839a.p("download", new String[]{"DownloadReDetectorGroupMainFragment --> onDownload() --> 当前正在全选中"}, true);
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "onDownload ", false, 4, null);
        py.a0 a0Var2 = (py.a0) getMViewBinding();
        if (a0Var2 != null && (view = a0Var2.f72591y) != null) {
            jg.c.k(view);
        }
        py.a0 a0Var3 = (py.a0) getMViewBinding();
        if (a0Var3 != null && (appCompatImageView = a0Var3.f72575i) != null) {
            jg.c.g(appCompatImageView);
        }
        py.a0 a0Var4 = (py.a0) getMViewBinding();
        if (a0Var4 != null && (appCompatTextView = a0Var4.f72583q) != null) {
            jg.c.g(appCompatTextView);
        }
        py.a0 a0Var5 = (py.a0) getMViewBinding();
        if (a0Var5 != null && (progressBar2 = a0Var5.f72581o) != null) {
            jg.c.k(progressBar2);
        }
        int i11 = 0;
        for (Object obj : this.checkedList) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            DownloadBean downloadBean = (DownloadBean) obj;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            downloadBean.setTaskId(string);
            t1(this.pageFrom, this.lastPageFrom, downloadBean.getSubjectId(), downloadBean.getPostId(), this.ops, downloadBean.getResourceId(), string);
            lg.a.f68839a.p("download", new String[]{"剧集多资源，下载点击，开始下载: subjectId = " + downloadBean.getSubjectId() + ",resourceId = " + downloadBean.getResourceId() + ", name = " + downloadBean.getTotalTitleName()}, true);
            i11 = i12;
        }
        p0().D(this.checkedList);
        w1().f(this.checkedList);
        kotlinx.coroutines.k.d(this.downloadCoroutineScope, null, null, new DownloadReDetectorGroupMainFragment$onDownload$2(this, null), 3, null);
        long size = ((long) ((this.checkedList.size() / 20) * 100)) + 300;
        py.a0 a0Var6 = (py.a0) getMViewBinding();
        if (a0Var6 != null && (progressBar = a0Var6.f72581o) != null) {
            progressBar.postDelayed(new Runnable() { // from class: com.transsnet.downloader.fragment.h2
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadReDetectorGroupMainFragment.U1(this.f59208a);
                }
            }, size);
        }
        BiddingNativeManager.Companion companion = BiddingNativeManager.f42016y;
        com.transsion.ad.strategy.d dVar = com.transsion.ad.strategy.d.f42231a;
        Subject subject = this.subject;
        companion.a("DownloadPopupScene", dVar.a(subject != null ? subject.getGenre() : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        downloadReDetectorGroupMainFragment.S1();
    }

    private final void V1(DownloadListBean listBean) {
        List<DownloadResolutionItem> resolutionList;
        if (listBean == null || (resolutionList = listBean.getResolutionList()) == null) {
            return;
        }
        List<DownloadResolutionItem> resolutionList2 = listBean.getResolutionList();
        if (resolutionList2 != null) {
            Iterator<T> it = resolutionList2.iterator();
            while (it.hasNext()) {
                ((DownloadResolutionItem) it.next()).setVipInfo(listBean.getVipInfo());
            }
        }
        if (this.commonNavigator == null) {
            Integer resolution = listBean.getResolution();
            b2(resolution != null ? resolution.intValue() : com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0));
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "onGetDefResolutionData 首次，curSeason:" + this.curSeason + ",resolutionList: :" + resolutionList, false, 4, null);
        List listA2 = a2(resolutionList);
        I1();
        if (listA2.size() <= 1) {
            G1(listA2, 0);
            this.showPremiumIfNeed = true;
            Integer resolution2 = listBean.getResolution();
            e2(this, resolution2 != null ? resolution2.intValue() : 0, 0, this.curSubjectId, null, 0, false, 56, null);
            return;
        }
        this.showPremiumIfNeed = false;
        Integer resolution3 = listBean.getResolution();
        int iIntValue = resolution3 != null ? resolution3.intValue() : 0;
        int i11 = -1;
        int i12 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", -1);
        Iterator it2 = listA2.iterator();
        int i13 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i13 = -1;
                break;
            } else if (((DownloadResolutionItem) it2.next()).getResolution() == i12) {
                break;
            } else {
                i13++;
            }
        }
        if (i13 < 0 && iIntValue > 0) {
            Iterator it3 = listA2.iterator();
            int i14 = 0;
            while (it3.hasNext()) {
                if (((DownloadResolutionItem) it3.next()).getResolution() == iIntValue) {
                    i11 = i14;
                    break;
                }
                i14++;
            }
            i13 = i11;
        }
        int i15 = i13 < 0 ? 0 : i13;
        int resolution4 = 0;
        int i16 = 0;
        for (Object obj : listA2) {
            int i17 = i16 + 1;
            if (i16 < 0) {
                CollectionsKt.u();
            }
            DownloadResolutionItem downloadResolutionItem = (DownloadResolutionItem) obj;
            if (i16 == i15) {
                resolution4 = downloadResolutionItem.getResolution();
                downloadResolutionItem.setSelected(true);
            } else {
                downloadResolutionItem.setSelected(false);
            }
            i16 = i17;
        }
        G1(listA2, i15);
        e2(this, resolution4, i15, this.curSubjectId, null, 0, false, 56, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void W1() {
        py.a0 a0Var;
        AppCompatImageView appCompatImageView;
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment = this.curFragment;
        if ((downloadReDetectorGroupFragment != null && !downloadReDetectorGroupFragment.l1()) || (a0Var = (py.a0) getMViewBinding()) == null || (appCompatImageView = a0Var.f72576j) == null) {
            return;
        }
        appCompatImageView.setSelected(!appCompatImageView.isSelected());
        boolean zIsSelected = appCompatImageView.isSelected();
        this.isSelectAll = zIsSelected;
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment2 = this.curFragment;
        if (downloadReDetectorGroupFragment2 != null) {
            downloadReDetectorGroupFragment2.n1(zIsSelected);
        }
    }

    private final void X1() {
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment;
        if (this.isSelectAll || (downloadReDetectorGroupFragment = this.curFragment) == null || !downloadReDetectorGroupFragment.d1()) {
            W1();
            return;
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            DownloadReDetectorGroupFragment downloadReDetectorGroupFragment2 = this.curFragment;
            iMemberApi.o(downloadReDetectorGroupFragment2 != null ? downloadReDetectorGroupFragment2.a1() : null, new b());
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01cd  */
    /* JADX WARN: Multi-variable type inference failed */
    private final void Y1(List selectedList, boolean selectAll) {
        Subject subject;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView5;
        AppCompatImageView appCompatImageView6;
        AppCompatTextView appCompatTextView2;
        Integer requireMemberType;
        Integer freeEpisodeCount;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        this.checkedList.clear();
        List list = selectedList;
        this.checkedList.addAll(list);
        lg.a.C0828a.f(lg.a.f68839a, "zxb_log", "DownloadReDetectorGroupMainFragment --> onSelectData() --> checkedList.size = " + this.checkedList.size(), false, 4, null);
        List<DownloadBean> list2 = selectedList;
        long jLongValue = 0L;
        for (DownloadBean downloadBean : list2) {
            if (!downloadBean.isUnable()) {
                Long size = downloadBean.getSize();
                jLongValue += size != null ? size.longValue() : 0L;
            }
        }
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        for (DownloadBean downloadBean2 : list2) {
            VipInfo vipInfo = downloadBean2.getVipInfo();
            if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
                IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
                z10 = com.transsnet.downloader.util.b0.f59921a.a(String.valueOf(downloadBean2.getResolution())) >= (iPremiumApi != null ? iPremiumApi.t() : 720);
            } else {
                if (downloadBean2.getEp() > 0) {
                    int ep2 = downloadBean2.getEp();
                    VipInfo vipInfo2 = downloadBean2.getVipInfo();
                    if (ep2 <= ((vipInfo2 == null || (freeEpisodeCount = vipInfo2.getFreeEpisodeCount()) == null) ? 0 : freeEpisodeCount.intValue())) {
                        z12 = true;
                    }
                }
                z11 = true;
            }
        }
        this.localTotalSize = jLongValue;
        if (jLongValue == 0) {
            py.a0 a0Var = (py.a0) getMViewBinding();
            if (a0Var != null && (appCompatTextView2 = a0Var.f72583q) != null) {
                appCompatTextView2.setText(getString(com.transsnet.downloader.R$string.str_download));
            }
            py.a0 a0Var2 = (py.a0) getMViewBinding();
            if (a0Var2 != null && (appCompatImageView6 = a0Var2.f72576j) != null) {
                appCompatImageView6.setSelected(false);
            }
            py.a0 a0Var3 = (py.a0) getMViewBinding();
            if (a0Var3 != null && (appCompatImageView5 = a0Var3.f72576j) != null) {
                appCompatImageView5.setImageResource(R$drawable.selector_download_group_check);
            }
            DownloadReDetectorGroupFragment downloadReDetectorGroupFragment = this.curFragment;
            if (downloadReDetectorGroupFragment != null) {
                downloadReDetectorGroupFragment.t1(false);
            }
        } else {
            this.formatSize = oh.b.a(jLongValue, 1);
            py.a0 a0Var4 = (py.a0) getMViewBinding();
            if (a0Var4 != null && (appCompatTextView = a0Var4.f72583q) != null) {
                appCompatTextView.setText(getString(com.transsnet.downloader.R$string.str_download) + " · " + this.formatSize);
            }
            py.a0 a0Var5 = (py.a0) getMViewBinding();
            if (a0Var5 != null && (appCompatImageView4 = a0Var5.f72576j) != null) {
                appCompatImageView4.setSelected(selectAll);
            }
            DownloadReDetectorGroupFragment downloadReDetectorGroupFragment2 = this.curFragment;
            if (downloadReDetectorGroupFragment2 != null) {
                downloadReDetectorGroupFragment2.t1(selectAll);
            }
            Subject subject2 = this.subject;
            if ((subject2 != null && subject2.isEduType()) || ((subject = this.subject) != null && subject.isMusicType())) {
                z10 = false;
            }
            if (!selectAll) {
                py.a0 a0Var6 = (py.a0) getMViewBinding();
                if (a0Var6 != null && (appCompatImageView = a0Var6.f72576j) != null) {
                    appCompatImageView.setImageResource(R$drawable.selector_download_group_check);
                }
            } else if (z10) {
                py.a0 a0Var7 = (py.a0) getMViewBinding();
                if (a0Var7 != null && (appCompatImageView3 = a0Var7.f72576j) != null) {
                    appCompatImageView3.setImageResource(R$mipmap.p_v2_ic_download_group_selected);
                }
            } else {
                py.a0 a0Var8 = (py.a0) getMViewBinding();
                if (a0Var8 != null && (appCompatImageView2 = a0Var8.f72576j) != null) {
                    appCompatImageView2.setImageResource(R$mipmap.ic_download_group_selected);
                }
            }
        }
        Subject subject3 = this.subject;
        if (subject3 != null ? subject3.isTvType() : false) {
            c2(z11, z12, z10);
        } else {
            Subject subject4 = this.subject;
            if (subject4 != null ? subject4.isMovieType() : false) {
                c2(z11, z12, z10);
            }
        }
        if (list.isEmpty()) {
            return;
        }
        this.currentResolution = Integer.valueOf(((DownloadBean) CollectionsKt.u0(selectedList)).getResolution());
    }

    private final void Z1(String title) {
        hj.i iVar = hj.i.f64505a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(WebConstants.PAGE_FROM, this.pageFrom);
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "episode_tab");
        linkedHashMap.put(CampaignEx.JSON_KEY_TITLE, title);
        Unit unit = Unit.f67061a;
        iVar.p("download", linkedHashMap);
    }

    private final List a2(List resolutionList) {
        androidx.p009lifecycle.b0 b0VarY;
        ResourcesSeasonList resourcesSeasonList;
        List<ResourcesSeason> seasons;
        Object next;
        ArrayList arrayList = new ArrayList();
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarY = viewModel.y()) != null && (resourcesSeasonList = (ResourcesSeasonList) b0VarY.f()) != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            Iterator<T> it = seasons.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ResourcesSeason) next).getSe() != this.curSeason);
            ResourcesSeason resourcesSeason = (ResourcesSeason) next;
            if (resourcesSeason != null) {
                List<ResolutionItem> resolutions = resourcesSeason.getResolutions();
                if (resolutions == null || resolutions.isEmpty()) {
                    return resolutionList;
                }
                List<ResolutionItem> resolutions2 = resourcesSeason.getResolutions();
                if (resolutions2 != null && resolutions2.size() == resolutionList.size()) {
                    return resolutionList;
                }
                List<ResolutionItem> resolutions3 = resourcesSeason.getResolutions();
                if (resolutions3 != null) {
                    for (ResolutionItem resolutionItem : resolutions3) {
                        Iterator it2 = resolutionList.iterator();
                        while (it2.hasNext()) {
                            DownloadResolutionItem downloadResolutionItem = (DownloadResolutionItem) it2.next();
                            if (resolutionItem.getResolution() == downloadResolutionItem.getResolution()) {
                                arrayList.add(downloadResolutionItem);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return arrayList.isEmpty() ? resolutionList : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00b0  */
    /* JADX WARN: Multi-variable type inference failed */
    private final void b2(int resolution) {
        DownloadGridTabView downloadGridTabView;
        DownloadResolutionTabView downloadResolutionTabView;
        DownloadGridTabView downloadGridTabView2;
        androidx.p009lifecycle.b0 b0VarY;
        ResourcesSeasonList resourcesSeasonList;
        List<ResourcesSeason> seasons;
        Object next;
        List<ResolutionItem> resolutions;
        ResolutionItem resolutionItem;
        Object next2;
        Object next3;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarY = viewModel.y()) != null && (resourcesSeasonList = (ResourcesSeasonList) b0VarY.f()) != null && (seasons = resourcesSeasonList.getSeasons()) != null) {
            Iterator<T> it = seasons.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((ResourcesSeason) next).getSe() != this.curSeason);
            ResourcesSeason resourcesSeason = (ResourcesSeason) next;
            if (resourcesSeason != null) {
                if (resolution == 0) {
                    List<ResolutionItem> resolutions2 = resourcesSeason.getResolutions();
                    if (resolutions2 != null) {
                        Iterator<T> it2 = resolutions2.iterator();
                        if (it2.hasNext()) {
                            next3 = it2.next();
                            if (it2.hasNext()) {
                                int epNum = ((ResolutionItem) next3).getEpNum();
                                do {
                                    Object next4 = it2.next();
                                    int epNum2 = ((ResolutionItem) next4).getEpNum();
                                    if (epNum < epNum2) {
                                        next3 = next4;
                                        epNum = epNum2;
                                    }
                                } while (it2.hasNext());
                            }
                        } else {
                            next3 = null;
                        }
                        ResolutionItem resolutionItem2 = (ResolutionItem) next3;
                        if (resolutionItem2 != null) {
                            this.curTotalEpisode = resolutionItem2.getEpNum();
                        }
                    }
                } else {
                    List<ResolutionItem> resolutions3 = resourcesSeason.getResolutions();
                    if (resolutions3 != null) {
                        Iterator<T> it3 = resolutions3.iterator();
                        do {
                            if (!it3.hasNext()) {
                                next2 = null;
                                break;
                            }
                            next2 = it3.next();
                        } while (resolution != ((ResolutionItem) next2).getResolution());
                        ResolutionItem resolutionItem3 = (ResolutionItem) next2;
                        if (resolutionItem3 != null) {
                            this.curTotalEpisode = resolutionItem3.getEpNum();
                        } else {
                            resolutions = resourcesSeason.getResolutions();
                            if (resolutions != null && (resolutionItem = (ResolutionItem) CollectionsKt.k0(resolutions)) != null) {
                                this.curTotalEpisode = resolutionItem.getEpNum();
                            }
                        }
                    } else {
                        resolutions = resourcesSeason.getResolutions();
                        if (resolutions != null) {
                            this.curTotalEpisode = resolutionItem.getEpNum();
                        }
                    }
                }
            }
        }
        int i11 = (this.curTotalEpisode + 49) / 50;
        if (i11 <= 1) {
            py.a0 a0Var = (py.a0) getMViewBinding();
            if (a0Var == null || (downloadGridTabView2 = a0Var.f72592z) == null) {
                return;
            }
            jg.c.g(downloadGridTabView2);
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "setSeasonOrEpTitleTab, totalEpisode:" + this.curTotalEpisode + ", titleCount:" + i11, false, 4, null);
        py.a0 a0Var2 = (py.a0) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (a0Var2 == null || (downloadResolutionTabView = a0Var2.A) == null) ? null : downloadResolutionTabView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.bottomMargin = com.blankj.utilcode.util.a0.a(12.0f);
        }
        py.a0 a0Var3 = (py.a0) getMViewBinding();
        if (a0Var3 != null && (downloadGridTabView = a0Var3.f72592z) != null) {
            jg.c.k(downloadGridTabView);
        }
        ArrayList arrayList = new ArrayList();
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i12 * 50;
            arrayList.add(new com.transsnet.downloader.widget.e((i13 + 1) + "-" + RangesKt.i(i13 + 50, this.curTotalEpisode), i12 == 0));
            i12++;
        }
        E1(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c2(boolean isVipSubject, boolean hasFreeEpisode, boolean isVipResource) {
        LinearLayoutCompat linearLayoutCompat;
        py.a0 a0Var;
        AppCompatTextView appCompatTextView;
        LinearLayoutCompat linearLayoutCompat2;
        LinearLayoutCompat linearLayoutCompat3;
        py.a0 a0Var2;
        AppCompatTextView appCompatTextView2;
        LinearLayoutCompat linearLayoutCompat4;
        LinearLayoutCompat linearLayoutCompat5;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView3;
        Subject subject;
        AppCompatTextView appCompatTextView4;
        VipInfo vipInfo;
        Integer requireMemberType;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        boolean zC = iPremiumApi != null ? iPremiumApi.c() : false;
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        int iF = iPremiumApi2 != null ? iPremiumApi2.f() : 0;
        this.interceptTypeSceneId = "default";
        if (!zC && iF < 1) {
            Context context = getContext();
            if (context != null) {
                if (isVipSubject || hasFreeEpisode || !((subject = this.subject) == null || (vipInfo = subject.getVipInfo()) == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1)) {
                    py.a0 a0Var3 = (py.a0) getMViewBinding();
                    if (a0Var3 != null && (appCompatTextView3 = a0Var3.f72583q) != null) {
                        appCompatTextView3.setText(androidx.core.content.b.getString(context, com.transsnet.downloader.R$string.p_v2_unlock_downloads));
                    }
                } else {
                    py.a0 a0Var4 = (py.a0) getMViewBinding();
                    if (a0Var4 != null && (appCompatTextView4 = a0Var4.f72583q) != null) {
                        appCompatTextView4.setText(androidx.core.content.b.getString(context, com.transsnet.downloader.R$string.p_v2_unlock_hd_downloads));
                    }
                }
            }
            py.a0 a0Var5 = (py.a0) getMViewBinding();
            if (a0Var5 != null && (appCompatImageView = a0Var5.f72575i) != null) {
                appCompatImageView.setImageResource(com.transsion.baseui.R$mipmap.p_v2_premium);
            }
            py.a0 a0Var6 = (py.a0) getMViewBinding();
            if (a0Var6 != null && (linearLayoutCompat5 = a0Var6.f72568b) != null) {
                linearLayoutCompat5.setBackgroundResource(com.transsion.baseui.R$drawable.p_v2_download_bg);
            }
            s1();
            this.interceptTypeSceneId = "download/stream_restriction";
            return;
        }
        if (isVipSubject) {
            py.a0 a0Var7 = (py.a0) getMViewBinding();
            if (a0Var7 != null && (linearLayoutCompat4 = a0Var7.f72568b) != null) {
                linearLayoutCompat4.setBackgroundResource(com.transsion.baseui.R$drawable.p_v2_download_bg);
            }
            if (zC) {
                return;
            }
            Context context2 = getContext();
            if (context2 != null && (a0Var2 = (py.a0) getMViewBinding()) != null && (appCompatTextView2 = a0Var2.f72583q) != null) {
                appCompatTextView2.setText(androidx.core.content.b.getString(context2, com.transsnet.downloader.R$string.p_v2_unlock_downloads));
            }
            s1();
            this.interceptTypeSceneId = "download/vip_content_block";
            return;
        }
        if (hasFreeEpisode) {
            py.a0 a0Var8 = (py.a0) getMViewBinding();
            if (a0Var8 == null || (linearLayoutCompat3 = a0Var8.f72568b) == null) {
                return;
            }
            linearLayoutCompat3.setBackgroundResource(R$drawable.shape_download_group_button);
            return;
        }
        if (!isVipResource) {
            py.a0 a0Var9 = (py.a0) getMViewBinding();
            if (a0Var9 == null || (linearLayoutCompat = a0Var9.f72568b) == null) {
                return;
            }
            linearLayoutCompat.setBackgroundResource(R$drawable.shape_download_group_button);
            return;
        }
        py.a0 a0Var10 = (py.a0) getMViewBinding();
        if (a0Var10 != null && (linearLayoutCompat2 = a0Var10.f72568b) != null) {
            linearLayoutCompat2.setBackgroundResource(com.transsion.baseui.R$drawable.p_v2_download_bg);
        }
        if (zC) {
            return;
        }
        Context context3 = getContext();
        if (context3 != null && (a0Var = (py.a0) getMViewBinding()) != null && (appCompatTextView = a0Var.f72583q) != null) {
            appCompatTextView.setText(androidx.core.content.b.getString(context3, com.transsnet.downloader.R$string.p_v2_unlock_hd_downloads));
        }
        s1();
        this.interceptTypeSceneId = "download/hd_restriction";
    }

    private final void d2(int resolution, int resolutionPosition, String audioChannel, Integer season, int tabIndex, boolean isShowLoading) {
        androidx.p009lifecycle.b0 b0VarH;
        androidx.p009lifecycle.b0 b0VarG;
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        Integer num = this.currentResolution;
        if (num != null && resolution == num.intValue() && tabIndex == this.curTabIndex && Intrinsics.c(audioChannel, this.selectedCurrentAudioSubjectId)) {
            int i11 = this.curSeason;
            if (season != null && season.intValue() == i11) {
                lg.a.C0828a c0828a = lg.a.f68839a;
                String tag = getTAG();
                Intrinsics.g(tag, "<get-TAG>(...)");
                lg.a.C0828a.f(c0828a, tag, "分辨率未切换，不处理, resolution = " + resolution + ", tabIndex = " + tabIndex, false, 4, null);
                return;
            }
        }
        String str = "fragment_download_group-" + resolution + "-" + this.curSubjectId + "-" + tabIndex + "-" + season;
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        String tag2 = getTAG();
        Intrinsics.g(tag2, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a2, tag2, "group showFragment, resolution:" + resolution + ",  curEpTabPosition:" + tabIndex + "， curSubjectId：" + this.curSubjectId + " season:" + season, false, 4, null);
        this.currentResolution = Integer.valueOf(resolution);
        this.curTabIndex = tabIndex;
        this.currentResolutionPosition = resolutionPosition;
        this.selectedCurrentAudioSubjectId = audioChannel;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarG = viewModel.g()) != null) {
            b0VarG.q(audioChannel);
        }
        this.curSeason = season != null ? season.intValue() : 1;
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarH = viewModel2.h()) != null) {
            b0VarH.q(Integer.valueOf(this.curSeason));
        }
        z1();
        Fragment fragmentK0 = getChildFragmentManager().k0(str);
        if (fragmentK0 == null) {
            fragmentK0 = n1(resolution, resolutionPosition, isShowLoading);
        }
        Intrinsics.f(fragmentK0, "null cannot be cast to non-null type com.transsnet.downloader.fragment.DownloadReDetectorGroupFragment");
        DownloadReDetectorGroupFragment downloadReDetectorGroupFragment = (DownloadReDetectorGroupFragment) fragmentK0;
        this.curFragment = downloadReDetectorGroupFragment;
        if (downloadReDetectorGroupFragment != null) {
            downloadReDetectorGroupFragment.t1(this.isSelectAll);
        }
        if (downloadReDetectorGroupFragment.isAdded()) {
            getChildFragmentManager().p().y(fragmentK0).l();
        } else {
            getChildFragmentManager().p().c(R$id.fl_content, fragmentK0, str).l();
        }
    }

    static /* synthetic */ void e2(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, int i11, int i12, String str, Integer num, int i13, boolean z10, int i14, Object obj) {
        if ((i14 & 8) != 0) {
            num = Integer.valueOf(downloadReDetectorGroupMainFragment.curSeason);
        }
        Integer num2 = num;
        if ((i14 & 16) != 0) {
            i13 = 0;
        }
        int i15 = i13;
        if ((i14 & 32) != 0) {
            z10 = true;
        }
        downloadReDetectorGroupMainFragment.d2(i11, i12, str, num2, i15, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void f2() {
        FrameLayout frameLayout;
        LinearLayout linearLayout;
        FrameLayout frameLayout2;
        LinearLayout linearLayout2;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null ? iPremiumApi.c() : false) {
            py.a0 a0Var = (py.a0) getMViewBinding();
            if (a0Var != null && (linearLayout2 = a0Var.f72579m) != null) {
                linearLayout2.setVisibility(8);
            }
            py.a0 a0Var2 = (py.a0) getMViewBinding();
            if (a0Var2 == null || (frameLayout2 = a0Var2.f72573g) == null) {
                return;
            }
            frameLayout2.setVisibility(0);
            return;
        }
        py.a0 a0Var3 = (py.a0) getMViewBinding();
        if (a0Var3 != null && (linearLayout = a0Var3.f72579m) != null) {
            linearLayout.setVisibility(0);
        }
        py.a0 a0Var4 = (py.a0) getMViewBinding();
        if (a0Var4 == null || (frameLayout = a0Var4.f72573g) == null) {
            return;
        }
        frameLayout.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StartDownloadHelper g2() {
        return new StartDownloadHelper();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        DownloadMovieAdView downloadMovieAdView;
        BLFrameLayout bLFrameLayout;
        LinearLayoutCompat linearLayoutCompat;
        TextView textView;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        ImageView imageView;
        BLConstraintLayout bLConstraintLayout;
        ViewGroup.LayoutParams layoutParams;
        py.a0 a0Var;
        BLConstraintLayout bLConstraintLayout2;
        if (!this.dialogStyle && (a0Var = (py.a0) getMViewBinding()) != null && (bLConstraintLayout2 = a0Var.f72569c) != null) {
            bLConstraintLayout2.setBackground(new DrawableCreator.Builder().setSolidColor(requireActivity().getResources().getColor(R$color.gray_dark_00)).build());
        }
        py.a0 a0Var2 = (py.a0) getMViewBinding();
        if (a0Var2 != null && (bLConstraintLayout = a0Var2.f72569c) != null && (layoutParams = bLConstraintLayout.getLayoutParams()) != null) {
            layoutParams.height = o0();
        }
        py.a0 a0Var3 = (py.a0) getMViewBinding();
        if (a0Var3 != null && (imageView = a0Var3.f72577k) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.p2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.L1(this.f59283a, view);
                }
            });
        }
        py.a0 a0Var4 = (py.a0) getMViewBinding();
        if (a0Var4 != null && (appCompatTextView = a0Var4.f72587u) != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.q2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.M1(this.f59293a, view);
                }
            });
        }
        f2();
        py.a0 a0Var5 = (py.a0) getMViewBinding();
        if (a0Var5 != null && (appCompatImageView = a0Var5.f72576j) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.r2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.N1(this.f59304a, view);
                }
            });
        }
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        int iF = iPremiumApi != null ? iPremiumApi.f() : 0;
        py.a0 a0Var6 = (py.a0) getMViewBinding();
        if (a0Var6 != null && (textView = a0Var6.f72584r) != null) {
            textView.setText(String.valueOf(iF));
        }
        py.a0 a0Var7 = (py.a0) getMViewBinding();
        if (a0Var7 != null && (linearLayoutCompat = a0Var7.f72568b) != null) {
            linearLayoutCompat.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.s2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorGroupMainFragment.O1(this.f59316a, view);
                }
            });
        }
        py.a0 a0Var8 = (py.a0) getMViewBinding();
        if (a0Var8 != null && (bLFrameLayout = a0Var8.f72572f) != null) {
            bLFrameLayout.setVisibility(0);
        }
        py.a0 a0Var9 = (py.a0) getMViewBinding();
        if (a0Var9 == null || (downloadMovieAdView = a0Var9.B) == null) {
            return;
        }
        Subject subject = this.subject;
        downloadMovieAdView.loadAd(subject != null ? subject.getGenre() : null);
    }

    private final void l1() {
    }

    private final void m1() {
        List<DownloadResolutionItem> resolutionList;
        DownloadListBean downloadListBean = (DownloadListBean) v1().s().f();
        if (downloadListBean == null || (resolutionList = downloadListBean.getResolutionList()) == null) {
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.r(c0828a, tag, new String[]{"checkSeason2RestResolution curSeason:" + this.curSeason + ",resolutionList: :" + resolutionList}, false, 4, null);
        List listA2 = a2(resolutionList);
        if (listA2.size() <= 1) {
            G1(listA2, 0);
            return;
        }
        Integer resolution = downloadListBean.getResolution();
        int iIntValue = resolution != null ? resolution.intValue() : 0;
        int i11 = -1;
        int i12 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", -1);
        Iterator it = listA2.iterator();
        int i13 = 0;
        while (true) {
            if (!it.hasNext()) {
                i13 = -1;
                break;
            }
            int resolution2 = ((DownloadResolutionItem) it.next()).getResolution();
            Integer num = this.currentResolution;
            if (num != null && resolution2 == num.intValue()) {
                break;
            } else {
                i13++;
            }
        }
        if (i13 < 0) {
            Iterator it2 = listA2.iterator();
            i13 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i13 = -1;
                    break;
                } else if (((DownloadResolutionItem) it2.next()).getResolution() == i12) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        if (i13 < 0 && iIntValue > 0) {
            Iterator it3 = listA2.iterator();
            int i14 = 0;
            while (it3.hasNext()) {
                if (((DownloadResolutionItem) it3.next()).getResolution() == iIntValue) {
                    i11 = i14;
                    break;
                }
                i14++;
            }
            i13 = i11;
        }
        if (i13 < 0) {
            i13 = 0;
        }
        int i15 = 0;
        for (Object obj : listA2) {
            int i16 = i15 + 1;
            if (i15 < 0) {
                CollectionsKt.u();
            }
            ((DownloadResolutionItem) obj).setSelected(i15 == i13);
            i15 = i16;
        }
        G1(listA2, i13);
    }

    private final DownloadReDetectorGroupFragment n1(int resolution, int resolutionPosition, boolean isShowLoading) {
        final DownloadReDetectorGroupFragment downloadReDetectorGroupFragmentA = DownloadReDetectorGroupFragment.INSTANCE.a(this.pageFrom, this.lastPageFrom, this.subject, this.curSubjectId, this.groupId, this.ops, this.targetResourceId, Integer.valueOf(resolution), resolutionPosition, this.showPremiumIfNeed, isShowLoading, this.curSeason, this.curTabIndex);
        downloadReDetectorGroupFragmentA.r1(new Function2() { // from class: com.transsnet.downloader.fragment.i2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DownloadReDetectorGroupMainFragment.o1(this.f59218a, (List) obj, ((Boolean) obj2).booleanValue());
            }
        });
        downloadReDetectorGroupFragmentA.s1(new Function1() { // from class: com.transsnet.downloader.fragment.j2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.p1(downloadReDetectorGroupFragmentA, this, (String) obj);
            }
        });
        downloadReDetectorGroupFragmentA.u1(new Function1() { // from class: com.transsnet.downloader.fragment.k2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.q1(this.f59243a, ((Boolean) obj).booleanValue());
            }
        });
        downloadReDetectorGroupFragmentA.v1(new Function1() { // from class: com.transsnet.downloader.fragment.l2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.r1(this.f59250a, ((Boolean) obj).booleanValue());
            }
        });
        return downloadReDetectorGroupFragmentA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, List list, boolean z10) {
        Intrinsics.h(list, "list");
        downloadReDetectorGroupMainFragment.Y1(list, z10);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit p1(DownloadReDetectorGroupFragment downloadReDetectorGroupFragment, DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, String str) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        if (!downloadReDetectorGroupFragment.isAdded() || downloadReDetectorGroupFragment.isDetached() || downloadReDetectorGroupFragment.isRemoving()) {
            return Unit.f67061a;
        }
        if (str == null || str.length() == 0) {
            py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var != null && (appCompatTextView = a0Var.f72583q) != null) {
                appCompatTextView.setText(downloadReDetectorGroupFragment.getString(com.transsnet.downloader.R$string.str_download));
            }
        } else {
            py.a0 a0Var2 = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
            if (a0Var2 != null && (appCompatTextView2 = a0Var2.f72583q) != null) {
                appCompatTextView2.setText(downloadReDetectorGroupFragment.getString(com.transsnet.downloader.R$string.str_download) + " · " + str);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit q1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, boolean z10) {
        FrameLayout frameLayout;
        py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (frameLayout = a0Var.f72574h) != null) {
            frameLayout.setVisibility(z10 ? 0 : 8);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit r1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, boolean z10) {
        BLFrameLayout bLFrameLayout;
        py.a0 a0Var = (py.a0) downloadReDetectorGroupMainFragment.getMViewBinding();
        if (a0Var != null && (bLFrameLayout = a0Var.f72572f) != null) {
            bLFrameLayout.setVisibility(z10 ? 0 : 8);
        }
        return Unit.f67061a;
    }

    private final void s1() {
        if (TextUtils.isEmpty(this.traceId)) {
            String strB = ti.n.f76264a.b();
            this.traceId = strB;
            com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
            String str = this.pageFrom;
            Subject subject = this.subject;
            fVar.h(str, "download/vip_content_block", strB, subject != null ? subject.getSubjectId() : null, 0);
        }
    }

    private final void t1(String pageName, String pageFrom, String subjectId, String postId, String ops, String resourceId, String taskId) {
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
        iVar.s(pageName, "download_click", map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        com.transsion.baselib.report.e.f43344a.l("download_click", bundle, getContext());
    }

    private final com.transsnet.downloader.viewmodel.k0 u1() {
        return (com.transsnet.downloader.viewmodel.k0) this.detailDownloadViewModel.getValue();
    }

    private final DownloadResourcesDetectorViewModel v1() {
        return (DownloadResourcesDetectorViewModel) this.groupMainViewModel.getValue();
    }

    private final StartDownloadHelper w1() {
        return (StartDownloadHelper) this.startDownloadHelper.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DownloadResourcesDetectorViewModel y1(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment) {
        return (DownloadResourcesDetectorViewModel) new androidx.p009lifecycle.v0(downloadReDetectorGroupMainFragment).a(DownloadResourcesDetectorViewModel.class);
    }

    private final void z1() {
        List listY0 = getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        Iterator it = listY0.iterator();
        while (it.hasNext()) {
            getChildFragmentManager().p().p((Fragment) it.next()).l();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        lg.a.C0828a.f(lg.a.f68839a, "premium_d", "DownloadReDetectorGroupMainFragment --> initViewData()", false, 4, null);
        initView();
        l1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        String subjectId;
        androidx.p009lifecycle.b0 b0VarG;
        androidx.p009lifecycle.b0 b0VarN;
        androidx.p009lifecycle.b0 b0VarY;
        py.a0 a0Var;
        DownloadResolutionTabView downloadResolutionTabView;
        final int i11 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("download_last_resolution", 0);
        Subject subject = this.subject;
        if (subject != null && (a0Var = (py.a0) getMViewBinding()) != null && (downloadResolutionTabView = a0Var.A) != null) {
            downloadResolutionTabView.setSubject(subject);
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel != null && (b0VarY = viewModel.y()) != null) {
            b0VarY.j(this, new c(new Function1() { // from class: com.transsnet.downloader.fragment.b2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.R1(this.f59138a, i11, (ResourcesSeasonList) obj);
                }
            }));
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null && (b0VarN = viewModel2.n()) != null) {
            b0VarN.j(this, new c(new Function1() { // from class: com.transsnet.downloader.fragment.m2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadReDetectorGroupMainFragment.P1(this.f59258a, (DubsInfoData) obj);
                }
            }));
        }
        v1().s().j(this, new c(new Function1() { // from class: com.transsnet.downloader.fragment.o2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadReDetectorGroupMainFragment.Q1(this.f59275a, (DownloadListBean) obj);
            }
        }));
        Subject subject2 = this.subject;
        if (subject2 != null && (subjectId = subject2.getSubjectId()) != null) {
            this.curSubjectId = subjectId;
            DownloadResourcesDetectorViewModel viewModel3 = getViewModel();
            if (viewModel3 != null && (b0VarG = viewModel3.g()) != null) {
                b0VarG.q(this.curSubjectId);
            }
            DownloadResourcesDetectorViewModel viewModel4 = getViewModel();
            if (viewModel4 != null) {
                viewModel4.t(subjectId);
            }
        }
        getParentFragment();
        DownloadResourcesDetectorViewModel viewModel5 = getViewModel();
        if (viewModel5 != null) {
            viewModel5.v();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
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
        String string5;
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
        if (arguments4 == null || (string3 = arguments4.getString("extra_ops")) == null) {
            string3 = "";
        }
        this.ops = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("extra_target_resource_id")) == null) {
            string4 = "";
        }
        this.targetResourceId = string4;
        Bundle arguments6 = getArguments();
        if (arguments6 != null && (string5 = arguments6.getString("extra_module_name")) != null) {
            str = string5;
        }
        this.moduleName = str;
        Bundle arguments7 = getArguments();
        this.targetSeason = arguments7 != null ? arguments7.getInt("extra_season") : 0;
        Bundle arguments8 = getArguments();
        this.dialogStyle = arguments8 != null ? arguments8.getBoolean("extra_dialog_style") : true;
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
            Subject subject = this.subject;
            mapG3.put("subject_id", subject != null ? subject.getSubjectId() : null);
        }
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 == null || (mapG = logViewConfig5.g()) == null) {
            return;
        }
        mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "2");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DownloadMovieAdView downloadMovieAdView;
        DownloadListManager.a aVar = DownloadListManager.f59994m;
        aVar.a().Y(null);
        try {
            aVar.a().A().clear();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        py.a0 a0Var = (py.a0) getMViewBinding();
        if (a0Var != null && (downloadMovieAdView = a0Var.B) != null) {
            downloadMovieAdView.onDestroy();
        }
        super.onDestroy();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        l1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void v0() {
        super.v0();
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void w0() {
        super.w0();
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void x0() {
        super.x0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: x1, reason: merged with bridge method [inline-methods] */
    public py.a0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.a0 a0VarC = py.a0.c(inflater);
        Intrinsics.g(a0VarC, "inflate(...)");
        return a0VarC;
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment
    public void y0() {
        super.y0();
    }
}
