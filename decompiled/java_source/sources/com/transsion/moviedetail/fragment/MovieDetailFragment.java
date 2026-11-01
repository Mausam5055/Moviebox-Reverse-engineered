package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
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
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.MemberGuideBannerView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.bean.GameInfoType;
import com.transsion.commercializationapi.IGameResApi;
import com.transsion.fissionapi.IFissionProvider;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberSource;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectGameInfo;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.intercept.PlaybackInterceptionManager;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.publish.api.IPublishApi;
import com.transsion.push.PushConstants;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.RewardsCenterData;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.bean.DownloadListBean;
import com.transsnet.downloader.widget.DownloadView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 Ü\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001rB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u0019\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000e\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001f\u0010\u001bJ\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0005J\u0019\u0010'\u001a\u00020\u00062\b\b\u0002\u0010&\u001a\u00020%H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0019H\u0002¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0002¢\u0006\u0004\b0\u0010\u0005J\u0017\u00103\u001a\u00020\u00192\u0006\u00102\u001a\u000201H\u0002¢\u0006\u0004\b3\u00104J\u0011\u00106\u001a\u0004\u0018\u000105H\u0002¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0006H\u0002¢\u0006\u0004\b8\u0010\u0005J\u0017\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0006H\u0002¢\u0006\u0004\b=\u0010\u0005J\u0017\u0010>\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b>\u0010\u000bJ\u0019\u0010A\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010?H\u0002¢\u0006\u0004\bA\u0010BJ\u0017\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\bH\u0002¢\u0006\u0004\bD\u0010\u000bJ1\u0010J\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00192\u0006\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020F2\b\b\u0002\u0010I\u001a\u00020\u0019H\u0002¢\u0006\u0004\bJ\u0010KJ\u0019\u0010N\u001a\u00020\u00062\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0006H\u0016¢\u0006\u0004\bP\u0010\u0005J\u0017\u0010S\u001a\u00020\u00022\u0006\u0010R\u001a\u00020QH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020FH\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u0019H\u0016¢\u0006\u0004\bW\u0010\u001bJ\u000f\u0010X\u001a\u00020\u0006H\u0016¢\u0006\u0004\bX\u0010\u0005J\u000f\u0010Y\u001a\u00020\u0006H\u0016¢\u0006\u0004\bY\u0010\u0005J\u000f\u0010Z\u001a\u00020\u0006H\u0016¢\u0006\u0004\bZ\u0010\u0005J\u000f\u0010[\u001a\u00020\u0006H\u0016¢\u0006\u0004\b[\u0010\u0005J\u000f\u0010]\u001a\u00020\\H\u0016¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\u0006H\u0016¢\u0006\u0004\b_\u0010\u0005J\u0011\u0010a\u001a\u0004\u0018\u00010`H\u0016¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020\u0006H\u0016¢\u0006\u0004\bc\u0010\u0005J\u000f\u0010d\u001a\u00020\u0006H\u0016¢\u0006\u0004\bd\u0010\u0005J\u000f\u0010e\u001a\u00020\u0006H\u0016¢\u0006\u0004\be\u0010\u0005J\u000f\u0010f\u001a\u00020\u0006H\u0016¢\u0006\u0004\bf\u0010\u0005J\r\u0010g\u001a\u00020\u0006¢\u0006\u0004\bg\u0010\u0005J\u000f\u0010h\u001a\u00020\u0006H\u0016¢\u0006\u0004\bh\u0010\u0005J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010i\u001a\u00020\u0019H\u0016¢\u0006\u0004\bj\u0010/J\u000f\u0010k\u001a\u00020\u0006H\u0016¢\u0006\u0004\bk\u0010\u0005J\u000f\u0010l\u001a\u00020\u0006H\u0016¢\u0006\u0004\bl\u0010\u0005J\u001f\u0010o\u001a\u00020\u00062\u000e\u0010n\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010mH\u0016¢\u0006\u0004\bo\u0010pR\u0018\u0010t\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0018\u0010x\u001a\u0004\u0018\u00010u8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0018\u0010{\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u001d\u0010\u0081\u0001\u001a\u00020|8BX\u0082\u0084\u0002¢\u0006\r\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001R \u0010\u0086\u0001\u001a\u00030\u0082\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0083\u0001\u0010~\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\"\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0087\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0088\u0001\u0010~\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u0091\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u008d\u0001R\u0019\u0010\u0096\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u008d\u0001R\u0019\u0010\u009a\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u0095\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0095\u0001R\u001b\u0010\u009e\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u008d\u0001R(\u0010£\u0001\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u009f\u0001\u0010\u0090\u0001\u001a\u0006\b \u0001\u0010¡\u0001\"\u0005\b¢\u0001\u0010(R\u0019\u0010¥\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010\u0095\u0001R\u0019\u0010§\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010\u0090\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010\u008d\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010ª\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u0019\u0010¯\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u0095\u0001R\u001b\u0010²\u0001\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001R\u0019\u0010´\u0001\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010\u0095\u0001R\u001c\u0010¸\u0001\u001a\u0005\u0018\u00010µ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R\"\u0010½\u0001\u001a\u0005\u0018\u00010¹\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bº\u0001\u0010~\u001a\u0006\b»\u0001\u0010¼\u0001R\u0019\u0010À\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u0019\u0010Ã\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R!\u0010Æ\u0001\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010Å\u0001R\u0019\u0010È\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010¿\u0001R\u0019\u0010Ê\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010¿\u0001R\u0019\u0010Ì\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010¿\u0001R\u0019\u0010Î\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010¿\u0001R\u0019\u0010Ð\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010¿\u0001R\u0019\u0010Ò\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010¿\u0001R\u0019\u0010Ô\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010¿\u0001R\u0019\u0010Õ\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010¿\u0001R\u001c\u0010Ø\u0001\u001a\u0005\u0018\u00010Ö\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010×\u0001R\u0018\u0010H\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010\u008d\u0001R\u0019\u0010Û\u0001\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010\u008d\u0001¨\u0006Ý\u0001"}, d2 = {"Lcom/transsion/moviedetail/fragment/MovieDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/h;", "Lyn/a;", "<init>", "()V", "", "R1", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "Y1", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "I1", "subject", "L1", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "A1", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "", "Lgo/c;", "c1", "(Lcom/transsion/moviedetailapi/bean/Trailer;)Ljava/util/List;", "Q1", "f1", "", "t1", "()Z", "k1", "R0", "U0", "Q0", "d1", "T0", "V1", "V0", "v1", "", "visible", "W1", "(I)V", "", "tsLayoutDone", "D1", "(J)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "x1", "(Z)V", "n1", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "M1", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Lpx/a;", "W0", "()Lpx/a;", "h1", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "uiType", "y1", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "P1", "l1", "Lgo/a;", "bean", "z1", "(Lgo/a;)V", "data", "S1", "isShow", "", "sceneId", "traceId", "uiChange", "E1", "(ZLjava/lang/String;Ljava/lang/String;Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "b1", "(Landroid/view/LayoutInflater;)Lcn/h;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isRegisteDeviceKeyMonitor", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "loadDefaultData", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "onDestroyView", "onResume", "onPause", "onStop", "C1", "onDestroy", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "Lkotlin/Function0;", "callback", "R", "(Lkotlin/jvm/functions/Function0;)V", "Lcom/transsnet/downloader/widget/DownloadView;", "a", "Lcom/transsnet/downloader/widget/DownloadView;", "downloadViewFloat", "Ltn/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ltn/e;", "bottomRecHelper", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "Z0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsnet/downloader/viewmodel/k0;", "e", "getDownloadViewModel", "()Lcom/transsnet/downloader/viewmodel/k0;", "downloadViewModel", "Lcom/transsion/publish/api/IPublishApi;", "f", "a1", "()Lcom/transsion/publish/api/IPublishApi;", "publishedApi", "g", "Ljava/lang/String;", "mSubjectId", "h", "I", "mSubjectType", "i", "ops", "j", "Z", "netResultSuccess", CampaignEx.JSON_KEY_AD_K, "moduleName", "l", "autoDownload", "m", "autoPlay", "n", "autoPlayResourceId", "o", "getPreloadId", "()I", "setPreloadId", "preloadId", TtmlNode.TAG_P, "fetchDownloadFinish", CampaignEx.JSON_KEY_AD_Q, "curSeason", CampaignEx.JSON_KEY_AD_R, "lastPageFrom", "Lfo/a;", "s", "Lfo/a;", "playerControl", "t", "hasClickedActivityTip", TmcStartParams.KEY_URL_SHORT, "Landroid/view/View;", "gameResView", "v", "isGameResInit", "Lcom/transsion/fissionapi/IFissionProvider;", "w", "Lcom/transsion/fissionapi/IFissionProvider;", "palmPayApi", "Lcom/transsion/memberapi/IMemberApi;", "x", "Y0", "()Lcom/transsion/memberapi/IMemberApi;", "memberProvider", "y", "J", "curAudioTrackPlayProgress", "z", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "curPlayerUiType", "A", "Lkotlin/jvm/functions/Function0;", "backPressedCallback", "B", "tsEnter", "C", "tsRequestStart", "D", "tsCallback", "E", "tsInitStart", "F", "tsInitDone", "G", "tsAddView", "H", "tsViewCreatedStart", "tsViewCreatedEnd", "Landroidx/fragment/app/Fragment;", "Landroidx/fragment/app/Fragment;", "coverFragment", "K", "L", "curSubjectId", "M", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MovieDetailFragment extends PageStatusFragment<cn.h> implements yn.a {

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private Function0 backPressedCallback;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private long tsEnter;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private long tsRequestStart;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private long tsCallback;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private long tsInitStart;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private long tsInitDone;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private long tsAddView;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private long tsViewCreatedStart;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private long tsViewCreatedEnd;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private Fragment coverFragment;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private DownloadView downloadViewFloat;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private tn.e bottomRecHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
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

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean fetchDownloadFinish;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String lastPageFrom;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private fo.a playerControl;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean hasClickedActivityTip;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private View gameResView;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean isGameResInit;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private long curAudioTrackPlayProgress;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.moviedetail.fragment.MovieDetailFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.moviedetail.fragment.MovieDetailFragment$special$$inlined$activityViewModels$default$2
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
    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.viewmodel.k0.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.moviedetail.fragment.MovieDetailFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.moviedetail.fragment.MovieDetailFragment$special$$inlined$activityViewModels$default$4
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
    private final Lazy publishedApi = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.y
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MovieDetailFragment.B1();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int mSubjectType = SubjectType.MOVIE.getValue();

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int curSeason = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private IFissionProvider palmPayApi = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberProvider = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MovieDetailFragment.u1();
        }
    });

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private LongVodUiType curPlayerUiType = LongVodUiType.MIDDLE;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private String traceId = "";

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private String curSubjectId = "";

    /* JADX INFO: renamed from: com.transsion.moviedetail.fragment.MovieDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MovieDetailFragment a() {
            return new MovieDetailFragment();
        }
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            BubbleTextView bubbleTextView;
            ViewTreeObserver viewTreeObserver;
            cn.h mViewBinding = MovieDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (bubbleTextView = mViewBinding.f17355b) != null && (viewTreeObserver = bubbleTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            cn.h mViewBinding2 = MovieDetailFragment.this.getMViewBinding();
            BubbleTextView bubbleTextView2 = mViewBinding2 != null ? mViewBinding2.f17355b : null;
            if (bubbleTextView2 == null || bubbleTextView2.getMeasuredWidth() == 0) {
                return;
            }
            float measuredWidth = (bubbleTextView2.getMeasuredWidth() / 2) - (com.blankj.utilcode.util.a0.a(16.0f) / 2);
            bubbleTextView2.setArrowPosition(measuredWidth);
            lg.a.C0828a.f(lg.a.f68839a, "movie_detail", "activity tip width: " + bubbleTextView2.getMeasuredWidth() + ", arrowPosition: " + measuredWidth, false, 4, null);
        }
    }

    public static final class c extends androidx.activity.u {
        c() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            Function0 function0 = MovieDetailFragment.this.backPressedCallback;
            if (function0 == null || !((Boolean) function0.invoke()).booleanValue()) {
                if (MovieDetailFragment.this.playerControl != null) {
                    fo.a aVar = MovieDetailFragment.this.playerControl;
                    if (aVar != null) {
                        aVar.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = MovieDetailFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f47029a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47029a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f47029a;
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
            this.f47029a.invoke(obj);
        }
    }

    public static final class e implements sx.a {
        e() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return false;
        }

        @Override // sx.a
        public void b(px.a aVar) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("oneroom://com.community.oneroom?type=/movie/detail&id=" + (aVar != null ? aVar.r() : null)));
            intent.setFlags(ASTNode.DEOP);
            Utils.a().startActivity(intent);
        }

        @Override // sx.a
        public void c(px.a aVar) {
        }
    }

    public static final class f implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LongVodPlayerView f47030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MovieDetailFragment f47031b;

        f(LongVodPlayerView longVodPlayerView, MovieDetailFragment movieDetailFragment) {
            this.f47030a = longVodPlayerView;
            this.f47031b = movieDetailFragment;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f47030a.getWidth() == 0 || this.f47030a.getHeight() == 0) {
                return;
            }
            this.f47030a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f47031b.D1(SystemClock.elapsedRealtime());
        }
    }

    public static final class g implements fo.a.b {
        g() {
        }

        @Override // fo.a.b
        public void a() {
        }

        @Override // fo.a.b
        public boolean b() {
            return false;
        }

        @Override // fo.a.b
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return MovieDetailFragment.this.M1(actionType);
        }

        @Override // fo.a.b
        public void d(LongVodUiType uiType) {
            Intrinsics.h(uiType, "uiType");
            MovieDetailFragment.this.curPlayerUiType = uiType;
            MovieDetailFragment.this.y1(uiType);
            tn.e eVar = MovieDetailFragment.this.bottomRecHelper;
            if (eVar != null) {
                eVar.x(uiType != LongVodUiType.MIDDLE);
            }
        }

        @Override // fo.a.b
        public View e() {
            return MovieDetailFragment.this.gameResView;
        }

        @Override // fo.a.b
        public void f(go.a aVar) {
            MovieDetailFragment.this.z1(aVar);
        }

        @Override // fo.a.b
        public void g(boolean z10) {
            AppCompatImageView appCompatImageView;
            cn.h mViewBinding = MovieDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f17365l) == null) {
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
        }
    }

    private final void A1(Trailer trailer) {
        Subject subject;
        String averageHueLight;
        String thumbnail;
        String url;
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || !subject2.isFamilyModeIntercept()) {
            Q1();
            String str = this.mSubjectId;
            if (str == null || (subject = this.mMovieDetailBean) == null) {
                return;
            }
            PlayMimeType playMimeType = PlayMimeType.DEFAULT;
            long j11 = this.curAudioTrackPlayProgress;
            String title = subject.getTitle();
            String str2 = title == null ? "" : title;
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listC1 = c1(trailer);
            Cover cover = trailer.getCover();
            String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            Cover cover2 = trailer.getCover();
            String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
            Cover cover3 = subject.getCover();
            String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
            Integer durationSeconds = subject.getDurationSeconds();
            int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
            Integer subjectType = subject.getSubjectType();
            go.a aVar = new go.a(str, playMimeType, j11, 0, 0, str2, null, str4, "subjectdetail", listC1, str5, str6, str7, iIntValue, Integer.valueOf(subjectType != null ? subjectType.intValue() : 1), false, subject.getTitle(), subject.getOps(), 32832, null);
            aVar.A(this.mMovieDetailBean);
            lg.a.f68839a.c("movie_detail", "playTrailer  addDataSource:" + aVar + "  playerControl:" + this.playerControl, true);
            fo.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.setDataSource(aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IPublishApi B1() {
        return (IPublishApi) TheRouter.d(IPublishApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D1(long tsLayoutDone) {
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
        hj.i.f64505a.s("subjectdetail", "app_perf", map);
    }

    private final void E1(boolean isShow, String sceneId, String traceId, boolean uiChange) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        Context context;
        cn.h mViewBinding;
        FrameLayout frameLayout4;
        FrameLayout frameLayout5;
        if (!isShow) {
            cn.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (frameLayout = mViewBinding2.f17362i) == null) {
                return;
            }
            frameLayout.setVisibility(8);
            return;
        }
        cn.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (frameLayout3 = mViewBinding3.f17362i) != null && (context = frameLayout3.getContext()) != null) {
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            View viewA = iPremiumApi != null ? IPremiumApi.a.a(iPremiumApi, context, 0, new Function0() { // from class: com.transsion.moviedetail.fragment.w
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MovieDetailFragment.G1(this.f47244a);
                }
            }, new Function0() { // from class: com.transsion.moviedetail.fragment.x
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MovieDetailFragment.H1();
                }
            }, MemberSource.SOURCE_LANDSCAPE_PLAY, null, "subjectdetail", traceId, sceneId, this.mSubjectId, 32, null) : null;
            if (viewA != null && (mViewBinding = getMViewBinding()) != null && (frameLayout4 = mViewBinding.f17362i) != null && frameLayout4.indexOfChild(viewA) == -1) {
                ViewParent parent = viewA.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(viewA);
                }
                cn.h mViewBinding4 = getMViewBinding();
                if (mViewBinding4 != null && (frameLayout5 = mViewBinding4.f17362i) != null) {
                    frameLayout5.addView(viewA);
                }
            }
        }
        cn.h mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (frameLayout2 = mViewBinding5.f17362i) == null) {
            return;
        }
        frameLayout2.setVisibility(0);
    }

    static /* synthetic */ void F1(MovieDetailFragment movieDetailFragment, boolean z10, String str, String str2, boolean z11, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z11 = false;
        }
        movieDetailFragment.E1(z10, str, str2, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G1(MovieDetailFragment movieDetailFragment) {
        FrameLayout frameLayout;
        cn.h mViewBinding = movieDetailFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f17362i) != null) {
            frameLayout.setVisibility(8);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H1() {
        return Unit.f67061a;
    }

    private final void I1() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        final Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            cn.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView = mViewBinding.f17366m) != null) {
                appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.r
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MovieDetailFragment.J1(this.f47216a, subject, view);
                    }
                });
            }
            cn.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (gradientTextView = mViewBinding2.f17373t) == null) {
                return;
            }
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MovieDetailFragment.K1(this.f47221a, subject, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J1(MovieDetailFragment movieDetailFragment, Subject subject, View view) {
        String url;
        IPublishApi iPublishApiA1 = movieDetailFragment.a1();
        if (iPublishApiA1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = movieDetailFragment.mSubjectId;
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
            iPublishApiA1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K1(MovieDetailFragment movieDetailFragment, Subject subject, View view) {
        String url;
        IPublishApi iPublishApiA1 = movieDetailFragment.a1();
        if (iPublishApiA1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = movieDetailFragment.mSubjectId;
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
            iPublishApiA1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f43262a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x0180  */
    /* JADX WARN: Code duplicated, block: B:76:0x0196  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    private final void L1(Subject subject) {
        StillsFragment stillsFragmentA;
        List<DownloadItem> items;
        int iF;
        cn.h mViewBinding;
        cn.h mViewBinding2;
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        if (this.coverFragment != null || subject == null) {
            return;
        }
        ResourceDetectors resourceDetector = subject.getResourceDetector();
        bVar = null;
        ViewGroup.LayoutParams bVar = null;
        String downloadUrl = resourceDetector != null ? resourceDetector.getDownloadUrl() : null;
        Integer subjectType = subject.getSubjectType();
        SubjectType subjectType2 = SubjectType.MUSIC;
        int value = subjectType2.getValue();
        if (subjectType == null || subjectType.intValue() != value || downloadUrl == null || downloadUrl.length() == 0) {
            Integer subjectType3 = subject.getSubjectType();
            SubjectType subjectType4 = SubjectType.EDUCATION;
            int value2 = subjectType4.getValue();
            if (subjectType3 == null || subjectType3.intValue() != value2) {
                Trailer trailer = subject.getTrailer();
                if (trailer != null) {
                    A1(trailer);
                    return;
                }
                Cover stills = subject.getStills();
                if (stills == null) {
                    stills = subject.getCover();
                }
                if (stills != null) {
                    stillsFragmentA = StillsFragment.INSTANCE.a(stills);
                }
            } else if (this.fetchDownloadFinish) {
                DownloadListBean downloadListBean = (DownloadListBean) Z0().y().f();
                DownloadItem downloadItem = (downloadListBean == null || (items = downloadListBean.getItems()) == null) ? null : (DownloadItem) CollectionsKt.k0(items);
                if (downloadItem != null) {
                    Trailer trailer2 = new Trailer(0, null, null, null, null, 31, null);
                    Cover stills2 = subject.getStills();
                    if (stills2 == null) {
                        stills2 = subject.getCover();
                    }
                    trailer2.setCover(stills2);
                    trailer2.setSubjectType(subjectType4.getValue());
                    trailer2.setSubjectId(subject.getSubjectId());
                    Long duration = downloadItem.getDuration();
                    trailer2.setVideoAddress(new PreVideoAddress(0, null, duration != null ? Integer.valueOf((int) duration.longValue()) : null, 0, 0, downloadItem.getSize(), 0, downloadItem.getUrl(), null, 0));
                    A1(trailer2);
                    return;
                }
                Trailer trailer3 = subject.getTrailer();
                if (trailer3 != null) {
                    A1(trailer3);
                    return;
                }
                Cover stills3 = subject.getStills();
                if (stills3 == null) {
                    stills3 = subject.getCover();
                }
                if (stills3 != null) {
                    stillsFragmentA = StillsFragment.INSTANCE.a(stills3);
                }
            }
            if (stillsFragmentA != null) {
                this.coverFragment = stillsFragmentA;
                if (getMViewBinding() != null) {
                    iF = com.transsion.core.utils.e.f();
                    mViewBinding = getMViewBinding();
                    if (mViewBinding != null && (frameLayout2 = mViewBinding.f17361h) != null) {
                        bVar = frameLayout2.getLayoutParams();
                    }
                    if (bVar == null) {
                        bVar = new ConstraintLayout.b(iF, (iF * 9) / 16);
                    } else {
                        bVar.height = (iF * 9) / 16;
                    }
                    mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (frameLayout = mViewBinding2.f17361h) != null) {
                        frameLayout.setLayoutParams(bVar);
                    }
                    FragmentManager childFragmentManager = getChildFragmentManager();
                    Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
                    androidx.fragment.app.w wVarP = childFragmentManager.p();
                    Intrinsics.g(wVarP, "beginTransaction()");
                    int i11 = R$id.fl_player;
                    Fragment fragment = this.coverFragment;
                    Intrinsics.e(fragment);
                    wVarP.s(i11, fragment);
                    wVarP.j();
                }
            }
        }
        Integer durationSeconds = subject.getDurationSeconds();
        PreVideoAddress preVideoAddress = new PreVideoAddress(0, null, Integer.valueOf(durationSeconds != null ? durationSeconds.intValue() : 0), 0, 0, 0L, 0, downloadUrl, "", 0);
        Cover stills4 = subject.getStills();
        if (stills4 == null) {
            stills4 = subject.getCover();
        }
        Trailer trailer4 = new Trailer(subjectType2.getValue(), preVideoAddress, stills4, null, null, 24, null);
        trailer4.setSubjectId(subject.getSubjectId());
        trailer4.setMusicName(subject.getTitle());
        A1(trailer4);
        stillsFragmentA = null;
        if (stillsFragmentA != null) {
            this.coverFragment = stillsFragmentA;
            if (getMViewBinding() != null) {
                iF = com.transsion.core.utils.e.f();
                mViewBinding = getMViewBinding();
                if (mViewBinding != null) {
                    bVar = frameLayout2.getLayoutParams();
                }
                if (bVar == null) {
                    bVar = new ConstraintLayout.b(iF, (iF * 9) / 16);
                } else {
                    bVar.height = (iF * 9) / 16;
                }
                mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null) {
                    frameLayout.setLayoutParams(bVar);
                }
                FragmentManager childFragmentManager2 = getChildFragmentManager();
                Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
                androidx.fragment.app.w wVarP2 = childFragmentManager2.p();
                Intrinsics.g(wVarP2, "beginTransaction()");
                int i12 = R$id.fl_player;
                Fragment fragment2 = this.coverFragment;
                Intrinsics.e(fragment2);
                wVarP2.s(i12, fragment2);
                wVarP2.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean M1(final FloatActionType actionType) {
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
            final px.a aVarW0 = W0();
            if (aVarW0 != null) {
                if (actionType != floatActionType && !aVarW0.f().isPlaying()) {
                    lg.a.f68839a.c("VideoFloat-pip", "movie 视频暂停，无需触发画中画", true);
                    return false;
                }
                ox.e.a aVar = ox.e.f72197a;
                if (aVar.b().c()) {
                    lg.a.f68839a.c("VideoFloat-pip", "movie 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().k(activity, aVarW0, actionType, this.curPlayerUiType == LongVodUiType.LAND);
                    } else {
                        cn.h mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() { // from class: com.transsion.moviedetail.fragment.i
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MovieDetailFragment.N1(activity, aVarW0, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                ox.b.f72191a.c().g(activity, aVarW0, actionType == floatActionType, this.curPlayerUiType == LongVodUiType.LAND, new Function1() { // from class: com.transsion.moviedetail.fragment.t
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MovieDetailFragment.O1(activity, ((Boolean) obj).booleanValue());
                    }
                }, new e());
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N1(FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType, MovieDetailFragment movieDetailFragment) {
        ox.e.f72197a.b().k(fragmentActivity, aVar, floatActionType, movieDetailFragment.curPlayerUiType == LongVodUiType.LAND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O1(FragmentActivity fragmentActivity, boolean z10) {
        if (z10 && fragmentActivity != null) {
            fragmentActivity.finish();
        }
        return Unit.f67061a;
    }

    private final void P1() {
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
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout3 = mViewBinding.f17364k) != null) {
            jg.c.k(frameLayout3);
        }
        cn.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout2 = mViewBinding2.f17364k) != null) {
            frameLayout2.removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        cn.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (frameLayout = mViewBinding3.f17364k) == null) {
            return;
        }
        frameLayout.addView(this.gameResView, layoutParams);
    }

    private final boolean Q0() {
        IFissionProvider iFissionProvider;
        if (this.hasClickedActivityTip || (iFissionProvider = this.palmPayApi) == null) {
            return false;
        }
        return iFissionProvider.g();
    }

    private final void Q1() {
        Context context;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            Subject subject = this.mMovieDetailBean;
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.TRAILER;
            cn.h mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                this.tsInitStart = SystemClock.elapsedRealtime();
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String strName = longVodPageType.name();
                Subject subject2 = this.mMovieDetailBean;
                fo.a.C0760a.a(longVodPlayerView, "subjectdetail", longVodPageType, strName + (subject2 != null ? subject2.getSubjectId() : null), mViewBinding.f17360g, mViewBinding.f17367n.f64599f, null, null, 96, null);
                Subject subject3 = this.mMovieDetailBean;
                longVodPlayerView.initAdHelper(subject3 != null ? subject3.getGenre() : null);
                cn.h mViewBinding2 = getMViewBinding();
                longVodPlayerView.setPortraitPremiumView(mViewBinding2 != null ? mViewBinding2.f17362i : null);
                longVodPlayerView.setFeedBackVisible(true);
                this.tsInitDone = SystemClock.elapsedRealtime();
                this.playerControl = longVodPlayerView;
                this.tsAddView = SystemClock.elapsedRealtime();
                mViewBinding.f17361h.addView(longVodPlayerView);
                longVodPlayerView.getViewTreeObserver().addOnGlobalLayoutListener(new f(longVodPlayerView, this));
            }
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 != null) {
                l1(subject4);
            }
            fo.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.setCallback(new g());
            }
        }
    }

    private final void R0() {
        if (t1()) {
            Subject subject = this.mMovieDetailBean;
            if (subject == null || !subject.isFamilyModeIntercept()) {
                cn.h mViewBinding = getMViewBinding();
                DownloadView downloadView = mViewBinding != null ? mViewBinding.f17357d : null;
                this.downloadViewFloat = downloadView;
                if (downloadView != null) {
                    downloadView.setPageFrom("subjectdetail");
                }
                DownloadView downloadView2 = this.downloadViewFloat;
                if (downloadView2 != null) {
                    DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.transsion.core.utils.e.g(16.0f)), null, 5, null);
                }
                DownloadView downloadView3 = this.downloadViewFloat;
                if (downloadView3 != null) {
                    downloadView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.n
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MovieDetailFragment.S0(this.f47199a, view);
                        }
                    });
                }
            }
        }
    }

    private final void R1() {
        new tn.g(this, R$id.subjectDetailLayout, this.mMovieDetailBean, "subjectdetail", this.moduleName, false, false, 96, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(MovieDetailFragment movieDetailFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = movieDetailFragment.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = movieDetailFragment.mMovieDetailBean;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = movieDetailFragment.mMovieDetailBean) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        movieDetailFragment.U0();
    }

    private final void S1(Subject data) {
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
        if (!com.transsion.postdetail.util.h.f50167a.a(data)) {
            cn.h mViewBinding = getMViewBinding();
            if (mViewBinding == null || (memberGuideBannerView = mViewBinding.f17363j) == null) {
                return;
            }
            memberGuideBannerView.setVisibility(8);
            return;
        }
        cn.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (memberGuideBannerView3 = mViewBinding2.f17363j) != null) {
            memberGuideBannerView3.setVisibility(0);
        }
        cn.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (memberGuideBannerView2 = mViewBinding3.f17363j) == null) {
            return;
        }
        memberGuideBannerView2.setRefreshMemberInfo(new Function0() { // from class: com.transsion.moviedetail.fragment.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailFragment.T1(this.f47232a, memberGuideBannerView2);
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
        memberGuideBannerView2.setMemberInfo("subjectdetail", "video_detail/vip_banner", str, subjectId2, (16 & 16) != 0 ? false : false, boolValueOf, numO, iPremiumApi3 != null ? Boolean.valueOf(iPremiumApi3.u()) : null);
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
        memberGuideBannerView2.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieDetailFragment.U1(this.f47239a, memberGuideBannerView2, view);
            }
        });
    }

    private final void T0() {
        BubbleTextView bubbleTextView;
        ViewTreeObserver viewTreeObserver;
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f17355b) == null || (viewTreeObserver = bubbleTextView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T1(MovieDetailFragment movieDetailFragment, MemberGuideBannerView memberGuideBannerView) {
        Subject subject = movieDetailFragment.mMovieDetailBean;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        String str = movieDetailFragment.traceId;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Boolean boolValueOf = iPremiumApi != null ? Boolean.valueOf(iPremiumApi.c()) : null;
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Integer numO = iPremiumApi2 != null ? iPremiumApi2.o() : null;
        IPremiumApi iPremiumApi3 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        memberGuideBannerView.setMemberInfo("subjectdetail", "video_detail/vip_banner", str, subjectId, true, boolValueOf, numO, iPremiumApi3 != null ? Boolean.valueOf(iPremiumApi3.u()) : null);
        return Unit.f67061a;
    }

    private final void U0() {
        List<ResourceDetectors> resourceDetectors;
        if (getContext() == null) {
            return;
        }
        V0();
        Subject subject = this.mMovieDetailBean;
        String str = "";
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && !resourceDetectors.isEmpty()) {
            String resourceLink = resourceDetectors.get(0).getResourceLink();
            str = resourceLink != null ? resourceLink : "";
            resourceDetectors.get(0).getResourceId();
            resourceDetectors.get(0).isMultiResolution();
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
        DownloadManagerApi.N(downloadManagerApiA2, fragmentActivity2, subject4, "subjectdetail", "", ops, str2, null, this.moduleName, null, false, this.curSeason, false, 832, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(MovieDetailFragment movieDetailFragment, MemberGuideBannerView memberGuideBannerView, View view) {
        PlaybackInterceptionManager playbackInterceptionManager;
        fo.a aVar = movieDetailFragment.playerControl;
        if (aVar == null || (playbackInterceptionManager = aVar.getPlaybackInterceptionManager()) == null) {
            F1(movieDetailFragment, true, "video_detail/vip_banner", movieDetailFragment.traceId, false, 8, null);
        } else {
            PlaybackInterceptionManager.X(playbackInterceptionManager, true, "video_detail/vip_banner", movieDetailFragment.traceId, false, 8, null);
        }
    }

    private final void V0() {
        BubbleTextView bubbleTextView;
        this.hasClickedActivityTip = true;
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f17355b) == null) {
            return;
        }
        jg.c.g(bubbleTextView);
    }

    private final void V1() {
        BubbleTextView bubbleTextView;
        DownloadView downloadView;
        DownloadView downloadView2;
        BubbleTextView bubbleTextView2;
        if (Q0() && (downloadView = this.downloadViewFloat) != null && downloadView.getVisibility() == 0 && (downloadView2 = this.downloadViewFloat) != null && downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() == 0) {
            cn.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (bubbleTextView2 = mViewBinding.f17355b) != null) {
                jg.c.k(bubbleTextView2);
            }
            T0();
            return;
        }
        cn.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (bubbleTextView = mViewBinding2.f17355b) == null) {
            return;
        }
        jg.c.g(bubbleTextView);
    }

    private final px.a W0() {
        String subjectId;
        fo.a aVar = this.playerControl;
        com.transsion.player.orplayer.g player = aVar != null ? aVar.getPlayer() : null;
        fo.a aVar2 = this.playerControl;
        ORPlayerView playerView = aVar2 != null ? aVar2.getOrPlayerView() : null;
        if (playerView == null || player == null) {
            return null;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        Subject subject = this.mMovieDetailBean;
        c0828a.c("VideoFloat", "trailer--showFloat, title:" + (subject != null ? subject.getTitle() : null), true);
        FloatPlayType floatPlayType = FloatPlayType.TRAILER;
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || (subjectId = subject2.getSubjectId()) == null) {
            subjectId = "";
        }
        return new px.a(playerView, player, null, floatPlayType, subjectId, 0, 0, "", "subjectdetail");
    }

    private final void W1(int visible) {
        HashMap mapG;
        ResourceDetectors resourceDetector;
        List<ResourceDetectors> resourceDetectors;
        DownloadView downloadView = this.downloadViewFloat;
        if (downloadView != null) {
            downloadView.setVisibility(visible);
        }
        Subject subject = this.mMovieDetailBean;
        if (subject != null && (resourceDetectors = subject.getResourceDetectors()) != null && !resourceDetectors.isEmpty()) {
            resourceDetectors.get(0).getResourceId();
            resourceDetectors.get(0).isMultiResolution();
        }
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null) {
            resourceDetector.getResourceId();
            resourceDetector.isMultiResolution();
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        V1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(MovieDetailFragment movieDetailFragment, View view) {
        movieDetailFragment.requireActivity().finish();
    }

    static /* synthetic */ void X1(MovieDetailFragment movieDetailFragment, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        movieDetailFragment.W1(i11);
    }

    private final IMemberApi Y0() {
        return (IMemberApi) this.memberProvider.getValue();
    }

    private final void Y1(Subject movieDetailBean) {
        Subject subject;
        View view;
        View view2;
        FrameLayout frameLayout;
        this.mMovieDetailBean = movieDetailBean;
        if (!this.isGameResInit) {
            h1();
            x1(true);
        }
        Subject subject2 = this.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        Subject subject3 = this.mMovieDetailBean;
        if (subject3 == null || !subject3.isFamilyModeIntercept()) {
            L1(this.mMovieDetailBean);
        } else {
            cn.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f17361h) != null) {
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = dk.a.b(48);
                frameLayout.setLayoutParams(bVar);
            }
            cn.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (view2 = mViewBinding2.f17374u) != null) {
                jg.c.g(view2);
            }
            cn.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view = mViewBinding3.f17375v) != null) {
                view.setBackgroundResource(R$color.bg_01);
            }
        }
        S1(movieDetailBean);
        if (this.downloadViewFloat == null) {
            R0();
            X1(this, 0, 1, null);
        }
        f1();
        k1();
        if (this.autoDownload) {
            this.autoDownload = false;
            DownloadView downloadView = this.downloadViewFloat;
            if (downloadView != null) {
                downloadView.post(new Runnable() { // from class: com.transsion.moviedetail.fragment.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        MovieDetailFragment.Z1(this.f47196a);
                    }
                });
            }
        }
        I1();
    }

    private final MovieDetailViewModel Z0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z1(MovieDetailFragment movieDetailFragment) {
        movieDetailFragment.U0();
    }

    private final IPublishApi a1() {
        return (IPublishApi) this.publishedApi.getValue();
    }

    private final List c1(Trailer trailer) {
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

    private final void d1() {
        BubbleTextView bubbleTextView;
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f17355b) == null) {
            return;
        }
        bubbleTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieDetailFragment.e1(this.f47149a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(MovieDetailFragment movieDetailFragment, View view) {
        lg.a.C0828a.f(lg.a.f68839a, "movie_detail", "Click activity tip", false, 4, null);
        movieDetailFragment.hasClickedActivityTip = true;
        Intrinsics.e(view);
        jg.c.g(view);
    }

    private final void f1() {
        Subject subject = this.mMovieDetailBean;
        cn.h mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f17368o : null;
        cn.h mViewBinding2 = getMViewBinding();
        this.bottomRecHelper = new tn.e(this, subject, magicIndicator, mViewBinding2 != null ? mViewBinding2.f17369p : null, "subjectdetail", false, false, new Function1() { // from class: com.transsion.moviedetail.fragment.p
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.g1(this.f47209a, ((Integer) obj).intValue());
            }
        }, 96, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(MovieDetailFragment movieDetailFragment, int i11) {
        GradientTextView gradientTextView;
        DownloadView downloadView = movieDetailFragment.downloadViewFloat;
        if (downloadView != null && downloadView != null) {
            downloadView.setVisibility(i11 != 1 ? 0 : 8);
        }
        cn.h mViewBinding = movieDetailFragment.getMViewBinding();
        if (mViewBinding != null && (gradientTextView = mViewBinding.f17373t) != null) {
            gradientTextView.setVisibility(i11 == 1 ? 0 : 8);
        }
        return Unit.f67061a;
    }

    private final void h1() {
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
                lg.a.C0828a.f(lg.a.f68839a, "GameResLoader", "sub detail game initGameRes", false, 4, null);
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
                iGameResApi.a(context, "subjectdetail", gameInfoType, str, new Function1() { // from class: com.transsion.moviedetail.fragment.q
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MovieDetailFragment.i1(this.f47213a, (View) obj);
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
        lg.a.C0828a.l(lg.a.f68839a, "GameResLoader", "sub detail,  game is null", false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(MovieDetailFragment movieDetailFragment, View view) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        movieDetailFragment.gameResView = view;
        if (view == null) {
            cn.h mViewBinding = movieDetailFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout2 = mViewBinding.f17364k) != null) {
                jg.c.g(frameLayout2);
            }
            cn.h mViewBinding2 = movieDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (frameLayout = mViewBinding2.f17364k) != null) {
                frameLayout.removeAllViews();
            }
        } else {
            movieDetailFragment.P1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j1(MovieDetailFragment movieDetailFragment, View view) {
        FragmentActivity activity;
        if (movieDetailFragment.playerControl != null) {
            if (movieDetailFragment.M1(FloatActionType.BACK) || (activity = movieDetailFragment.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        FragmentActivity activity2 = movieDetailFragment.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    private final void k1() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        androidx.fragment.app.w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.isFamilyModeIntercept()) {
            ResourceDetectorFamilyModeFragment resourceDetectorFamilyModeFragment = new ResourceDetectorFamilyModeFragment();
            resourceDetectorFamilyModeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean)));
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorFamilyModeFragment);
        } else if (t1()) {
            ResourceDetectorFragment resourceDetectorFragment = new ResourceDetectorFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            bundle.putString("ops", this.ops);
            bundle.putBoolean("auto_play", this.autoPlay);
            bundle.putString("auto_play_resource_id", this.autoPlayResourceId);
            bundle.putString("module_name", this.moduleName);
            bundle.putInt("season", this.curSeason);
            resourceDetectorFragment.setArguments(bundle);
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorFragment);
        } else {
            ResourceDetectorEmptyFragment resourceDetectorEmptyFragment = new ResourceDetectorEmptyFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            resourceDetectorEmptyFragment.setArguments(bundle2);
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorEmptyFragment);
        }
        wVarP.j();
    }

    private final void l1(Subject movieDetailBean) {
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
        final RestrictTipsDialog restrictTipsDialogA = RestrictTipsDialog.INSTANCE.a(value, "subjectdetail", movieDetailBean.getSubjectId());
        restrictTipsDialogA.l0(this, "RestrictTipsDialog");
        restrictTipsDialogA.y0(new Function1() { // from class: com.transsion.moviedetail.fragment.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.m1(restrictTipsDialogA, this, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(RestrictTipsDialog restrictTipsDialog, MovieDetailFragment movieDetailFragment, boolean z10) {
        if (z10) {
            fo.a aVar = movieDetailFragment.playerControl;
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

    private final void n1() {
        ConstraintLayout constraintLayoutB;
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        constraintLayoutB.post(new Runnable() { // from class: com.transsion.moviedetail.fragment.e0
            @Override // java.lang.Runnable
            public final void run() {
                MovieDetailFragment.o1(this.f47163a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o1(MovieDetailFragment movieDetailFragment) {
        Subject subject;
        String subjectId;
        String ops;
        FragmentActivity activity = movieDetailFragment.getActivity();
        if (activity == null || (subject = movieDetailFragment.mMovieDetailBean) == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        ox.b bVarC = ox.b.f72191a.c();
        Subject subject2 = movieDetailFragment.mMovieDetailBean;
        bVarC.e(activity, subjectId, null, "subjectdetail", (subject2 == null || (ops = subject2.getOps()) == null) ? movieDetailFragment.ops : ops);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(MovieDetailFragment movieDetailFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        movieDetailFragment.tsCallback = SystemClock.elapsedRealtime();
        Subject subject = (Subject) pair.getSecond();
        MovieDetailActivity.INSTANCE.a("movie_detail get movie detail data --> it = " + subject);
        if (subject == null) {
            if (Intrinsics.c(pair.getFirst(), "404")) {
                com.tn.lib.widget.toast.core.h.f41479a.k(R$string.movie_lost_content);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(movieDetailFragment), null, null, new MovieDetailFragment$initViewModel$1$1$1(movieDetailFragment, null), 3, null);
            }
            if (nh.m.f70474a.e()) {
                PageStatusFragment.showEmptyView$default(movieDetailFragment, false, 1, null);
            } else {
                PageStatusFragment.showNoNetworkView$default(movieDetailFragment, false, 1, null);
            }
        } else {
            if (subject.getIsRefreshViewOnly()) {
                return Unit.f67061a;
            }
            MovieDetailViewModel movieDetailViewModelZ0 = movieDetailFragment.Z0();
            String subjectId = subject.getSubjectId();
            Integer subjectType = subject.getSubjectType();
            Context context = movieDetailFragment.getContext();
            MovieDetailViewModel.u(movieDetailViewModelZ0, subjectId, subjectType, 0, context != null && com.transsion.baseui.util.b.a(context), 4, null);
            Integer subjectType2 = subject.getSubjectType();
            movieDetailFragment.mSubjectType = subjectType2 != null ? subjectType2.intValue() : movieDetailFragment.mSubjectType;
            movieDetailFragment.showContentView();
            movieDetailFragment.netResultSuccess = true;
            movieDetailFragment.Y1(subject);
            movieDetailFragment.R1();
            hj.b logViewConfig = movieDetailFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            hj.b logViewConfig2 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(movieDetailFragment.ops);
            }
            hj.b logViewConfig3 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
                String subjectId2 = subject.getSubjectId();
                if (subjectId2 == null) {
                    subjectId2 = "";
                }
                mapG3.put("subject_id", subjectId2);
            }
            hj.b logViewConfig4 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
                mapG2.put("has_resource", String.valueOf(subject.getHasResource()));
            }
            hj.b logViewConfig5 = movieDetailFragment.getLogViewConfig();
            if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
                mapG.put("module_name", movieDetailFragment.moduleName);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(MovieDetailFragment movieDetailFragment, DownloadListBean downloadListBean) {
        movieDetailFragment.fetchDownloadFinish = true;
        Subject subject = movieDetailFragment.mMovieDetailBean;
        if (subject != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.EDUCATION.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                movieDetailFragment.L1(movieDetailFragment.mMovieDetailBean);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(MovieDetailFragment movieDetailFragment, Integer num) {
        int i11 = movieDetailFragment.curSeason;
        if (num != null && i11 == num.intValue()) {
            return Unit.f67061a;
        }
        Intrinsics.e(num);
        movieDetailFragment.curSeason = num.intValue();
        String str = movieDetailFragment.mSubjectId;
        if (str != null) {
            movieDetailFragment.Z0().D(str, Integer.valueOf(movieDetailFragment.curSeason), true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(MovieDetailFragment movieDetailFragment, DubsInfo dubsInfo) {
        fo.a aVar = movieDetailFragment.playerControl;
        movieDetailFragment.curAudioTrackPlayProgress = aVar != null ? aVar.currentPosition() : 0L;
        movieDetailFragment.mSubjectId = dubsInfo.getSubjectId();
        movieDetailFragment.mMovieDetailBean = null;
        MovieDetailViewModel movieDetailViewModelZ0 = movieDetailFragment.Z0();
        int i11 = movieDetailFragment.preloadId;
        String str = movieDetailFragment.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelZ0.S(i11, str, Integer.valueOf(movieDetailFragment.curSeason));
        movieDetailFragment.loadDefaultData();
        return Unit.f67061a;
    }

    private final boolean t1() {
        Boolean hasResource;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (hasResource = subject.getHasResource()) == null) {
            return false;
        }
        return hasResource.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IMemberApi u1() {
        return (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
    }

    private final void v1() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.moviedetail.fragment.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.w1(this.f47144a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w1(MovieDetailFragment movieDetailFragment, AddToDownloadEvent value) {
        Intrinsics.h(value, "value");
        try {
            if (!TextUtils.equals(value.getSubjectId(), movieDetailFragment.mSubjectId)) {
                return Unit.f67061a;
            }
            if (movieDetailFragment.downloadViewFloat != null) {
                X1(movieDetailFragment, 0, 1, null);
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    private final void x1(boolean show) {
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
            IMemberApi iMemberApiY0 = Y0();
            if (iMemberApiY0 != null) {
                iMemberApiY0.i();
                return;
            }
            return;
        }
        IMemberApi iMemberApiY1 = Y0();
        if (iMemberApiY1 != null) {
            iMemberApiY1.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y1(LongVodUiType uiType) {
        if (this.gameResView == null || uiType != LongVodUiType.MIDDLE) {
            return;
        }
        P1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z1(go.a bean) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.mSubjectId);
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.getType() == 3 && bean != null) {
            navigatorK.I("TV_DATA", new FbTvData(bean.o(), bean.l(), bean.e()));
        }
        Navigator.x(navigatorK, requireContext(), null, 2, null);
    }

    public final void C1() {
        fo.a aVar;
        ox.c cVar = ox.c.f72196a;
        fo.a aVar2 = this.playerControl;
        if (!cVar.c(aVar2 != null ? aVar2.getPlayer() : null) && (aVar = this.playerControl) != null) {
            aVar.release();
        }
        fo.a aVar3 = this.playerControl;
        if (aVar3 != null) {
            aVar3.onPageDestroy();
        }
    }

    @Override // yn.a
    public void R(Function0 callback) {
        this.backPressedCallback = callback;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: b1, reason: merged with bridge method [inline-methods] */
    public cn.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.h hVarC = cn.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_movie_detail_skeleton_drawing_layout_2, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MovieDetailFragment.X0(this.f47154a, view);
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
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f17365l.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MovieDetailFragment.j1(this.f47158a, view);
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        View view;
        this.tsViewCreatedStart = SystemClock.elapsedRealtime();
        cn.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f17375v) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.d.c();
            view.setLayoutParams(bVar);
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new c());
        v1();
        d1();
        n1();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        MovieDetailViewModel movieDetailViewModelZ0 = Z0();
        movieDetailViewModelZ0.F().j(this, new d(new Function1() { // from class: com.transsion.moviedetail.fragment.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.p1(this.f47168a, (Pair) obj);
            }
        }));
        movieDetailViewModelZ0.y().j(this, new d(new Function1() { // from class: com.transsion.moviedetail.fragment.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.q1(this.f47186a, (DownloadListBean) obj);
            }
        }));
        movieDetailViewModelZ0.K().j(this, new d(new Function1() { // from class: com.transsion.moviedetail.fragment.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.r1(this.f47189a, (Integer) obj);
            }
        }));
        movieDetailViewModelZ0.P().j(this, new d(new Function1() { // from class: com.transsion.moviedetail.fragment.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MovieDetailFragment.s1(this.f47192a, (DubsInfo) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        HashMap mapG;
        MovieDetailActivity.INSTANCE.a("movie_detail start load data ....");
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
            showLoadingView();
            String str2 = this.mSubjectId;
            if (str2 != null) {
                this.tsRequestStart = SystemClock.elapsedRealtime();
                MovieDetailViewModel.E(Z0(), str2, Integer.valueOf(this.curSeason), false, 4, null);
            }
        }
        this.tsViewCreatedEnd = SystemClock.elapsedRealtime();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("subjectdetail", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MovieDetailActivity.INSTANCE.a("movie_detail------- onCreate ------");
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onPageDestroy();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onHomeClick() {
        super.onHomeClick();
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "MovieDetailFragment onHomeClick", false, 4, null);
        M1(FloatActionType.HOME);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ox.c cVar = ox.c.f72196a;
        fo.a aVar = this.playerControl;
        cVar.c(aVar != null ? aVar.getPlayer() : null);
        x1(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        if (isInPictureInPictureMode) {
            FragmentActivity activity = getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            px.a aVarW0 = W0();
            if (aVarW0 != null && Build.VERSION.SDK_INT >= 31) {
                ox.e.f72197a.b().h(activity, aVarW0);
            }
        }
        ox.e.f72197a.b().onPipModeChanged(isInPictureInPictureMode);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onRecentClick() {
        super.onRecentClick();
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "MovieDetailFragment onRecentClick", false, 4, null);
        M1(FloatActionType.HOME);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        fo.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
        x1(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        fo.a aVar;
        super.onStop();
        ox.c cVar = ox.c.f72196a;
        fo.a aVar2 = this.playerControl;
        if (cVar.c(aVar2 != null ? aVar2.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
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
        this.mSubjectType = arguments4 != null ? arguments4.getInt("subject_type", this.mSubjectType) : this.mSubjectType;
        Bundle arguments5 = getArguments();
        this.autoDownload = arguments5 != null ? arguments5.getBoolean("auto_download") : false;
        Bundle arguments6 = getArguments();
        this.autoPlay = arguments6 != null ? arguments6.getBoolean("auto_play") : false;
        Bundle arguments7 = getArguments();
        this.autoPlayResourceId = arguments7 != null ? arguments7.getString("auto_play_resource_id") : null;
        Bundle arguments8 = getArguments();
        this.preloadId = arguments8 != null ? arguments8.getInt("yy_preload_id") : 0;
        Bundle arguments9 = getArguments();
        this.moduleName = arguments9 != null ? arguments9.getString("module_name") : null;
        Bundle arguments10 = getArguments();
        this.curSeason = arguments10 != null ? arguments10.getInt("season") : 1;
        MovieDetailViewModel movieDetailViewModelZ0 = Z0();
        int i11 = this.preloadId;
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelZ0.S(i11, str, Integer.valueOf(this.curSeason));
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
