package com.transsion.videodetail;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
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
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.MemberGuideBannerView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.bean.GameInfoType;
import com.transsion.commercializationapi.IGameResApi;
import com.transsion.fissionapi.IFissionProvider;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.fragment.ResourceDetectorEmptyFragment;
import com.transsion.moviedetail.fragment.ResourceDetectorFamilyModeFragment;
import com.transsion.moviedetail.fragment.RestrictTipsDialog;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectGameInfo;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.intercept.PlaybackInterceptionManager;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.publish.api.IPublishApi;
import com.transsion.push.PushConstants;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.RewardsCenterData;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import com.transsion.videodetail.util.StreamFloatManager;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.wrapperad.view.cardpage.NativeCardPageAdHelper;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000¤\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n*\u0002ò\u0001\u0018\u0000 \u0087\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0088\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0019\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u0019\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u001a\u0010\u0016J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J)\u0010 \u001a\u0004\u0018\u00010\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u0019\u0010&\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b&\u0010'J\u0019\u0010*\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010(H\u0002¢\u0006\u0004\b*\u0010+J%\u00100\u001a\b\u0012\u0004\u0012\u00020/0.2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u001eH\u0002¢\u0006\u0004\b0\u00101J\u0019\u00104\u001a\u0002032\b\u00102\u001a\u0004\u0018\u00010,H\u0002¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u000eH\u0002¢\u0006\u0004\b7\u0010\u0011J\u000f\u00108\u001a\u00020\u0006H\u0002¢\u0006\u0004\b8\u0010\u0005J\u000f\u00109\u001a\u00020\u0006H\u0002¢\u0006\u0004\b9\u0010\u0005J\u000f\u0010:\u001a\u00020\u0006H\u0002¢\u0006\u0004\b:\u0010\u0005J\u000f\u0010;\u001a\u00020\u0006H\u0002¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0002¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u000eH\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0002¢\u0006\u0004\b?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0002¢\u0006\u0004\b@\u0010\u0005J\u000f\u0010A\u001a\u00020\u0006H\u0002¢\u0006\u0004\bA\u0010\u0005J\u000f\u0010B\u001a\u00020\u0006H\u0002¢\u0006\u0004\bB\u0010\u0005J\u000f\u0010C\u001a\u00020\u0006H\u0002¢\u0006\u0004\bC\u0010\u0005J\u0019\u0010F\u001a\u00020\u00062\b\b\u0002\u0010E\u001a\u00020DH\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\u0006H\u0002¢\u0006\u0004\bH\u0010\u0005J\u000f\u0010I\u001a\u00020\u0006H\u0002¢\u0006\u0004\bI\u0010\u0005J\u0017\u0010L\u001a\u00020\u000e2\u0006\u0010K\u001a\u00020JH\u0002¢\u0006\u0004\bL\u0010MJ\u0011\u0010O\u001a\u0004\u0018\u00010NH\u0002¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0006H\u0002¢\u0006\u0004\bQ\u0010\u0005J\u0017\u0010T\u001a\u00020\u00062\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\u0006H\u0002¢\u0006\u0004\bV\u0010\u0005J\u0017\u0010W\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bW\u0010\u0016J\u0017\u0010Z\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020XH\u0002¢\u0006\u0004\bZ\u0010[J\u0019\u0010^\u001a\u00020\u00062\b\u0010]\u001a\u0004\u0018\u00010\\H\u0002¢\u0006\u0004\b^\u0010_J\u0017\u0010a\u001a\u00020\u00062\u0006\u0010`\u001a\u00020\u0013H\u0002¢\u0006\u0004\ba\u0010\u0016J\u0019\u0010d\u001a\u00020\u00062\b\u0010c\u001a\u0004\u0018\u00010bH\u0016¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\u0006H\u0016¢\u0006\u0004\bf\u0010\u0005J\u0017\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020gH\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020\\H\u0016¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020\u000eH\u0016¢\u0006\u0004\bm\u0010>J\u000f\u0010n\u001a\u00020\u0006H\u0016¢\u0006\u0004\bn\u0010\u0005J\u000f\u0010o\u001a\u00020\u0006H\u0016¢\u0006\u0004\bo\u0010\u0005J\u000f\u0010p\u001a\u00020\u0006H\u0016¢\u0006\u0004\bp\u0010\u0005J\u000f\u0010q\u001a\u00020\u0006H\u0016¢\u0006\u0004\bq\u0010\u0005J\u000f\u0010s\u001a\u00020rH\u0016¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u00020\u0006H\u0016¢\u0006\u0004\bu\u0010\u0005J\u0011\u0010w\u001a\u0004\u0018\u00010vH\u0016¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\u0006H\u0016¢\u0006\u0004\by\u0010\u0005J\u000f\u0010z\u001a\u00020\u0006H\u0016¢\u0006\u0004\bz\u0010\u0005J\u000f\u0010{\u001a\u00020\u0006H\u0016¢\u0006\u0004\b{\u0010\u0005J\r\u0010|\u001a\u00020\u0006¢\u0006\u0004\b|\u0010\u0005J\u0017\u0010~\u001a\u00020\u00062\u0006\u0010}\u001a\u00020\u000eH\u0016¢\u0006\u0004\b~\u0010\u0011J\u000f\u0010\u007f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u007f\u0010\u0005J\u0011\u0010\u0080\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0080\u0001\u0010\u0005J\u0011\u0010\u0081\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0081\u0001\u0010\u0005J$\u0010\u0084\u0001\u001a\u00020\u00062\u0010\u0010\u0083\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0082\u0001H\u0016¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0017\u0010\u0086\u0001\u001a\u00020\u00062\u0006\u0010`\u001a\u00020\u0013¢\u0006\u0005\b\u0086\u0001\u0010\u0016R\u001c\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R!\u0010\u0097\u0001\u001a\u00030\u0092\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001R!\u0010\u009c\u0001\u001a\u00030\u0098\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0099\u0001\u0010\u0094\u0001\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001R!\u0010¡\u0001\u001a\u00030\u009d\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009e\u0001\u0010\u0094\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001R#\u0010¦\u0001\u001a\u0005\u0018\u00010¢\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b£\u0001\u0010\u0094\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u001b\u0010«\u0001\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010¨\u0001R\u0019\u0010®\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u001b\u0010°\u0001\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010¨\u0001R\u0019\u0010²\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010\u00ad\u0001R\u0019\u0010´\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010\u00ad\u0001R\u001b\u0010¶\u0001\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010¨\u0001R(\u0010¼\u0001\u001a\u00020D8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b·\u0001\u0010¸\u0001\u001a\u0006\b¹\u0001\u0010º\u0001\"\u0005\b»\u0001\u0010GR\u0019\u0010¾\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¸\u0001R\u0019\u0010À\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010¸\u0001R\u0019\u0010Â\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010¸\u0001R\u001b\u0010Ä\u0001\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010¨\u0001R\u0019\u0010Æ\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010\u00ad\u0001R\u001b\u0010É\u0001\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R\u0019\u0010Ë\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010\u00ad\u0001R\u001c\u0010Ï\u0001\u001a\u0005\u0018\u00010Ì\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010Î\u0001R#\u0010Ô\u0001\u001a\u0005\u0018\u00010Ð\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÑ\u0001\u0010\u0094\u0001\u001a\u0006\bÒ\u0001\u0010Ó\u0001R\u0019\u0010×\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R\u0019\u0010Ú\u0001\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R\"\u0010Ý\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010Ü\u0001R\u0019\u0010ß\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010\u00ad\u0001R\u001c\u0010ã\u0001\u001a\u0005\u0018\u00010à\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0001\u0010â\u0001R\u0019\u0010å\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0001\u0010Ö\u0001R\u0019\u0010ç\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0001\u0010Ö\u0001R\u0019\u0010é\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010Ö\u0001R\u0019\u0010ë\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010Ö\u0001R\u0019\u0010í\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0001\u0010Ö\u0001R\u0019\u0010î\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010Ö\u0001R\u0019\u0010ï\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010Ö\u0001R\u0019\u0010ñ\u0001\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0001\u0010Ö\u0001R\u0018\u0010õ\u0001\u001a\u00030ò\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bó\u0001\u0010ô\u0001R\u001a\u0010)\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bö\u0001\u0010÷\u0001R \u0010û\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010(0ø\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bù\u0001\u0010ú\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010ý\u0001R\u001c\u0010\u0081\u0002\u001a\u0005\u0018\u00010þ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010\u0080\u0002R\u0019\u0010\u0083\u0002\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0002\u0010\u00ad\u0001R\u0019\u0010\u0084\u0002\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010¨\u0001R\u0019\u0010\u0086\u0002\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0002\u0010¨\u0001¨\u0006\u0088\u0002"}, d2 = {"Lcom/transsion/videodetail/StreamDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Ljx/i;", "Lyn/a;", "<init>", "()V", "", "a2", "r1", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "episodeMedia", "g1", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "a1", "", "isAudioTracksChange", "O1", "(Z)V", "n2", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "w2", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "u1", "u2", "subject", "d2", "B1", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", ShortTVHistoryView.TYPE_HISTORY, "", "episodeMediaList", "m1", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/util/List;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "b1", "l2", "Lgo/a;", "bean", "U1", "(Lgo/a;)V", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "videoDetailStreamList", "W1", "(Lcom/transsion/videodetail/bean/VideoDetailStreamList;)V", "Lcom/transsion/videodetail/bean/VideoDetailStream;", "videoDetailStream", "", "Lgo/c;", "q1", "(Ljava/util/List;)Ljava/util/List;", "stream", "Lcom/transsion/player/enum/PlayMimeType;", "k1", "(Lcom/transsion/videodetail/bean/VideoDetailStream;)Lcom/transsion/player/enum/PlayMimeType;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "R1", "S1", "showLoading", "e1", "k2", "f1", "Y0", "()Z", "s1", "Z0", "d1", "r2", "w1", "", "visible", "s2", "(I)V", "c1", "E1", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "g2", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Lpx/a;", "h1", "()Lpx/a;", "y1", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "uiType", "T1", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "j2", "C1", "", "tsLayoutDone", "Z1", "(J)V", "", "genre", "N1", "(Ljava/lang/String;)V", "data", "o2", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "p1", "(Landroid/view/LayoutInflater;)Ljx/i;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isRegisteDeviceKeyMonitor", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "loadDefaultData", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "onResume", "onPause", "onStop", "Y1", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "onDestroy", "Lkotlin/Function0;", "callback", "R", "(Lkotlin/jvm/functions/Function0;)V", "f2", "Lfo/a;", "a", "Lfo/a;", "playerControl", "Ltn/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ltn/e;", "bottomRecHelper", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "l1", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/videodetail/VideoDetailViewModel;", "e", "o1", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "Lcom/transsnet/downloader/viewmodel/k0;", "f", "getDownloadViewModel", "()Lcom/transsnet/downloader/viewmodel/k0;", "downloadViewModel", "Lcom/transsion/publish/api/IPublishApi;", "g", "n1", "()Lcom/transsion/publish/api/IPublishApi;", "publishedApi", "h", "Ljava/lang/String;", "mSubjectId", "i", "ops", "j", "Z", "netResultSuccess", CampaignEx.JSON_KEY_AD_K, "moduleName", "l", "autoDownload", "m", "autoPlay", "n", "autoPlayResourceId", "o", "I", "getPreloadId", "()I", "setPreloadId", "preloadId", TtmlNode.TAG_P, "curSeason", CampaignEx.JSON_KEY_AD_Q, "targetSeason", CampaignEx.JSON_KEY_AD_R, "targetEp", "s", "lastPageFrom", "t", "hasClickedActivityTip", TmcStartParams.KEY_URL_SHORT, "Landroid/view/View;", "gameResView", "v", "isGameResInit", "Lcom/transsion/fissionapi/IFissionProvider;", "w", "Lcom/transsion/fissionapi/IFissionProvider;", "palmPayApi", "Lcom/transsion/memberapi/IMemberApi;", "x", "j1", "()Lcom/transsion/memberapi/IMemberApi;", "memberProvider", "y", "J", "curAudioTrackPlayProgress", "z", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "curPlayerUiType", "A", "Lkotlin/jvm/functions/Function0;", "backPressedCallback", "B", "hasResource", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "C", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "adHelper", "D", "tsEnter", "E", "tsRequestStart", "F", "tsCallback", "G", "tsInitStart", "H", "tsInitDone", "tsAddView", "tsViewCreatedStart", "K", "tsViewCreatedEnd", "com/transsion/videodetail/StreamDetailFragment$d", "L", "Lcom/transsion/videodetail/StreamDetailFragment$d;", "networkStatusChangedListener", "M", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "Landroidx/lifecycle/c0;", "N", "Landroidx/lifecycle/c0;", "playInfoObserver", "O", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "Ljx/j;", "P", "Ljx/j;", "loadingViewBinding", "Q", "showNetErr", "traceId", "S", "curSubjectId", "T", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StreamDetailFragment extends PageStatusFragment<jx.i> implements yn.a {

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private Function0 backPressedCallback;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private NativeCardPageAdHelper adHelper;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private long tsEnter;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private long tsRequestStart;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private long tsCallback;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private long tsInitStart;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private long tsInitDone;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private long tsAddView;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private long tsViewCreatedStart;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private long tsViewCreatedEnd;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private VideoDetailStreamList videoDetailStreamList;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private VideoDetailPlayBean history;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private jx.j loadingViewBinding;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private boolean showNetErr;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private fo.a playerControl;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private tn.e bottomRecHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String mSubjectId;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean netResultSuccess;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String moduleName;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean autoDownload;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean autoPlay;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private String autoPlayResourceId;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private int preloadId;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int targetSeason;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private int targetEp;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean hasClickedActivityTip;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private View gameResView;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean isGameResInit;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private long curAudioTrackPlayProgress;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.StreamDetailFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.StreamDetailFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.StreamDetailFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.StreamDetailFragment$special$$inlined$activityViewModels$default$4
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

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.viewmodel.k0.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.StreamDetailFragment$special$$inlined$activityViewModels$default$5
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.StreamDetailFragment$special$$inlined$activityViewModels$default$6
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

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy publishedApi = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return StreamDetailFragment.X1();
        }
    });

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private int curSeason = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private IFissionProvider palmPayApi = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberProvider = LazyKt.b(new Function0() { // from class: com.transsion.videodetail.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return StreamDetailFragment.Q1();
        }
    });

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private LongVodUiType curPlayerUiType = LongVodUiType.MIDDLE;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean hasResource = true;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private final d networkStatusChangedListener = new d();

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 playInfoObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.videodetail.j
        @Override // androidx.p009lifecycle.c0
        public final void onChanged(Object obj) {
            StreamDetailFragment.V1(this.f57708a, (VideoDetailStreamList) obj);
        }
    };

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private String traceId = "";

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private String curSubjectId = "";

    /* JADX INFO: renamed from: com.transsion.videodetail.StreamDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StreamDetailFragment a() {
            return new StreamDetailFragment();
        }
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            BubbleTextView bubbleTextView;
            ViewTreeObserver viewTreeObserver;
            jx.i mViewBinding = StreamDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (bubbleTextView = mViewBinding.f66423b) != null && (viewTreeObserver = bubbleTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            jx.i mViewBinding2 = StreamDetailFragment.this.getMViewBinding();
            BubbleTextView bubbleTextView2 = mViewBinding2 != null ? mViewBinding2.f66423b : null;
            if (bubbleTextView2 == null || bubbleTextView2.getMeasuredWidth() == 0) {
                return;
            }
            float measuredWidth = (bubbleTextView2.getMeasuredWidth() / 2) - (com.blankj.utilcode.util.a0.a(16.0f) / 2);
            bubbleTextView2.setArrowPosition(measuredWidth);
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "activity tip width: " + bubbleTextView2.getMeasuredWidth() + ", arrowPosition: " + measuredWidth, false, 4, null);
        }
    }

    public static final class c extends androidx.activity.u {
        c() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            Function0 function0 = StreamDetailFragment.this.backPressedCallback;
            if (function0 == null || !((Boolean) function0.invoke()).booleanValue()) {
                if (StreamDetailFragment.this.playerControl != null) {
                    fo.a aVar = StreamDetailFragment.this.playerControl;
                    if (aVar != null) {
                        aVar.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = StreamDetailFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    public static final class d implements nh.n {
        d() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            StreamDetailFragment.this.f1();
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) StreamDetailFragment.this.o1().x().f();
            if (videoDetailMediaSource != null) {
                StreamDetailFragment streamDetailFragment = StreamDetailFragment.this;
                VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) streamDetailFragment.o1().w().f();
                if (videoDetailStreamList != null && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe() && videoDetailMediaSource.getEp() == videoDetailStreamList.getEp()) {
                    return;
                }
                streamDetailFragment.g1(videoDetailMediaSource);
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57595a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57595a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57595a;
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
            this.f57595a.invoke(obj);
        }
    }

    public static final class f implements sx.a {
        f() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return StreamFloatManager.f57873b.r(aVar);
        }

        @Override // sx.a
        public void b(px.a aVar) {
            sx.a.C0918a.a(this, aVar);
            StreamFloatManager.f57873b.q(aVar);
        }

        @Override // sx.a
        public void c(px.a aVar) {
            StreamFloatManager streamFloatManager = StreamFloatManager.f57873b;
            streamFloatManager.p();
            streamFloatManager.t(aVar);
        }
    }

    public static final class g implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LongVodPlayerView f57596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StreamDetailFragment f57597b;

        g(LongVodPlayerView longVodPlayerView, StreamDetailFragment streamDetailFragment) {
            this.f57596a = longVodPlayerView;
            this.f57597b = streamDetailFragment;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f57596a.getWidth() == 0 || this.f57596a.getHeight() == 0) {
                return;
            }
            this.f57596a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f57597b.Z1(SystemClock.elapsedRealtime());
        }
    }

    public static final class h implements fo.a.b {
        h() {
        }

        @Override // fo.a.b
        public void a() {
            StreamDetailFragment.this.b1();
        }

        @Override // fo.a.b
        public boolean b() {
            if (StreamDetailFragment.this.showNetErr && nh.m.f70474a.e()) {
                StreamDetailFragment streamDetailFragment = StreamDetailFragment.this;
                streamDetailFragment.g1((VideoDetailMediaSource) streamDetailFragment.o1().x().f());
            }
            return StreamDetailFragment.this.showNetErr;
        }

        @Override // fo.a.b
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return StreamDetailFragment.this.g2(actionType);
        }

        @Override // fo.a.b
        public void d(LongVodUiType uiType) {
            Intrinsics.h(uiType, "uiType");
            StreamDetailFragment.this.curPlayerUiType = uiType;
            StreamDetailFragment.this.T1(uiType);
            tn.e eVar = StreamDetailFragment.this.bottomRecHelper;
            if (eVar != null) {
                eVar.x(uiType != LongVodUiType.MIDDLE);
            }
        }

        @Override // fo.a.b
        public View e() {
            return StreamDetailFragment.this.gameResView;
        }

        @Override // fo.a.b
        public void f(go.a aVar) {
            StreamDetailFragment.this.U1(aVar);
        }

        @Override // fo.a.b
        public void g(boolean z10) {
            AppCompatImageView appCompatImageView;
            jx.i mViewBinding = StreamDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f66433l) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override // fo.a.b
        public void h(String str) {
            StreamDetailFragment.this.o1().y().n(str);
        }

        @Override // fo.a.b
        public void onCompletion() {
            StreamDetailFragment.this.b1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(StreamDetailFragment streamDetailFragment, View view) {
        fo.a aVar = streamDetailFragment.playerControl;
        if (aVar != null) {
            if (aVar != null) {
                aVar.onBackPressed();
            }
        } else {
            FragmentActivity activity = streamDetailFragment.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    private final void B1() {
        ResourcesSeasonList resourcesSeasonList;
        if (this.mSubjectId == null || (resourcesSeasonList = (ResourcesSeasonList) o1().z().f()) == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "checkPlayInfo 没有资源", false, 4, null);
            return;
        }
        if (resourcesSeasonList.isSeries()) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "checkPlayInfo 是剧集，获取记录决定哪集", false, 4, null);
            List list = (List) o1().s().f();
            if (list == null) {
                return;
            }
            VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) o1().u().f();
            this.history = videoDetailPlayBean;
            o1().C(m1(videoDetailPlayBean, list));
            return;
        }
        if (resourcesSeasonList.isMovie()) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "checkPlayInfo 是电影", false, 4, null);
            List list2 = (List) o1().s().f();
            if (list2 == null) {
                return;
            }
            this.history = (VideoDetailPlayBean) o1().u().f();
            o1().C((VideoDetailMediaSource) CollectionsKt.k0(list2));
        }
    }

    private final void C1(Subject movieDetailBean) {
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
            value = Utils.a().getString(com.transsion.moviedetail.R$string.movie_detail_restrict_tips);
        }
        final RestrictTipsDialog restrictTipsDialogA = RestrictTipsDialog.INSTANCE.a(value, "stream_detail", movieDetailBean.getSubjectId());
        restrictTipsDialogA.l0(this, "RestrictTipsDialog");
        restrictTipsDialogA.y0(new Function1() { // from class: com.transsion.videodetail.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.D1(restrictTipsDialogA, this, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D1(RestrictTipsDialog restrictTipsDialog, StreamDetailFragment streamDetailFragment, boolean z10) {
        if (z10) {
            fo.a aVar = streamDetailFragment.playerControl;
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

    private final void E1() {
        ConstraintLayout constraintLayoutB;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        constraintLayoutB.post(new Runnable() { // from class: com.transsion.videodetail.c0
            @Override // java.lang.Runnable
            public final void run() {
                StreamDetailFragment.F1(this.f57685a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(StreamDetailFragment streamDetailFragment) {
        Subject subject;
        String subjectId;
        String ops;
        FragmentActivity activity = streamDetailFragment.getActivity();
        if (activity == null || (subject = streamDetailFragment.mMovieDetailBean) == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        ox.b bVarC = ox.b.f72191a.c();
        Subject subject2 = streamDetailFragment.mMovieDetailBean;
        bVarC.e(activity, subjectId, null, "stream_detail", (subject2 == null || (ops = subject2.getOps()) == null) ? streamDetailFragment.ops : ops);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G1(StreamDetailFragment streamDetailFragment, VideoDetailMediaSource videoDetailMediaSource) {
        lg.a.C0828a.v(lg.a.f68839a, "VideoDetailEpisode", "--------PlayingEpisodeMediaLiveDat:observe", false, 4, null);
        streamDetailFragment.g1(videoDetailMediaSource);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H1(StreamDetailFragment streamDetailFragment, VideoDetailPlayBean videoDetailPlayBean) {
        Subject subject;
        String str = streamDetailFragment.ops;
        if (str == null || str.length() == 0) {
            streamDetailFragment.ops = videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null;
        }
        Subject subject2 = streamDetailFragment.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = streamDetailFragment.mMovieDetailBean) != null) {
            subject.setOps(videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I1(StreamDetailFragment streamDetailFragment, DubsInfo dubsInfo) {
        fo.a aVar = streamDetailFragment.playerControl;
        streamDetailFragment.curAudioTrackPlayProgress = aVar != null ? aVar.currentPosition() : 0L;
        streamDetailFragment.mSubjectId = dubsInfo.getSubjectId();
        streamDetailFragment.mMovieDetailBean = null;
        streamDetailFragment.videoDetailStreamList = null;
        streamDetailFragment.o1().D();
        MovieDetailViewModel movieDetailViewModelL1 = streamDetailFragment.l1();
        int i11 = streamDetailFragment.preloadId;
        String str = streamDetailFragment.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelL1.S(i11, str, Integer.valueOf(streamDetailFragment.curSeason));
        streamDetailFragment.O1(true);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J1(StreamDetailFragment streamDetailFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        Subject subject = (Subject) pair.getSecond();
        lg.a.f68839a.c("videoDetail", "get movie detail data==" + pair, true);
        if (subject == null) {
            if (Intrinsics.c(pair.getFirst(), "404")) {
                com.tn.lib.widget.toast.core.h.f41479a.k(com.transsion.moviedetail.R$string.movie_lost_content);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(streamDetailFragment), null, null, new StreamDetailFragment$initViewModel$1$1$1(streamDetailFragment, null), 3, null);
            }
            if (nh.m.f70474a.e()) {
                PageStatusFragment.showEmptyView$default(streamDetailFragment, false, 1, null);
            } else {
                PageStatusFragment.showNoNetworkView$default(streamDetailFragment, false, 1, null);
            }
        } else {
            if (subject.getIsRefreshViewOnly()) {
                streamDetailFragment.w2(subject);
                return Unit.f67061a;
            }
            streamDetailFragment.tsCallback = SystemClock.elapsedRealtime();
            MovieDetailViewModel movieDetailViewModelL1 = streamDetailFragment.l1();
            String subjectId = subject.getSubjectId();
            Integer subjectType = subject.getSubjectType();
            Context context = streamDetailFragment.getContext();
            MovieDetailViewModel.u(movieDetailViewModelL1, subjectId, subjectType, 0, context != null && com.transsion.baseui.util.b.a(context), 4, null);
            streamDetailFragment.showContentView();
            streamDetailFragment.netResultSuccess = true;
            streamDetailFragment.w2(subject);
            streamDetailFragment.u2();
            streamDetailFragment.r1();
            streamDetailFragment.n2();
            hj.b logViewConfig = streamDetailFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            hj.b logViewConfig2 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(streamDetailFragment.ops);
            }
            hj.b logViewConfig3 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
                String subjectId2 = subject.getSubjectId();
                if (subjectId2 == null) {
                    subjectId2 = "";
                }
                mapG3.put("subject_id", subjectId2);
            }
            hj.b logViewConfig4 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
                mapG2.put("has_resource", String.valueOf(subject.getHasResource()));
            }
            hj.b logViewConfig5 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
                mapG.put("module_name", streamDetailFragment.moduleName);
            }
            streamDetailFragment.o2(subject);
            streamDetailFragment.f2(subject);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(StreamDetailFragment streamDetailFragment, Integer num) {
        int i11 = streamDetailFragment.curSeason;
        if (num != null && i11 == num.intValue()) {
            return Unit.f67061a;
        }
        Intrinsics.e(num);
        streamDetailFragment.curSeason = num.intValue();
        String str = streamDetailFragment.mSubjectId;
        if (str != null) {
            streamDetailFragment.l1().D(str, Integer.valueOf(streamDetailFragment.curSeason), true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L1(StreamDetailFragment streamDetailFragment, ResourcesSeasonList resourcesSeasonList) {
        streamDetailFragment.u2();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M1(StreamDetailFragment streamDetailFragment, List list) {
        streamDetailFragment.B1();
        return Unit.f67061a;
    }

    private final void N1(String genre) {
        NativeCardPageView nativeCardPageView;
        NativeCardPageAdHelper nativeCardPageAdHelperG;
        NativeCardPageAdHelper nativeCardPageAdHelperF;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (nativeCardPageView = mViewBinding.f66437p) == null) {
            return;
        }
        jg.c.g(nativeCardPageView);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper == null || (nativeCardPageAdHelperG = nativeCardPageAdHelper.G("StreamingMediaContentScene")) == null || (nativeCardPageAdHelperF = nativeCardPageAdHelperG.F(com.transsion.ad.strategy.d.f42231a.a(genre))) == null) {
            return;
        }
        nativeCardPageAdHelperF.u(nativeCardPageView);
    }

    private final void O1(boolean isAudioTracksChange) {
        HashMap mapG;
        MovieDetailActivity.INSTANCE.a("videoDetail start load data ....");
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String str = this.mSubjectId;
            if (str == null) {
                str = "";
            }
            mapG.put("subject_id", str);
        }
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        if (nh.m.f70474a.e()) {
            if (!isAudioTracksChange) {
                showLoadingView();
            }
            String str2 = this.mSubjectId;
            if (str2 != null) {
                this.tsRequestStart = SystemClock.elapsedRealtime();
                MovieDetailViewModel.E(l1(), str2, Integer.valueOf(this.curSeason), false, 4, null);
                o1().r(str2);
                o1().q(str2);
            }
        }
    }

    static /* synthetic */ void P1(StreamDetailFragment streamDetailFragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        streamDetailFragment.O1(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMemberApi Q1() {
        return (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
    }

    private final void R1(boolean show) {
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
            IMemberApi iMemberApiJ1 = j1();
            if (iMemberApiJ1 != null) {
                iMemberApiJ1.i();
                return;
            }
            return;
        }
        IMemberApi iMemberApiJ2 = j1();
        if (iMemberApiJ2 != null) {
            iMemberApiJ2.q();
        }
    }

    private final void S1() {
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onPageDestroy();
        }
        nh.m.f70474a.m(this.networkStatusChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T1(LongVodUiType uiType) {
        if (this.gameResView == null || uiType != LongVodUiType.MIDDLE) {
            return;
        }
        j2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U1(go.a bean) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.mSubjectId);
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.getType() == 3 && bean != null) {
            navigatorK.I("TV_DATA", new FbTvData(bean.o(), bean.l(), bean.e()));
        }
        Navigator.x(navigatorK, requireContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V1(StreamDetailFragment streamDetailFragment, VideoDetailStreamList videoDetailStreamList) {
        lg.a.f68839a.c("videoDetail", "playInfoObserver  playInfo==" + videoDetailStreamList, true);
        streamDetailFragment.r1();
        if (videoDetailStreamList != null || nh.m.f70474a.e()) {
            streamDetailFragment.f1();
        } else {
            streamDetailFragment.k2();
        }
    }

    /* JADX WARN: Code duplicated, block: B:123:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:58:0x0132  */
    /* JADX WARN: Code duplicated, block: B:59:0x0139  */
    /* JADX WARN: Code duplicated, block: B:61:0x013d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0144  */
    /* JADX WARN: Code duplicated, block: B:65:0x014a  */
    /* JADX WARN: Instruction removed from duplicated block: B:54:0x00f4, please report this as an issue */
    private final void W1(VideoDetailStreamList videoDetailStreamList) {
        List<VideoDetailStream> list;
        long j11;
        VideoDetailPlayBean videoDetailPlayBean;
        VideoDetailPlayBean videoDetailPlayBean2;
        VideoDetailPlayBean videoDetailPlayBean3;
        VideoDetailMediaSource videoDetailMediaSource;
        int ep2;
        int se2;
        String str;
        Subject subject;
        List<DubsInfo> listL;
        String averageHueLight;
        String thumbnail;
        String url;
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || !subject2.isFamilyModeIntercept()) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            c0828a.c("videoDetail", "playStream   videoDetailStreamList:" + videoDetailStreamList + "  mSubjectId:" + this.mSubjectId + "  mMovieDetailBean:" + this.mMovieDetailBean, true);
            List<VideoDetailStream> streams = videoDetailStreamList != null ? videoDetailStreamList.getStreams() : null;
            if (videoDetailStreamList == null || (list = streams) == null || list.isEmpty()) {
                lg.a.C0828a.l(c0828a, "videoDetail", "空返回", false, 4, null);
                return;
            }
            VideoDetailMediaSource videoDetailMediaSource2 = (VideoDetailMediaSource) o1().x().f();
            if (videoDetailMediaSource2 != null && videoDetailMediaSource2.getEp() == videoDetailStreamList.getEp() && videoDetailMediaSource2.getSe() == videoDetailStreamList.getSe()) {
                long progress = this.curAudioTrackPlayProgress;
                if (progress <= 0) {
                    VideoDetailPlayBean videoDetailPlayBean4 = this.history;
                    if (videoDetailPlayBean4 != null && videoDetailPlayBean4 != null && videoDetailStreamList.getSe() == videoDetailPlayBean4.getSe() && (videoDetailPlayBean = this.history) != null && videoDetailStreamList.getEp() == videoDetailPlayBean.getEp()) {
                        if ((this.targetSeason > 0 && (videoDetailPlayBean3 = this.history) != null && videoDetailPlayBean3.getSe() == this.targetSeason) || this.targetSeason <= 0) {
                            o1().n();
                            videoDetailPlayBean2 = this.history;
                            if (videoDetailPlayBean2 != null) {
                                progress = videoDetailPlayBean2.getProgress();
                                lg.a.C0828a.v(c0828a, "videoDetail", "playStream， history，seekTo:" + progress + " ", false, 4, null);
                            }
                            PlayMimeType playMimeTypeK1 = k1((VideoDetailStream) CollectionsKt.k0(streams));
                            videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
                            if (videoDetailMediaSource != null) {
                                ep2 = videoDetailMediaSource.getEp();
                            } else {
                                ep2 = 0;
                            }
                            if (videoDetailMediaSource != null) {
                                se2 = videoDetailMediaSource.getSe();
                            } else {
                                se2 = 0;
                            }
                            str = this.mSubjectId;
                            if (str != null) {
                            }
                        }
                        VideoDetailPlayBean videoDetailPlayBean5 = this.history;
                        if ((videoDetailPlayBean5 != null ? videoDetailPlayBean5.getSe() : 0) <= 0) {
                            o1().n();
                            videoDetailPlayBean2 = this.history;
                            if (videoDetailPlayBean2 != null) {
                                progress = videoDetailPlayBean2.getProgress();
                                lg.a.C0828a.v(c0828a, "videoDetail", "playStream， history，seekTo:" + progress + " ", false, 4, null);
                            }
                            PlayMimeType playMimeTypeK2 = k1((VideoDetailStream) CollectionsKt.k0(streams));
                            videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
                            if (videoDetailMediaSource != null) {
                                ep2 = videoDetailMediaSource.getEp();
                            } else {
                                ep2 = 0;
                            }
                            if (videoDetailMediaSource != null) {
                                se2 = videoDetailMediaSource.getSe();
                            } else {
                                se2 = 0;
                            }
                            str = this.mSubjectId;
                            if (str != null || (subject = this.mMovieDetailBean) == null) {
                            }
                            String title = subject.getTitle();
                            String str2 = title == null ? "" : title;
                            String title2 = videoDetailStreamList.getTitle();
                            String str3 = this.lastPageFrom;
                            String str4 = str3 == null ? "" : str3;
                            List listQ1 = q1(streams);
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
                            Subject subject3 = this.mMovieDetailBean;
                            String ops = subject3 != null ? subject3.getOps() : null;
                            Subject subject4 = this.mMovieDetailBean;
                            go.a aVar = new go.a(str, playMimeTypeK2, j11, ep2, se2, str2, title2, str4, "stream_detail", listQ1, str5, str6, str7, iIntValue, Integer.valueOf(iIntValue2), false, subject4 != null ? subject4.getTitle() : null, ops, 32768, null);
                            aVar.A(this.mMovieDetailBean);
                            List listA = aVar.a();
                            Subject subject5 = this.mMovieDetailBean;
                            if (subject5 == null || (listL = subject5.getDubs()) == null) {
                                listL = CollectionsKt.l();
                            }
                            listA.addAll(listL);
                            c0828a.c("videoDetail", "playStream  addDataSource:" + aVar + "  playerControl:" + this.playerControl, true);
                            l2();
                            fo.a aVar2 = this.playerControl;
                            if (aVar2 != null) {
                                aVar2.setDataSource(aVar);
                                return;
                            }
                            return;
                        }
                    }
                    j11 = 0;
                    PlayMimeType playMimeTypeK3 = k1((VideoDetailStream) CollectionsKt.k0(streams));
                    videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
                    if (videoDetailMediaSource != null) {
                        ep2 = videoDetailMediaSource.getEp();
                    } else {
                        ep2 = 0;
                    }
                    if (videoDetailMediaSource != null) {
                        se2 = videoDetailMediaSource.getSe();
                    } else {
                        se2 = 0;
                    }
                    str = this.mSubjectId;
                    if (str != null) {
                    }
                }
                this.curAudioTrackPlayProgress = 0L;
                lg.a.C0828a.v(c0828a, "videoDetail", "playStream， AudioTrack，seekTo:" + progress + " ", false, 4, null);
                j11 = progress;
                PlayMimeType playMimeTypeK4 = k1((VideoDetailStream) CollectionsKt.k0(streams));
                videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
                if (videoDetailMediaSource != null) {
                    ep2 = videoDetailMediaSource.getEp();
                } else {
                    ep2 = 0;
                }
                if (videoDetailMediaSource != null) {
                    se2 = videoDetailMediaSource.getSe();
                } else {
                    se2 = 0;
                }
                str = this.mSubjectId;
                if (str != null) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPublishApi X1() {
        return (IPublishApi) TheRouter.d(IPublishApi.class, new Object[0]);
    }

    private final boolean Y0() {
        IFissionProvider iFissionProvider;
        if (this.hasClickedActivityTip || (iFissionProvider = this.palmPayApi) == null) {
            return false;
        }
        return iFissionProvider.g();
    }

    private final void Z0() {
        BubbleTextView bubbleTextView;
        ViewTreeObserver viewTreeObserver;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f66423b) == null || (viewTreeObserver = bubbleTextView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z1(long tsLayoutDone) {
        if (this.tsEnter == 0) {
            return;
        }
        HashMap map = new HashMap();
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        map.put("t_view_created_start", String.valueOf(this.tsViewCreatedStart - this.tsEnter));
        map.put("t_view_created_end", String.valueOf(this.tsViewCreatedEnd - this.tsEnter));
        map.put("t_request", String.valueOf(this.tsRequestStart - this.tsEnter));
        map.put("t_callback", String.valueOf(this.tsCallback - this.tsEnter));
        map.put("t_init_start", String.valueOf(this.tsInitStart - this.tsEnter));
        map.put("t_init_done", String.valueOf(this.tsInitDone - this.tsEnter));
        map.put("t_add_view", String.valueOf(this.tsAddView - this.tsEnter));
        map.put("t_layout_done", String.valueOf(tsLayoutDone - this.tsEnter));
        hj.i.f64505a.s("stream_detail", "app_perf", map);
    }

    private final void a1() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) o1().z().f();
        if (resourcesSeasonList == null) {
            return;
        }
        boolean z10 = false;
        if (resourcesSeasonList.isSeries()) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
            List listL = (List) o1().s().f();
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
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

    private final void a2() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        final Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            jx.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView = mViewBinding.f66434m) != null) {
                appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        StreamDetailFragment.b2(this.f57714a, subject, view);
                    }
                });
            }
            jx.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (gradientTextView = mViewBinding2.f66442u) == null) {
                return;
            }
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StreamDetailFragment.c2(this.f57718a, subject, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b1() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) o1().z().f();
        if (resourcesSeasonList == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "checkPlayNextOrReplay 没有资源", false, 4, null);
            return;
        }
        if (!resourcesSeasonList.isSeries()) {
            if (resourcesSeasonList.isMovie()) {
                lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "checkPlayInfo 是电影", false, 4, null);
                fo.a aVar = this.playerControl;
                if (aVar != null) {
                    aVar.showReplay();
                    return;
                }
                return;
            }
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "videoDetail", "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
        List list = (List) o1().s().f();
        if (list == null) {
            return;
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
        if (videoDetailMediaSource == null) {
            o1().C((VideoDetailMediaSource) CollectionsKt.k0(list));
            return;
        }
        int iIndexOf = list.indexOf(videoDetailMediaSource);
        if (iIndexOf >= list.size() - 1) {
            lg.a.C0828a.f(c0828a, "videoDetail", "checkPlayInfo 是剧集完成播放", false, 4, null);
            fo.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.showReplay();
                return;
            }
            return;
        }
        lg.a.C0828a.f(c0828a, "videoDetail", "checkPlayInfo 自动播放下一集，currentIndex：" + iIndexOf, false, 4, null);
        o1().C((VideoDetailMediaSource) CollectionsKt.l0(list, iIndexOf + 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b2(StreamDetailFragment streamDetailFragment, Subject subject, View view) {
        String url;
        IPublishApi iPublishApiN1 = streamDetailFragment.n1();
        if (iPublishApiN1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = streamDetailFragment.mSubjectId;
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
            iPublishApiN1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void c1() {
        ResourceDetectors resourceDetector;
        if (getContext() == null) {
            return;
        }
        Subject subject = this.mMovieDetailBean;
        String str = "";
        if (subject != null && (resourceDetector = subject.getResourceDetector()) != null) {
            String resourceLink = resourceDetector.getResourceLink();
            str = resourceLink != null ? resourceLink : "";
            resourceDetector.getResourceId();
            resourceDetector.isMultiResolution();
        }
        String str2 = str;
        Subject subject2 = this.mMovieDetailBean;
        String ops = null;
        if (subject2 != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                String str3 = this.ops;
                if (str3 == null || str3.length() == 0) {
                    Subject subject3 = this.mMovieDetailBean;
                    if (subject3 != null) {
                        ops = subject3.getOps();
                    }
                } else {
                    ops = this.ops;
                }
                downloadManagerApiA.d0(fragmentActivity, "subjectdetail", (384 & 4) != 0 ? "" : "", ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : this.mMovieDetailBean, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
        int ep2 = (videoDetailMediaSource == null || videoDetailMediaSource.getSe() != this.curSeason) ? 0 : videoDetailMediaSource.getEp();
        DownloadManagerApi downloadManagerApiA2 = DownloadManagerApi.f58398j.a();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity2 = (FragmentActivity) context2;
        Subject subject4 = this.mMovieDetailBean;
        String str4 = this.ops;
        if (str4 == null || str4.length() == 0) {
            Subject subject5 = this.mMovieDetailBean;
            if (subject5 != null) {
                ops = subject5.getOps();
            }
        } else {
            ops = this.ops;
        }
        DownloadManagerApi.N(downloadManagerApiA2, fragmentActivity2, subject4, "subjectdetail", "", ops, str2, String.valueOf(ep2), this.moduleName, null, true, this.curSeason, false, 256, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c2(StreamDetailFragment streamDetailFragment, Subject subject, View view) {
        String url;
        IPublishApi iPublishApiN1 = streamDetailFragment.n1();
        if (iPublishApiN1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = streamDetailFragment.mSubjectId;
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
            iPublishApiN1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void d1() {
        BubbleTextView bubbleTextView;
        this.hasClickedActivityTip = true;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f66423b) == null) {
            return;
        }
        jg.c.g(bubbleTextView);
    }

    private final void d2(Subject subject) {
        Cover stills;
        FrameLayout frameLayout;
        lg.a.C0828a.l(lg.a.f68839a, "videoDetail", "展示作品大图或者预告片", false, 4, null);
        if (subject != null) {
            Trailer trailer = subject.getTrailer();
            if ((trailer == null || (stills = trailer.getCover()) == null) && (stills = subject.getStills()) == null) {
                stills = subject.getCover();
            }
            if (stills != null) {
                int iF = com.transsion.core.utils.e.f();
                jx.i mViewBinding = getMViewBinding();
                if (mViewBinding == null || (frameLayout = mViewBinding.f66429h) == null) {
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
                    com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f42991a, thumbnail == null ? "" : thumbnail, 0, 0, new Function1() { // from class: com.transsion.videodetail.o
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return StreamDetailFragment.e2(this.f57851a, (BitmapDrawable) obj);
                        }
                    }, 6, null);
                    Context context = imageView.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar.m(context).g(strE).i(com.tn.lib.widget.R$color.transparent).d(imageView);
                }
            }
        }
    }

    private final void e1() {
        LinearLayout root;
        ViewParent parent;
        jx.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null || (parent = root.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(root);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e2(StreamDetailFragment streamDetailFragment, BitmapDrawable drawable) {
        FrameLayout frameLayout;
        Intrinsics.h(drawable, "drawable");
        jx.i mViewBinding = streamDetailFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f66429h) != null) {
            frameLayout.setBackground(drawable);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f1() {
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.removeNoNetError();
        }
        this.showNetErr = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g1(VideoDetailMediaSource episodeMedia) {
        if (episodeMedia == null) {
            return;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) o1().w().f();
        if (videoDetailStreamList != null && videoDetailStreamList.getSe() == episodeMedia.getSe() && videoDetailStreamList.getEp() == episodeMedia.getEp()) {
            return;
        }
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.reset();
        }
        showLoading();
        o1().v(episodeMedia);
        a1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean g2(final FloatActionType actionType) {
        final FragmentActivity activity;
        ConstraintLayout constraintLayoutB;
        Integer subjectType;
        Subject subject = this.mMovieDetailBean;
        if (((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) != SubjectType.MUSIC.getValue() && (activity = getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
                lg.a.f68839a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final px.a aVarH1 = h1();
            if (aVarH1 != null) {
                if (actionType != floatActionType && !aVarH1.f().isPlaying()) {
                    lg.a.f68839a.c("VideoFloat-pip", "stream 视频暂停，无需触发画中画", true);
                    return false;
                }
                ox.e.a aVar = ox.e.f72197a;
                if (aVar.b().c()) {
                    fo.a aVar2 = this.playerControl;
                    if (aVar2 != null) {
                        aVar2.hideBottomController(true);
                    }
                    lg.a.f68839a.c("VideoFloat-pip", "stream 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().k(activity, aVarH1, actionType, this.curPlayerUiType == LongVodUiType.LAND);
                    } else {
                        jx.i mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() { // from class: com.transsion.videodetail.d
                                @Override // java.lang.Runnable
                                public final void run() {
                                    StreamDetailFragment.h2(activity, aVarH1, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                ox.b.f72191a.c().g(activity, aVarH1, actionType == floatActionType, this.curPlayerUiType == LongVodUiType.LAND, new Function1() { // from class: com.transsion.videodetail.e
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return StreamDetailFragment.i2(this.f57692a, activity, ((Boolean) obj).booleanValue());
                    }
                }, new f());
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x01f3  */
    private final px.a h1() {
        List list;
        String str;
        String ops;
        String subjectId;
        String averageHueLight;
        String thumbnail;
        String url;
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) o1().w().f();
        if (videoDetailStreamList == null || (list = (List) o1().s().f()) == null) {
            return null;
        }
        fo.a aVar = this.playerControl;
        com.transsion.player.orplayer.g player = aVar != null ? aVar.getPlayer() : null;
        fo.a aVar2 = this.playerControl;
        ORPlayerView playerView = aVar2 != null ? aVar2.getOrPlayerView() : null;
        fo.a aVar3 = this.playerControl;
        SimpleSubtitleView subtitleView = aVar3 != null ? aVar3.getSubtitleView() : null;
        fo.a aVar4 = this.playerControl;
        ViewGroup subtitleViewGroup = aVar4 != null ? aVar4.getSubtitleViewGroup() : null;
        if (playerView == null || player == null || this.mMovieDetailBean == null || subtitleView == null) {
            return null;
        }
        PlayMimeType playMimeTypeK1 = k1((VideoDetailStream) CollectionsKt.k0(videoDetailStreamList.getStreams()));
        Subject subject = this.mMovieDetailBean;
        Intrinsics.e(subject);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        String strA = "";
        while (true) {
            int iIntValue = 1;
            if (!it.hasNext()) {
                break;
            }
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) it.next();
            String subjectId2 = subject.getSubjectId();
            if (subjectId2 == null) {
                subjectId2 = "";
            }
            int ep2 = videoDetailMediaSource.getEp();
            int se2 = videoDetailMediaSource.getSe();
            String title = subject.getTitle();
            String str2 = title == null ? "" : title;
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listQ1 = q1(videoDetailMediaSource.getStreams());
            Cover cover = subject.getCover();
            String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            Cover cover2 = subject.getCover();
            String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
            Cover cover3 = subject.getCover();
            String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
            Integer durationSeconds = subject.getDurationSeconds();
            int iIntValue2 = durationSeconds != null ? durationSeconds.intValue() : 0;
            Integer subjectType = subject.getSubjectType();
            if (subjectType != null) {
                iIntValue = subjectType.intValue();
            }
            ArrayList arrayList2 = arrayList;
            go.a aVar5 = new go.a(subjectId2, playMimeTypeK1, 0L, ep2, se2, str2, null, str4, "stream_detail", listQ1, str5, str6, str7, iIntValue2, Integer.valueOf(iIntValue), false, subject.getTitle(), subject.getOps(), 32832, null);
            strA = io.a.f65273a.a(aVar5);
            aVar5.A(this.mMovieDetailBean);
            arrayList2.add(aVar5);
            arrayList = arrayList2;
        }
        ArrayList arrayList3 = arrayList;
        lg.a.C0828a c0828a = lg.a.f68839a;
        Subject subject2 = this.mMovieDetailBean;
        String title2 = subject2 != null ? subject2.getTitle() : null;
        c0828a.c("VideoFloat", "stream-----showFloat, title:" + title2 + ",se:" + videoDetailStreamList.getSe() + ",ep:" + videoDetailStreamList.getEp(), true);
        StreamFloatManager.f57873b.v(arrayList3);
        fo.a aVar6 = this.playerControl;
        go.c playingStream = aVar6 != null ? aVar6.getPlayingStream() : null;
        FloatPlayType floatPlayType = FloatPlayType.STREAM;
        Subject subject3 = this.mMovieDetailBean;
        String str8 = (subject3 == null || (subjectId = subject3.getSubjectId()) == null) ? "" : subjectId;
        int se3 = videoDetailStreamList.getSe();
        int ep3 = videoDetailStreamList.getEp();
        String str9 = strA;
        px.a aVar7 = new px.a(playerView, player, subtitleViewGroup, floatPlayType, str8, se3, ep3, playingStream != null ? playingStream.e() : null, "stream_detail");
        aVar7.I(playMimeTypeK1);
        Subject subject4 = this.mMovieDetailBean;
        aVar7.J(subject4 != null ? subject4.getSubjectType() : null);
        aVar7.C(str9);
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 == null || (ops = subject5.getOps()) == null) {
            str = this.ops;
        } else {
            str = ops.length() > 0 ? ops : null;
            if (str == null) {
                str = this.ops;
            }
        }
        aVar7.A(str);
        aVar7.B(this.lastPageFrom);
        return aVar7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h2(FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType, StreamDetailFragment streamDetailFragment) {
        ox.e.f72197a.b().k(fragmentActivity, aVar, floatActionType, streamDetailFragment.curPlayerUiType == LongVodUiType.LAND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i1(StreamDetailFragment streamDetailFragment, View view) {
        streamDetailFragment.requireActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i2(StreamDetailFragment streamDetailFragment, FragmentActivity fragmentActivity, boolean z10) {
        fo.a aVar;
        if (z10 && (aVar = streamDetailFragment.playerControl) != null) {
            aVar.exitFullScreen();
        }
        fo.a aVar2 = streamDetailFragment.playerControl;
        if (aVar2 != null) {
            aVar2.setFloatIsShow(z10);
        }
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f67061a;
    }

    private final IMemberApi j1() {
        return (IMemberApi) this.memberProvider.getValue();
    }

    private final void j2() {
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
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout3 = mViewBinding.f66432k) != null) {
            jg.c.k(frameLayout3);
        }
        jx.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout2 = mViewBinding2.f66432k) != null) {
            frameLayout2.removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        jx.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (frameLayout = mViewBinding3.f66432k) == null) {
            return;
        }
        frameLayout.addView(this.gameResView, layoutParams);
    }

    private final PlayMimeType k1(VideoDetailStream stream) {
        String upperCase;
        String format;
        if (stream == null || (format = stream.getFormat()) == null) {
            upperCase = null;
        } else {
            upperCase = format.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
        }
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    private final void k2() {
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.showNoNetError();
        }
        this.showNetErr = true;
    }

    private final MovieDetailViewModel l1() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final void l2() {
        Context context;
        List<DubsInfo> listL;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            Subject subject = this.mMovieDetailBean;
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            jx.i mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                this.tsInitStart = SystemClock.elapsedRealtime();
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String strName = longVodPageType.name();
                Subject subject2 = this.mMovieDetailBean;
                String str = strName + (subject2 != null ? subject2.getSubjectId() : null);
                FrameLayout frameLayout = mViewBinding.f66428g;
                LinearLayoutCompat linearLayoutCompat = mViewBinding.f66435n.f64599f;
                Subject subject3 = this.mMovieDetailBean;
                if (subject3 == null || (listL = subject3.getDubs()) == null) {
                    listL = CollectionsKt.l();
                }
                fo.a.C0760a.a(longVodPlayerView, "stream_detail", longVodPageType, str, frameLayout, linearLayoutCompat, listL, null, 64, null);
                Subject subject4 = this.mMovieDetailBean;
                longVodPlayerView.initAdHelper(subject4 != null ? subject4.getGenre() : null);
                jx.i mViewBinding2 = getMViewBinding();
                longVodPlayerView.setPortraitPremiumView(mViewBinding2 != null ? mViewBinding2.f66430i : null);
                longVodPlayerView.setFeedBackVisible(true);
                longVodPlayerView.setAudioSelectCallback(new Function1() { // from class: com.transsion.videodetail.p
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return StreamDetailFragment.m2(this.f57854a, (DubsInfo) obj);
                    }
                });
                this.tsInitDone = SystemClock.elapsedRealtime();
                this.tsAddView = SystemClock.elapsedRealtime();
                mViewBinding.f66429h.addView(longVodPlayerView);
                this.playerControl = longVodPlayerView;
                longVodPlayerView.getViewTreeObserver().addOnGlobalLayoutListener(new g(longVodPlayerView, this));
            }
            Subject subject5 = this.mMovieDetailBean;
            if (subject5 != null) {
                C1(subject5);
            }
            fo.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.setCallback(new h());
            }
        }
    }

    private final VideoDetailMediaSource m1(VideoDetailPlayBean history, List episodeMediaList) {
        Object obj = null;
        if (history == null) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "getPlayingItem 无历史记录，se:" + this.targetSeason, false, 4, null);
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
        if (se2 == i11 || i11 <= 0 || history.getSe() <= 0) {
            this.curSeason = history.getSe();
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "getPlayingItem 有历史记录，不指定季使用历史记录，se:" + history.getSe() + ", ep:" + history.getEp(), false, 4, null);
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
        lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "getPlayingItem 有历史记录，指定季，history se:" + history.getSe() + ", ep:" + history.getEp() + "， target se:" + this.targetSeason + ", targetEp:" + this.targetEp, false, 4, null);
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
    public static final Unit m2(StreamDetailFragment streamDetailFragment, DubsInfo info) {
        Integer numValueOf;
        List<DubsInfo> dubs;
        Intrinsics.h(info, "info");
        lg.a.C0828a.g(lg.a.f68839a, "AudioSelectCallback " + info, false, 2, null);
        Subject subject = streamDetailFragment.mMovieDetailBean;
        if (subject == null || (dubs = subject.getDubs()) == null) {
            numValueOf = null;
        } else {
            Iterator<DubsInfo> it = dubs.iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                if (Intrinsics.c(it.next().getLanCode(), info.getLanCode())) {
                    break;
                }
                i11++;
            }
            numValueOf = Integer.valueOf(i11);
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || info.getSubjectId() == null) {
            lg.a.C0828a.g(lg.a.f68839a, "AudioSelectCallback info can't find in dubs", false, 2, null);
        } else {
            streamDetailFragment.l1().P().q(info);
        }
        return Unit.f67061a;
    }

    private final IPublishApi n1() {
        return (IPublishApi) this.publishedApi.getValue();
    }

    private final void n2() {
        new tn.g(this, R$id.subjectDetailLayout, this.mMovieDetailBean, "stream_detail", this.moduleName, false, false, 96, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailViewModel o1() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    private final void o2(Subject data) {
        MemberGuideBannerView memberGuideBannerView;
        final MemberGuideBannerView memberGuideBannerView2;
        String activityId;
        Lottery lottery;
        Lottery lottery2;
        MemberGuideBannerView memberGuideBannerView3;
        if (TextUtils.equals(this.curSubjectId, data.getSubjectId())) {
            return;
        }
        String subjectId = data.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        this.curSubjectId = subjectId;
        this.traceId = ti.n.f76264a.b();
        if (!com.transsion.player.longvideo.intercept.h0.f48139a.d(data)) {
            jx.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (memberGuideBannerView = mViewBinding.f66431j) == null) {
                return;
            }
            memberGuideBannerView.setVisibility(8);
            return;
        }
        jx.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (memberGuideBannerView3 = mViewBinding2.f66431j) != null) {
            memberGuideBannerView3.setVisibility(0);
        }
        jx.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (memberGuideBannerView2 = mViewBinding3.f66431j) == null) {
            return;
        }
        memberGuideBannerView2.setRefreshMemberInfo(new Function0() { // from class: com.transsion.videodetail.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StreamDetailFragment.p2(this.f57860a, memberGuideBannerView2);
            }
        });
        Subject subject = this.mMovieDetailBean;
        String subjectId2 = subject != null ? subject.getSubjectId() : null;
        String str = this.traceId;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Boolean boolValueOf = iPremiumApi != null ? Boolean.valueOf(iPremiumApi.c()) : null;
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Integer numO = iPremiumApi2 != null ? iPremiumApi2.o() : null;
        IPremiumApi iPremiumApi3 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        memberGuideBannerView2.setMemberInfo("stream_detail", "video_detail/vip_banner", str, subjectId2, (16 & 16) != 0 ? false : false, boolValueOf, numO, iPremiumApi3 != null ? Boolean.valueOf(iPremiumApi3.u()) : null);
        memberGuideBannerView2.setRadius(0.0f);
        IRewardsCenterApi iRewardsCenterApi = (IRewardsCenterApi) TheRouter.d(IRewardsCenterApi.class, new Object[0]);
        RewardsCenterData rewardsCenterDataA = iRewardsCenterApi != null ? iRewardsCenterApi.a() : null;
        if (rewardsCenterDataA == null || (lottery2 = rewardsCenterDataA.getLottery()) == null || (activityId = lottery2.getActivityId()) == null) {
            activityId = "0";
        }
        boolean z10 = Integer.parseInt(activityId) > 0;
        String bgImage = (rewardsCenterDataA == null || (lottery = rewardsCenterDataA.getLottery()) == null) ? null : lottery.getBgImage();
        MemberGuideBannerView.setZeroTreasureVisible$default(memberGuideBannerView2, z10, false, 2, null);
        if (z10) {
            memberGuideBannerView2.setZeroTreasureIcon(bgImage != null ? bgImage : "");
        }
        memberGuideBannerView2.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StreamDetailFragment.q2(this.f57864a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p2(StreamDetailFragment streamDetailFragment, MemberGuideBannerView memberGuideBannerView) {
        Subject subject = streamDetailFragment.mMovieDetailBean;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        String str = streamDetailFragment.traceId;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Boolean boolValueOf = iPremiumApi != null ? Boolean.valueOf(iPremiumApi.c()) : null;
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Integer numO = iPremiumApi2 != null ? iPremiumApi2.o() : null;
        IPremiumApi iPremiumApi3 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        memberGuideBannerView.setMemberInfo("stream_detail", "video_detail/vip_banner", str, subjectId, true, boolValueOf, numO, iPremiumApi3 != null ? Boolean.valueOf(iPremiumApi3.u()) : null);
        return Unit.f67061a;
    }

    private final List q1(List videoDetailStream) {
        ArrayList arrayList = new ArrayList();
        if (videoDetailStream != null) {
            Iterator it = videoDetailStream.iterator();
            while (it.hasNext()) {
                VideoDetailStream videoDetailStream2 = (VideoDetailStream) it.next();
                arrayList.add(new go.c(k1(videoDetailStream2), videoDetailStream2.getId(), videoDetailStream2.getUrl(), videoDetailStream2.getResolutions(), videoDetailStream2.getSize(), videoDetailStream2.getDuration(), videoDetailStream2.getSignCookie(), null, 128, null));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q2(StreamDetailFragment streamDetailFragment, View view) {
        PlaybackInterceptionManager playbackInterceptionManager;
        fo.a aVar = streamDetailFragment.playerControl;
        if (aVar == null || (playbackInterceptionManager = aVar.getPlaybackInterceptionManager()) == null) {
            return;
        }
        PlaybackInterceptionManager.X(playbackInterceptionManager, true, "video_detail/vip_banner", streamDetailFragment.traceId, false, 8, null);
    }

    private final void r1() {
        if (this.mMovieDetailBean == null) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "PlayInfoLive  mMovieDetailBean==null", false, 4, null);
            return;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) o1().w().f();
        if (videoDetailStreamList == null) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "PlayInfoLive playInfo==null", false, 4, null);
            return;
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) o1().x().f();
        if (videoDetailMediaSource == null) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "PlayInfoLive media==null", false, 4, null);
            return;
        }
        if (Intrinsics.c(videoDetailStreamList, this.videoDetailStreamList)) {
            lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "PlayInfoLive data:" + videoDetailStreamList + "  media:" + videoDetailMediaSource + "  重复播放数据，不处理", false, 4, null);
            return;
        }
        if (videoDetailMediaSource.getEp() == videoDetailStreamList.getEp() && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe()) {
            this.videoDetailStreamList = videoDetailStreamList;
            e1();
            W1(videoDetailStreamList);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "PlayInfoLive data:" + videoDetailStreamList + "  media:" + videoDetailMediaSource + "  不相同，不播放", false, 4, null);
    }

    private final void r2() {
        BubbleTextView bubbleTextView;
        jx.i mViewBinding;
        DownloadView downloadView;
        jx.i mViewBinding2;
        DownloadView downloadView2;
        BubbleTextView bubbleTextView2;
        if (!Y0() || (mViewBinding = getMViewBinding()) == null || (downloadView = mViewBinding.f66425d) == null || downloadView.getVisibility() != 0 || (mViewBinding2 = getMViewBinding()) == null || (downloadView2 = mViewBinding2.f66425d) == null || downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 0) {
            jx.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f66423b) == null) {
                return;
            }
            jg.c.g(bubbleTextView);
            return;
        }
        jx.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (bubbleTextView2 = mViewBinding4.f66423b) != null) {
            jg.c.k(bubbleTextView2);
        }
        Z0();
    }

    private final void s1() {
        BubbleTextView bubbleTextView;
        BubbleTextView bubbleTextView2;
        BubbleTextView bubbleTextView3;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (bubbleTextView3 = mViewBinding.f66423b) != null) {
            bubbleTextView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StreamDetailFragment.t1(this.f57677a, view);
                }
            });
        }
        jx.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (bubbleTextView2 = mViewBinding2.f66423b) != null) {
            jg.c.k(bubbleTextView2);
        }
        Z0();
        jx.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f66423b) == null) {
            return;
        }
        jg.c.g(bubbleTextView);
    }

    private final void s2(int visible) {
        HashMap mapG;
        ResourceDetectors resourceDetector;
        DownloadView downloadView;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView = mViewBinding.f66425d) != null) {
            downloadView.setVisibility(visible);
        }
        Subject subject = this.mMovieDetailBean;
        if (subject != null && (resourceDetector = subject.getResourceDetector()) != null) {
            resourceDetector.getResourceId();
            resourceDetector.isMultiResolution();
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        r2();
    }

    private final void showLoading() {
        LinearLayout root;
        jx.i mViewBinding;
        FrameLayout frameLayout;
        Context context = getContext();
        if (context == null) {
            return;
        }
        if (this.loadingViewBinding == null) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
            jx.i mViewBinding2 = getMViewBinding();
            this.loadingViewBinding = jx.j.c(layoutInflaterFrom, mViewBinding2 != null ? mViewBinding2.f66429h : null, false);
        }
        jx.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null) {
            return;
        }
        if (root.getParent() == null && (mViewBinding = getMViewBinding()) != null && (frameLayout = mViewBinding.f66429h) != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            layoutParams.bottomMargin = com.blankj.utilcode.util.i.e(20.0f);
            Unit unit = Unit.f67061a;
            frameLayout.addView(root, layoutParams);
        }
        jg.c.k(root);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(StreamDetailFragment streamDetailFragment, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "videoDetail", "Click activity tip", false, 4, null);
        streamDetailFragment.hasClickedActivityTip = true;
        Intrinsics.e(view);
        jg.c.g(view);
    }

    static /* synthetic */ void t2(StreamDetailFragment streamDetailFragment, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        streamDetailFragment.s2(i11);
    }

    private final void u1() {
        Subject subject = this.mMovieDetailBean;
        jx.i mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f66436o : null;
        jx.i mViewBinding2 = getMViewBinding();
        this.bottomRecHelper = new tn.e(this, subject, magicIndicator, mViewBinding2 != null ? mViewBinding2.f66438q : null, "stream_detail", false, false, new Function1() { // from class: com.transsion.videodetail.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.v1(this.f57857a, ((Integer) obj).intValue());
            }
        }, 96, null);
    }

    private final void u2() {
        Subject subject;
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) o1().z().f();
        if (resourcesSeasonList == null || (subject = this.mMovieDetailBean) == null) {
            return;
        }
        if (subject != null && subject.isFamilyModeIntercept()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            ResourceDetectorFamilyModeFragment resourceDetectorFamilyModeFragment = new ResourceDetectorFamilyModeFragment();
            resourceDetectorFamilyModeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean)));
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorFamilyModeFragment);
            wVarP.j();
            s2(8);
            return;
        }
        this.hasResource = !resourcesSeasonList.isNoSource();
        if (resourcesSeasonList.isNoSource()) {
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP2 = childFragmentManager2.p();
            Intrinsics.g(wVarP2, "beginTransaction()");
            ResourceDetectorEmptyFragment resourceDetectorEmptyFragment = new ResourceDetectorEmptyFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            resourceDetectorEmptyFragment.setArguments(bundle);
            wVarP2.s(R$id.resourceDetectorGroup, resourceDetectorEmptyFragment);
            wVarP2.j();
            s2(8);
        } else {
            FragmentManager childFragmentManager3 = getChildFragmentManager();
            Intrinsics.g(childFragmentManager3, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP3 = childFragmentManager3.p();
            Intrinsics.g(wVarP3, "beginTransaction()");
            VideoEpisodeFragment videoEpisodeFragment = new VideoEpisodeFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            bundle2.putString("ops", this.ops);
            bundle2.putBoolean("auto_play", this.autoPlay);
            bundle2.putString("auto_play_resource_id", this.autoPlayResourceId);
            bundle2.putString("module_name", this.moduleName);
            bundle2.putInt("season", this.curSeason);
            videoEpisodeFragment.setArguments(bundle2);
            wVarP3.s(R$id.resourceDetectorGroup, videoEpisodeFragment);
            videoEpisodeFragment.P0(new Function1() { // from class: com.transsion.videodetail.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return StreamDetailFragment.v2(this.f57711a, (DubsInfo) obj);
                }
            });
            wVarP3.j();
            t2(this, 0, 1, null);
        }
        if (!resourcesSeasonList.isNoSource()) {
            l2();
            return;
        }
        d2(this.mMovieDetailBean);
        FragmentActivity activity = getActivity();
        BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
        if (baseMusicFloatActivity != null) {
            baseMusicFloatActivity.showMusicFloating();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(StreamDetailFragment streamDetailFragment, int i11) {
        DownloadView downloadView;
        GradientTextView gradientTextView;
        Subject subject;
        DownloadView downloadView2;
        if (!streamDetailFragment.hasResource || ((subject = streamDetailFragment.mMovieDetailBean) != null && subject.isFamilyModeIntercept())) {
            jx.i mViewBinding = streamDetailFragment.getMViewBinding();
            if (mViewBinding != null && (downloadView = mViewBinding.f66425d) != null) {
                jg.c.g(downloadView);
            }
        } else {
            jx.i mViewBinding2 = streamDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (downloadView2 = mViewBinding2.f66425d) != null) {
                downloadView2.setVisibility(i11 != 1 ? 0 : 8);
            }
        }
        jx.i mViewBinding3 = streamDetailFragment.getMViewBinding();
        if (mViewBinding3 != null && (gradientTextView = mViewBinding3.f66442u) != null) {
            gradientTextView.setVisibility(i11 == 1 ? 0 : 8);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v2(StreamDetailFragment streamDetailFragment, DubsInfo info) {
        Integer numValueOf;
        List<DubsInfo> dubs;
        Intrinsics.h(info, "info");
        lg.a.C0828a.g(lg.a.f68839a, "AudioSelectCallback " + info, false, 2, null);
        Subject subject = streamDetailFragment.mMovieDetailBean;
        if (subject == null || (dubs = subject.getDubs()) == null) {
            numValueOf = null;
        } else {
            Iterator<DubsInfo> it = dubs.iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                if (Intrinsics.c(it.next().getLanCode(), info.getLanCode())) {
                    break;
                }
                i11++;
            }
            numValueOf = Integer.valueOf(i11);
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || info.getSubjectId() == null) {
            lg.a.C0828a.g(lg.a.f68839a, "AudioSelectCallback info can't find in dubs", false, 2, null);
        } else {
            streamDetailFragment.l1().P().q(info);
        }
        return Unit.f67061a;
    }

    private final void w1() {
        DownloadView downloadView;
        DownloadView downloadView2;
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView2 = mViewBinding.f66425d) != null) {
            DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.transsion.core.utils.e.g(16.0f)), null, 5, null);
        }
        jx.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (downloadView = mViewBinding2.f66425d) == null) {
            return;
        }
        downloadView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StreamDetailFragment.x1(this.f57696a, view);
            }
        });
    }

    private final void w2(Subject movieDetailBean) {
        Subject subject;
        View view;
        View view2;
        FrameLayout frameLayout;
        this.mMovieDetailBean = movieDetailBean;
        N1(movieDetailBean != null ? movieDetailBean.getGenre() : null);
        if (!this.isGameResInit) {
            y1();
            R1(true);
        }
        Subject subject2 = this.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) o1().z().f();
        Subject subject3 = this.mMovieDetailBean;
        if (subject3 != null && subject3.isFamilyModeIntercept()) {
            jx.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f66429h) != null) {
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = dk.a.b(48);
                frameLayout.setLayoutParams(bVar);
            }
            jx.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (view2 = mViewBinding2.f66443v) != null) {
                jg.c.g(view2);
            }
            jx.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view = mViewBinding3.f66444w) != null) {
                view.setBackgroundResource(com.tn.lib.widget.R$color.bg_01);
            }
        } else if (resourcesSeasonList != null && resourcesSeasonList.isNoSource()) {
            d2(this.mMovieDetailBean);
        }
        u1();
        a2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x1(StreamDetailFragment streamDetailFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = streamDetailFragment.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = streamDetailFragment.mMovieDetailBean;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = streamDetailFragment.mMovieDetailBean) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        streamDetailFragment.c1();
        streamDetailFragment.d1();
    }

    private final void y1() {
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
                iGameResApi.a(context, "stream_detail", gameInfoType, str, new Function1() { // from class: com.transsion.videodetail.t
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return StreamDetailFragment.z1(this.f57867a, (View) obj);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z1(StreamDetailFragment streamDetailFragment, View view) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        streamDetailFragment.gameResView = view;
        if (view == null) {
            jx.i mViewBinding = streamDetailFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout2 = mViewBinding.f66432k) != null) {
                jg.c.g(frameLayout2);
            }
            jx.i mViewBinding2 = streamDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (frameLayout = mViewBinding2.f66432k) != null) {
                frameLayout.removeAllViews();
            }
        } else {
            streamDetailFragment.j2();
        }
        return Unit.f67061a;
    }

    @Override // yn.a
    public void R(Function0 callback) {
        this.backPressedCallback = callback;
    }

    public final void Y1() {
        fo.a aVar;
        ox.c cVar = ox.c.f72196a;
        fo.a aVar2 = this.playerControl;
        if (cVar.c(aVar2 != null ? aVar2.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.release();
    }

    public final void f2(Subject data) {
        DownloadView downloadView;
        DownloadView downloadView2;
        DownloadView downloadView3;
        DownloadView downloadView4;
        DownloadView downloadView5;
        DownloadView downloadView6;
        Integer requireMemberType;
        DownloadView downloadView7;
        DownloadView downloadView8;
        DownloadView downloadView9;
        Intrinsics.h(data, "data");
        if (!com.transsion.player.longvideo.intercept.h0.f48139a.d(data)) {
            jx.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (downloadView3 = mViewBinding.f66425d) != null) {
                downloadView3.setBackgroundResource(com.transsion.baseui.R$drawable.bg_btn_radius_20);
            }
            jx.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (downloadView2 = mViewBinding2.f66425d) != null) {
                downloadView2.setDownloadIconSrc(com.transsion.baseui.R$drawable.ic_download_btn_left_dark);
            }
            jx.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (downloadView = mViewBinding3.f66425d) == null) {
                return;
            }
            downloadView.setIcTintColor(Integer.valueOf(com.tn.lib.widget.R$color.gray_dark_00));
            return;
        }
        VipInfo vipInfo = data.getVipInfo();
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            jx.i mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (downloadView6 = mViewBinding4.f66425d) != null) {
                downloadView6.setBackgroundResource(com.transsion.baseui.R$drawable.bg_btn_radius_20);
            }
            jx.i mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (downloadView5 = mViewBinding5.f66425d) != null) {
                downloadView5.setDownloadIconSrc(com.transsion.baseui.R$drawable.ic_download_btn_left_dark);
            }
            jx.i mViewBinding6 = getMViewBinding();
            if (mViewBinding6 == null || (downloadView4 = mViewBinding6.f66425d) == null) {
                return;
            }
            downloadView4.setIcTintColor(Integer.valueOf(com.tn.lib.widget.R$color.gray_dark_00));
            return;
        }
        jx.i mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (downloadView9 = mViewBinding7.f66425d) != null) {
            downloadView9.setBackgroundResource(com.transsion.baseui.R$drawable.bg_btn_radius_20_2);
        }
        jx.i mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (downloadView8 = mViewBinding8.f66425d) != null) {
            downloadView8.setDownloadIconSrc(com.transsion.baseui.R$mipmap.p_v2_premium);
        }
        jx.i mViewBinding9 = getMViewBinding();
        if (mViewBinding9 == null || (downloadView7 = mViewBinding9.f66425d) == null) {
            return;
        }
        downloadView7.setIcTintColor(null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_movie_detail_skeleton_drawing_layout, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StreamDetailFragment.i1(this.f57699a, view);
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
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f66433l.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    StreamDetailFragment.A1(this.f57674a, view);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        View view;
        this.tsViewCreatedStart = SystemClock.elapsedRealtime();
        jx.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f66444w) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.d.c();
            view.setLayoutParams(bVar);
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new c());
        s1();
        w1();
        E1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        MovieDetailViewModel movieDetailViewModelL1 = l1();
        movieDetailViewModelL1.F().j(this, new e(new Function1() { // from class: com.transsion.videodetail.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.J1(this.f57684a, (Pair) obj);
            }
        }));
        movieDetailViewModelL1.K().j(this, new e(new Function1() { // from class: com.transsion.videodetail.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.K1(this.f57847a, (Integer) obj);
            }
        }));
        o1().z().j(this, new e(new Function1() { // from class: com.transsion.videodetail.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.L1(this.f57881a, (ResourcesSeasonList) obj);
            }
        }));
        o1().s().j(this, new e(new Function1() { // from class: com.transsion.videodetail.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.M1(this.f57883a, (List) obj);
            }
        }));
        o1().x().j(this, new e(new Function1() { // from class: com.transsion.videodetail.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.G1(this.f57885a, (VideoDetailMediaSource) obj);
            }
        }));
        o1().u().j(this, new e(new Function1() { // from class: com.transsion.videodetail.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.H1(this.f57887a, (VideoDetailPlayBean) obj);
            }
        }));
        l1().P().j(this, new e(new Function1() { // from class: com.transsion.videodetail.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StreamDetailFragment.I1(this.f57890a, (DubsInfo) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        P1(this, false, 1, null);
        this.tsViewCreatedEnd = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("stream_detail", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MovieDetailActivity.INSTANCE.a("videoDetail------- onCreate ------");
        nh.m.f70474a.l(this.networkStatusChangedListener);
        this.adHelper = new NativeCardPageAdHelper(androidx.p009lifecycle.v.a(this));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        S1();
        setMViewBinding(null);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.x();
        }
        this.adHelper = null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onHomeClick() {
        super.onHomeClick();
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "StreamDetail onHomeClick", false, 4, null);
        g2(FloatActionType.HOME);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ox.c cVar = ox.c.f72196a;
        fo.a aVar = this.playerControl;
        if (!cVar.c(aVar != null ? aVar.getPlayer() : null)) {
            o1().w().o(this.playInfoObserver);
        }
        R1(false);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.C();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        fo.a aVar;
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        if (isInPictureInPictureMode) {
            FragmentActivity activity = getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            px.a aVarH1 = h1();
            if (aVarH1 != null && Build.VERSION.SDK_INT >= 31) {
                lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "onPictureInPictureModeChanged stream--- updateData==2", false, 4, null);
                ox.e.f72197a.b().h(activity, aVarH1);
            }
        }
        ox.e.f72197a.b().onPipModeChanged(isInPictureInPictureMode);
        fo.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.onPipModeChanged(isInPictureInPictureMode);
        }
        if (isInPictureInPictureMode || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.exitFullScreen();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onRecentClick() {
        super.onRecentClick();
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "StreamDetail onRecentClick", false, 4, null);
        g2(FloatActionType.HOME);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        MemberGuideBannerView memberGuideBannerView;
        MemberGuideBannerView memberGuideBannerView2;
        MemberGuideBannerView memberGuideBannerView3;
        super.onResume();
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
        o1().w().k(this.playInfoObserver);
        R1(true);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null ? iPremiumApi.c() : false) {
            jx.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (memberGuideBannerView3 = mViewBinding.f66431j) == null) {
                return;
            }
            memberGuideBannerView3.setVisibility(8);
            return;
        }
        if (com.transsion.player.longvideo.intercept.h0.f48139a.d(this.mMovieDetailBean)) {
            jx.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (memberGuideBannerView2 = mViewBinding2.f66431j) == null) {
                return;
            }
            memberGuideBannerView2.setVisibility(0);
            return;
        }
        jx.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (memberGuideBannerView = mViewBinding3.f66431j) == null) {
            return;
        }
        memberGuideBannerView.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        fo.a aVar;
        super.onStop();
        fo.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.onSaveHistory();
        }
        ox.c cVar = ox.c.f72196a;
        fo.a aVar3 = this.playerControl;
        if (cVar.c(aVar3 != null ? aVar3.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: p1, reason: merged with bridge method [inline-methods] */
    public jx.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        jx.i iVarC = jx.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        Bundle arguments = getArguments();
        Long lValueOf = arguments != null ? Long.valueOf(arguments.getLong("ts_enter", 0L)) : null;
        if (lValueOf != null && lValueOf.longValue() == 0) {
            lValueOf = null;
        }
        this.tsEnter = lValueOf != null ? lValueOf.longValue() : SystemClock.elapsedRealtime();
        this.lastPageFrom = hj.i.f64505a.i();
        Bundle arguments2 = getArguments();
        this.ops = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        this.mSubjectId = arguments3 != null ? arguments3.getString("id") : null;
        Bundle arguments4 = getArguments();
        this.autoDownload = arguments4 != null ? arguments4.getBoolean("auto_download") : false;
        Bundle arguments5 = getArguments();
        this.autoPlay = arguments5 != null ? arguments5.getBoolean("auto_play") : false;
        Bundle arguments6 = getArguments();
        this.autoPlayResourceId = arguments6 != null ? arguments6.getString("auto_play_resource_id") : null;
        Bundle arguments7 = getArguments();
        this.preloadId = arguments7 != null ? arguments7.getInt("yy_preload_id") : 0;
        Bundle arguments8 = getArguments();
        this.moduleName = arguments8 != null ? arguments8.getString("module_name") : null;
        Bundle arguments9 = getArguments();
        this.targetSeason = arguments9 != null ? arguments9.getInt("season") : 0;
        Bundle arguments10 = getArguments();
        this.targetEp = arguments10 != null ? arguments10.getInt("episode") : 0;
        int i11 = this.targetSeason;
        if (i11 <= 0) {
            i11 = 1;
        }
        this.curSeason = i11;
        MovieDetailViewModel movieDetailViewModelL1 = l1();
        int i12 = this.preloadId;
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelL1.S(i12, str, Integer.valueOf(this.curSeason));
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.j(this.lastPageFrom);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        if (this.mMovieDetailBean == null) {
            loadDefaultData();
        }
    }
}
