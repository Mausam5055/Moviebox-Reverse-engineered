package com.transsion.postdetail.ui.fragment;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.MemberGuideBannerView;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.helper.ScreenRotationHelper;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.player.config.RenderType;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$array;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.postdetail.layer.local.LocalVideoMiddleLayer;
import com.transsion.postdetail.util.LocalFloatManager;
import com.transsion.postdetail.util.LocalVideoAdHelper;
import com.transsion.push.api.IPushProvider;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.RewardsCenterData;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Ì\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\n*\u0004º\u0002Â\u0002\u0018\u0000 Ê\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002\u009a\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u0019\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020\u001aH\u0002¢\u0006\u0004\b&\u0010'J\u0011\u0010)\u001a\u0004\u0018\u00010(H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u0010\u0006J\u0017\u00100\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b0\u0010\u001dJ'\u00103\u001a\u00020\u00072\u0006\u00101\u001a\u00020+2\u0006\u00102\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0007H\u0002¢\u0006\u0004\b5\u0010\u0006J\u000f\u00106\u001a\u00020\u0007H\u0002¢\u0006\u0004\b6\u0010\u0006J\u000f\u00107\u001a\u00020\u0007H\u0002¢\u0006\u0004\b7\u0010\u0006J\u001f\u00109\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u00108\u001a\u00020\u0016H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b;\u0010\u0015J\u0017\u0010=\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0016H\u0002¢\u0006\u0004\b=\u0010\u0019J\u0015\u0010@\u001a\b\u0012\u0004\u0012\u00020?0>H\u0002¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0007H\u0002¢\u0006\u0004\bB\u0010\u0006J\u000f\u0010C\u001a\u00020\u0007H\u0002¢\u0006\u0004\bC\u0010\u0006J\u0019\u0010E\u001a\u00020\u00072\b\u0010D\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\bE\u0010\u0015J\u000f\u0010F\u001a\u00020\u0007H\u0002¢\u0006\u0004\bF\u0010\u0006J\u000f\u0010G\u001a\u00020\u0007H\u0002¢\u0006\u0004\bG\u0010\u0006J\u000f\u0010H\u001a\u00020\u0007H\u0002¢\u0006\u0004\bH\u0010\u0006J\u0017\u0010K\u001a\u00020\u00072\u0006\u0010J\u001a\u00020IH\u0002¢\u0006\u0004\bK\u0010LJ+\u0010P\u001a\u00020\u00072\b\u0010M\u001a\u0004\u0018\u00010\u00122\u0006\u0010N\u001a\u00020I2\b\b\u0002\u0010O\u001a\u00020\u0016H\u0002¢\u0006\u0004\bP\u0010QJ\u0018\u0010R\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0082@¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0007H\u0002¢\u0006\u0004\bT\u0010\u0006J\u000f\u0010U\u001a\u00020\u0007H\u0002¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010V\u001a\u00020\u0007H\u0002¢\u0006\u0004\bV\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0002¢\u0006\u0004\bW\u0010\u0006J\u000f\u0010X\u001a\u00020\u0016H\u0002¢\u0006\u0004\bX\u0010YJ\u0017\u0010[\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u0016H\u0002¢\u0006\u0004\b[\u0010\u0019J\u000f\u0010\\\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\\\u0010\u0006J\u0017\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020]H\u0016¢\u0006\u0004\b_\u0010`J\u0017\u0010c\u001a\u00020\u00022\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\u0016H\u0016¢\u0006\u0004\be\u0010YJ\u000f\u0010f\u001a\u00020\u001aH\u0016¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\u0007H\u0016¢\u0006\u0004\bh\u0010\u0006J\u000f\u0010i\u001a\u00020\u0007H\u0016¢\u0006\u0004\bi\u0010\u0006J\u000f\u0010j\u001a\u00020\u0007H\u0016¢\u0006\u0004\bj\u0010\u0006J\u000f\u0010k\u001a\u00020\u0007H\u0016¢\u0006\u0004\bk\u0010\u0006J\u000f\u0010l\u001a\u00020\u0016H\u0016¢\u0006\u0004\bl\u0010YJ\u000f\u0010m\u001a\u00020\u0007H\u0016¢\u0006\u0004\bm\u0010\u0006J\u001f\u0010r\u001a\u00020\u00072\u0006\u0010o\u001a\u00020n2\u0006\u0010q\u001a\u00020pH\u0016¢\u0006\u0004\br\u0010sJ\u0017\u0010v\u001a\u00020\u00072\u0006\u0010u\u001a\u00020tH\u0016¢\u0006\u0004\bv\u0010wJ\u000f\u0010x\u001a\u00020\u0007H\u0016¢\u0006\u0004\bx\u0010\u0006J\u000f\u0010y\u001a\u00020\u0007H\u0016¢\u0006\u0004\by\u0010\u0006J\u000f\u0010z\u001a\u00020\u0007H\u0016¢\u0006\u0004\bz\u0010\u0006J\u000f\u0010{\u001a\u00020\u0007H\u0016¢\u0006\u0004\b{\u0010\u0006J\r\u0010|\u001a\u00020\u0007¢\u0006\u0004\b|\u0010\u0006J\"\u0010\u007f\u001a\u00020\u00072\b\u0010}\u001a\u0004\u0018\u00010\u001a2\b\u0010~\u001a\u0004\u0018\u00010\u001a¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u000f\u0010\u0081\u0001\u001a\u00020\u0007¢\u0006\u0005\b\u0081\u0001\u0010\u0006J\"\u0010\u0084\u0001\u001a\u00020\u00072\u0006\u0010J\u001a\u00020I2\b\u0010\u0083\u0001\u001a\u00030\u0082\u0001¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u000f\u0010\u0086\u0001\u001a\u00020\u0007¢\u0006\u0005\b\u0086\u0001\u0010\u0006J\u001a\u0010\u0088\u0001\u001a\u00020\u00072\t\b\u0002\u0010\u0087\u0001\u001a\u00020\u0016¢\u0006\u0005\b\u0088\u0001\u0010\u0019J\u001e\u0010\u008b\u0001\u001a\u00020\u00072\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0016¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0013\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u001a\u0010\u0091\u0001\u001a\u00020\u00072\u0007\u0010\u0090\u0001\u001a\u00020\u0016H\u0016¢\u0006\u0005\b\u0091\u0001\u0010\u0019J\u0011\u0010\u0092\u0001\u001a\u00020\u0007H\u0016¢\u0006\u0005\b\u0092\u0001\u0010\u0006J\u0011\u0010\u0093\u0001\u001a\u00020\u0007H\u0016¢\u0006\u0005\b\u0093\u0001\u0010\u0006J\u001a\u0010\u0095\u0001\u001a\u00020\u00072\u0007\u0010\u0094\u0001\u001a\u00020\u0016H\u0016¢\u0006\u0005\b\u0095\u0001\u0010\u0019J\u0018\u0010\u0097\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0016¢\u0006\u0005\b\u0097\u0001\u0010\u0019J\u000f\u0010\u0098\u0001\u001a\u00020\u0007¢\u0006\u0005\b\u0098\u0001\u0010\u0006J\u000f\u0010\u0099\u0001\u001a\u00020\u0016¢\u0006\u0005\b\u0099\u0001\u0010YR\u0017\u0010\u009c\u0001\u001a\u00020\u001a8\u0002X\u0082D¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001c\u0010¤\u0001\u001a\u0005\u0018\u00010¡\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010¥\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u0019\u0010ª\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010\u009b\u0001R\u0019\u0010¬\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010\u009b\u0001R\u0019\u0010®\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010\u009b\u0001R\u0018\u0010~\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010\u009b\u0001R\u0019\u0010±\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u009b\u0001R\u0019\u0010³\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010\u009b\u0001R\u0018\u0010}\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010\u009b\u0001R\u0019\u0010¶\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u009b\u0001R\u0019\u0010¹\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u0019\u0010»\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010¸\u0001R\u0019\u0010½\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010¸\u0001R\u0018\u0010O\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¸\u0001R\u0019\u0010À\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010¸\u0001R\u001a\u0010D\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R!\u0010È\u0001\u001a\u00030Ã\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÄ\u0001\u0010Å\u0001\u001a\u0006\bÆ\u0001\u0010Ç\u0001R\u0018\u0010Ë\u0001\u001a\u00030Ã\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R!\u0010Ð\u0001\u001a\u00030Ì\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÍ\u0001\u0010Å\u0001\u001a\u0006\bÎ\u0001\u0010Ï\u0001R\u0018\u0010N\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R\u001a\u0010Õ\u0001\u001a\u00030\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u0019\u0010×\u0001\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010Ò\u0001R\u0018\u00101\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R\u0018\u00102\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010Ù\u0001R\u0019\u0010Ü\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010Ù\u0001R\u0019\u0010Þ\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010Ù\u0001R!\u0010ã\u0001\u001a\n\u0012\u0005\u0012\u00030à\u00010ß\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0001\u0010â\u0001R!\u0010è\u0001\u001a\u00030ä\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bå\u0001\u0010Å\u0001\u001a\u0006\bæ\u0001\u0010ç\u0001R!\u0010í\u0001\u001a\u00030é\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bê\u0001\u0010Å\u0001\u001a\u0006\bë\u0001\u0010ì\u0001R!\u0010ñ\u0001\u001a\u00030î\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÔ\u0001\u0010Å\u0001\u001a\u0006\bï\u0001\u0010ð\u0001R\u0019\u0010ó\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bò\u0001\u0010¸\u0001R\u0019\u0010õ\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010¸\u0001R\u0019\u0010ö\u0001\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010Ò\u0001R\u0019\u0010÷\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010¸\u0001R\u0019\u0010ù\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010¸\u0001R\u0019\u0010û\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bú\u0001\u0010¸\u0001R\u001a\u0010ÿ\u0001\u001a\u00030ü\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bý\u0001\u0010þ\u0001R\u001c\u0010\u0083\u0002\u001a\u0005\u0018\u00010\u0080\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0002\u0010\u0082\u0002R\u0017\u0010\u0085\u0002\u001a\u00020+8\u0002X\u0082D¢\u0006\b\n\u0006\b\u0084\u0002\u0010Ù\u0001R#\u0010\u008a\u0002\u001a\u0005\u0018\u00010\u0086\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0087\u0002\u0010Å\u0001\u001a\u0006\b\u0088\u0002\u0010\u0089\u0002R*\u0010\u0090\u0002\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u008b\u0002\u0010\u008c\u0002\u001a\u0006\b\u008d\u0002\u0010\u008e\u0002\"\u0005\b\u008f\u0002\u0010\rR'\u0010\u0092\u0002\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b\u0091\u0002\u0010¸\u0001\u001a\u0005\b\u0092\u0002\u0010Y\"\u0005\b\u0093\u0002\u0010\u0019R\u001a\u0010\u0097\u0002\u001a\u00030\u0094\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0002\u0010\u0096\u0002R\u001c\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u0098\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0002\u0010\u009a\u0002R\u0019\u0010\u009d\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0002\u0010¸\u0001R\u0019\u0010\u009f\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0002\u0010¸\u0001R!\u0010¤\u0002\u001a\u00030 \u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¡\u0002\u0010Å\u0001\u001a\u0006\b¢\u0002\u0010£\u0002R\u0018\u0010¦\u0002\u001a\u00030Ã\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¥\u0002\u0010Ê\u0001R\u001b\u0010¨\u0002\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0002\u0010\u009b\u0001R \u0010«\u0002\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¸\u0001\u0010Å\u0001\u001a\u0006\b©\u0002\u0010ª\u0002R \u0010®\u0002\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¬\u0002\u0010Å\u0001\u001a\u0006\b\u00ad\u0002\u0010ª\u0002R\u0019\u0010°\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0002\u0010¸\u0001R\u0017\u0010²\u0002\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0002\u0010Ù\u0001R\u0019\u0010´\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0002\u0010\u009b\u0001R#\u0010¹\u0002\u001a\u0005\u0018\u00010µ\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¶\u0002\u0010Å\u0001\u001a\u0006\b·\u0002\u0010¸\u0002R\u0018\u0010½\u0002\u001a\u00030º\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b»\u0002\u0010¼\u0002R\u0018\u0010Á\u0002\u001a\u00030¾\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¿\u0002\u0010À\u0002R\u0018\u0010Å\u0002\u001a\u00030Â\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÃ\u0002\u0010Ä\u0002R\u0018\u0010Ç\u0002\u001a\u00030¾\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÆ\u0002\u0010À\u0002R\u0019\u0010É\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0002\u0010\u008c\u0002¨\u0006Ë\u0002"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lso/l;", "Lcom/transsion/player/orplayer/f;", "Lcom/transsion/baselib/report/l$a;", "<init>", "()V", "", "initAd", "initView", "Lcom/transsion/postdetail/layer/local/LocalUiType;", "uiType", "G3", "(Lcom/transsion/postdetail/layer/local/LocalUiType;)V", "A2", "initAudioListener", "U2", "z2", "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", "R2", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "", "isSameResource", "H2", "(Z)V", "", "path", "n3", "(Ljava/lang/String;)V", "u3", "Lcom/transsion/player/mediasession/MediaItem;", "k2", "()Lcom/transsion/player/mediasession/MediaItem;", "Landroid/content/Intent;", "f2", "()Landroid/content/Intent;", "pageName", "i2", "(Ljava/lang/String;)Landroid/content/Intent;", "Landroid/app/PendingIntent;", "l2", "()Landroid/app/PendingIntent;", "", "n2", "()I", "I2", "B2", "Z2", "videoWidth", "videoHeight", "f3", "(IILjava/lang/String;)V", "F2", "c2", "K2", "isStart", "A3", "(Lcom/transsion/baselib/db/download/DownloadBean;Z)V", "c3", "isFirst", "C2", "", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "h2", "()Ljava/util/List;", "J2", "F3", "downloadBean", "o3", "E3", "v2", "I3", "", NotificationCompat.CATEGORY_PROGRESS, "m3", "(J)V", "cvideoBean", "playProgress", "completed", "v3", "(Lcom/transsion/baselib/db/download/DownloadBean;JZ)V", "x3", "(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "e3", "a2", "S2", "y2", "X2", "()Z", "isPortrait", "X1", "t3", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "t2", "(Landroid/view/LayoutInflater;)Lso/l;", "isAudioShowNoNetworkLayout", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "initViewData", "isRegisteDeviceKeyMonitor", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onResume", "onPause", "onStop", "onDestroy", "q3", "subjectId", "resourceId", "Y1", "(Ljava/lang/String;Ljava/lang/String;)V", "i3", "", "targetPercent", "z3", "(JF)V", "d2", "fromClicked", "r3", "Lao/e;", "mediaSource", "onVideoStart", "(Lao/e;)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "isBackground", "onBackgroundStatusChange", "isLock", "a3", "d3", "W2", "a", "Ljava/lang/String;", "TAG", "Lcom/transsion/player/orplayer/g;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/orplayer/g;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "c", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "Lcom/transsion/postdetail/layer/local/c0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/layer/local/c0;", "localVideoDot", "e", "localPath", "f", "url", "g", "proxyUrl", "h", "i", "name", "j", "postId", CampaignEx.JSON_KEY_AD_K, "l", "pageFrom", "m", "Z", "isDownloadingPlay", "n", "isDownloadingPlayStart", "o", "isPrepare", TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_Q, "isSeries", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/baselib/db/download/DownloadBean;", "Landroid/os/Handler;", "s", "Lkotlin/Lazy;", "getHandler", "()Landroid/os/Handler;", "handler", "t", "Landroid/os/Handler;", "playingDownloadHandler", "Lcom/transsion/postdetail/layer/a;", TmcStartParams.KEY_URL_SHORT, "j2", "()Lcom/transsion/postdetail/layer/a;", "layerManager", "v", "J", "w", "F", "unplaySeekTargetPercent", "x", "duration", "y", "I", "z", "A", "parentPosition", "B", RequestParameters.POSITION, "", "Leu/a;", "C", "Ljava/util/List;", "subtitleList", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "D", "s2", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "videoDetailPlayDao", "Lcom/transsnet/downloader/manager/g;", "E", "g2", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lcom/transsion/baselib/helper/ScreenRotationHelper;", "q2", "()Lcom/transsion/baselib/helper/ScreenRotationHelper;", "screenHelper", "G", "isNextPlayTipsShow", "H", "isPlayerNetTimeout", "lastReloadTime", "isReload", "K", "isMusic", "L", "isBgPlaying", "Ljava/util/concurrent/atomic/AtomicInteger;", "M", "Ljava/util/concurrent/atomic/AtomicInteger;", "playErrorCount", "Lcom/transsion/subtitle/VideoSubtitleControl;", "N", "Lcom/transsion/subtitle/VideoSubtitleControl;", "subtitleControl", "O", "sDownloadIngAndPlayTimeout", "Lcom/transsion/room/api/IAudioApi;", "P", "e2", "()Lcom/transsion/room/api/IAudioApi;", "audioApi", "Q", "Lcom/transsion/postdetail/layer/local/LocalUiType;", "getMUiType", "()Lcom/transsion/postdetail/layer/local/LocalUiType;", "C3", "mUiType", "R", "isPauseState", "D3", "Lcom/transsion/postdetail/util/LocalVideoAdHelper;", "S", "Lcom/transsion/postdetail/util/LocalVideoAdHelper;", "localVideoAdHelper", "Lcom/transsion/player/orplayer/PlayError;", "T", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "U", "isNewPlayer", "V", "isFloatShow", "Lcom/transsion/postdetail/ui/dialog/o;", "W", "r2", "()Lcom/transsion/postdetail/ui/dialog/o;", "speedViewModel", "X", "playTimeoutHandler", "Y", "curTimeoutPlayPath", "o2", "()J", "playTimeout", "a0", "p2", "playTimeoutDp", "b0", "isAdShowing", "c0", "statusBarHeight", "d0", "traceId", "Lcom/transsion/postdetail/util/o;", "e0", "m2", "()Lcom/transsion/postdetail/util/o;", "orientationEventListener", "com/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1", "f0", "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;", "playerListener", "Ljava/lang/Runnable;", "g0", "Ljava/lang/Runnable;", "playTimeoutRunnable", "com/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b", "h0", "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;", "downloadListener", "i0", "notNetRunnable", "j0", "curUiRotation", "k0", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LocalVideoDetailFragment extends PageStatusFragment<so.l> implements com.transsion.player.orplayer.f, com.transsion.baselib.report.l.a {

    /* JADX INFO: renamed from: k0, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private int parentPosition;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private int position;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private List subtitleList;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private final Lazy videoDetailPlayDao;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private final Lazy downloadManager;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Lazy screenHelper;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private boolean isNextPlayTipsShow;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean isPlayerNetTimeout;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private long lastReloadTime;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private boolean isReload;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean isMusic;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private boolean isBgPlaying;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private AtomicInteger playErrorCount;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private VideoSubtitleControl subtitleControl;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private final int sDownloadIngAndPlayTimeout;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private final Lazy audioApi;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private LocalUiType mUiType;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private boolean isPauseState;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private LocalVideoAdHelper localVideoAdHelper;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    private PlayError errorInfo;

    /* JADX INFO: renamed from: U, reason: from kotlin metadata */
    private boolean isNewPlayer;

    /* JADX INFO: renamed from: V, reason: from kotlin metadata */
    private boolean isFloatShow;

    /* JADX INFO: renamed from: W, reason: from kotlin metadata */
    private final Lazy speedViewModel;

    /* JADX INFO: renamed from: X, reason: from kotlin metadata */
    private final Handler playTimeoutHandler;

    /* JADX INFO: renamed from: Y, reason: from kotlin metadata */
    private String curTimeoutPlayPath;

    /* JADX INFO: renamed from: Z, reason: from kotlin metadata */
    private final Lazy playTimeout;

    /* JADX INFO: renamed from: a0, reason: collision with root package name and from kotlin metadata */
    private final Lazy playTimeoutDp;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g orPlayer;

    /* JADX INFO: renamed from: b0, reason: collision with root package name and from kotlin metadata */
    private boolean isAdShowing;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: c0, reason: collision with root package name and from kotlin metadata */
    private final int statusBarHeight;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.layer.local.c0 localVideoDot;

    /* JADX INFO: renamed from: d0, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: e0, reason: collision with root package name and from kotlin metadata */
    private final Lazy orientationEventListener;

    /* JADX INFO: renamed from: f0, reason: collision with root package name and from kotlin metadata */
    private final LocalVideoDetailFragment$playerListener$1 playerListener;

    /* JADX INFO: renamed from: g0, reason: collision with root package name and from kotlin metadata */
    private final Runnable playTimeoutRunnable;

    /* JADX INFO: renamed from: h0, reason: collision with root package name and from kotlin metadata */
    private final b downloadListener;

    /* JADX INFO: renamed from: i0, reason: collision with root package name and from kotlin metadata */
    private final Runnable notNetRunnable;

    /* JADX INFO: renamed from: j0, reason: collision with root package name and from kotlin metadata */
    private LocalUiType curUiRotation;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isDownloadingPlay;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isDownloadingPlayStart;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean isPrepare;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private DownloadBean downloadBean;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Lazy layerManager;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private long playProgress;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private float unplaySeekTargetPercent;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private long duration;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private int videoWidth;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private int videoHeight;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "LocalVideoDetail";

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String localPath = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String url = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private String proxyUrl = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String resourceId = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String name = "";

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String postId = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String subjectId = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String pageFrom = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean completed = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isSeries = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy handler = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocalVideoDetailFragment.u2();
        }
    });

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Handler playingDownloadHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalVideoDetailFragment a(String str, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool, Boolean bool2, String str8, Integer num, Integer num2, Integer num3, Integer num4) {
            LocalVideoDetailFragment localVideoDetailFragment = new LocalVideoDetailFragment();
            localVideoDetailFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_local_path", str), TuplesKt.a("extra_url", str2), TuplesKt.a("extra_proxy_url", str7), TuplesKt.a("extra_name", str3), TuplesKt.a("extra_resource_id", str4), TuplesKt.a("extra_subject_id", str6), TuplesKt.a("extra_post_id", str5), TuplesKt.a("extra_completed", bool), TuplesKt.a("extra_is_series", bool2), TuplesKt.a("extra_page_from", str8), TuplesKt.a("extra_height", num), TuplesKt.a("extra_width", num2), TuplesKt.a("extra_parent_position", num3), TuplesKt.a("extra_position", num4)));
            return localVideoDetailFragment;
        }
    }

    public static final class b extends ny.d {
        b() {
        }

        @Override // ny.d
        public void h(DownloadBean bean, int i11) {
            com.transsion.postdetail.layer.local.c0 c0Var;
            Intrinsics.h(bean, "bean");
            LocalVideoDetailFragment.this.j2().h(LayerFlag.DOWNLOAD_CALLBACK, bean);
            if (Intrinsics.c(LocalVideoDetailFragment.this.resourceId, bean.getResourceId())) {
                if (bean.getStatus() == 6 && (c0Var = LocalVideoDetailFragment.this.localVideoDot) != null) {
                    DownloadException exception = bean.getException();
                    c0Var.H(1, exception != null ? exception.getMessage() : null);
                }
                if (bean.getSize() != null) {
                    Long size = bean.getSize();
                    if ((size != null ? size.longValue() : 0L) <= 0) {
                        return;
                    }
                    LocalVideoDetailFragment.this.downloadBean = bean;
                    if (bean.getStatus() == 2 || bean.getStatus() == 5) {
                        LocalVideoDetailFragment.this.c3(bean);
                        LocalVideoDetailFragment.this.j2().h(LayerFlag.DOWNLOAD_SPEED, bean.getStatus() == 5 ? "" : com.transsion.baseui.util.i.f43516a.a(bean.getProgress()));
                        LocalVideoDetailFragment.this.A3(bean, false);
                    }
                }
            }
        }
    }

    public static final class c implements vo.b {
        c() {
        }

        @Override // vo.b
        public void a(LocalUiType uiType) {
            Intrinsics.h(uiType, "uiType");
            LocalVideoDetailFragment.this.C3(uiType);
            VideoSubtitleControl videoSubtitleControl = LocalVideoDetailFragment.this.subtitleControl;
            if (videoSubtitleControl != null) {
                videoSubtitleControl.P(com.transsion.postdetail.util.u.c(uiType));
            }
            LocalVideoDetailFragment.this.G3(uiType);
            LocalVideoDetailFragment.this.localVideoAdHelper.r2(uiType, LocalVideoDetailFragment.this.orPlayer);
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                c0Var.l(uiType);
            }
        }

        @Override // vo.b
        public void b(DownloadBean downloadBean) {
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                c0Var.p();
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var2 != null) {
                c0Var2.g();
            }
            com.transsion.postdetail.layer.local.c0 c0Var3 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var3 != null) {
                c0Var3.a();
            }
            com.transsion.postdetail.layer.local.c0 c0Var4 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var4 != null) {
                c0Var4.o();
            }
        }

        @Override // vo.b
        public void c(DownloadBean downloadBean) {
            LocalVideoDetailFragment.this.isFloatShow = true;
        }

        @Override // vo.b
        public void d(DownloadBean downloadBean) {
            LocalVideoDetailFragment.this.F3();
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
            }
        }
    }

    public static final class d implements vo.c {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(LocalVideoDetailFragment localVideoDetailFragment) {
            if (localVideoDetailFragment.isDownloadingPlayStart) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, localVideoDetailFragment.TAG, "2------ playNextVideo, postDelayed start video", false, 4, null);
            localVideoDetailFragment.c2();
        }

        @Override // vo.c
        public void a(DownloadBean bean, boolean z10) {
            Intrinsics.h(bean, "bean");
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.v(c0828a, "LocalVideoMiddle", "onNext", false, 4, null);
            LocalVideoDetailFragment localVideoDetailFragment = LocalVideoDetailFragment.this;
            localVideoDetailFragment.v3(localVideoDetailFragment.downloadBean, LocalVideoDetailFragment.this.playProgress, z10);
            LocalVideoDetailFragment.this.g2().H();
            LocalVideoDetailFragment.this.g2().o();
            LocalVideoDetailFragment.this.F3();
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var2 != null) {
                c0Var2.g();
            }
            com.transsion.postdetail.layer.local.c0 c0Var3 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var3 != null) {
                c0Var3.a();
            }
            LocalVideoDetailFragment.this.isReload = false;
            LocalVideoDetailFragment.this.isNextPlayTipsShow = false;
            LocalVideoDetailFragment localVideoDetailFragment2 = LocalVideoDetailFragment.this;
            String name = bean.getName();
            if (name == null) {
                name = "";
            }
            localVideoDetailFragment2.name = name;
            LocalVideoDetailFragment localVideoDetailFragment3 = LocalVideoDetailFragment.this;
            String postId = bean.getPostId();
            if (postId == null) {
                postId = "";
            }
            localVideoDetailFragment3.postId = postId;
            LocalVideoDetailFragment localVideoDetailFragment4 = LocalVideoDetailFragment.this;
            String subjectId = bean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            localVideoDetailFragment4.subjectId = subjectId;
            LocalVideoDetailFragment.this.completed = bean.getStatus() == 5;
            LocalVideoDetailFragment localVideoDetailFragment5 = LocalVideoDetailFragment.this;
            localVideoDetailFragment5.isDownloadingPlay = true ^ localVideoDetailFragment5.completed;
            LocalVideoDetailFragment localVideoDetailFragment6 = LocalVideoDetailFragment.this;
            String resourceId = bean.getResourceId();
            if (resourceId == null) {
                resourceId = "";
            }
            localVideoDetailFragment6.resourceId = resourceId;
            LocalVideoDetailFragment.this.url = bean.getUrl();
            LocalVideoDetailFragment localVideoDetailFragment7 = LocalVideoDetailFragment.this;
            String path = bean.getPath();
            localVideoDetailFragment7.localPath = path != null ? path : "";
            if (LocalVideoDetailFragment.this.isDownloadingPlay) {
                LocalVideoDetailFragment.this.g2().k(bean);
                LocalVideoDetailFragment localVideoDetailFragment8 = LocalVideoDetailFragment.this;
                localVideoDetailFragment8.proxyUrl = localVideoDetailFragment8.g2().h(bean);
            }
            LocalVideoDetailFragment.this.downloadBean = bean;
            LocalVideoDetailFragment.this.I2();
            LocalVideoDetailFragment.this.subtitleList.clear();
            VideoSubtitleControl videoSubtitleControl = LocalVideoDetailFragment.this.subtitleControl;
            if (videoSubtitleControl != null) {
                videoSubtitleControl.Z();
            }
            LocalVideoDetailFragment.this.C2(false);
            lg.a.C0828a.f(c0828a, LocalVideoDetailFragment.this.TAG, "playNextVideo, episode = :" + bean.getEpse() + "， isDownloadingPlay = " + LocalVideoDetailFragment.this.isDownloadingPlay, false, 4, null);
            LocalVideoDetailFragment.this.playProgress = 0L;
            LocalVideoDetailFragment.this.isPrepare = false;
            LocalVideoDetailFragment.this.unplaySeekTargetPercent = 0.0f;
        }

        @Override // vo.c
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            LocalVideoDetailFragment.this.isDownloadingPlayStart = false;
            Handler handler = LocalVideoDetailFragment.this.playingDownloadHandler;
            final LocalVideoDetailFragment localVideoDetailFragment = LocalVideoDetailFragment.this;
            handler.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.r0
                @Override // java.lang.Runnable
                public final void run() {
                    LocalVideoDetailFragment.d.d(localVideoDetailFragment);
                }
            }, 5000L);
        }
    }

    public static final class e implements hu.a {
        e() {
        }
    }

    public static final class f extends androidx.activity.u {
        f() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            lg.a.C0828a.f(lg.a.f68839a, LocalVideoDetailFragment.this.TAG, "----------handleOnBackPressed", false, 4, null);
            LocalVideoDetailFragment.this.j2().h(LayerFlag.BACK_PRESSED, new Object[0]);
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49535a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49535a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49535a;
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
            this.f49535a.invoke(obj);
        }
    }

    public LocalVideoDetailFragment() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.layerManager = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: com.transsion.postdetail.ui.fragment.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.Y2();
            }
        });
        this.parentPosition = -1;
        this.position = -1;
        this.subtitleList = new ArrayList();
        this.videoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.k0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.H3();
            }
        });
        this.downloadManager = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.l0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.Z1();
            }
        });
        this.screenHelper = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.m0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.y3(this.f49756a);
            }
        });
        this.playErrorCount = new AtomicInteger(0);
        this.sDownloadIngAndPlayTimeout = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.audioApi = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: com.transsion.postdetail.ui.fragment.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.W1();
            }
        });
        this.localVideoAdHelper = new LocalVideoAdHelper();
        this.isNewPlayer = true;
        this.speedViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.postdetail.ui.dialog.o.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$special$$inlined$activityViewModels$default$2
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
        this.playTimeoutHandler = new Handler(Looper.getMainLooper());
        this.playTimeout = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.o0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(LocalVideoDetailFragment.l3());
            }
        });
        this.playTimeoutDp = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.p0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(LocalVideoDetailFragment.j3());
            }
        });
        this.statusBarHeight = com.blankj.utilcode.util.d.c();
        this.traceId = "";
        this.orientationEventListener = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.q0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.g3(this.f49798a);
            }
        });
        this.playerListener = new LocalVideoDetailFragment$playerListener$1(this);
        this.playTimeoutRunnable = new Runnable() { // from class: com.transsion.postdetail.ui.fragment.q
            @Override // java.lang.Runnable
            public final void run() {
                LocalVideoDetailFragment.k3(this.f49797a);
            }
        };
        this.downloadListener = new b();
        this.notNetRunnable = new Runnable() { // from class: com.transsion.postdetail.ui.fragment.a0
            @Override // java.lang.Runnable
            public final void run() {
                LocalVideoDetailFragment.b3(this.f49646a);
            }
        };
        this.curUiRotation = LocalUiType.MIDDLE;
    }

    private final void A2() {
        z2();
        B2();
        K2();
        C2(true);
        U2();
        initAudioListener();
        R2(this.downloadBean);
        F2();
        initAd();
        S2();
        MediaItem mediaItemQ = MusicFloatManager.f43454h.b().q();
        if (mediaItemQ != null) {
            mediaItemQ.setPageName("local_detail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A3(DownloadBean bean, boolean isStart) {
        int iLongValue;
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        long j11 = this.duration;
        long j12 = 0;
        long j13 = 10000;
        int i11 = j11 > 0 ? (int) ((this.playProgress / j11) * 10000) : 0;
        boolean z10 = false;
        boolean z11 = false;
        for (DownloadRange downloadRange : bean.getDownloadRanges()) {
            float start = downloadRange.getStart();
            Long size = bean.getSize();
            Intrinsics.e(size);
            float fLongValue = start / size.longValue();
            float f11 = j13;
            int i12 = (int) (fLongValue * f11);
            if (downloadRange.getProgress() == j12) {
                iLongValue = 0;
            } else {
                float f12 = downloadRange.totalProgress();
                Long size2 = bean.getSize();
                Intrinsics.e(size2);
                iLongValue = (int) ((f12 / size2.longValue()) * f11);
            }
            if (z10) {
                z11 = true;
                if (i11 < i12) {
                    if (iLongValue < i11) {
                        iLongValue = i11;
                        i12 = iLongValue;
                    } else {
                        i12 = i11;
                    }
                }
                z10 = false;
            }
            if (i11 > 0 && !z11 && i11 > iLongValue) {
                z10 = true;
            }
            linkedHashMap.put(Integer.valueOf(i12), Integer.valueOf(iLongValue));
            j12 = 0;
            j13 = 10000;
        }
        if (!isStart) {
            this.playingDownloadHandler.removeCallbacksAndMessages(null);
            j2().h(LayerFlag.DOWNLOAD_PROGRESS, linkedHashMap);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "start setDownloadedProgress, progressList = " + linkedHashMap, false, 4, null);
        this.playingDownloadHandler.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.f0
            @Override // java.lang.Runnable
            public final void run() {
                LocalVideoDetailFragment.B3(this.f49685a, linkedHashMap);
            }
        }, 1000L);
    }

    private final void B2() {
        com.transsion.postdetail.layer.local.c0 c0Var = new com.transsion.postdetail.layer.local.c0();
        this.localVideoDot = c0Var;
        c0Var.g();
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.localVideoDot;
        if (c0Var2 != null) {
            c0Var2.C(this.position);
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.localVideoDot;
        if (c0Var3 != null) {
            c0Var3.B(this.parentPosition);
        }
        j2().h(LayerFlag.LAYER_EVENT, new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B3(LocalVideoDetailFragment localVideoDetailFragment, Map map) {
        localVideoDetailFragment.j2().h(LayerFlag.DOWNLOAD_PROGRESS, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C2(boolean isFirst) {
        so.b0 b0Var;
        final MemberGuideBannerView memberGuideBannerView;
        String activityId;
        Lottery lottery;
        Lottery lottery2;
        String name;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        DownloadBean downloadBean3;
        DownloadBean downloadBean4;
        g2().e(this.downloadListener);
        DownloadBean downloadBeanQ = DownloadEsHelper.f59419m.a().q(this.resourceId);
        this.downloadBean = downloadBeanQ;
        this.isSeries = downloadBeanQ != null ? downloadBeanQ.isSeries() : this.isSeries;
        String subjectId = this.subjectId;
        if (subjectId.length() == 0 && ((downloadBean4 = this.downloadBean) == null || (subjectId = downloadBean4.getSubjectId()) == null)) {
            subjectId = "";
        }
        this.subjectId = subjectId;
        String postId = this.postId;
        if (postId.length() == 0 && ((downloadBean3 = this.downloadBean) == null || (postId = downloadBean3.getPostId()) == null)) {
            postId = "";
        }
        this.postId = postId;
        if (Intrinsics.c(this.pageFrom, PushMsgSource.SOURCE_PUSH) && ((downloadBean = this.downloadBean) == null || ((downloadBean != null && downloadBean.getStatus() == 7) || ((downloadBean2 = this.downloadBean) != null && downloadBean2.getStatus() == 0)))) {
            uh.b.f76753a.d(R$string.video_has_delete_tip);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        j2().h(LayerFlag.UPDATE_DOWNLOAD_DATA, this.downloadBean, this.pageFrom, Boolean.valueOf(isFirst));
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.j0(this.downloadBean);
        }
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.A(this.downloadBean, this.pageFrom);
        }
        if (this.isDownloadingPlay) {
            DownloadBean downloadBean5 = this.downloadBean;
            if ((downloadBean5 != null ? downloadBean5.getProgress() : 0L) > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED && !this.isDownloadingPlayStart) {
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "3--------initDownloadBean, start video", false, 4, null);
                c2();
            }
        }
        E3();
        if (isFirst) {
            com.transsion.postdetail.layer.a aVarJ2 = j2();
            LayerFlag layerFlag = LayerFlag.REQUEST_FORYOU;
            DownloadBean downloadBean6 = this.downloadBean;
            Boolean boolValueOf = Boolean.valueOf(downloadBean6 == null || !downloadBean6.isInnerRes() || this.subjectId.length() == 0);
            DownloadBean downloadBean7 = this.downloadBean;
            if (downloadBean7 == null || !downloadBean7.isInnerRes() || this.subjectId.length() <= 0) {
                DownloadBean downloadBean8 = this.downloadBean;
                if (downloadBean8 == null || (name = downloadBean8.getName()) == null) {
                    name = "";
                }
            } else {
                name = this.subjectId;
            }
            aVarJ2.h(layerFlag, boolValueOf, name);
            if (this.isSeries) {
                j2().h(LayerFlag.SERIES_INIT, this.subjectId, this.resourceId);
                J2();
            }
        }
        if (this.isDownloadingPlay && !nh.m.f70474a.e()) {
            this.playingDownloadHandler.postDelayed(this.notNetRunnable, 6000L);
        }
        VideoSubtitleControl videoSubtitleControl2 = this.subtitleControl;
        if (videoSubtitleControl2 != null) {
            videoSubtitleControl2.r0(h2());
        }
        this.localVideoAdHelper.v2(this.downloadBean);
        so.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (b0Var = mViewBinding.f75587l) == null || (memberGuideBannerView = b0Var.f75431f) == null) {
            return;
        }
        memberGuideBannerView.setVisibility(0);
        this.traceId = ti.n.f76264a.b();
        memberGuideBannerView.setRefreshMemberInfo(new Function0() { // from class: com.transsion.postdetail.ui.fragment.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment.D2(this.f49826a, memberGuideBannerView);
            }
        });
        DownloadBean downloadBean9 = this.downloadBean;
        String subjectId2 = downloadBean9 != null ? downloadBean9.getSubjectId() : null;
        String str = this.traceId;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Boolean boolValueOf2 = iPremiumApi != null ? Boolean.valueOf(iPremiumApi.c()) : null;
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Integer numO = iPremiumApi2 != null ? iPremiumApi2.o() : null;
        IPremiumApi iPremiumApi3 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        memberGuideBannerView.setMemberInfo("local_video_detail", "video_detail/vip_banner", str, subjectId2, (16 & 16) != 0 ? false : false, boolValueOf2, numO, iPremiumApi3 != null ? Boolean.valueOf(iPremiumApi3.u()) : null);
        memberGuideBannerView.setRadius(0.0f);
        IRewardsCenterApi iRewardsCenterApi = (IRewardsCenterApi) TheRouter.d(IRewardsCenterApi.class, new Object[0]);
        RewardsCenterData rewardsCenterDataA = iRewardsCenterApi != null ? iRewardsCenterApi.a() : null;
        if (rewardsCenterDataA == null || (lottery2 = rewardsCenterDataA.getLottery()) == null || (activityId = lottery2.getActivityId()) == null) {
            activityId = "0";
        }
        boolean z10 = Integer.parseInt(activityId) > 0;
        String bgImage = (rewardsCenterDataA == null || (lottery = rewardsCenterDataA.getLottery()) == null) ? null : lottery.getBgImage();
        MemberGuideBannerView.setZeroTreasureVisible$default(memberGuideBannerView, z10, false, 2, null);
        if (z10) {
            memberGuideBannerView.setZeroTreasureIcon(bgImage != null ? bgImage : "");
        }
        memberGuideBannerView.setBtnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalVideoDetailFragment.E2(this.f49834a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D2(LocalVideoDetailFragment localVideoDetailFragment, MemberGuideBannerView memberGuideBannerView) {
        DownloadBean downloadBean = localVideoDetailFragment.downloadBean;
        String subjectId = downloadBean != null ? downloadBean.getSubjectId() : null;
        String str = localVideoDetailFragment.traceId;
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Boolean boolValueOf = iPremiumApi != null ? Boolean.valueOf(iPremiumApi.c()) : null;
        IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        Integer numO = iPremiumApi2 != null ? iPremiumApi2.o() : null;
        IPremiumApi iPremiumApi3 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        memberGuideBannerView.setMemberInfo("local_video_detail", "video_detail/vip_banner", str, subjectId, true, boolValueOf, numO, iPremiumApi3 != null ? Boolean.valueOf(iPremiumApi3.u()) : null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E2(LocalVideoDetailFragment localVideoDetailFragment, View view) {
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            iPremiumApi.j(localVideoDetailFragment.pageFrom, ti.n.f76264a.b(), "video_detail/vip_banner", localVideoDetailFragment.subjectId);
        }
    }

    private final void E3() {
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null || !downloadBean.isVideo()) {
            return;
        }
        DownloadBean downloadBean2 = this.downloadBean;
        if (downloadBean2 == null || !downloadBean2.isMusic()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.a()), null, null, new LocalVideoDetailFragment$setSubtitle$1(this, null), 3, null);
        }
    }

    private final void F2() {
        if (this.isDownloadingPlay) {
            this.isReload = false;
            this.isDownloadingPlayStart = false;
            g2().B();
            this.playingDownloadHandler.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.x
                @Override // java.lang.Runnable
                public final void run() {
                    LocalVideoDetailFragment.G2(this.f49849a);
                }
            }, 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F3() {
        Map mapE;
        Map mapE2;
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
            if (c0Var != null && (mapE2 = c0Var.e()) != null) {
                mapE2.clear();
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = this.localVideoDot;
            if (c0Var2 == null || (mapE = c0Var2.e()) == null) {
                return;
            }
            mapE.putAll(videoSubtitleControl.G());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G2(LocalVideoDetailFragment localVideoDetailFragment) {
        if (localVideoDetailFragment.isDownloadingPlayStart) {
            return;
        }
        localVideoDetailFragment.c2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G3(LocalUiType uiType) {
        ImageView imageView;
        so.l mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (imageView = mViewBinding.f75590o) == null) ? null : imageView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = uiType == LocalUiType.LAND ? 0 : this.statusBarHeight;
    }

    private final void H2(boolean isSameResource) {
        com.transsion.player.orplayer.g gVar;
        ao.e eVarCurrentMediaSource;
        com.transsion.postdetail.layer.local.c0 c0Var;
        DownloadBean downloadBean = this.downloadBean;
        boolean zIsMusic = downloadBean != null ? downloadBean.isMusic() : false;
        this.isMusic = zIsMusic;
        if (zIsMusic && (c0Var = this.localVideoDot) != null) {
            c0Var.E("music_play");
        }
        if (!this.isMusic || !isSameResource) {
            this.isBgPlaying = false;
            bo.d dVar = new bo.d(RenderType.SURFACE_VIEW, false, 1000, 0, 0, 0, 3, 0, 0L, 0, this.sDownloadIngAndPlayTimeout, false, false, false, false, false, null, 129976, null);
            com.transsion.player.orplayer.g gVar2 = this.orPlayer;
            if (gVar2 != null) {
                gVar2.setPlayerConfig(dVar);
                return;
            }
            return;
        }
        com.transsion.player.orplayer.g gVar3 = this.orPlayer;
        if (gVar3 != null && (eVarCurrentMediaSource = gVar3.currentMediaSource()) != null) {
            MusicFloatManager.a aVar = MusicFloatManager.f43454h;
            aVar.b().C(eVarCurrentMediaSource.e());
            aVar.b().B(eVarCurrentMediaSource.i());
        }
        this.isBgPlaying = true;
        com.transsion.player.orplayer.g gVar4 = this.orPlayer;
        if (gVar4 == null || gVar4.isPlaying() || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao H3() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I2() {
        HashMap mapG;
        HashMap map = new HashMap();
        map.put("resource_id", this.resourceId);
        map.put("subject_id", this.subjectId);
        map.put("post_id", this.postId);
        map.put("url", this.url);
        DownloadBean downloadBean = this.downloadBean;
        map.put("ops", downloadBean != null ? downloadBean.getOps() : null);
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.putAll(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I3() {
        DownloadBean downloadBean;
        com.transsnet.downloader.util.i.f59939a.c("5");
        if (!this.isDownloadingPlay || (downloadBean = this.downloadBean) == null) {
            return;
        }
        DownloadUtil downloadUtil = DownloadUtil.f59900a;
        Intrinsics.e(downloadBean);
        downloadUtil.B(downloadBean);
        DownloadBean downloadBean2 = this.downloadBean;
        Intrinsics.e(downloadBean2);
        A3(downloadBean2, true);
    }

    private final void J2() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "---------initSeries", false, 4, null);
        j2().h(LayerFlag.SERIES_EVENT, new d());
    }

    private final void K2() {
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        VideoSubtitleControl videoSubtitleControl = new VideoSubtitleControl(fragmentActivityRequireActivity, "local_video_detail", com.transsion.baselib.helper.d.f43265a.d(), h2(), new Function1() { // from class: com.transsion.postdetail.ui.fragment.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.L2(this.f49855a, ((Boolean) obj).booleanValue());
            }
        }, new Function2() { // from class: com.transsion.postdetail.ui.fragment.z
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LocalVideoDetailFragment.M2(this.f49862a, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            }
        }, new Function3() { // from class: com.transsion.postdetail.ui.fragment.b0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return LocalVideoDetailFragment.N2(this.f49652a, (String) obj, (String) obj2, ((Integer) obj3).intValue());
            }
        }, new Function1() { // from class: com.transsion.postdetail.ui.fragment.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.O2((DubsInfo) obj);
            }
        }, new Function1() { // from class: com.transsion.postdetail.ui.fragment.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.P2((List) obj);
            }
        }, null, new Function2() { // from class: com.transsion.postdetail.ui.fragment.e0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LocalVideoDetailFragment.Q2(this.f49676a, (String) obj, (String) obj2);
            }
        }, 512, null);
        j2().h(LayerFlag.SUBTITLE_CONTROL, videoSubtitleControl);
        this.subtitleControl = videoSubtitleControl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L2(LocalVideoDetailFragment localVideoDetailFragment, boolean z10) {
        localVideoDetailFragment.j2().g(z10 ? LayerFlag.LOADING_BEGIN : LayerFlag.LOADING_END, new Object[0]);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M2(LocalVideoDetailFragment localVideoDetailFragment, boolean z10, boolean z11) {
        if (z10) {
            localVideoDetailFragment.j2().h(LayerFlag.BOTTOM_CONTROL, Boolean.TRUE, Boolean.valueOf(z11));
        } else {
            localVideoDetailFragment.j2().h(LayerFlag.BOTTOM_CONTROL, Boolean.FALSE, Boolean.TRUE);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N2(LocalVideoDetailFragment localVideoDetailFragment, String lanName, String lan, int i11) {
        Intrinsics.h(lanName, "lanName");
        Intrinsics.h(lan, "lan");
        com.transsion.postdetail.layer.local.c0 c0Var = localVideoDetailFragment.localVideoDot;
        if (c0Var != null) {
            c0Var.s(lanName, lan, i11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O2(DubsInfo it) {
        Intrinsics.h(it, "it");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P2(List it) {
        Intrinsics.h(it, "it");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q2(LocalVideoDetailFragment localVideoDetailFragment, String str, String str2) {
        com.transsion.postdetail.layer.local.c0 c0Var = localVideoDetailFragment.localVideoDot;
        if (c0Var == null) {
            return null;
        }
        c0Var.t(str, str2);
        return Unit.f67061a;
    }

    private final void R2(DownloadBean bean) {
        if (bean != null) {
            String path = this.localPath;
            if (path.length() == 0 && (path = bean.getPath()) == null) {
                path = "";
            }
            this.localPath = path;
            String url = this.url;
            if (url.length() == 0) {
                url = bean.getUrl();
            }
            this.url = url;
            String subjectId = this.subjectId;
            if (subjectId.length() == 0 && (subjectId = bean.getSubjectId()) == null) {
                subjectId = "";
            }
            this.subjectId = subjectId;
            String name = this.name;
            if (name.length() == 0 && (name = bean.getName()) == null) {
                name = "";
            }
            this.name = name;
            String str = this.postId;
            if (str.length() == 0) {
                String postId = bean.getPostId();
                str = postId != null ? postId : "";
            }
            this.postId = str;
            this.completed = bean.getStatus() == 5 || !bean.isInnerRes();
            this.isSeries = bean.isSeries();
            this.videoHeight = bean.getVideoHeight();
            this.videoWidth = bean.getVideoWidth();
            boolean z10 = this.completed;
            this.isDownloadingPlay = !z10;
            if (!z10 && this.proxyUrl.length() == 0 && !this.isBgPlaying) {
                this.proxyUrl = g2().h(bean);
            }
        }
        Z2(this.localPath);
        j2().h(LayerFlag.INIT_DATA, this.resourceId, this.subjectId, this.postId, Boolean.valueOf(this.isDownloadingPlay), Boolean.valueOf(this.isSeries));
        j2().h(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
        I2();
        this.isNextPlayTipsShow = false;
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.i0(new e());
        }
    }

    private final void S2() {
        ConstraintLayout constraintLayoutB;
        so.l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        constraintLayoutB.post(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.r
            @Override // java.lang.Runnable
            public final void run() {
                LocalVideoDetailFragment.T2(this.f49804a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T2(LocalVideoDetailFragment localVideoDetailFragment) {
        FragmentActivity activity = localVideoDetailFragment.getActivity();
        if (activity != null) {
            ox.b bVarC = ox.b.f72191a.c();
            String str = localVideoDetailFragment.subjectId;
            DownloadBean downloadBean = localVideoDetailFragment.downloadBean;
            bVarC.e(activity, str, null, "local_video_detail", downloadBean != null ? downloadBean.getOps() : null);
        }
    }

    private final void U2() {
        String url;
        boolean z10;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.orPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.SURFACE_VIEW);
        com.transsnet.downloader.util.i.f59939a.d("1");
        String str = this.isDownloadingPlay ? this.proxyUrl : this.localPath;
        com.transsion.videofloat.manager.a0 a0Var = com.transsion.videofloat.manager.a0.f57933a;
        LocalFloatManager localFloatManager = LocalFloatManager.f50142b;
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null || (url = downloadBean.getResourceId()) == null) {
            DownloadBean downloadBean2 = this.downloadBean;
            url = downloadBean2 != null ? downloadBean2.getUrl() : ImagesContract.LOCAL;
        }
        com.transsion.player.orplayer.g gVarB = a0Var.b(localFloatManager.h(url));
        String strValueOf = String.valueOf(str.hashCode());
        ko.l0 l0Var = ko.l0.f66968a;
        com.transsion.player.orplayer.g gVarF = l0Var.f(strValueOf);
        boolean z11 = gVarF == null && gVarB == null;
        this.isNewPlayer = z11;
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c(this.TAG, "initVideoPlayer, subjectId:" + this.subjectId + ", isNewPlayer:" + z11 + ", id:" + strValueOf, true);
        if (gVarB != null) {
            j2().h(LayerFlag.PLAYER_FOREGROUND, Boolean.FALSE);
            lg.a.C0828a.f(c0828a, this.TAG, "initVideoPlayer, float player复用", false, 4, null);
            z10 = true;
        } else if (gVarF != null) {
            j2().h(LayerFlag.PLAYER_FOREGROUND, Boolean.FALSE);
            lg.a.C0828a.f(c0828a, this.TAG, "initVideoPlayer, music player复用", false, 4, null);
            z10 = true;
            gVarB = gVarF;
        } else {
            gVarB = l0Var.s();
            z10 = false;
        }
        this.orPlayer = gVarB;
        ox.b.C0878b.a(ox.b.f72191a.c(), false, 1, null);
        H2(z10);
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            ORPlayerView oRPlayerView = this.orPlayerView;
            gVar.setSurfaceView(oRPlayerView != null ? oRPlayerView.getSurface() : null);
            gVar.setLooping(false);
            gVar.addPlayerListener(this.playerListener);
            com.transsion.baselib.helper.d dVar = com.transsion.baselib.helper.d.f43265a;
            gVar.setSpeed(dVar.d());
            gVar.setScaleMode(dVar.c());
            com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
            if (c0Var != null) {
                c0Var.I(gVar);
            }
        }
        j2().e(LayerFlag.SET_PLAYER, this.orPlayer, this.orPlayerView);
        r2().b().j(this, new g(new Function1() { // from class: com.transsion.postdetail.ui.fragment.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.V2(this.f49841a, (Float) obj);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V2(LocalVideoDetailFragment localVideoDetailFragment, Float f11) {
        com.transsion.player.orplayer.g gVar = localVideoDetailFragment.orPlayer;
        if (gVar != null) {
            Intrinsics.e(f11);
            gVar.setSpeed(f11.floatValue());
        }
        localVideoDetailFragment.j2().h(LayerFlag.UPDATE_SPEED, f11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi W1() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X1(boolean isPortrait) {
        LocalUiType localUiType = this.curUiRotation;
        boolean zIsResumed = isResumed();
        LocalUiType localUiType2 = this.mUiType;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("竖屏: ");
        sb2.append(isPortrait);
        sb2.append("，curUiRation: ");
        sb2.append(localUiType);
        sb2.append(", isResumed");
        sb2.append(zIsResumed);
        sb2.append(", ui:");
        sb2.append(localUiType2);
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var == null || !c0Var.d()) {
            if (isPortrait) {
                t3();
            }
            LocalUiType localUiType3 = isPortrait ? LocalUiType.MIDDLE : LocalUiType.LAND;
            if (!isResumed() || this.curUiRotation == localUiType3 || localUiType3 == this.mUiType) {
                this.curUiRotation = localUiType3;
                return;
            }
            this.curUiRotation = localUiType3;
            hj.i.f64505a.t("auto_screen", MapsKt.f(new Pair("orientation", localUiType3 == LocalUiType.LAND ? "land" : "port")));
            j2().h(LayerFlag.SCREEN_ORIENTATION_CHANGED, localUiType3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean X2() {
        return ox.e.f72197a.b().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.postdetail.layer.a Y2() {
        return new com.transsion.postdetail.layer.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g Z1() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    private final void Z2(String path) {
        int i11;
        int i12 = this.videoHeight;
        if (i12 <= 0 || (i11 = this.videoWidth) <= 0) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new LocalVideoDetailFragment$localVideoPrepare$1(path, this, null), 3, null);
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "play path = " + path, false, 4, null);
            return;
        }
        lg.a.C0828a.v(lg.a.f68839a, this.TAG, "localVideoPrepare, videoWidth  = " + i11 + ",videoHeight = " + i12, false, 4, null);
        f3(this.videoWidth, this.videoHeight, path);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a2() {
        if (nh.m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "---------has net， delay show toast", false, 4, null);
            getHandler().postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.h0
                @Override // java.lang.Runnable
                public final void run() {
                    LocalVideoDetailFragment.b2(this.f49717a);
                }
            }, 10000L);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "---------no net， show error", false, 4, null);
            j2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b2(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.j2().h(LayerFlag.SHOW_TOAST, Utils.a().getString(R$string.downloading_play_wait_msg));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b3(LocalVideoDetailFragment localVideoDetailFragment) {
        lg.a.C0828a.f(lg.a.f68839a, localVideoDetailFragment.TAG, "---------no net， show error", false, 4, null);
        localVideoDetailFragment.j2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c2() {
        this.isPrepare = false;
        this.isDownloadingPlayStart = true;
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.a();
        }
        com.transsnet.downloader.util.i.f59939a.b("2");
        n3(this.proxyUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c3(DownloadBean bean) {
        this.lastReloadTime = SystemClock.elapsedRealtime();
        if (!this.isDownloadingPlayStart && bean.getProgress() >= lj.b.f68866a.d()) {
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "1------ onDownloading, start video", false, 4, null);
            c2();
            return;
        }
        if (bean.getProgress() < 10485760 || this.isPrepare || SystemClock.elapsedRealtime() - this.lastReloadTime <= this.sDownloadIngAndPlayTimeout) {
            return;
        }
        lg.a.f68839a.x("long_video_play", "video error，reload~~ from onDownloading progress=" + bean.getProgress() + ",isPrepare=" + this.isPrepare + ",waitTime=" + (System.currentTimeMillis() - this.lastReloadTime), true);
        this.lastReloadTime = SystemClock.elapsedRealtime();
        s3(this, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IAudioApi e2() {
        return (IAudioApi) this.audioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e3() {
        j2().g(LayerFlag.COMPLETION, new Object[0]);
    }

    private final Intent f2() {
        Intent intent = new Intent();
        intent.putExtra("path", "/video/detail");
        intent.putExtra("id", this.subjectId);
        DownloadBean downloadBean = this.downloadBean;
        intent.putExtra("extra_resource_id", downloadBean != null ? downloadBean.getResourceId() : null);
        DownloadBean downloadBean2 = this.downloadBean;
        intent.putExtra("extra_local_path", downloadBean2 != null ? downloadBean2.getPath() : null);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f3(int videoWidth, int videoHeight, String path) {
        j2().h(LayerFlag.ADD_SURFACE, Integer.valueOf(videoWidth), Integer.valueOf(videoHeight));
        if (!this.isDownloadingPlay) {
            this.isPrepare = false;
            com.transsnet.downloader.util.i.f59939a.b("2");
            com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
            if (c0Var != null) {
                c0Var.a();
            }
            n3(path);
            return;
        }
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null && !gVar.isPlaying()) {
            j2().g(LayerFlag.LOADING_BEGIN, new Object[0]);
        }
        DownloadBean downloadBean = this.downloadBean;
        if ((downloadBean != null ? downloadBean.getProgress() : 0L) >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED || nh.m.f70474a.e()) {
            return;
        }
        j2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsnet.downloader.manager.g g2() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.postdetail.util.o g3(final LocalVideoDetailFragment localVideoDetailFragment) {
        FragmentActivity activity = localVideoDetailFragment.getActivity();
        if (activity != null) {
            return new com.transsion.postdetail.util.o(activity, new Function1() { // from class: com.transsion.postdetail.ui.fragment.g0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LocalVideoDetailFragment.h3(this.f49710a, ((Integer) obj).intValue());
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler getHandler() {
        return (Handler) this.handler.getValue();
    }

    private final List h2() {
        DownloadBean downloadBean = this.downloadBean;
        String currentDubLanName = downloadBean != null ? downloadBean.getCurrentDubLanName() : null;
        if (currentDubLanName == null || currentDubLanName.length() == 0) {
            return CollectionsKt.l();
        }
        String str = this.subjectId;
        DownloadBean downloadBean2 = this.downloadBean;
        String currentDubLanName2 = downloadBean2 != null ? downloadBean2.getCurrentDubLanName() : null;
        DownloadBean downloadBean3 = this.downloadBean;
        DubsInfo dubsInfo = new DubsInfo(str, currentDubLanName2, downloadBean3 != null ? downloadBean3.getCurrentDubLanCode() : null, false, 8, null);
        dubsInfo.setSelected(true);
        return CollectionsKt.e(dubsInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h3(LocalVideoDetailFragment localVideoDetailFragment, int i11) {
        if (i11 == 1 || i11 == 3) {
            localVideoDetailFragment.j2().h(LayerFlag.UPDATE_ROTATION, Integer.valueOf(i11));
        }
        return Unit.f67061a;
    }

    private final Intent i2(String pageName) {
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        DownloadBean downloadBean = this.downloadBean;
        boolean zIsCompleted = downloadBean != null ? downloadBean.isCompleted() : false;
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean2 = this.downloadBean;
        sb2.append(downloadBean2 != null ? downloadBean2.getResourceId() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_local_path");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean3 = this.downloadBean;
        sb2.append(downloadBean3 != null ? downloadBean3.getPath() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_url");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean4 = this.downloadBean;
        sb2.append(downloadBean4 != null ? downloadBean4.getUrl() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(pageName);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("channel=media_notification&");
        sb2.append("extra_completed");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(zIsCompleted);
        if (iPushProvider == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        if (intentA == null) {
            return null;
        }
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse(sb2.toString()));
        return intentA;
    }

    private final void initAd() {
        AppCompatImageView appCompatImageView;
        LocalVideoAdHelper localVideoAdHelper = this.localVideoAdHelper;
        so.l mViewBinding = getMViewBinding();
        DownloadBean downloadBean = this.downloadBean;
        localVideoAdHelper.n2(mViewBinding, downloadBean != null ? downloadBean.getGenre() : null, new Function1() { // from class: com.transsion.postdetail.ui.fragment.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.w2(this.f49812a, ((Boolean) obj).booleanValue());
            }
        });
        so.l mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatImageView = mViewBinding2.f75589n) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.fragment.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalVideoDetailFragment.x2(this.f49819a, view);
            }
        });
    }

    private final void initAudioListener() {
        IAudioApi iAudioApiE2 = e2();
        if (iAudioApiE2 != null) {
            iAudioApiE2.addPlayerListener(this);
        }
        IAudioApi iAudioApiE3 = e2();
        if (iAudioApiE3 != null) {
            iAudioApiE3.pause();
        }
    }

    private final void initView() {
        so.b0 b0Var;
        so.z zVar;
        so.d0 d0Var;
        ConstraintLayout constraintLayoutB;
        so.l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
            constraintLayoutB.setKeepScreenOn(true);
        }
        so.l mViewBinding2 = getMViewBinding();
        ConstraintLayout constraintLayout = null;
        ConstraintLayout constraintLayout2 = (mViewBinding2 == null || (d0Var = mViewBinding2.f75588m) == null) ? null : d0Var.f75474i;
        if (constraintLayout2 != null) {
            j2().h(LayerFlag.INIT_VIEW_TYPE, constraintLayout2, LocalUiType.PORTRAIT);
        }
        so.l mViewBinding3 = getMViewBinding();
        ConstraintLayout constraintLayout3 = (mViewBinding3 == null || (zVar = mViewBinding3.f75586k) == null) ? null : zVar.f75799l;
        if (constraintLayout3 != null) {
            j2().h(LayerFlag.INIT_VIEW_TYPE, constraintLayout3, LocalUiType.LAND);
        }
        so.l mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (b0Var = mViewBinding4.f75587l) != null) {
            constraintLayout = b0Var.f75444s;
        }
        if (constraintLayout != null) {
            j2().h(LayerFlag.INIT_VIEW_TYPE, constraintLayout, LocalUiType.MIDDLE);
        }
        G3(LocalUiType.PORTRAIT);
        y2();
        Context context = getContext();
        if (context == null || com.transsion.baseui.util.b.a(context)) {
            return;
        }
        q2().h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.postdetail.layer.a j2() {
        return (com.transsion.postdetail.layer.a) this.layerManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long j3() {
        Long lX;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sb_lv_play_timeout_dp", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 12000L;
        }
        return lX.longValue();
    }

    private final MediaItem k2() {
        DownloadBean downloadBean = this.downloadBean;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        String str = this.subjectId;
        DownloadBean downloadBean2 = this.downloadBean;
        String cover = downloadBean2 != null ? downloadBean2.getCover() : null;
        String strT = MusicFloatManager.f43454h.b().t(this.subjectId);
        PendingIntent pendingIntentL2 = l2();
        Intent intentF2 = f2();
        DownloadBean downloadBean3 = this.downloadBean;
        boolean z10 = false;
        if (downloadBean3 != null && downloadBean3.getType() == 6) {
            z10 = true;
        }
        boolean z11 = z10;
        DownloadBean downloadBean4 = this.downloadBean;
        return new MediaItem(totalTitleName, "", cover, null, null, null, pendingIntentL2, intentF2, str, strT, Boolean.valueOf(z11), "local_detail", null, downloadBean4 != null ? downloadBean4.getOps() : null, 4152, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k3(LocalVideoDetailFragment localVideoDetailFragment) {
        String str = localVideoDetailFragment.curTimeoutPlayPath;
        if (str != null) {
            com.transsion.player.orplayer.g gVar = localVideoDetailFragment.orPlayer;
            if (gVar != null) {
                gVar.reset();
            }
            com.transsion.player.orplayer.g gVar2 = localVideoDetailFragment.orPlayer;
            if (gVar2 != null) {
                gVar2.stop();
            }
            com.transsion.postdetail.layer.local.c0 c0Var = localVideoDetailFragment.localVideoDot;
            if (c0Var != null) {
                c0Var.M(true);
            }
            String strValueOf = String.valueOf(str.hashCode());
            lg.a.f68839a.c("long_video_play", "playerTimeout,change 2 software decoder, id:" + strValueOf + ", path = " + str, true);
            com.transsion.player.orplayer.g gVar3 = localVideoDetailFragment.orPlayer;
            if (gVar3 != null) {
                gVar3.enableHardwareDecoder(false);
            }
            com.transsion.player.orplayer.g gVar4 = localVideoDetailFragment.orPlayer;
            if (gVar4 != null) {
                ao.e eVar = new ao.e(strValueOf, str, 0, null, localVideoDetailFragment.k2(), 12, null);
                MusicFloatManager.a aVar = MusicFloatManager.f43454h;
                aVar.b().C(eVar.e());
                aVar.b().B(eVar.i());
                gVar4.setDataSource(eVar);
            }
            com.transsion.player.orplayer.g gVar5 = localVideoDetailFragment.orPlayer;
            if (gVar5 != null) {
                gVar5.prepare();
            }
        }
    }

    private final PendingIntent l2() {
        return PendingIntent.getActivity(Utils.a(), 0, i2("media_notification"), n2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long l3() {
        Long lX;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sb_lv_play_timeout", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 8000L;
        }
        return lX.longValue();
    }

    private final com.transsion.postdetail.util.o m2() {
        return (com.transsion.postdetail.util.o) this.orientationEventListener.getValue();
    }

    private final void m3(long progress) {
        if (this.isBgPlaying || !this.isNewPlayer) {
            return;
        }
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.seekTo(progress);
        }
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            gVar2.play();
        }
        if (this.unplaySeekTargetPercent <= 0.0f && progress >= 1000 && !this.isReload) {
            j2().h(LayerFlag.SHOW_TOAST, Utils.a().getString(R$string.last_played_time) + " " + com.transsion.postdetail.util.n.d(progress));
        }
        if (!this.isDownloadingPlay || this.isReload) {
            return;
        }
        com.transsion.postdetail.layer.a aVarJ2 = j2();
        LayerFlag layerFlag = LayerFlag.SHOW_TOAST;
        String string = Utils.a().getString(R$string.analysing_from);
        String[] stringArray = Utils.a().getResources().getStringArray(R$array.analysing_array);
        Intrinsics.g(stringArray, "getStringArray(...)");
        aVarJ2.h(layerFlag, string + " [" + ArraysKt.y0(stringArray, Random.INSTANCE) + "]");
    }

    private final int n2() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final void n3(String path) {
        VideoSubtitleControl videoSubtitleControl;
        lg.a.C0828a c0828a = lg.a.f68839a;
        boolean z10 = this.isBgPlaying;
        DownloadBean downloadBean = this.downloadBean;
        String subjectId = downloadBean != null ? downloadBean.getSubjectId() : null;
        DownloadBean downloadBean2 = this.downloadBean;
        String totalTitleName = downloadBean2 != null ? downloadBean2.getTotalTitleName() : null;
        DownloadBean downloadBean3 = this.downloadBean;
        String resourceId = downloadBean3 != null ? downloadBean3.getResourceId() : null;
        DownloadBean downloadBean4 = this.downloadBean;
        String createAtFormat = downloadBean4 != null ? downloadBean4.getCreateAtFormat() : null;
        c0828a.c("long_video_play", "playerSetDataSource, isBgPlaying = " + z10 + ", subjectId = " + subjectId + ", name:" + totalTitleName + "resourceId = " + resourceId + ", downloadTime:" + createAtFormat + "， orPlayer:" + this.orPlayer + ", path = " + path, true);
        if (!this.isNewPlayer && (videoSubtitleControl = this.subtitleControl) != null) {
            videoSubtitleControl.d0(true);
        }
        if (this.isBgPlaying || !this.isNewPlayer) {
            this.isNewPlayer = true;
            return;
        }
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.clearScreen();
        }
        DownloadBean downloadBean5 = this.downloadBean;
        if (downloadBean5 != null) {
            downloadBean5.setPlayingUrl(path);
        }
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            ao.e eVar = new ao.e(String.valueOf(path.hashCode()), path, 0, null, k2(), 12, null);
            MusicFloatManager.a aVar = MusicFloatManager.f43454h;
            aVar.b().C(eVar.e());
            aVar.b().B(eVar.i());
            gVar2.setDataSource(eVar);
        }
        com.transsion.player.orplayer.g gVar3 = this.orPlayer;
        if (gVar3 != null) {
            gVar3.prepare();
        }
        u3();
        this.curTimeoutPlayPath = path;
        this.playTimeoutHandler.postDelayed(this.playTimeoutRunnable, this.isDownloadingPlay ? p2() : o2());
    }

    private final long o2() {
        return ((Number) this.playTimeout.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o3(DownloadBean downloadBean) {
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        long duration = gVar != null ? gVar.getDuration() : 0L;
        this.duration = duration;
        this.localVideoAdHelper.D1(duration);
        lg.a.f68839a.c("long_video_play", "onPrepare history progress " + (downloadBean != null ? Long.valueOf(downloadBean.getReadProgress()) : null) + "， duration = " + this.duration + ", unplaySeekProgress = " + this.unplaySeekTargetPercent + ", id =" + (downloadBean != null ? downloadBean.getResourceId() : null) + ", epse = " + (downloadBean != null ? Integer.valueOf(downloadBean.getEpse()) : null), true);
        final Ref.LongRef longRef = new Ref.LongRef();
        long readProgress = downloadBean != null ? downloadBean.getReadProgress() : 0L;
        longRef.element = readProgress;
        if (Math.abs(readProgress - this.duration) < 100) {
            longRef.element = 0L;
        }
        float f11 = this.unplaySeekTargetPercent;
        if (f11 > 0.0f) {
            longRef.element = (long) (f11 * this.duration);
        }
        if (this.subtitleList.isEmpty()) {
            m3(longRef.element);
            return;
        }
        ORPlayerView oRPlayerView = this.orPlayerView;
        if (oRPlayerView != null) {
            oRPlayerView.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.fragment.i0
                @Override // java.lang.Runnable
                public final void run() {
                    LocalVideoDetailFragment.p3(this.f49725a, longRef);
                }
            }, 200L);
        }
    }

    private final long p2() {
        return ((Number) this.playTimeoutDp.getValue()).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p3(LocalVideoDetailFragment localVideoDetailFragment, Ref.LongRef longRef) {
        localVideoDetailFragment.m3(longRef.element);
    }

    private final ScreenRotationHelper q2() {
        return (ScreenRotationHelper) this.screenHelper.getValue();
    }

    private final com.transsion.postdetail.ui.dialog.o r2() {
        return (com.transsion.postdetail.ui.dialog.o) this.speedViewModel.getValue();
    }

    private final VideoDetailPlayDao s2() {
        return (VideoDetailPlayDao) this.videoDetailPlayDao.getValue();
    }

    public static /* synthetic */ void s3(LocalVideoDetailFragment localVideoDetailFragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        localVideoDetailFragment.r3(z10);
    }

    private final void t3() {
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        List<Fragment> listY0 = getParentFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (Fragment fragment : listY0) {
            if (fragment instanceof BaseDialog) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    ((BaseDialog) fragment).dismissAllowingStateLoss();
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler u2() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u3() {
        this.curTimeoutPlayPath = null;
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.M(false);
        }
        this.playTimeoutHandler.removeCallbacks(this.playTimeoutRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v2() {
        VideoSubtitleControl videoSubtitleControl;
        if (!isAdded() || isDetached() || isRemoving() || this.isMusic) {
            return;
        }
        lg.a.C0828a.r(lg.a.f68839a, "ORSubtitle", new String[]{"没字幕准备提示用户"}, false, 4, null);
        if (!com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("no_subtitle_tip_again", true) || (videoSubtitleControl = this.subtitleControl) == null) {
            return;
        }
        VideoSubtitleControl.m0(videoSubtitleControl, true, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v3(DownloadBean cvideoBean, long playProgress, boolean completed) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new LocalVideoDetailFragment$save$1(completed, this, playProgress, cvideoBean, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w2(LocalVideoDetailFragment localVideoDetailFragment, boolean z10) {
        com.transsion.player.orplayer.g gVar;
        com.transsion.player.orplayer.g gVar2;
        localVideoDetailFragment.isAdShowing = z10;
        if (z10 && (gVar = localVideoDetailFragment.orPlayer) != null && gVar.isPlaying() && (gVar2 = localVideoDetailFragment.orPlayer) != null) {
            gVar2.pause();
        }
        return Unit.f67061a;
    }

    static /* synthetic */ void w3(LocalVideoDetailFragment localVideoDetailFragment, DownloadBean downloadBean, long j11, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        localVideoDetailFragment.v3(downloadBean, j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x2(LocalVideoDetailFragment localVideoDetailFragment, View view) {
        LocalUiType localUiType = localVideoDetailFragment.mUiType;
        LocalUiType localUiType2 = LocalUiType.LAND;
        if (localUiType == localUiType2) {
            localUiType2 = LocalUiType.MIDDLE;
        }
        localVideoDetailFragment.j2().h(LayerFlag.SCREEN_ORIENTATION_CHANGED, localUiType2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object x3(DownloadBean downloadBean, Continuation continuation) {
        String subjectId = downloadBean.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        String resourceId = downloadBean.getResourceId();
        String str2 = resourceId == null ? "" : resourceId;
        int ep2 = downloadBean.getEp();
        int se2 = downloadBean.getSe();
        long readProgress = downloadBean.getReadProgress();
        Long duration = downloadBean.getDuration();
        String subjectName = downloadBean.getSubjectName();
        if (subjectName == null) {
            subjectName = downloadBean.getFileName();
        }
        String str3 = subjectName;
        String url = downloadBean.getUrl();
        long lastPlayTimeStamp = downloadBean.getLastPlayTimeStamp();
        String cover = downloadBean.getCover();
        String thumbnail = downloadBean.getThumbnail();
        String averageHueLight = downloadBean.getAverageHueLight();
        Integer subjectDurationSeconds = downloadBean.getSubjectDurationSeconds();
        Long lE = subjectDurationSeconds != null ? Boxing.e(subjectDurationSeconds.intValue()) : null;
        int subjectType = downloadBean.getSubjectType();
        String value = PlayMode.DOWNLOAD.getValue();
        String url2 = downloadBean.getUrl();
        String path = downloadBean.getPath();
        Long size = downloadBean.getSize();
        long jLongValue = size != null ? size.longValue() : 0L;
        String ops = downloadBean.getOps();
        Object objP = s2().p(new VideoDetailPlayBean(str, str2, ep2, se2, readProgress, str3, cover, thumbnail, url, lastPlayTimeStamp, null, duration, lE, averageHueLight, Boxing.d(subjectType), false, value, url2, path, jLongValue, null, null, null, false, false, false, ops == null ? "" : ops, 66061312, null), continuation);
        return objP == IntrinsicsKt.f() ? objP : Unit.f67061a;
    }

    private final void y2() {
        com.transsion.baselib.report.l.f43359a.g(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ScreenRotationHelper y3(LocalVideoDetailFragment localVideoDetailFragment) {
        Context contextRequireContext = localVideoDetailFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        return new ScreenRotationHelper(contextRequireContext, new LocalVideoDetailFragment$screenHelper$2$1(localVideoDetailFragment), new LocalVideoDetailFragment$screenHelper$2$2(localVideoDetailFragment));
    }

    private final void z2() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("extra_local_path");
            if (string == null) {
                string = "";
            }
            this.localPath = string;
            String string2 = arguments.getString("extra_url");
            if (string2 == null) {
                string2 = "";
            }
            this.url = string2;
            String string3 = arguments.getString("extra_proxy_url");
            if (string3 == null) {
                string3 = "";
            }
            this.proxyUrl = string3;
            String string4 = arguments.getString("extra_resource_id");
            if (string4 == null) {
                string4 = "";
            }
            this.resourceId = string4;
            String string5 = arguments.getString("extra_subject_id");
            if (string5 == null) {
                string5 = "";
            }
            this.subjectId = string5;
            String string6 = arguments.getString("extra_name");
            if (string6 == null) {
                string6 = "";
            }
            this.name = string6;
            String string7 = arguments.getString("extra_post_id");
            if (string7 == null) {
                string7 = "";
            }
            this.postId = string7;
            this.completed = arguments.getBoolean("extra_completed");
            this.isSeries = arguments.getBoolean("extra_is_series");
            String string8 = arguments.getString("extra_page_from");
            this.pageFrom = string8 != null ? string8 : "";
            this.videoHeight = arguments.getInt("extra_height");
            this.videoWidth = arguments.getInt("extra_width");
            this.parentPosition = arguments.getInt("extra_parent_position", -1);
            this.position = arguments.getInt("extra_position", -1);
            this.isDownloadingPlay = !this.completed;
        }
    }

    public final void C3(LocalUiType localUiType) {
        this.mUiType = localUiType;
    }

    public final void D3(boolean z10) {
        this.isPauseState = z10;
    }

    /* JADX INFO: renamed from: W2, reason: from getter */
    public final boolean getIsAdShowing() {
        return this.isAdShowing;
    }

    public final void Y1(String subjectId, String resourceId) {
        j2().h(LayerFlag.SERIES_PLAY, subjectId, resourceId);
    }

    public final void a3(boolean isLock) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.F(isLock);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final void d2() {
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.q();
        }
    }

    public final void d3() {
        this.localVideoAdHelper.m2();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void i3() {
        com.transsion.player.orplayer.g gVar;
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 == null || gVar2.isPlaying() || this.isAdShowing || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.play();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        HashMap mapG;
        MusicFloatManager.f43454h.b().u();
        initView();
        A2();
        if (this.pageFrom.length() == 0) {
            this.pageFrom = hj.i.f64505a.i();
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("local_video_detail", false, 2, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        j2().d(new com.transsion.postdetail.layer.local.g1(this));
        j2().d(new com.transsion.postdetail.layer.local.u0(this));
        j2().d(new LocalVideoMiddleLayer(this));
        j2().e(LayerFlag.SET_MANAGER, j2());
        requireActivity().getOnBackPressedDispatcher().i(this, new f());
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean isBackground) {
        com.transsion.postdetail.layer.local.c0 c0Var;
        if (!isBackground || (c0Var = this.localVideoDot) == null) {
            return;
        }
        c0Var.b(true);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e eVar) {
        com.transsion.player.orplayer.f.a.e(this, eVar);
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        IFloatingApi iFloatingApi;
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onConfigurationChanged " + newConfig.orientation, false, 4, null);
        int i11 = newConfig.orientation;
        if (i11 == 2) {
            IAudioApi iAudioApiE2 = e2();
            if (iAudioApiE2 != null) {
                iAudioApiE2.pause();
                return;
            }
            return;
        }
        if (i11 != 1 || (iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0])) == null) {
            return;
        }
        iFloatingApi.show();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        com.transsion.player.orplayer.g gVar;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "网络连接成功开始检测字幕,name:" + downloadBean.getTotalTitleName() + ", subtitleResId:" + downloadBean.getSubtitleResId(), true);
            com.transsion.subtitle.h.b.a(com.transsion.subtitle.h.f54887a.b(), downloadBean, null, 2, null);
        }
        if (this.isDownloadingPlay && isResumed()) {
            DownloadBean downloadBean2 = this.downloadBean;
            if (downloadBean2 != null) {
                g2().k(downloadBean2);
            }
            lg.a.C0828a.v(lg.a.f68839a, this.TAG, "onNetworkConnected", false, 4, null);
            com.transsion.player.orplayer.g gVar2 = this.orPlayer;
            if ((gVar2 != null && !gVar2.isPlaying()) || ((gVar = this.orPlayer) != null && gVar.isLoading())) {
                j2().g(LayerFlag.LOADING_BEGIN, new Object[0]);
                a2();
                if (this.errorInfo != null || this.isAdShowing) {
                    r3(false);
                } else {
                    com.transsion.player.orplayer.g gVar3 = this.orPlayer;
                    if (gVar3 != null) {
                        gVar3.play();
                    }
                }
            }
            j2().h(LayerFlag.NETWORK_CHANGE, Boolean.TRUE);
            if (this.isPlayerNetTimeout) {
                j2().h(LayerFlag.PLAYER_TIMEOUT_TIPS, new Object[0]);
            }
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        ConstraintLayout constraintLayoutB;
        super.onDestroy();
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onDestroy", false, 4, null);
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            downloadBean.setQuitDPRestart(true);
            downloadBean.setDownloadingPlay(false);
        }
        com.transsion.baselib.report.l.f43359a.u(this);
        if (this.isDownloadingPlay) {
            g2().d();
        }
        F3();
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
        }
        so.l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
            constraintLayoutB.setKeepScreenOn(false);
        }
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.N();
        }
        j2().h(LayerFlag.FRAGMENT_DESTROY, new Object[0]);
        IAudioApi iAudioApiE2 = e2();
        if (iAudioApiE2 != null) {
            iAudioApiE2.removePlayerListener(this);
        }
        g2().o();
        g2().x(this.downloadListener);
        this.localVideoAdHelper.l2();
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(this.playerListener);
        }
        this.playTimeoutHandler.removeCallbacks(this.playTimeoutRunnable);
        Context context = getContext();
        if (context != null && !com.transsion.baseui.util.b.a(context)) {
            q2().l();
        }
        setMViewBinding(null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onDisconnected() {
        if (this.isDownloadingPlay) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            com.transsion.player.orplayer.g gVar = this.orPlayer;
            Boolean boolValueOf = gVar != null ? Boolean.valueOf(gVar.isLoading()) : null;
            c0828a.c("long_video_play", "onNetworkDisconnected  isLoading= " + boolValueOf + ", isPrepare = " + this.isPrepare + ", isDownloadingPlayStart =" + this.isDownloadingPlayStart, true);
            com.transsion.player.orplayer.g gVar2 = this.orPlayer;
            if ((gVar2 == null || !gVar2.isLoading()) && this.isDownloadingPlayStart && this.isPrepare) {
                return;
            }
            j2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onHomeClick() {
        super.onHomeClick();
        lg.a.f68839a.c("VideoFloat", "local onHomeClick", true);
        j2().h(LayerFlag.SHOW_FLOAT_2_WINDOW, FloatActionType.HOME);
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
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.isMusic) {
            return;
        }
        j2().h(LayerFlag.FRAGMENT_PAUSE, new Object[0]);
        com.transsion.postdetail.util.o oVarM2 = m2();
        if (oVarM2 != null) {
            oVarM2.disable();
        }
        this.localVideoAdHelper.t2();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        j2().h(LayerFlag.INTO_PIP, Boolean.valueOf(isInPictureInPictureMode));
        ox.e.f72197a.b().onPipModeChanged(isInPictureInPictureMode);
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.D(isInPictureInPictureMode);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError playError, ao.e eVar) {
        com.transsion.player.orplayer.f.a.q(this, playError, eVar);
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

    @Override // com.transsion.baseui.fragment.PageStatusFragment, com.transsion.baselib.utils.DeviceKeyMonitor.b
    public void onRecentClick() {
        super.onRecentClick();
        lg.a.f68839a.c("VideoFloat", "local onRecentClick", true);
        j2().h(LayerFlag.SHOW_FLOAT_2_WINDOW, FloatActionType.HOME);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.isMusic) {
            return;
        }
        j2().h(LayerFlag.FRAGMENT_RESUME, new Object[0]);
        com.transsion.postdetail.util.o oVarM2 = m2();
        if (oVarM2 != null) {
            oVarM2.enable();
        }
        this.localVideoAdHelper.u2();
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        w3(this, this.downloadBean, this.playProgress, false, 4, null);
        if (!this.isMusic) {
            j2().h(LayerFlag.FRAGMENT_STOP, new Object[0]);
        }
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
    public void onVideoPause(ao.e eVar) {
        com.transsion.player.orplayer.f.a.F(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
    }

    public final void q3() {
        if (!this.isMusic) {
            j2().h(LayerFlag.RELEASE_PLAYER, new Object[0]);
        }
        u3();
    }

    public final void r3(boolean fromClicked) {
        if (this.isBgPlaying || !this.isNewPlayer) {
            return;
        }
        if (fromClicked) {
            this.playErrorCount.set(0);
        }
        if (this.playErrorCount.get() > 2) {
            return;
        }
        this.errorInfo = null;
        this.playErrorCount.getAndAdd(1);
        lg.a.f68839a.x("long_video_play", "video error，reload~~", true);
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.stop();
        }
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            gVar2.reset();
        }
        this.isPrepare = false;
        this.isReload = true;
        j2().g(LayerFlag.LOADING_BEGIN, new Object[0]);
        n3(!this.isDownloadingPlay ? this.localPath : this.proxyUrl);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: t2, reason: merged with bridge method [inline-methods] */
    public so.l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        so.l lVarC = so.l.c(inflater);
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    public final void z3(long progress, float targetPercent) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.q();
        }
        if (!this.isPrepare) {
            this.unplaySeekTargetPercent = targetPercent;
        }
        this.playProgress = progress;
    }
}
