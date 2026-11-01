package com.transsion.videodetail.music.ui;

import android.app.Application;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.bean.GameInfoType;
import com.transsion.commercializationapi.IGameResApi;
import com.transsion.fissionapi.IFissionProvider;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.IMemberApi;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.fragment.ResourceDetectorEmptyFragment;
import com.transsion.moviedetail.fragment.RestrictTipsDialog;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectGameInfo;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.publish.api.IPublishApi;
import com.transsion.push.PushConstants;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.VideoDetailViewModel;
import com.transsion.videodetail.VideoEpisodeFragment;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import com.transsion.videodetail.music.bean.MusicLoopEnum;
import com.transsion.videodetail.music.bean.MusicStateEnum;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import com.transsion.videodetail.music.widget.MusicDetailListOperateView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000¤\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0002ñ\u0001\u0018\u0000 \u0087\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\r\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0018\u0010\u0006J\u0019\u0010\u0019\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u0012J\u0019\u0010\u001b\u001a\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u0017\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001f\u0010\u0012J\u0017\u0010 \u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002¢\u0006\u0004\b \u0010\u0012J\u0017\u0010#\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u001d\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010)\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010-\u001a\u00020\f2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020&0%2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\fH\u0002¢\u0006\u0004\b1\u0010\u0006J\u0019\u00104\u001a\u00020\f2\b\b\u0002\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\fH\u0002¢\u0006\u0004\b6\u0010\u0006J\u000f\u00107\u001a\u00020\fH\u0002¢\u0006\u0004\b7\u0010\u0006J\u000f\u00108\u001a\u00020\fH\u0002¢\u0006\u0004\b8\u0010\u0006J\u0019\u00109\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b9\u0010*J\u000f\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\b:\u0010\u0006J\u000f\u0010;\u001a\u00020\fH\u0002¢\u0006\u0004\b;\u0010\u0006J\u000f\u0010<\u001a\u00020\fH\u0002¢\u0006\u0004\b<\u0010\u0006J\u000f\u0010=\u001a\u00020\fH\u0002¢\u0006\u0004\b=\u0010\u0006J\u0017\u0010>\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b>\u0010\u0012J)\u0010D\u001a\u0004\u0018\u00010B2\b\u0010@\u001a\u0004\u0018\u00010?2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0AH\u0002¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\fH\u0002¢\u0006\u0004\bF\u0010\u0006J\u0019\u0010I\u001a\u00020\f2\b\u0010H\u001a\u0004\u0018\u00010GH\u0002¢\u0006\u0004\bI\u0010JJ%\u0010M\u001a\b\u0012\u0004\u0012\u00020&0%2\u000e\u0010L\u001a\n\u0012\u0004\u0012\u00020K\u0018\u00010AH\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010Q\u001a\u00020P2\u0006\u0010O\u001a\u00020KH\u0002¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\fH\u0002¢\u0006\u0004\bS\u0010\u0006J\u000f\u0010T\u001a\u00020\fH\u0002¢\u0006\u0004\bT\u0010\u0006J\u000f\u0010U\u001a\u00020\fH\u0002¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010V\u001a\u00020\fH\u0002¢\u0006\u0004\bV\u0010\u0006J\u000f\u0010W\u001a\u00020\tH\u0002¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\fH\u0002¢\u0006\u0004\bY\u0010\u0006J\u0017\u0010[\u001a\u00020\f2\u0006\u0010Z\u001a\u00020\tH\u0002¢\u0006\u0004\b[\u0010\u0017J\u0017\u0010]\u001a\u00020\f2\u0006\u0010\\\u001a\u00020\tH\u0003¢\u0006\u0004\b]\u0010\u0017J\u000f\u0010^\u001a\u00020\fH\u0003¢\u0006\u0004\b^\u0010\u0006J\u000f\u0010_\u001a\u00020\fH\u0003¢\u0006\u0004\b_\u0010\u0006J\u000f\u0010`\u001a\u00020\fH\u0003¢\u0006\u0004\b`\u0010\u0006J\u0017\u0010c\u001a\u00020\f2\u0006\u0010b\u001a\u00020aH\u0003¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\fH\u0003¢\u0006\u0004\be\u0010\u0006J\u0019\u0010h\u001a\u00020\f2\b\u0010g\u001a\u0004\u0018\u00010fH\u0003¢\u0006\u0004\bh\u0010iJ\u0019\u0010k\u001a\u00020\f2\b\u0010j\u001a\u0004\u0018\u00010BH\u0003¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020\fH\u0003¢\u0006\u0004\bm\u0010\u0006J\u000f\u0010n\u001a\u00020\fH\u0002¢\u0006\u0004\bn\u0010\u0006J\u0019\u0010q\u001a\u00020\f2\b\u0010p\u001a\u0004\u0018\u00010oH\u0016¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\fH\u0016¢\u0006\u0004\bs\u0010\u0006J\u000f\u0010t\u001a\u00020\fH\u0016¢\u0006\u0004\bt\u0010\u0006J\u000f\u0010u\u001a\u00020\fH\u0016¢\u0006\u0004\bu\u0010\u0006J\u000f\u0010v\u001a\u00020\fH\u0016¢\u0006\u0004\bv\u0010\u0006J\u000f\u0010w\u001a\u00020\fH\u0016¢\u0006\u0004\bw\u0010\u0006J\u0017\u0010z\u001a\u00020\u00022\u0006\u0010y\u001a\u00020xH\u0016¢\u0006\u0004\bz\u0010{J\u000f\u0010|\u001a\u00020\fH\u0016¢\u0006\u0004\b|\u0010\u0006J\u000f\u0010}\u001a\u00020\fH\u0016¢\u0006\u0004\b}\u0010\u0006J\u000f\u0010~\u001a\u00020\fH\u0016¢\u0006\u0004\b~\u0010\u0006J\u000f\u0010\u007f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u007f\u0010\u0006J\u0011\u0010\u0080\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0080\u0001\u0010\u0006J\u0013\u0010\u0082\u0001\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0084\u0001\u0010XJ\u0012\u0010\u0085\u0001\u001a\u00020\u0007H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u0015\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u001a\u0010\u008b\u0001\u001a\u00020\f2\u0007\u0010\u008a\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u008b\u0001\u0010\u0017J$\u0010\u008e\u0001\u001a\u00020\f2\u0010\u0010\u008d\u0001\u001a\u000b\u0012\u0004\u0012\u00020\t\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001c\u0010\u0093\u0001\u001a\u00020\u00078\u0006¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0086\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R!\u0010£\u0001\u001a\u00030\u009e\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001R!\u0010¨\u0001\u001a\u00030¤\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0001\u0010 \u0001\u001a\u0006\b¦\u0001\u0010§\u0001R!\u0010\u00ad\u0001\u001a\u00030©\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bª\u0001\u0010 \u0001\u001a\u0006\b«\u0001\u0010¬\u0001R!\u0010²\u0001\u001a\u00030®\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¯\u0001\u0010 \u0001\u001a\u0006\b°\u0001\u0010±\u0001R\u001b\u0010´\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010\u0091\u0001R\u001b\u0010¶\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u0091\u0001R\u0019\u0010¹\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u001b\u0010»\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010\u0091\u0001R\u0019\u0010½\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010¸\u0001R\u0019\u0010¿\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¸\u0001R\u001b\u0010Á\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010\u0091\u0001R(\u0010Ç\u0001\u001a\u0002028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0005\bÆ\u0001\u00105R\u0019\u0010É\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010Ã\u0001R\u0019\u0010Ë\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ã\u0001R\u0019\u0010Í\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010Ã\u0001R\u001b\u0010Ï\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010\u0091\u0001R\u0019\u0010Ñ\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010¸\u0001R\u0019\u0010Ó\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010¸\u0001R\u001c\u0010×\u0001\u001a\u0005\u0018\u00010Ô\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R#\u0010Ü\u0001\u001a\u0005\u0018\u00010Ø\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÙ\u0001\u0010 \u0001\u001a\u0006\bÚ\u0001\u0010Û\u0001R#\u0010á\u0001\u001a\u0005\u0018\u00010Ý\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÞ\u0001\u0010 \u0001\u001a\u0006\bß\u0001\u0010à\u0001R\u001a\u0010å\u0001\u001a\u00030â\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010ä\u0001R\u001a\u0010@\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0001\u0010ç\u0001R\u0019\u0010é\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010¸\u0001R\u0019\u0010ë\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010¸\u0001R\u001a\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0001\u0010í\u0001R\"\u0010ð\u0001\u001a\u000b\u0012\u0004\u0012\u00020\t\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u0018\u0010ô\u0001\u001a\u00030ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bò\u0001\u0010ó\u0001R\u001a\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010ö\u0001R\u001c\u0010ú\u0001\u001a\u0005\u0018\u00010÷\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R\u0019\u0010û\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010¸\u0001R#\u0010þ\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0083\u000e¢\u0006\u000f\n\u0006\bä\u0001\u0010ü\u0001\u0012\u0005\bý\u0001\u0010\u0006R \u0010\u0081\u0002\u001a\u00020\t8\u0002@\u0002X\u0083\u000e¢\u0006\u000f\n\u0006\bÿ\u0001\u0010¸\u0001\u0012\u0005\b\u0080\u0002\u0010\u0006R'\u0010\u0086\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010f0\u0082\u00028\u0002X\u0083\u0004¢\u0006\u000f\n\u0006\b\u0083\u0002\u0010\u0084\u0002\u0012\u0005\b\u0085\u0002\u0010\u0006¨\u0006\u0088\u0002"}, d2 = {"Lcom/transsion/videodetail/music/ui/MusicDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Ljx/f;", "Lcom/transsion/baselib/report/l$a;", "Lyn/a;", "<init>", "()V", "", "subjectId", "", "isAudioTracksChange", "from", "", "R1", "(Ljava/lang/String;ZLjava/lang/String;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "H2", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "subject", "p2", "isNoNetwork", "B2", "(Z)V", "x2", "t2", "mMovieDetailBean", "A2", "A1", "m2", "z2", "u2", "h2", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "i2", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "", "Lgo/c;", "v1", "(Lcom/transsion/moviedetailapi/bean/Trailer;)Ljava/util/List;", "c2", "(Ljava/lang/String;)V", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "f2", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "u1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/util/List;", "G2", "", "visible", "E2", "(I)V", "D2", "H1", "a2", "e2", "y1", "C1", "e1", "f1", "K1", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", ShortTVHistoryView.TYPE_HISTORY, "", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "episodeMediaList", "q1", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/util/List;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "d1", "Lgo/a;", "bean", "Z1", "(Lgo/a;)V", "Lcom/transsion/videodetail/bean/VideoDetailStream;", "videoDetailStream", "w1", "(Ljava/util/List;)Ljava/util/List;", "stream", "Lcom/transsion/player/enum/PlayMimeType;", "o1", "(Lcom/transsion/videodetail/bean/VideoDetailStream;)Lcom/transsion/player/enum/PlayMimeType;", "showLoading", "g1", "w2", "h1", "a1", "()Z", "b1", "proactive", "r2", PushConstants.PUSH_SERVICE_TYPE_SHOW, "X1", "E1", "J1", "s2", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "uiType", "Y1", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "x1", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "videoDetailStreamList", "g2", "(Lcom/transsion/videodetail/bean/VideoDetailStreamList;)V", "episodeMedia", "j1", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "c1", "l2", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "t1", "(Landroid/view/LayoutInflater;)Ljx/f;", "initViewData", "initViewModel", "initListener", "loadDefaultData", "retryLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "isAudioShowNoNetworkLayout", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "isBackground", "onBackgroundStatusChange", "Lkotlin/Function0;", "callback", "R", "(Lkotlin/jvm/functions/Function0;)V", "a", "Ljava/lang/String;", "getFragmentId", "fragmentId", "Lfo/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lfo/a;", "playerControl", "Ltn/e;", "c", "Ltn/e;", "bottomRecHelper", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "e", "Lkotlin/Lazy;", "p1", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/videodetail/VideoDetailViewModel;", "f", "s1", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "g", "m1", "()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "mViewModel", "Llj/c;", "h", "k1", "()Llj/c;", "downloadDao", "i", "mSubjectId", "j", "ops", CampaignEx.JSON_KEY_AD_K, "Z", "netResultSuccess", "l", "moduleName", "m", "autoDownload", "n", "autoPlay", "o", "autoPlayResourceId", TtmlNode.TAG_P, "I", "getPreloadId", "()I", "setPreloadId", "preloadId", CampaignEx.JSON_KEY_AD_Q, "curSeason", CampaignEx.JSON_KEY_AD_R, "targetSeason", "s", "targetEp", "t", "lastPageFrom", TmcStartParams.KEY_URL_SHORT, "isFloatShow", "v", "hasClickedActivityTip", "Lcom/transsion/fissionapi/IFissionProvider;", "w", "Lcom/transsion/fissionapi/IFissionProvider;", "palmPayApi", "Lcom/transsion/memberapi/IMemberApi;", "x", "n1", "()Lcom/transsion/memberapi/IMemberApi;", "memberProvider", "Lcom/transsion/publish/api/IPublishApi;", "y", "r1", "()Lcom/transsion/publish/api/IPublishApi;", "publishedApi", "", "z", "J", "curAudioTrackPlayProgress", "A", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "B", "isMusicLikedFragment", "C", "isMusicFloatViewClick", "D", "Lcom/transsion/baselib/db/download/DownloadBean;", "E", "Lkotlin/jvm/functions/Function0;", "backPressedCallback", "com/transsion/videodetail/music/ui/MusicDetailFragment$e", "F", "Lcom/transsion/videodetail/music/ui/MusicDetailFragment$e;", "networkStatusChangedListener", "G", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "Ljx/j;", "H", "Ljx/j;", "loadingViewBinding", "showNetErr", "Landroid/view/View;", "getGameResView$annotations", "gameResView", "K", "isGameResInit$annotations", "isGameResInit", "Landroidx/lifecycle/c0;", "L", "Landroidx/lifecycle/c0;", "getPlayInfoObserver$annotations", "playInfoObserver", "M", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MusicDetailFragment extends PageStatusFragment<jx.f> implements com.transsion.baselib.report.l.a, yn.a {

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private VideoDetailPlayBean history;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean isMusicLikedFragment;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private boolean isMusicFloatViewClick;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private DownloadBean downloadBean;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private Function0 backPressedCallback;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final e networkStatusChangedListener;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private VideoDetailStreamList videoDetailStreamList;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private jx.j loadingViewBinding;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private boolean showNetErr;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private View gameResView;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean isGameResInit;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 playInfoObserver;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String fragmentId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private fo.a playerControl;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private tn.e bottomRecHelper;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy videoDetailViewModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadDao;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean netResultSuccess;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean autoDownload;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean autoPlay;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String autoPlayResourceId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private int preloadId;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int curSeason;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private int targetSeason;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int targetEp;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private boolean isFloatShow;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean hasClickedActivityTip;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private IFissionProvider palmPayApi;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberProvider;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final Lazy publishedApi;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private long curAudioTrackPlayProgress;

    /* JADX INFO: renamed from: com.transsion.videodetail.music.ui.MusicDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MusicDetailFragment a() {
            return new MusicDetailFragment();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57763a;

        static {
            int[] iArr = new int[MusicLoopEnum.values().length];
            try {
                iArr[MusicLoopEnum.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicLoopEnum.LIST_LOOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicLoopEnum.SINGLE_LOOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57763a = iArr;
        }
    }

    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            BubbleTextView bubbleTextView;
            ViewTreeObserver viewTreeObserver;
            jx.f mViewBinding = MusicDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (bubbleTextView = mViewBinding.f66368b) != null && (viewTreeObserver = bubbleTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            jx.f mViewBinding2 = MusicDetailFragment.this.getMViewBinding();
            BubbleTextView bubbleTextView2 = mViewBinding2 != null ? mViewBinding2.f66368b : null;
            if (bubbleTextView2 == null || bubbleTextView2.getMeasuredWidth() == 0) {
                return;
            }
            float measuredWidth = (bubbleTextView2.getMeasuredWidth() / 2) - (com.blankj.utilcode.util.a0.a(16.0f) / 2);
            bubbleTextView2.setArrowPosition(measuredWidth);
            lg.a.C0828a.f(lg.a.f68839a, "MusicDetailFragment", "activity tip width: " + bubbleTextView2.getMeasuredWidth() + ", arrowPosition: " + measuredWidth, false, 4, null);
        }
    }

    public static final class d extends androidx.activity.u {
        d() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            Function0 function0 = MusicDetailFragment.this.backPressedCallback;
            if (function0 == null || !((Boolean) function0.invoke()).booleanValue()) {
                if (MusicDetailFragment.this.playerControl != null) {
                    fo.a aVar = MusicDetailFragment.this.playerControl;
                    if (aVar != null) {
                        aVar.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = MusicDetailFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    public static final class e implements nh.n {
        e() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            MusicDetailFragment.this.h1();
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) MusicDetailFragment.this.s1().x().f();
            if (videoDetailMediaSource != null) {
                MusicDetailFragment musicDetailFragment = MusicDetailFragment.this;
                VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) musicDetailFragment.s1().w().f();
                if (videoDetailStreamList != null && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe() && videoDetailMediaSource.getEp() == videoDetailStreamList.getEp()) {
                    return;
                }
                musicDetailFragment.j1(videoDetailMediaSource);
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57767a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57767a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57767a;
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
            this.f57767a.invoke(obj);
        }
    }

    public static final class g implements fo.a.b {
        g() {
        }

        @Override // fo.a.b
        public void a() {
            MusicDetailFragment.this.d1();
        }

        @Override // fo.a.b
        public boolean b() {
            if (MusicDetailFragment.this.showNetErr && nh.m.f70474a.e()) {
                MusicDetailFragment musicDetailFragment = MusicDetailFragment.this;
                musicDetailFragment.j1((VideoDetailMediaSource) musicDetailFragment.s1().x().f());
            }
            return MusicDetailFragment.this.showNetErr;
        }

        @Override // fo.a.b
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return false;
        }

        @Override // fo.a.b
        public void d(LongVodUiType uiType) {
            MusicDetailListOperateView musicDetailListOperateView;
            Intrinsics.h(uiType, "uiType");
            MusicDetailFragment.this.Y1(uiType);
            jx.f mViewBinding = MusicDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (musicDetailListOperateView = mViewBinding.f66381o) != null) {
                musicDetailListOperateView.setState(MusicStateEnum.CLOSE);
            }
            tn.e eVar = MusicDetailFragment.this.bottomRecHelper;
            if (eVar != null) {
                eVar.x(uiType != LongVodUiType.MIDDLE);
            }
        }

        @Override // fo.a.b
        public View e() {
            return MusicDetailFragment.this.gameResView;
        }

        @Override // fo.a.b
        public void f(go.a aVar) {
            MusicDetailFragment.this.Z1(aVar);
        }

        @Override // fo.a.b
        public void g(boolean z10) {
            AppCompatImageView appCompatImageView;
            jx.f mViewBinding = MusicDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f66377k) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override // fo.a.b
        public void h(String str) {
            fo.a.b.C0761a.a(this, str);
        }

        @Override // fo.a.b
        public void onCompletion() {
            MusicDetailFragment.this.d1();
        }
    }

    /* JADX INFO: renamed from: com.transsion.videodetail.music.ui.MusicDetailFragment$retryLoadData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.videodetail.music.ui.MusicDetailFragment$retryLoadData$1", f = "MusicDetailFragment.kt", l = {437}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MusicDetailFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.u0.a(1000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            MusicDetailFragment musicDetailFragment = MusicDetailFragment.this;
            musicDetailFragment.R1(musicDetailFragment.mSubjectId, true, "retryLoadData()");
            return Unit.f67061a;
        }
    }

    public MusicDetailFragment() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.fragmentId = string;
        this.movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<x0>() { // from class: com.transsion.videodetail.music.ui.MusicDetailFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.videodetail.music.ui.MusicDetailFragment$special$$inlined$activityViewModels$default$2
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
        this.videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<x0>() { // from class: com.transsion.videodetail.music.ui.MusicDetailFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.videodetail.music.ui.MusicDetailFragment$special$$inlined$activityViewModels$default$4
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
        this.mViewModel = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.music.ui.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MusicDetailFragment.U1();
            }
        });
        this.downloadDao = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.music.ui.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MusicDetailFragment.i1();
            }
        });
        this.curSeason = 1;
        this.palmPayApi = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);
        this.memberProvider = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.music.ui.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MusicDetailFragment.V1();
            }
        });
        this.publishedApi = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.music.ui.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MusicDetailFragment.j2();
            }
        });
        this.networkStatusChangedListener = new e();
        this.playInfoObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.videodetail.music.ui.z
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                MusicDetailFragment.d2(this.f57840a, (VideoDetailStreamList) obj);
            }
        };
    }

    private final void A1() {
        Subject subject = this.mMovieDetailBean;
        jx.f mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f66380n : null;
        jx.f mViewBinding2 = getMViewBinding();
        this.bottomRecHelper = new tn.e(this, subject, magicIndicator, mViewBinding2 != null ? mViewBinding2.f66382p : null, "music_stream_detail", false, false, new Function1() { // from class: com.transsion.videodetail.music.ui.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.B1(this.f57830a, ((Integer) obj).intValue());
            }
        }, 96, null);
    }

    private final void A2(Subject mMovieDetailBean) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B1(MusicDetailFragment musicDetailFragment, int i11) {
        DownloadView downloadView;
        GradientTextView gradientTextView;
        DownloadView downloadView2;
        DownloadView downloadView3;
        jx.f mViewBinding = musicDetailFragment.getMViewBinding();
        if (mViewBinding == null || (downloadView2 = mViewBinding.f66370d) == null || downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 1) {
            jx.f mViewBinding2 = musicDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (downloadView = mViewBinding2.f66370d) != null) {
                downloadView.setVisibility(i11 != 1 ? 0 : 8);
            }
        } else {
            jx.f mViewBinding3 = musicDetailFragment.getMViewBinding();
            if (mViewBinding3 != null && (downloadView3 = mViewBinding3.f66370d) != null) {
                jg.c.g(downloadView3);
            }
        }
        jx.f mViewBinding4 = musicDetailFragment.getMViewBinding();
        if (mViewBinding4 != null && (gradientTextView = mViewBinding4.f66387u) != null) {
            gradientTextView.setVisibility(i11 == 1 ? 0 : 8);
        }
        return Unit.f67061a;
    }

    private final void B2(boolean isNoNetwork) {
        new tn.g(this, R$id.subjectDetailLayout, this.mMovieDetailBean, "music_stream_detail", this.moduleName, false, false, 96, null);
    }

    private final void C1() {
        DownloadView downloadView;
        DownloadView downloadView2;
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView2 = mViewBinding.f66370d) != null) {
            DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.transsion.core.utils.e.g(16.0f)), null, 5, null);
        }
        jx.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (downloadView = mViewBinding2.f66370d) == null) {
            return;
        }
        downloadView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MusicDetailFragment.D1(this.f57794a, view);
            }
        });
    }

    static /* synthetic */ void C2(MusicDetailFragment musicDetailFragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        musicDetailFragment.B2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(MusicDetailFragment musicDetailFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = musicDetailFragment.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = musicDetailFragment.mMovieDetailBean;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = musicDetailFragment.mMovieDetailBean) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        musicDetailFragment.e1();
        musicDetailFragment.f1();
    }

    private final void D2() {
        BubbleTextView bubbleTextView;
        jx.f mViewBinding;
        DownloadView downloadView;
        jx.f mViewBinding2;
        DownloadView downloadView2;
        BubbleTextView bubbleTextView2;
        if (!a1() || (mViewBinding = getMViewBinding()) == null || (downloadView = mViewBinding.f66370d) == null || downloadView.getVisibility() != 0 || (mViewBinding2 = getMViewBinding()) == null || (downloadView2 = mViewBinding2.f66370d) == null || downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 0) {
            jx.f mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f66368b) == null) {
                return;
            }
            jg.c.g(bubbleTextView);
            return;
        }
        jx.f mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (bubbleTextView2 = mViewBinding4.f66368b) != null) {
            jg.c.k(bubbleTextView2);
        }
        b1();
    }

    private final void E1() {
        String genre;
        IGameResApi iGameResApi;
        SubjectGameInfo gameInfo;
        SubjectGameInfo gameInfo2;
        SubjectGameInfo gameInfo3;
        SubjectGameInfo gameInfo4;
        this.isGameResInit = true;
        Subject subject = this.mMovieDetailBean;
        String itemId = null;
        String type = (subject == null || (gameInfo4 = subject.getGameInfo()) == null) ? null : gameInfo4.getType();
        if (type != null && type.length() != 0) {
            Subject subject2 = this.mMovieDetailBean;
            String itemId2 = (subject2 == null || (gameInfo3 = subject2.getGameInfo()) == null) ? null : gameInfo3.getItemId();
            if (itemId2 != null && itemId2.length() != 0) {
                lg.a.C0828a.f(lg.a.f68839a, "GameResLoader", "stream detail game initGameRes", false, 4, null);
                Context context = getContext();
                if (context == null || (iGameResApi = (IGameResApi) TheRouter.d(IGameResApi.class, new Object[0])) == null) {
                    return;
                }
                Subject subject3 = this.mMovieDetailBean;
                GameInfoType gameInfoType = (subject3 == null || (gameInfo2 = subject3.getGameInfo()) == null) ? null : gameInfo2.getGameInfoType();
                Intrinsics.e(gameInfoType);
                Subject subject4 = this.mMovieDetailBean;
                if (subject4 != null && (gameInfo = subject4.getGameInfo()) != null) {
                    itemId = gameInfo.getItemId();
                }
                String str = itemId;
                Intrinsics.e(str);
                iGameResApi.a(context, "music_stream_detail", gameInfoType, str, new Function1() { // from class: com.transsion.videodetail.music.ui.o
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MusicDetailFragment.F1(this.f57820a, (View) obj);
                    }
                });
                return;
            }
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 == null || (genre = subject5.getGenre()) == null) {
            return;
        }
        String lowerCase = genre.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null || !StringsKt.c0(lowerCase, "game", false, 2, null)) {
            return;
        }
        lg.a.C0828a.l(lg.a.f68839a, "GameResLoader", "stream detail,  game is null", false, 4, null);
    }

    private final void E2(int visible) {
        String str;
        HashMap mapG;
        DownloadView downloadView;
        DownloadView downloadView2;
        DownloadView downloadView3;
        ResourceDetectors resourceDetector;
        DownloadView downloadView4;
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView4 = mViewBinding.f66370d) != null) {
            downloadView4.setVisibility(visible);
        }
        Subject subject = this.mMovieDetailBean;
        boolean z10 = false;
        String str2 = "";
        if (subject != null && (resourceDetector = subject.getResourceDetector()) != null) {
            String resourceId = resourceDetector.getResourceId();
            str2 = resourceId != null ? resourceId : "";
            if (resourceDetector.isMultiResolution()) {
                z10 = true;
            }
        }
        boolean z11 = z10;
        String str3 = str2;
        jx.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (downloadView3 = mViewBinding2.f66370d) != null) {
            String str4 = this.mSubjectId;
            Subject subject2 = this.mMovieDetailBean;
            DownloadView.setShowType$default(downloadView3, str4, str3, subject2 != null ? Boolean.valueOf(subject2.isSeries()) : null, z11, 0, 16, null);
        }
        jx.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (downloadView = mViewBinding3.f66370d) == null || downloadView.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 1) {
            str = "download_subject";
        } else {
            jx.f mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (downloadView2 = mViewBinding4.f66370d) != null) {
                downloadView2.setVisibility(8);
            }
            str = "play_subject";
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        D2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F1(MusicDetailFragment musicDetailFragment, View view) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        musicDetailFragment.gameResView = view;
        if (view == null) {
            jx.f mViewBinding = musicDetailFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout2 = mViewBinding.f66376j) != null) {
                jg.c.g(frameLayout2);
            }
            jx.f mViewBinding2 = musicDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (frameLayout = mViewBinding2.f66376j) != null) {
                frameLayout.removeAllViews();
            }
        } else {
            musicDetailFragment.s2();
        }
        return Unit.f67061a;
    }

    static /* synthetic */ void F2(MusicDetailFragment musicDetailFragment, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        musicDetailFragment.E2(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(MusicDetailFragment musicDetailFragment, View view) {
        FragmentActivity activity = musicDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void G2() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s1().z().f();
        if (resourcesSeasonList == null || this.mMovieDetailBean == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            ResourceDetectorEmptyFragment resourceDetectorEmptyFragment = new ResourceDetectorEmptyFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            resourceDetectorEmptyFragment.setArguments(bundle);
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorEmptyFragment);
            wVarP.j();
            E2(8);
            return;
        }
        FragmentManager childFragmentManager2 = getChildFragmentManager();
        Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
        androidx.fragment.app.w wVarP2 = childFragmentManager2.p();
        Intrinsics.g(wVarP2, "beginTransaction()");
        VideoEpisodeFragment videoEpisodeFragment = new VideoEpisodeFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
        bundle2.putString("ops", this.ops);
        bundle2.putBoolean("auto_play", this.autoPlay);
        bundle2.putString("auto_play_resource_id", this.autoPlayResourceId);
        bundle2.putString("module_name", this.moduleName);
        bundle2.putInt("season", this.curSeason);
        videoEpisodeFragment.setArguments(bundle2);
        wVarP2.s(R$id.resourceDetectorGroup, videoEpisodeFragment);
        wVarP2.j();
        F2(this, 0, 1, null);
    }

    private final void H1() {
        MusicDetailListOperateView musicDetailListOperateView;
        kx.a.f68401a.c(getClassTag() + " --> initMusicLikedOperate() --> isMusicLikedFragment = " + this.isMusicLikedFragment);
        if (this.isMusicLikedFragment) {
            if (this.isMusicFloatViewClick) {
                m1().F(this.mSubjectId, new Function1() { // from class: com.transsion.videodetail.music.ui.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MusicDetailFragment.I1(this.f57800a, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            } else {
                a2();
                kx.b.f68402a.b(true);
                return;
            }
        }
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (musicDetailListOperateView = mViewBinding.f66381o) == null) {
            return;
        }
        musicDetailListOperateView.setVisibility(8);
    }

    private final void H2(Subject movieDetailBean) {
        Subject subject;
        this.mMovieDetailBean = movieDetailBean;
        String ops = movieDetailBean != null ? movieDetailBean.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s1().z().f();
        if (resourcesSeasonList == null || !resourcesSeasonList.isNoSource()) {
            z2();
        } else {
            p2(this.mMovieDetailBean);
        }
        C2(this, false, 1, null);
        if (!this.isGameResInit) {
            E1();
            X1(true);
        }
        t2(this.mMovieDetailBean);
        A2(this.mMovieDetailBean);
        m2();
        A1();
        G2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I1(MusicDetailFragment musicDetailFragment, boolean z10) {
        MusicDetailListOperateView musicDetailListOperateView;
        if (z10) {
            musicDetailFragment.a2();
            kx.b.f68402a.b(true);
        } else {
            jx.f mViewBinding = musicDetailFragment.getMViewBinding();
            if (mViewBinding != null && (musicDetailListOperateView = mViewBinding.f66381o) != null) {
                musicDetailListOperateView.setVisibility(8);
            }
        }
        return Unit.f67061a;
    }

    private final void J1() {
        ResourcesSeasonList resourcesSeasonList;
        if (this.mSubjectId == null || (resourcesSeasonList = (ResourcesSeasonList) s1().z().f()) == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            kx.a.f68401a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 没有资源");
            return;
        }
        if (resourcesSeasonList.isSeries()) {
            kx.a.f68401a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 是剧集，获取记录决定哪集");
            List list = (List) s1().s().f();
            if (list == null) {
                return;
            }
            s1().C(q1(this.history, list));
            return;
        }
        if (!resourcesSeasonList.isMovie()) {
            kx.a.f68401a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 是什么呢。。。");
            return;
        }
        kx.a.f68401a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 是电影");
        List list2 = (List) s1().s().f();
        if (list2 == null) {
            return;
        }
        s1().C((VideoDetailMediaSource) CollectionsKt.k0(list2));
    }

    private final void K1(Subject movieDetailBean) {
        String restrictLevel = movieDetailBean.getRestrictLevel();
        if (restrictLevel == null || restrictLevel.length() == 0 || !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("restrict_tips_dialog_again", true)) {
            return;
        }
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onHandlePause();
        }
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_restrict_tips", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0) {
            value = Utils.a().getString(R$string.movie_detail_restrict_tips);
        }
        final RestrictTipsDialog restrictTipsDialogA = RestrictTipsDialog.INSTANCE.a(value, "music_stream_detail", movieDetailBean.getSubjectId());
        restrictTipsDialogA.l0(this, "RestrictTipsDialog");
        restrictTipsDialogA.y0(new Function1() { // from class: com.transsion.videodetail.music.ui.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.L1(restrictTipsDialogA, this, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L1(RestrictTipsDialog restrictTipsDialog, MusicDetailFragment musicDetailFragment, boolean z10) {
        if (z10) {
            fo.a aVar = musicDetailFragment.playerControl;
            if (aVar != null) {
                aVar.onHandlePlay();
            }
        } else {
            FragmentActivity activity = restrictTipsDialog.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M1(MusicDetailFragment musicDetailFragment, List list) {
        musicDetailFragment.J1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(MusicDetailFragment musicDetailFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        CoordinatorLayout coordinatorLayout;
        Subject subject = (Subject) pair.getSecond();
        jx.f mViewBinding = musicDetailFragment.getMViewBinding();
        if (mViewBinding != null && (coordinatorLayout = mViewBinding.f66371e) != null) {
            coordinatorLayout.setVisibility(0);
        }
        if (subject == null) {
            if (Intrinsics.c(pair.getFirst(), "404")) {
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.movie_lost_content);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(musicDetailFragment), null, null, new MusicDetailFragment$initViewModel$1$1(musicDetailFragment, null), 3, null);
            }
            if (nh.m.f70474a.e()) {
                PageStatusFragment.showEmptyView$default(musicDetailFragment, false, 1, null);
            } else {
                PageStatusFragment.showNoNetworkView$default(musicDetailFragment, false, 1, null);
            }
        } else {
            kx.a.f68401a.a(musicDetailFragment.getClassTag() + " --> initDetailViewModel() --> 获取到数据 --> subjectId = " + subject.getSubjectId() + " --> 刷新UI");
            MovieDetailViewModel movieDetailViewModelP1 = musicDetailFragment.p1();
            String subjectId = subject.getSubjectId();
            Integer subjectType = subject.getSubjectType();
            Context context = musicDetailFragment.getContext();
            MovieDetailViewModel.u(movieDetailViewModelP1, subjectId, subjectType, 0, context != null && com.transsion.baseui.util.b.a(context), 4, null);
            musicDetailFragment.showContentView();
            musicDetailFragment.netResultSuccess = true;
            musicDetailFragment.H2(subject);
            musicDetailFragment.u2(subject);
            hj.b logViewConfig = musicDetailFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            hj.b logViewConfig2 = musicDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(musicDetailFragment.ops);
            }
            hj.b logViewConfig3 = musicDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                String subjectId2 = subject.getSubjectId();
                if (subjectId2 == null) {
                    subjectId2 = "";
                }
                mapG2.put("subject_id", subjectId2);
            }
            hj.b logViewConfig4 = musicDetailFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O1(MusicDetailFragment musicDetailFragment, VideoDetailPlayBean videoDetailPlayBean) {
        Subject subject;
        String str = musicDetailFragment.ops;
        if (str == null || str.length() == 0) {
            musicDetailFragment.ops = videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null;
        }
        Subject subject2 = musicDetailFragment.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = musicDetailFragment.mMovieDetailBean) != null) {
            subject.setOps(videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P1(MusicDetailFragment musicDetailFragment, Integer num) {
        Intrinsics.e(num);
        musicDetailFragment.curSeason = num.intValue();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q1(MusicDetailFragment musicDetailFragment, ResourcesSeasonList resourcesSeasonList) {
        musicDetailFragment.G2();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R1(final String subjectId, boolean isAudioTracksChange, String from) {
        kx.a.f68401a.a(getClassTag() + " --> loadData() --> isAudioTracksChange = " + isAudioTracksChange + " --> subjectId = " + subjectId + " --> from = " + from + " --> 开始加载数据");
        if (!nh.m.f70474a.e()) {
            m1().E(subjectId, new Function1() { // from class: com.transsion.videodetail.music.ui.c0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return MusicDetailFragment.T1(this.f57796a, subjectId, (String) obj);
                }
            });
            return;
        }
        if (!isAudioTracksChange) {
            showLoadingView();
        }
        if (subjectId != null) {
            MovieDetailViewModel.E(p1(), subjectId, null, false, 6, null);
            s1().r(subjectId);
        }
    }

    static /* synthetic */ void S1(MusicDetailFragment musicDetailFragment, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        musicDetailFragment.R1(str, z10, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T1(MusicDetailFragment musicDetailFragment, String str, String path) {
        CoordinatorLayout coordinatorLayout;
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            kx.a.f68401a.b(musicDetailFragment.getClassTag() + " --> loadData() --> 无网络 无下载 --> 加载失败，这种情况需要前置拦截");
        } else {
            jx.f mViewBinding = musicDetailFragment.getMViewBinding();
            if (mViewBinding != null && (coordinatorLayout = mViewBinding.f66371e) != null) {
                coordinatorLayout.setVisibility(8);
            }
            musicDetailFragment.c2(str);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MusicLikedFragmentViewModel U1() {
        return new MusicLikedFragmentViewModel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMemberApi V1() {
        return (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W1(MusicDetailFragment musicDetailFragment) {
        Object systemService = Utils.a().getSystemService("keyguard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        if (((KeyguardManager) systemService).isKeyguardLocked()) {
            return;
        }
        kx.a.f68401a.a(musicDetailFragment.getClassTag() + " --> onBackgroundStatusChange() --> 2Background~~");
        musicDetailFragment.r2(false);
    }

    private final void X1(boolean show) {
        String genre;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (genre = subject.getGenre()) == null) {
            return;
        }
        String lowerCase = genre.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null || !StringsKt.c0(lowerCase, "game", false, 2, null)) {
            return;
        }
        if (show) {
            IMemberApi iMemberApiN1 = n1();
            if (iMemberApiN1 != null) {
                iMemberApiN1.i();
                return;
            }
            return;
        }
        IMemberApi iMemberApiN2 = n1();
        if (iMemberApiN2 != null) {
            iMemberApiN2.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y1(LongVodUiType uiType) {
        if (this.gameResView == null || uiType != LongVodUiType.MIDDLE) {
            return;
        }
        s2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z1(go.a bean) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.mSubjectId);
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.getType() == 3 && bean != null) {
            navigatorK.I("TV_DATA", new FbTvData(bean.o(), bean.l(), bean.e()));
        }
        Navigator.x(navigatorK, requireContext(), null, 2, null);
    }

    private final boolean a1() {
        IFissionProvider iFissionProvider;
        if (this.hasClickedActivityTip || (iFissionProvider = this.palmPayApi) == null) {
            return false;
        }
        return iFissionProvider.g();
    }

    private final void a2() {
        MusicDetailListOperateView musicDetailListOperateView;
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (musicDetailListOperateView = mViewBinding.f66381o) == null) {
            return;
        }
        musicDetailListOperateView.setVisibility(0);
        String str = this.mSubjectId;
        jx.f mViewBinding2 = getMViewBinding();
        FrameLayout frameLayout = mViewBinding2 != null ? mViewBinding2.f66374h : null;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        musicDetailListOperateView.setContainer(str, frameLayout, childFragmentManager, R$id.flMusicContainer, new Function2() { // from class: com.transsion.videodetail.music.ui.n
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MusicDetailFragment.b2(this.f57818a, (String) obj, (String) obj2);
            }
        });
        musicDetailListOperateView.setState(MusicStateEnum.OPEN);
    }

    private final void b1() {
        BubbleTextView bubbleTextView;
        ViewTreeObserver viewTreeObserver;
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f66368b) == null || (viewTreeObserver = bubbleTextView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b2(MusicDetailFragment musicDetailFragment, String str, String str2) {
        kx.a.f68401a.a(musicDetailFragment.getClassTag() + " --> setContainer() --> onItemCLick{} --> subjectId = " + str + " --> path = " + str2 + " --> 重置数据，重新加载");
        if (TextUtils.isEmpty(str)) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.error_load_failed);
            return Unit.f67061a;
        }
        if (nh.m.f70474a.e() || !TextUtils.isEmpty(str2)) {
            musicDetailFragment.e2(str);
            return Unit.f67061a;
        }
        uh.b.f76753a.d(com.transsion.videodetail.R$string.music_no_network);
        return Unit.f67061a;
    }

    private final void c1() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s1().z().f();
        if (resourcesSeasonList == null) {
            return;
        }
        boolean z10 = false;
        if (resourcesSeasonList.isSeries()) {
            lg.a.C0828a.f(lg.a.f68839a, "MusicDetailFragment", "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
            List listL = (List) s1().s().f();
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f();
            int iIndexOf = videoDetailMediaSource != null ? listL.indexOf(videoDetailMediaSource) : -1;
            if (iIndexOf >= 0 && iIndexOf < listL.size() - 1) {
                z10 = true;
            }
        }
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.hasNextEpisode(z10);
        }
    }

    private final void c2(String subjectId) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MusicDetailFragment$playDownloadMusic$1(this, subjectId, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d1() {
        MusicDetailListOperateView musicDetailListOperateView;
        MusicDetailLikedFragment mMusicDetailLikedFragment;
        MusicLikedMultiItemEntity musicLikedMultiItemEntityR0;
        MusicLikedDbBean musicLikedDbBean;
        MusicDetailListOperateView musicDetailListOperateView2;
        MusicDetailLikedFragment mMusicDetailLikedFragment2;
        int i11 = b.f57763a[kx.c.f68404a.b().ordinal()];
        if (i11 == 1) {
            fo.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.showReplay();
                return;
            }
            return;
        }
        if (i11 != 2) {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            kx.a.f68401a.a(getClassTag() + " --> checkPlayNextOrReplay() --> playerControl?.replay()");
            fo.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.replay();
                return;
            }
            return;
        }
        jx.f mViewBinding = getMViewBinding();
        String subjectId = null;
        String strV0 = (mViewBinding == null || (musicDetailListOperateView2 = mViewBinding.f66381o) == null || (mMusicDetailLikedFragment2 = musicDetailListOperateView2.getMMusicDetailLikedFragment()) == null) ? null : mMusicDetailLikedFragment2.v0();
        if (TextUtils.isEmpty(strV0)) {
            jx.f mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (musicDetailListOperateView = mViewBinding2.f66381o) != null && (mMusicDetailLikedFragment = musicDetailListOperateView.getMMusicDetailLikedFragment()) != null && (musicLikedMultiItemEntityR0 = mMusicDetailLikedFragment.r0()) != null && (musicLikedDbBean = musicLikedMultiItemEntityR0.getMusicLikedDbBean()) != null) {
                subjectId = musicLikedDbBean.getSubjectId();
            }
            strV0 = subjectId;
        }
        e2(strV0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d2(MusicDetailFragment musicDetailFragment, VideoDetailStreamList videoDetailStreamList) {
        lg.a.f68839a.c("MusicDetailFragment", "playInfoObserver  playInfo==" + videoDetailStreamList, true);
        musicDetailFragment.x1();
        if (videoDetailStreamList != null || nh.m.f70474a.e()) {
            musicDetailFragment.h1();
        } else {
            musicDetailFragment.w2();
        }
    }

    private final void e1() {
        String str;
        boolean z10;
        String str2;
        String ops;
        String subjectId;
        ResourceDetectors resourceDetector;
        if (getContext() == null) {
            return;
        }
        Subject subject = this.mMovieDetailBean;
        String str3 = "";
        int ep2 = 0;
        if (subject == null || (resourceDetector = subject.getResourceDetector()) == null) {
            str = "";
            z10 = false;
        } else {
            String resourceLink = resourceDetector.getResourceLink();
            if (resourceLink == null) {
                resourceLink = "";
            }
            String resourceId = resourceDetector.getResourceId();
            str3 = resourceId != null ? resourceId : "";
            z10 = resourceDetector.isMultiResolution();
            str = resourceLink;
        }
        DownloadManagerApi.a aVar = DownloadManagerApi.f58398j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        Subject subject2 = this.mMovieDetailBean;
        String ops2 = null;
        String subjectId2 = subject2 != null ? subject2.getSubjectId() : null;
        Subject subject3 = this.mMovieDetailBean;
        if (downloadManagerApiA.w0(subjectId2, str3, subject3 != null && subject3.isSeries(), z10)) {
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 == null || (subjectId = subject4.getSubjectId()) == null) {
                return;
            }
            DownloadManagerApi downloadManagerApiA2 = aVar.a();
            Context context = getContext();
            Intrinsics.e(context);
            DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, "music_stream_detail", null, 8, null);
            return;
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 != null) {
            Integer subjectType = subject5.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA3 = aVar.a();
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context2;
                String str4 = this.ops;
                if (str4 == null || str4.length() == 0) {
                    Subject subject6 = this.mMovieDetailBean;
                    if (subject6 != null) {
                        ops2 = subject6.getOps();
                    }
                } else {
                    ops2 = this.ops;
                }
                downloadManagerApiA3.d0(fragmentActivity, "music_stream_detail", (384 & 4) != 0 ? "" : "", ops2, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : this.mMovieDetailBean, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f();
        if (videoDetailMediaSource != null && videoDetailMediaSource.getSe() == this.curSeason) {
            ep2 = videoDetailMediaSource.getEp();
        }
        DownloadManagerApi downloadManagerApiA4 = aVar.a();
        Context context3 = getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity2 = (FragmentActivity) context3;
        Subject subject7 = this.mMovieDetailBean;
        String str5 = this.ops;
        if (str5 == null || str5.length() == 0) {
            Subject subject8 = this.mMovieDetailBean;
            if (subject8 != null) {
                ops = subject8.getOps();
            } else {
                str2 = null;
            }
            DownloadManagerApi.N(downloadManagerApiA4, fragmentActivity2, subject7, "music_stream_detail", "", str2, str, String.valueOf(ep2), this.moduleName, null, false, this.curSeason, false, 768, null);
        }
        ops = this.ops;
        str2 = ops;
        DownloadManagerApi.N(downloadManagerApiA4, fragmentActivity2, subject7, "music_stream_detail", "", str2, str, String.valueOf(ep2), this.moduleName, null, false, this.curSeason, false, 768, null);
    }

    private final void e2(String subjectId) {
        kx.a.f68401a.b(getClassTag() + " --> playNext() --> subjectId = " + subjectId);
        if (TextUtils.isEmpty(subjectId)) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.error_load_failed);
            return;
        }
        this.mSubjectId = subjectId;
        this.mMovieDetailBean = null;
        this.videoDetailStreamList = null;
        s1().D();
        MovieDetailViewModel movieDetailViewModelP1 = p1();
        int i11 = this.preloadId;
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        MovieDetailViewModel.T(movieDetailViewModelP1, i11, str, null, 4, null);
        R1(this.mSubjectId, true, "playNext()");
    }

    private final void f1() {
        BubbleTextView bubbleTextView;
        this.hasClickedActivityTip = true;
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f66368b) == null) {
            return;
        }
        jg.c.g(bubbleTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f2(DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
        z2();
        String str = this.mSubjectId;
        if (str != null) {
            PlayMimeType playMimeType = PlayMimeType.DEFAULT;
            String subjectName = downloadBean.getSubjectName();
            String str2 = subjectName == null ? "" : subjectName;
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listU1 = u1(downloadBean);
            String cover = downloadBean.getCover();
            String str5 = cover == null ? "" : cover;
            String thumbnail = downloadBean.getThumbnail();
            String str6 = thumbnail == null ? "" : thumbnail;
            go.a aVar = new go.a(str, playMimeType, 0L, 0, 0, str2, null, str4, "music_stream_detail", listU1, str5, str6, "", 0, Integer.valueOf(downloadBean.getSubjectType()), false, downloadBean.getTitleName(), downloadBean.getOps(), 32832, null);
            aVar.A(this.mMovieDetailBean);
            kx.a.f68401a.a(getClassTag() + " --> playOfflineMusic() --> 播放本地文件 --> addDataSource = " + aVar + " -->  playerControl = " + this.playerControl);
            fo.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.setDataSource(aVar);
            }
        }
    }

    private final void g1() {
        LinearLayout root;
        ViewParent parent;
        jx.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null || (parent = root.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(root);
    }

    private final void g2(VideoDetailStreamList videoDetailStreamList) {
        List<VideoDetailStream> list;
        VideoDetailPlayBean videoDetailPlayBean;
        VideoDetailPlayBean videoDetailPlayBean2;
        Subject subject;
        List<DubsInfo> dubs;
        String averageHueLight;
        String thumbnail;
        String url;
        kx.a aVar = kx.a.f68401a;
        aVar.a(getClassTag() + " --> playStream() --> videoDetailStreamList = " + videoDetailStreamList + " --> mMovieDetailBean = " + this.mMovieDetailBean);
        List<VideoDetailStream> streams = videoDetailStreamList != null ? videoDetailStreamList.getStreams() : null;
        if (videoDetailStreamList == null || (list = streams) == null || list.isEmpty()) {
            aVar.b(getClassTag() + " --> playStream() --> 空返回 --> videoDetailStreamList = " + videoDetailStreamList + " --> videoDetailStream = " + streams);
            return;
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f();
        if (videoDetailMediaSource != null && videoDetailMediaSource.getEp() == videoDetailStreamList.getEp() && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe()) {
            if (this.curAudioTrackPlayProgress > 0) {
                aVar.a(getClassTag() + " --> playStream() --> 播放历史进度 --> AudioTrack -- seekTo = 0");
            } else {
                VideoDetailPlayBean videoDetailPlayBean3 = this.history;
                if (videoDetailPlayBean3 != null && videoDetailPlayBean3 != null && videoDetailStreamList.getSe() == videoDetailPlayBean3.getSe() && (videoDetailPlayBean = this.history) != null && videoDetailStreamList.getEp() == videoDetailPlayBean.getEp() && ((this.targetSeason > 0 && (videoDetailPlayBean2 = this.history) != null && videoDetailPlayBean2.getSe() == this.targetSeason) || this.targetSeason <= 0)) {
                    s1().n();
                }
            }
            PlayMimeType playMimeTypeO1 = o1((VideoDetailStream) CollectionsKt.i0(streams));
            VideoDetailMediaSource videoDetailMediaSource2 = (VideoDetailMediaSource) s1().x().f();
            int ep2 = videoDetailMediaSource2 != null ? videoDetailMediaSource2.getEp() : 0;
            int se2 = videoDetailMediaSource2 != null ? videoDetailMediaSource2.getSe() : 0;
            String str = this.mSubjectId;
            if (str == null || (subject = this.mMovieDetailBean) == null) {
                return;
            }
            String title = subject.getTitle();
            String str2 = title == null ? "" : title;
            String title2 = videoDetailStreamList.getTitle();
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listW1 = w1(streams);
            Cover cover = subject.getCover();
            String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            Cover cover2 = subject.getCover();
            String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
            Cover cover3 = subject.getCover();
            String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
            Integer durationSeconds = subject.getDurationSeconds();
            int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
            Integer subjectType = subject.getSubjectType();
            int iIntValue2 = subjectType != null ? subjectType.intValue() : 1;
            Subject subject2 = this.mMovieDetailBean;
            String ops = subject2 != null ? subject2.getOps() : null;
            Subject subject3 = this.mMovieDetailBean;
            go.a aVar2 = new go.a(str, playMimeTypeO1, 0L, ep2, se2, str2, title2, str4, "music_stream_detail", listW1, str5, str6, str7, iIntValue, Integer.valueOf(iIntValue2), false, subject3 != null ? subject3.getTitle() : null, ops, 32768, null);
            aVar2.A(this.mMovieDetailBean);
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 != null && (dubs = subject4.getDubs()) != null) {
                aVar2.a().addAll(dubs);
            }
            z2();
            aVar.a(getClassTag() + " --> playStream() --> playerControl?.setDataSource(playBean)");
            fo.a aVar3 = this.playerControl;
            if (aVar3 != null) {
                aVar3.setDataSource(aVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1() {
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.removeNoNetError();
        }
        this.showNetErr = false;
    }

    private final void h2(Subject subject) {
        Integer durationSeconds = subject.getDurationSeconds();
        Integer numValueOf = Integer.valueOf(durationSeconds != null ? durationSeconds.intValue() : 0);
        ResourceDetectors resourceDetector = subject.getResourceDetector();
        PreVideoAddress preVideoAddress = new PreVideoAddress(0, null, numValueOf, 0, 0, 0L, 0, resourceDetector != null ? resourceDetector.getDownloadUrl() : null, "", 0);
        Cover stills = subject.getStills();
        if (stills == null) {
            stills = subject.getCover();
        }
        Trailer trailer = new Trailer(SubjectType.MUSIC.getValue(), preVideoAddress, stills, null, null, 24, null);
        trailer.setSubjectId(subject.getSubjectId());
        trailer.setMusicName(subject.getTitle());
        i2(trailer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lj.c i1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).p1();
    }

    private final void i2(Trailer trailer) {
        Subject subject;
        String averageHueLight;
        String thumbnail;
        String url;
        z2();
        String str = this.mSubjectId;
        if (str == null || (subject = this.mMovieDetailBean) == null) {
            return;
        }
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String title = subject.getTitle();
        String str2 = title == null ? "" : title;
        String str3 = this.lastPageFrom;
        String str4 = str3 == null ? "" : str3;
        List listV1 = v1(trailer);
        Cover cover = trailer.getCover();
        String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        Cover cover2 = trailer.getCover();
        String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
        Cover cover3 = subject.getCover();
        String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
        Integer durationSeconds = subject.getDurationSeconds();
        int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
        Integer subjectType = subject.getSubjectType();
        go.a aVar = new go.a(str, playMimeType, 0L, 0, 0, str2, null, str4, "music_stream_detail", listV1, str5, str6, str7, iIntValue, Integer.valueOf(subjectType != null ? subjectType.intValue() : 1), false, subject.getTitle(), subject.getOps(), 32832, null);
        aVar.A(this.mMovieDetailBean);
        kx.a.f68401a.a(getClassTag() + " --> playTrailer() --> 当前有网络，没有下载资源 --> 播放流媒体数据 --> addDataSource = " + aVar + " -->  playerControl = " + this.playerControl);
        fo.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.setDataSource(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1(VideoDetailMediaSource episodeMedia) {
        if (episodeMedia == null) {
            return;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) s1().w().f();
        if (videoDetailStreamList != null && videoDetailStreamList.getSe() == episodeMedia.getSe() && videoDetailStreamList.getEp() == episodeMedia.getEp()) {
            return;
        }
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.reset();
        }
        showLoading();
        s1().v(episodeMedia);
        c1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPublishApi j2() {
        return (IPublishApi) TheRouter.d(IPublishApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final lj.c k1() {
        return (lj.c) this.downloadDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k2(MusicDetailFragment musicDetailFragment, boolean z10) {
        FragmentActivity activity;
        if (!nh.m.f70474a.e() && musicDetailFragment.isMusicFloatViewClick && !z10 && (activity = musicDetailFragment.getActivity()) != null) {
            activity.finish();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l1(MusicDetailFragment musicDetailFragment, View view) {
        musicDetailFragment.requireActivity().finish();
    }

    private final void l2() {
        com.transsion.player.orplayer.g player;
        if (this.downloadBean == null) {
            return;
        }
        fo.a aVar = this.playerControl;
        long currentPosition = (aVar == null || (player = aVar.getPlayer()) == null) ? 0L : player.getCurrentPosition();
        if (currentPosition > 0) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MusicDetailFragment$saveDownloadHistory$1(this, currentPosition, null), 3, null);
        }
    }

    private final MusicLikedFragmentViewModel m1() {
        return (MusicLikedFragmentViewModel) this.mViewModel.getValue();
    }

    private final void m2() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        final Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            jx.f mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView = mViewBinding.f66378l) != null) {
                appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MusicDetailFragment.n2(this.f57824a, subject, view);
                    }
                });
            }
            jx.f mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (gradientTextView = mViewBinding2.f66387u) == null) {
                return;
            }
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicDetailFragment.o2(this.f57827a, subject, view);
                }
            });
        }
    }

    private final IMemberApi n1() {
        return (IMemberApi) this.memberProvider.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n2(MusicDetailFragment musicDetailFragment, Subject subject, View view) {
        String url;
        IPublishApi iPublishApiR1 = musicDetailFragment.r1();
        if (iPublishApiR1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = musicDetailFragment.mSubjectId;
            if (str == null) {
                str = "";
            }
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String description = subject.getDescription();
            if (description == null) {
                description = "";
            }
            iPublishApiR1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final PlayMimeType o1(VideoDetailStream stream) {
        String upperCase = stream.getFormat().toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o2(MusicDetailFragment musicDetailFragment, Subject subject, View view) {
        String url;
        IPublishApi iPublishApiR1 = musicDetailFragment.r1();
        if (iPublishApiR1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = musicDetailFragment.mSubjectId;
            if (str == null) {
                str = "";
            }
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String description = subject.getDescription();
            if (description == null) {
                description = "";
            }
            iPublishApiR1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final MovieDetailViewModel p1() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final void p2(Subject subject) {
        Cover stills;
        FrameLayout frameLayout;
        if (subject != null) {
            Trailer trailer = subject.getTrailer();
            if ((trailer == null || (stills = trailer.getCover()) == null) && (stills = subject.getStills()) == null) {
                stills = subject.getCover();
            }
            if (stills != null) {
                int iF = com.transsion.core.utils.e.f();
                jx.f mViewBinding = getMViewBinding();
                if (mViewBinding == null || (frameLayout = mViewBinding.f66375i) == null) {
                    return;
                }
                if (frameLayout.getChildCount() == 0) {
                    ImageView imageView = new ImageView(frameLayout.getContext());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    frameLayout.addView(imageView, new FrameLayout.LayoutParams(iF, (iF * 9) / 16));
                    ej.f.a aVar = ej.f.f61882a;
                    String url = stills.getUrl();
                    String strE = ej.f.a.e(aVar, url == null ? "" : url, iF, false, false, 12, null);
                    String thumbnail = stills.getThumbnail();
                    com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f42991a, thumbnail == null ? "" : thumbnail, 0, 0, new Function1() { // from class: com.transsion.videodetail.music.ui.v
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return MusicDetailFragment.q2(this.f57837a, (BitmapDrawable) obj);
                        }
                    }, 6, null);
                    Context context = imageView.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar.m(context).g(strE).i(R$color.transparent).d(imageView);
                }
            }
        }
    }

    private final VideoDetailMediaSource q1(VideoDetailPlayBean history, List episodeMediaList) {
        Object obj = null;
        if (history == null) {
            lg.a.C0828a.f(lg.a.f68839a, "MusicDetailFragment", "getPlayingItem 无历史记录，se:" + this.targetSeason, false, 4, null);
            if (this.targetSeason <= 0) {
                return (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList);
            }
            for (Object obj2 : episodeMediaList) {
                VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) obj2;
                if (videoDetailMediaSource.getSe() == this.targetSeason && videoDetailMediaSource.getEp() == 1) {
                    obj = obj2;
                    break;
                }
            }
            VideoDetailMediaSource videoDetailMediaSource2 = (VideoDetailMediaSource) obj;
            return videoDetailMediaSource2 == null ? (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList) : videoDetailMediaSource2;
        }
        int se2 = history.getSe();
        int i11 = this.targetSeason;
        if (se2 == i11 || i11 <= 0) {
            this.curSeason = history.getSe();
            lg.a.C0828a.f(lg.a.f68839a, "MusicDetailFragment", "getPlayingItem 有历史记录，不指定季使用历史记录，se:" + history.getSe() + ", ep:" + history.getEp(), false, 4, null);
            for (Object obj3 : episodeMediaList) {
                VideoDetailMediaSource videoDetailMediaSource3 = (VideoDetailMediaSource) obj3;
                if (videoDetailMediaSource3.getSe() == history.getSe() && videoDetailMediaSource3.getEp() == history.getEp()) {
                    obj = obj3;
                    break;
                }
            }
            VideoDetailMediaSource videoDetailMediaSource4 = (VideoDetailMediaSource) obj;
            return videoDetailMediaSource4 == null ? (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList) : videoDetailMediaSource4;
        }
        lg.a.C0828a.f(lg.a.f68839a, "MusicDetailFragment", "getPlayingItem 有历史记录，指定季，history se:" + history.getSe() + ", ep:" + history.getEp() + "， target se:" + this.targetSeason + ", targetEp:" + this.targetEp, false, 4, null);
        for (Object obj4 : episodeMediaList) {
            VideoDetailMediaSource videoDetailMediaSource5 = (VideoDetailMediaSource) obj4;
            if (videoDetailMediaSource5.getSe() == this.targetSeason) {
                int ep2 = videoDetailMediaSource5.getEp();
                int i12 = this.targetEp;
                if (i12 <= 0) {
                    i12 = 1;
                }
                if (ep2 == i12) {
                    obj = obj4;
                    break;
                }
            }
        }
        VideoDetailMediaSource videoDetailMediaSource6 = (VideoDetailMediaSource) obj;
        return videoDetailMediaSource6 == null ? (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList) : videoDetailMediaSource6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q2(MusicDetailFragment musicDetailFragment, BitmapDrawable drawable) {
        FrameLayout frameLayout;
        Intrinsics.h(drawable, "drawable");
        jx.f mViewBinding = musicDetailFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f66375i) != null) {
            frameLayout.setBackground(drawable);
        }
        return Unit.f67061a;
    }

    private final IPublishApi r1() {
        return (IPublishApi) this.publishedApi.getValue();
    }

    private final void r2(boolean proactive) {
        Subject subject = this.mMovieDetailBean;
        if (subject == null || subject.getSubjectType() == null) {
            SubjectType.MOVIE.getValue();
        }
        SubjectType.MUSIC.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailViewModel s1() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    private final void s2() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        View view = this.gameResView;
        ViewParent parent = view != null ? view.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.gameResView);
        }
        KeyEvent.Callback callback = this.gameResView;
        ok.a aVar = callback instanceof ok.a ? (ok.a) callback : null;
        if (aVar != null) {
            aVar.setPageStyle("detail");
        }
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout3 = mViewBinding.f66376j) != null) {
            jg.c.k(frameLayout3);
        }
        jx.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout2 = mViewBinding2.f66376j) != null) {
            frameLayout2.removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        jx.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (frameLayout = mViewBinding3.f66376j) == null) {
            return;
        }
        frameLayout.addView(this.gameResView, layoutParams);
    }

    private final void showLoading() {
        LinearLayout root;
        jx.f mViewBinding;
        FrameLayout frameLayout;
        Context context = getContext();
        if (context == null) {
            return;
        }
        if (this.loadingViewBinding == null) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
            jx.f mViewBinding2 = getMViewBinding();
            this.loadingViewBinding = jx.j.c(layoutInflaterFrom, mViewBinding2 != null ? mViewBinding2.f66375i : null, false);
        }
        jx.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null) {
            return;
        }
        if (root.getParent() == null && (mViewBinding = getMViewBinding()) != null && (frameLayout = mViewBinding.f66375i) != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            layoutParams.bottomMargin = com.blankj.utilcode.util.i.e(20.0f);
            Unit unit = Unit.f67061a;
            frameLayout.addView(root, layoutParams);
        }
        jg.c.k(root);
    }

    private final void t2(Subject subject) {
    }

    private final List u1(DownloadBean downloadBean) {
        String string;
        String string2;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String resourceId = downloadBean.getResourceId();
        String str = resourceId == null ? "" : resourceId;
        String path = downloadBean.getPath();
        String str2 = path == null ? "" : path;
        Long size = downloadBean.getSize();
        String str3 = (size == null || (string2 = size.toString()) == null) ? "" : string2;
        Long duration = downloadBean.getDuration();
        arrayList.add(new go.c(playMimeType, str, str2, "", str3, (duration == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    private final void u2(final Subject subject) {
        m1().E(subject.getSubjectId(), new Function1() { // from class: com.transsion.videodetail.music.ui.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.v2(this.f57832a, subject, (String) obj);
            }
        });
    }

    private final List v1(Trailer trailer) {
        Integer duration;
        String string;
        Long size;
        String string2;
        String url;
        String videoId;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        PreVideoAddress videoAddress = trailer.getVideoAddress();
        String str = (videoAddress == null || (videoId = videoAddress.getVideoId()) == null) ? "" : videoId;
        PreVideoAddress videoAddress2 = trailer.getVideoAddress();
        String str2 = (videoAddress2 == null || (url = videoAddress2.getUrl()) == null) ? "" : url;
        PreVideoAddress videoAddress3 = trailer.getVideoAddress();
        String str3 = (videoAddress3 == null || (size = videoAddress3.getSize()) == null || (string2 = size.toString()) == null) ? "" : string2;
        PreVideoAddress videoAddress4 = trailer.getVideoAddress();
        arrayList.add(new go.c(playMimeType, str, str2, "", str3, (videoAddress4 == null || (duration = videoAddress4.getDuration()) == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v2(MusicDetailFragment musicDetailFragment, Subject subject, String path) {
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            musicDetailFragment.h2(subject);
        } else {
            musicDetailFragment.c2(subject.getSubjectId());
        }
        return Unit.f67061a;
    }

    private final List w1(List videoDetailStream) {
        ArrayList arrayList = new ArrayList();
        if (videoDetailStream != null) {
            Iterator it = videoDetailStream.iterator();
            while (it.hasNext()) {
                VideoDetailStream videoDetailStream2 = (VideoDetailStream) it.next();
                arrayList.add(new go.c(o1(videoDetailStream2), videoDetailStream2.getId(), videoDetailStream2.getUrl(), videoDetailStream2.getResolutions(), videoDetailStream2.getSize(), videoDetailStream2.getDuration(), videoDetailStream2.getSignCookie(), null, 128, null));
            }
        }
        return arrayList;
    }

    private final void w2() {
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.showNoNetError();
        }
        this.showNetErr = true;
    }

    private final void x1() {
        VideoDetailStreamList videoDetailStreamList;
        VideoDetailMediaSource videoDetailMediaSource;
        if (this.mMovieDetailBean == null || (videoDetailStreamList = (VideoDetailStreamList) s1().w().f()) == null || (videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f()) == null || Intrinsics.c(videoDetailStreamList, this.videoDetailStreamList) || videoDetailMediaSource.getEp() != videoDetailStreamList.getEp() || videoDetailMediaSource.getSe() != videoDetailStreamList.getSe()) {
            return;
        }
        this.videoDetailStreamList = videoDetailStreamList;
        g1();
        g2(videoDetailStreamList);
    }

    private final void x2() {
        if (nh.m.f70474a.e()) {
            return;
        }
        m1().F(this.mSubjectId, new Function1() { // from class: com.transsion.videodetail.music.ui.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.y2(this.f57792a, ((Boolean) obj).booleanValue());
            }
        });
    }

    private final void y1() {
        BubbleTextView bubbleTextView;
        BubbleTextView bubbleTextView2;
        BubbleTextView bubbleTextView3;
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (bubbleTextView3 = mViewBinding.f66368b) != null) {
            bubbleTextView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.l
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicDetailFragment.z1(this.f57813a, view);
                }
            });
        }
        jx.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (bubbleTextView2 = mViewBinding2.f66368b) != null) {
            jg.c.k(bubbleTextView2);
        }
        b1();
        jx.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f66368b) == null) {
            return;
        }
        jg.c.g(bubbleTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y2(MusicDetailFragment musicDetailFragment, boolean z10) {
        kx.a.f68401a.a(musicDetailFragment.getClassTag() + " --> showNoNetworkLayout() --> 当前无网络且是收藏Music");
        musicDetailFragment.B2(true);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(MusicDetailFragment musicDetailFragment, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "MusicDetailFragment", "Click activity tip", false, 4, null);
        musicDetailFragment.hasClickedActivityTip = true;
        Intrinsics.e(view);
        jg.c.g(view);
    }

    private final void z2() {
        Context context;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            Subject subject = this.mMovieDetailBean;
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.MUSIC;
            jx.f mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String strName = longVodPageType.name();
                Subject subject2 = this.mMovieDetailBean;
                fo.a.C0760a.a(longVodPlayerView, "music_stream_detail", longVodPageType, strName + (subject2 != null ? subject2.getSubjectId() : null), mViewBinding.f66373g, mViewBinding.f66379m.f64599f, null, null, 96, null);
                longVodPlayerView.setFeedBackVisible(true);
                longVodPlayerView.setFragmentId(this.fragmentId);
                mViewBinding.f66375i.addView(longVodPlayerView);
                longVodPlayerView.setMusicLikedFragment(this.isMusicLikedFragment);
                this.playerControl = longVodPlayerView;
            }
            Subject subject3 = this.mMovieDetailBean;
            if (subject3 != null) {
                K1(subject3);
            }
            fo.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.setCallback(new g());
            }
        }
    }

    @Override // yn.a
    public void R(Function0 callback) {
        this.backPressedCallback = callback;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_movie_detail_skeleton_drawing_layout, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MusicDetailFragment.l1(this.f57816a, view);
            }
        });
        return viewInflate;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        com.transsion.baselib.report.l.f43359a.g(this);
        requireActivity().getOnBackPressedDispatcher().i(this, new d());
        jx.f mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f66377k.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.music.ui.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicDetailFragment.G1(this.f57798a, view);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        View view;
        View view2;
        jx.f mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (view2 = mViewBinding.f66388v) == null) ? null : view2.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar != null) {
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.d.c();
        }
        jx.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (view = mViewBinding2.f66388v) != null) {
            view.setLayoutParams(bVar);
        }
        y1();
        C1();
        H1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        p1().F().j(this, new f(new Function1() { // from class: com.transsion.videodetail.music.ui.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.N1(this.f57802a, (Pair) obj);
            }
        }));
        s1().u().j(this, new f(new Function1() { // from class: com.transsion.videodetail.music.ui.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.O1(this.f57803a, (VideoDetailPlayBean) obj);
            }
        }));
        p1().K().j(this, new f(new Function1() { // from class: com.transsion.videodetail.music.ui.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.P1(this.f57805a, (Integer) obj);
            }
        }));
        s1().z().j(this, new f(new Function1() { // from class: com.transsion.videodetail.music.ui.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.Q1(this.f57807a, (ResourcesSeasonList) obj);
            }
        }));
        s1().s().j(this, new f(new Function1() { // from class: com.transsion.videodetail.music.ui.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.M1(this.f57810a, (List) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        super.loadDefaultData();
        S1(this, this.mSubjectId, false, "loadDefaultData()", 2, null);
        x2();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("music_stream_detail", false, 2, null);
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean isBackground) {
        jx.f mViewBinding;
        FrameLayout frameLayout;
        if (!isBackground || (mViewBinding = getMViewBinding()) == null || (frameLayout = mViewBinding.f66375i) == null) {
            return;
        }
        frameLayout.postDelayed(new Runnable() { // from class: com.transsion.videodetail.music.ui.u
            @Override // java.lang.Runnable
            public final void run() {
                MusicDetailFragment.W1(this.f57835a);
            }
        }, 500L);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        kx.a.f68401a.a(getClassTag() + " --> onCreate() --> 音乐详情页");
        nh.m.f70474a.l(this.networkStatusChangedListener);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        fo.a aVar;
        super.onDestroy();
        MusicFloatManager.a aVar2 = MusicFloatManager.f43454h;
        aVar2.b().w().remove(this.fragmentId);
        if (!this.isFloatShow && aVar2.b().w().isEmpty() && (aVar = this.playerControl) != null) {
            aVar.release();
        }
        fo.a aVar3 = this.playerControl;
        if (aVar3 != null) {
            aVar3.onPageDestroy();
        }
        nh.m.f70474a.m(this.networkStatusChangedListener);
        com.transsion.baselib.report.l.f43359a.u(this);
        if (this.isMusicLikedFragment) {
            kx.b.f68402a.b(false);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        fo.a aVar;
        super.onPause();
        if (this.isFloatShow || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        l2();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        HashMap mapG;
        this.lastPageFrom = hj.i.f64505a.i();
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        Bundle arguments3 = getArguments();
        boolean z10 = false;
        this.autoDownload = arguments3 != null ? arguments3.getBoolean("auto_download") : false;
        Bundle arguments4 = getArguments();
        this.autoPlay = arguments4 != null ? arguments4.getBoolean("auto_play") : false;
        Bundle arguments5 = getArguments();
        this.autoPlayResourceId = arguments5 != null ? arguments5.getString("auto_play_resource_id") : null;
        Bundle arguments6 = getArguments();
        this.preloadId = arguments6 != null ? arguments6.getInt("yy_preload_id") : 0;
        MovieDetailViewModel movieDetailViewModelP1 = p1();
        int i11 = this.preloadId;
        String str = this.mSubjectId;
        MovieDetailViewModel.T(movieDetailViewModelP1, i11, str == null ? "" : str, null, 4, null);
        Bundle arguments7 = getArguments();
        this.moduleName = arguments7 != null ? arguments7.getString("module_name") : null;
        Bundle arguments8 = getArguments();
        this.targetSeason = arguments8 != null ? arguments8.getInt("season") : 0;
        Bundle arguments9 = getArguments();
        this.targetEp = arguments9 != null ? arguments9.getInt("episode") : 0;
        int i12 = this.targetSeason;
        if (i12 <= 0) {
            i12 = 1;
        }
        this.curSeason = i12;
        Bundle arguments10 = getArguments();
        this.isMusicLikedFragment = arguments10 != null && arguments10.getBoolean("is_music_liked_fragment");
        Bundle arguments11 = getArguments();
        if (arguments11 != null && arguments11.getBoolean("is_music_float_view_click")) {
            z10 = true;
        }
        this.isMusicFloatViewClick = z10;
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String str2 = this.mSubjectId;
            mapG.put("subject_id", str2 != null ? str2 : "");
        }
        m1().F(this.mSubjectId, new Function1() { // from class: com.transsion.videodetail.music.ui.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicDetailFragment.k2(this.f57799a, ((Boolean) obj).booleanValue());
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        if (this.mMovieDetailBean == null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: t1, reason: merged with bridge method [inline-methods] */
    public jx.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jx.f fVarC = jx.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }
}
