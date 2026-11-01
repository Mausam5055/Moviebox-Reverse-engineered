package com.transsion.player.longvideo.ui;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Html;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.v0;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.common.collect.ImmutableList;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.al.ka.KaManager;
import com.transsion.base.report.athena.BrowseType;
import com.transsion.base.report.athena.ClickType;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.helper.ScreenRotationHelper;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.MemberSource;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.player.config.RenderType;
import com.transsion.player.longvideo.R$array;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$string;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.constants.LongVodPlayerConfigType;
import com.transsion.player.longvideo.helper.LongVodSubtitleHelper;
import com.transsion.player.longvideo.intercept.PlaybackInterceptAdView;
import com.transsion.player.longvideo.intercept.PlaybackInterceptionManager;
import com.transsion.player.longvideo.intercept.VideoContentInterceptView;
import com.transsion.player.longvideo.member.ResolutionMemberManager;
import com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog;
import com.transsion.player.longvideo.ui.dialog.LongVodTvProDialog;
import com.transsion.player.longvideo.ui.dialog.PlayerSettingDialog;
import com.transsion.player.longvideo.view.LongVodTvProPanelView;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.player.ui.longvideo.ORLongVodPlayerView;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.postdetail.layer.local.j1;
import com.transsion.postdetail.layer.local.q1;
import com.transsion.postdetail.ui.view.ImmScaleView;
import com.transsion.postdetail.ui.view.ImmSpeedView;
import com.transsion.push.PushConstants;
import com.transsion.push.api.IPushProvider;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¦\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\bE\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0004\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0006\u0080\u0004\u0084\u0004\u008e\u0004\u0018\u0000 \u009b\u00042\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002©\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0007\u0010\u000bB#\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0007\u0010\u000eJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJS\u0010'\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00122\b\u0010\u001f\u001a\u0004\u0018\u00010\u00172\b\u0010!\u001a\u0004\u0018\u00010 2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u0012H\u0016¢\u0006\u0004\b*\u0010\u0016J\u0019\u0010-\u001a\u00020\u00142\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J!\u00102\u001a\u00020\u00142\b\b\u0002\u00100\u001a\u00020/2\b\b\u0002\u00101\u001a\u00020/¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0014H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0014H\u0016¢\u0006\u0004\b6\u00105J\u0017\u00108\u001a\u00020\u00142\u0006\u00107\u001a\u00020/H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010;\u001a\u00020\u00142\u0006\u0010:\u001a\u00020/H\u0016¢\u0006\u0004\b;\u00109J\u000f\u0010<\u001a\u00020/H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\u0014H\u0016¢\u0006\u0004\b>\u00105J-\u0010B\u001a\u00020\u00142\b\u0010?\u001a\u0004\u0018\u00010\u00122\b\u0010@\u001a\u0004\u0018\u00010\u00122\b\u0010A\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\bB\u0010CJ\u0015\u0010E\u001a\u00020\u00142\u0006\u0010D\u001a\u00020/¢\u0006\u0004\bE\u00109J2\u0010K\u001a\u00020\u00142#\u0010J\u001a\u001f\u0012\u0013\u0012\u00110#¢\u0006\f\bG\u0012\b\bH\u0012\u0004\b\b(I\u0012\u0004\u0012\u00020\u0014\u0018\u00010F¢\u0006\u0004\bK\u0010LJ\u0017\u0010N\u001a\u00020\u00142\u0006\u0010M\u001a\u00020/H\u0016¢\u0006\u0004\bN\u00109J\u0017\u0010P\u001a\u00020\u00142\u0006\u0010J\u001a\u00020OH\u0016¢\u0006\u0004\bP\u0010QJ\u0017\u0010T\u001a\u00020\u00142\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0015\u0010W\u001a\u00020\u00142\u0006\u0010V\u001a\u00020/¢\u0006\u0004\bW\u00109J\u000f\u0010X\u001a\u00020\u0014H\u0016¢\u0006\u0004\bX\u00105J\u000f\u0010Y\u001a\u00020\u0014H\u0016¢\u0006\u0004\bY\u00105J\u000f\u0010Z\u001a\u00020\u0014H\u0016¢\u0006\u0004\bZ\u00105J\u000f\u0010[\u001a\u00020\u0014H\u0016¢\u0006\u0004\b[\u00105J\u000f\u0010\\\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\\\u00105J\u000f\u0010]\u001a\u00020\u0014H\u0016¢\u0006\u0004\b]\u00105J\u000f\u0010^\u001a\u00020\u0014H\u0014¢\u0006\u0004\b^\u00105J\u000f\u0010_\u001a\u00020\u0014H\u0014¢\u0006\u0004\b_\u00105J\u000f\u0010`\u001a\u00020\u0014H\u0016¢\u0006\u0004\b`\u00105J\u000f\u0010a\u001a\u00020\u0014H\u0016¢\u0006\u0004\ba\u00105J\u000f\u0010b\u001a\u00020/H\u0016¢\u0006\u0004\bb\u0010=J\u000f\u0010d\u001a\u00020cH\u0016¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\u0014H\u0016¢\u0006\u0004\bf\u00105J\u000f\u0010g\u001a\u00020\u0014H\u0016¢\u0006\u0004\bg\u00105J\u0017\u0010i\u001a\u00020\u00142\u0006\u0010h\u001a\u00020/H\u0016¢\u0006\u0004\bi\u00109J\u0017\u0010l\u001a\u00020\u00142\u0006\u0010k\u001a\u00020jH\u0016¢\u0006\u0004\bl\u0010mJ\u0011\u0010o\u001a\u0004\u0018\u00010nH\u0016¢\u0006\u0004\bo\u0010pJ\u0011\u0010r\u001a\u0004\u0018\u00010qH\u0016¢\u0006\u0004\br\u0010sJ\u0011\u0010u\u001a\u0004\u0018\u00010tH\u0016¢\u0006\u0004\bu\u0010vJ\u0011\u0010w\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\bw\u0010xJ\u0011\u0010z\u001a\u0004\u0018\u00010yH\u0016¢\u0006\u0004\bz\u0010{J\u0017\u0010}\u001a\u00020\u00142\u0006\u0010|\u001a\u00020/H\u0016¢\u0006\u0004\b}\u00109J\"\u0010\u0080\u0001\u001a\u00020\u00142\u0006\u0010~\u001a\u00020n2\u0006\u0010\u007f\u001a\u00020qH\u0016¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0011\u0010\u0082\u0001\u001a\u00020\u0014H\u0016¢\u0006\u0005\b\u0082\u0001\u00105J\u001c\u0010\u0085\u0001\u001a\u00020\u00142\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0007¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u000f\u0010\u0087\u0001\u001a\u00020\u0014¢\u0006\u0005\b\u0087\u0001\u00105J#\u0010\u0089\u0001\u001a\u00020\u00142\b\u0010\u0084\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0088\u0001\u001a\u00020\u0012¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u0012\u0010\u008b\u0001\u001a\u00020\u0012H\u0002¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0011\u0010\u008d\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u008d\u0001\u00105J\u0015\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0002¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u00142\t\b\u0002\u0010\u0091\u0001\u001a\u00020/H\u0002¢\u0006\u0005\b\u0092\u0001\u00109J%\u0010\u0095\u0001\u001a\u00020\u00142\b\u0010\u0093\u0001\u001a\u00030\u008e\u00012\u0007\u0010\u0094\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u001c\u0010\u0097\u0001\u001a\u00020\u00142\b\u0010\u0093\u0001\u001a\u00030\u008e\u0001H\u0002¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u0012\u0010\u0099\u0001\u001a\u00020\fH\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u009b\u0001\u00105J\u0011\u0010\u009c\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u009c\u0001\u00105J\u0012\u0010\u009d\u0001\u001a\u00020\u0012H\u0002¢\u0006\u0006\b\u009d\u0001\u0010\u008c\u0001J0\u0010 \u0001\u001a \u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u009e\u0001j\u000f\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012`\u009f\u0001H\u0002¢\u0006\u0006\b \u0001\u0010¡\u0001J\u0011\u0010¢\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¢\u0001\u00105J\u0011\u0010£\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b£\u0001\u00105J\u0011\u0010¤\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¤\u0001\u00105J\u0011\u0010¥\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¥\u0001\u00105J$\u0010¦\u0001\u001a\u00020\u00142\b\u0010\u001e\u001a\u0004\u0018\u00010\u00122\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0006\b¦\u0001\u0010§\u0001J\u001a\u0010©\u0001\u001a\u00020\u00142\u0007\u0010¨\u0001\u001a\u00020/H\u0002¢\u0006\u0005\b©\u0001\u00109J\u0011\u0010ª\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bª\u0001\u00105J\u001c\u0010«\u0001\u001a\u00020\u00142\b\u0010!\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u00ad\u0001\u00105J\u0011\u0010®\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b®\u0001\u00105J\u0011\u0010¯\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¯\u0001\u00105J\u0011\u0010°\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b°\u0001\u00105J\u0011\u0010±\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b±\u0001\u00105J\u0011\u0010²\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b²\u0001\u00105J\u0011\u0010³\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b³\u0001\u00105J\u001c\u0010¶\u0001\u001a\u00020\u00142\b\u0010µ\u0001\u001a\u00030´\u0001H\u0002¢\u0006\u0006\b¶\u0001\u0010·\u0001J\u0011\u0010¸\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¸\u0001\u00105J%\u0010¼\u0001\u001a\u00020\u00142\u0007\u0010¹\u0001\u001a\u00020/2\b\u0010»\u0001\u001a\u00030º\u0001H\u0002¢\u0006\u0006\b¼\u0001\u0010½\u0001J\u0011\u0010¾\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¾\u0001\u00105J\u001a\u0010À\u0001\u001a\u00020\u00142\u0007\u0010¿\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bÀ\u0001\u00109J\u0011\u0010Á\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÁ\u0001\u00105J\u0011\u0010Â\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bÂ\u0001\u0010=J\u0011\u0010Ã\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÃ\u0001\u00105J\u0011\u0010Ä\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÄ\u0001\u00105J\u0011\u0010Å\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bÅ\u0001\u0010=J\u0011\u0010Æ\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÆ\u0001\u00105J\u0011\u0010Ç\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÇ\u0001\u00105J#\u0010É\u0001\u001a\u00020\u00142\u0006\u0010S\u001a\u00020R2\u0007\u0010È\u0001\u001a\u00020yH\u0002¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001J+\u0010Î\u0001\u001a\u00020\u00142\f\b\u0002\u0010Ì\u0001\u001a\u0005\u0018\u00010Ë\u00012\t\b\u0002\u0010Í\u0001\u001a\u00020/H\u0002¢\u0006\u0006\bÎ\u0001\u0010Ï\u0001J\u0011\u0010Ð\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÐ\u0001\u00105J\u0011\u0010Ñ\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÑ\u0001\u00105J\u001c\u0010Ó\u0001\u001a\u00020\u00142\b\u0010Ò\u0001\u001a\u00030\u0083\u0001H\u0002¢\u0006\u0006\bÓ\u0001\u0010\u0086\u0001J\u001c\u0010Ô\u0001\u001a\u00020\u00142\b\u0010Ò\u0001\u001a\u00030\u0083\u0001H\u0002¢\u0006\u0006\bÔ\u0001\u0010\u0086\u0001J\u0011\u0010Õ\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bÕ\u0001\u0010=J+\u0010Ö\u0001\u001a\u00020\u00142\f\b\u0002\u0010Ì\u0001\u001a\u0005\u0018\u00010Ë\u00012\t\b\u0002\u0010Í\u0001\u001a\u00020/H\u0002¢\u0006\u0006\bÖ\u0001\u0010Ï\u0001J$\u0010Ø\u0001\u001a\u00020\u00142\u0007\u0010×\u0001\u001a\u00020/2\b\b\u0002\u0010|\u001a\u00020/H\u0002¢\u0006\u0005\bØ\u0001\u00103J\u0015\u0010Ú\u0001\u001a\u0005\u0018\u00010Ù\u0001H\u0002¢\u0006\u0006\bÚ\u0001\u0010Û\u0001J\u0015\u0010Ý\u0001\u001a\u0005\u0018\u00010Ü\u0001H\u0002¢\u0006\u0006\bÝ\u0001\u0010Þ\u0001J\u0011\u0010ß\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bß\u0001\u00105J\u0011\u0010à\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bà\u0001\u00105J\"\u0010â\u0001\u001a\u00020\u00142\u0006\u0010|\u001a\u00020/2\u0007\u0010á\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bâ\u0001\u00103J\u001c\u0010ã\u0001\u001a\u00020\u00142\t\b\u0002\u0010á\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bã\u0001\u00109J\u001b\u0010ä\u0001\u001a\u00020\u00142\b\b\u0002\u0010|\u001a\u00020/H\u0002¢\u0006\u0005\bä\u0001\u00109J$\u0010ç\u0001\u001a\u00020\u00142\u0007\u0010å\u0001\u001a\u00020/2\u0007\u0010æ\u0001\u001a\u00020cH\u0002¢\u0006\u0006\bç\u0001\u0010è\u0001J\u001a\u0010ê\u0001\u001a\u00020\u00142\u0007\u0010é\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bê\u0001\u00109J\u001b\u0010ë\u0001\u001a\u00020\u00142\u0007\u0010æ\u0001\u001a\u00020cH\u0002¢\u0006\u0006\bë\u0001\u0010ì\u0001J\u0011\u0010í\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bí\u0001\u00105J\u001a\u0010ï\u0001\u001a\u00020\u00142\u0007\u0010î\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bï\u0001\u00109J\u0019\u0010ð\u0001\u001a\u00020\u00142\u0006\u0010|\u001a\u00020/H\u0002¢\u0006\u0005\bð\u0001\u00109J\u001a\u0010ò\u0001\u001a\u00020\u00142\u0007\u0010ñ\u0001\u001a\u00020\u0012H\u0002¢\u0006\u0005\bò\u0001\u0010\u0016J\u0011\u0010ó\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bó\u0001\u00105J\u0011\u0010ô\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bô\u0001\u00105J\u001c\u0010ö\u0001\u001a\u00020\u00142\t\b\u0002\u0010õ\u0001\u001a\u00020/H\u0002¢\u0006\u0005\bö\u0001\u00109J\u0011\u0010÷\u0001\u001a\u00020/H\u0002¢\u0006\u0005\b÷\u0001\u0010=J\u0011\u0010ø\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bø\u0001\u00105J\u0011\u0010ù\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bù\u0001\u00105J\u0019\u0010ú\u0001\u001a\u00020\u00142\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0005\bú\u0001\u0010UJ\u0011\u0010û\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bû\u0001\u00105J\u0011\u0010ü\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bü\u0001\u00105J\u0011\u0010ý\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bý\u0001\u00105J#\u0010þ\u0001\u001a\u00020\u00142\u0006\u0010S\u001a\u00020R2\u0007\u0010È\u0001\u001a\u00020yH\u0002¢\u0006\u0006\bþ\u0001\u0010Ê\u0001J\u0011\u0010ÿ\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÿ\u0001\u00105J\u0011\u0010\u0080\u0002\u001a\u00020/H\u0002¢\u0006\u0005\b\u0080\u0002\u0010=J\u0011\u0010\u0081\u0002\u001a\u00020/H\u0002¢\u0006\u0005\b\u0081\u0002\u0010=J\u0011\u0010\u0082\u0002\u001a\u00020/H\u0002¢\u0006\u0005\b\u0082\u0002\u0010=J\u0011\u0010\u0083\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u0083\u0002\u00105J\u0011\u0010\u0084\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u0084\u0002\u00105J\u001b\u0010\u0085\u0002\u001a\u00020\u00142\u0007\u0010È\u0001\u001a\u00020yH\u0002¢\u0006\u0006\b\u0085\u0002\u0010\u0086\u0002J\u0011\u0010\u0087\u0002\u001a\u00020/H\u0002¢\u0006\u0005\b\u0087\u0002\u0010=J\u0011\u0010\u0088\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u0088\u0002\u00105J\u0011\u0010\u0089\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u0089\u0002\u00105J\u001e\u0010\u008b\u0002\u001a\u0005\u0018\u00010\u008a\u00022\u0007\u0010È\u0001\u001a\u00020yH\u0002¢\u0006\u0006\b\u008b\u0002\u0010\u008c\u0002J\u001e\u0010\u008e\u0002\u001a\u0005\u0018\u00010\u008d\u00022\u0007\u0010È\u0001\u001a\u00020yH\u0002¢\u0006\u0006\b\u008e\u0002\u0010\u008f\u0002J$\u0010\u0091\u0002\u001a\u00030\u0090\u00022\u0007\u0010È\u0001\u001a\u00020y2\u0006\u0010\u001b\u001a\u00020\u0012H\u0002¢\u0006\u0006\b\u0091\u0002\u0010\u0092\u0002J\u0012\u0010\u0093\u0002\u001a\u00020\fH\u0002¢\u0006\u0006\b\u0093\u0002\u0010\u009a\u0001J\u0011\u0010\u0094\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u0094\u0002\u00105J\u0011\u0010\u0095\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u0095\u0002\u00105J\u0011\u0010\u0096\u0002\u001a\u00020/H\u0002¢\u0006\u0005\b\u0096\u0002\u0010=J\u001a\u0010\u0098\u0002\u001a\u00020\u00142\u0007\u0010\u0097\u0002\u001a\u00020/H\u0002¢\u0006\u0005\b\u0098\u0002\u00109J\u001a\u0010\u009a\u0002\u001a\u00020\u00142\u0007\u0010\u0099\u0002\u001a\u00020\u0012H\u0002¢\u0006\u0005\b\u009a\u0002\u0010\u0016J!\u0010\u009c\u0002\u001a\u0011\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u009b\u0002H\u0002¢\u0006\u0006\b\u009c\u0002\u0010\u009d\u0002J\u0011\u0010\u009e\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b\u009e\u0002\u00105J%\u0010¢\u0002\u001a\u00020\u00142\b\u0010 \u0002\u001a\u00030\u009f\u00022\u0007\u0010¡\u0002\u001a\u00020\u0012H\u0002¢\u0006\u0006\b¢\u0002\u0010£\u0002J\u0011\u0010¤\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¤\u0002\u00105J\u0011\u0010¥\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¥\u0002\u00105J\u0011\u0010¦\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b¦\u0002\u00105J\u0011\u0010§\u0002\u001a\u00020\u0014H\u0002¢\u0006\u0005\b§\u0002\u00105R\u0018\u0010«\u0002\u001a\u00030¨\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b©\u0002\u0010ª\u0002R \u0010¯\u0002\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¬\u0002\u0010\u00ad\u0002\u001a\u0006\b®\u0002\u0010\u009a\u0001R\u0017\u0010²\u0002\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b°\u0002\u0010±\u0002R\u0017\u0010´\u0002\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b³\u0002\u0010±\u0002R\u0018\u0010·\u0002\u001a\u00030µ\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÌ\u0001\u0010¶\u0002R\u001b\u0010º\u0002\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0002\u0010¹\u0002R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0002\u0010¼\u0002R\u001b\u0010¿\u0002\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0002\u0010¾\u0002R\u0018\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0002\u0010Á\u0002R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0002\u0010¾\u0002R\u0019\u0010Å\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0002\u0010Ä\u0002R\u0019\u0010Ç\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0002\u0010Ä\u0002R\u0019\u0010É\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0002\u0010Ä\u0002R\u001a\u0010»\u0001\u001a\u00030º\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0002\u0010Ë\u0002R\u001a\u0010Í\u0002\u001a\u00030º\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0002\u0010Ë\u0002R\u0019\u0010Ï\u0002\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0002\u0010±\u0002R\u0019\u0010Ñ\u0002\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0002\u0010±\u0002R\u0019\u0010Ô\u0002\u001a\u00020c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0002\u0010Ó\u0002R\u0019\u0010Ö\u0002\u001a\u00020c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0002\u0010Ó\u0002R\u0019\u0010Ø\u0002\u001a\u00020c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0002\u0010Ó\u0002R\u001b\u0010Ú\u0002\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0002\u0010¾\u0002R\u0019\u0010Ü\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0002\u0010Ä\u0002R\u0019\u0010Þ\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0002\u0010Ä\u0002R\u0019\u0010à\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0002\u0010Ä\u0002R\u0018\u0010<\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0002\u0010Ä\u0002R\u0019\u0010ã\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0002\u0010Ä\u0002R\u0019\u0010å\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0002\u0010Ä\u0002R\u0019\u0010ç\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0002\u0010Ä\u0002R\u0019\u0010é\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0002\u0010Ä\u0002R\u0019\u0010ë\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0002\u0010Ä\u0002R\u0019\u0010í\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0002\u0010Ä\u0002R\u0019\u0010ï\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0002\u0010Ä\u0002R\u0019\u0010ñ\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0002\u0010Ä\u0002R\u0019\u0010ó\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bò\u0002\u0010Ä\u0002R\u0019\u0010ô\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0002\u0010Ä\u0002R\u001a\u0010)\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0002\u0010¾\u0002R\u001b\u0010÷\u0002\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0002\u0010ö\u0002R\u001b\u0010ú\u0002\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0002\u0010ù\u0002R\u001c\u0010þ\u0002\u001a\u0005\u0018\u00010û\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0002\u0010ý\u0002R\u001c\u0010\u0080\u0003\u001a\u0005\u0018\u00010û\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0002\u0010ý\u0002R\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0003\u0010\u0082\u0003R\u001a\u0010\u0086\u0003\u001a\u00030\u0083\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0003\u0010\u0085\u0003R\u001c\u0010\u0089\u0003\u001a\u0005\u0018\u00010Ù\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0003\u0010\u0088\u0003R\u001c\u0010\u008c\u0003\u001a\u0005\u0018\u00010Ü\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0003\u0010\u008b\u0003R\u001c\u0010\u0090\u0003\u001a\u0005\u0018\u00010\u008d\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0003\u0010\u008f\u0003R\u001c\u0010\u0092\u0003\u001a\u0005\u0018\u00010û\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0003\u0010ý\u0002R\u001b\u0010\u0094\u0003\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0003\u0010ù\u0002R\u001b\u0010\u0097\u0003\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0003\u0010\u0096\u0003R\u001c\u0010\u009b\u0003\u001a\u0005\u0018\u00010\u0098\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0003\u0010\u009a\u0003R!\u0010 \u0003\u001a\u00030\u009c\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009d\u0003\u0010\u00ad\u0002\u001a\u0006\b\u009e\u0003\u0010\u009f\u0003R!\u0010¤\u0003\u001a\u00030¡\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u00ad\u0002\u001a\u0006\b¢\u0003\u0010£\u0003R\u001b\u0010§\u0003\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0003\u0010¦\u0003R\u001c\u0010ª\u0003\u001a\u0005\u0018\u00010¨\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0002\u0010©\u0003R\u001c\u0010\u00ad\u0003\u001a\u0005\u0018\u00010«\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010¬\u0003R\u0018\u0010°\u0003\u001a\u00030®\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010¯\u0003R\u001c\u0010´\u0003\u001a\u0005\u0018\u00010±\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0003\u0010³\u0003R\u001c\u0010·\u0003\u001a\u0005\u0018\u00010µ\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010¶\u0003R\u001c\u0010»\u0003\u001a\u0005\u0018\u00010¸\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0003\u0010º\u0003R\u0019\u0010¼\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0002\u0010Ä\u0002R\u0019\u0010½\u0003\u001a\u00020j8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010î\u0002R!\u0010Á\u0003\u001a\u00030¾\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bØ\u0001\u0010\u00ad\u0002\u001a\u0006\b¿\u0003\u0010À\u0003R!\u0010Æ\u0003\u001a\u00030Â\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÃ\u0003\u0010\u00ad\u0002\u001a\u0006\bÄ\u0003\u0010Å\u0003R\u001c\u0010É\u0003\u001a\u0005\u0018\u00010Ç\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010È\u0003R\u001c\u0010Ì\u0003\u001a\u0005\u0018\u00010Ê\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0002\u0010Ë\u0003R\u0019\u0010Í\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010Ä\u0002R!\u0010Ð\u0003\u001a\n\u0012\u0005\u0012\u00030\u0083\u00010Î\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0002\u0010Ï\u0003R\u0019\u0010Ñ\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ä\u0002R\u0018\u0010Ò\u0003\u001a\u00030\u0083\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0001\u0010\u0085\u0003R\u001c\u0010Õ\u0003\u001a\u0005\u0018\u00010Ó\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010Ô\u0003R\u001f\u0010×\u0003\u001a\u00020c8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÂ\u0001\u0010\u00ad\u0002\u001a\u0005\bÖ\u0003\u0010eR\u001f\u0010Ú\u0003\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bØ\u0003\u0010\u00ad\u0002\u001a\u0005\bÙ\u0003\u0010=R\u0018\u0010Ý\u0003\u001a\u00030Û\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0002\u0010Ü\u0003R6\u0010ß\u0003\u001a\u001f\u0012\u0013\u0012\u00110#¢\u0006\f\bG\u0012\b\bH\u0012\u0004\b\b(I\u0012\u0004\u0012\u00020\u0014\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010Þ\u0003R\u001e\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\"8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009b\u0001\u0010Ï\u0003R\u0019\u0010à\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010Ä\u0002R\u0019\u0010á\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010Ä\u0002R\u0019\u0010â\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010Ä\u0002R\u001b\u0010ä\u0003\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010ã\u0003R\u001c\u0010ç\u0003\u001a\u0005\u0018\u00010å\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010æ\u0003R\u0019\u0010é\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0003\u0010Ä\u0002R\u001b\u0010ë\u0003\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0003\u0010\u0082\u0003R\u001c\u0010ï\u0003\u001a\u0005\u0018\u00010ì\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0003\u0010î\u0003R\u001c\u0010ó\u0003\u001a\u0005\u0018\u00010ð\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0003\u0010ò\u0003R\u001e\u0010÷\u0003\u001a\t\u0012\u0004\u0012\u00020\u00120ô\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bõ\u0003\u0010ö\u0003R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0003\u0010\u0082\u0003R!\u0010ý\u0003\u001a\u00030ù\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bú\u0003\u0010\u00ad\u0002\u001a\u0006\bû\u0003\u0010ü\u0003R\u0019\u0010ÿ\u0003\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0003\u0010Ä\u0002R\u0018\u0010\u0083\u0004\u001a\u00030\u0080\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0004\u0010\u0082\u0004R\u0018\u0010\u0087\u0004\u001a\u00030\u0084\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0004\u0010\u0086\u0004R\u0019\u0010\u0089\u0004\u001a\u00020c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0004\u0010Ó\u0002R\u0018\u0010\u008d\u0004\u001a\u00030\u008a\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0004\u0010\u008c\u0004R\u0018\u0010\u0091\u0004\u001a\u00030\u008e\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0004\u0010\u0090\u0004R\u0018\u0010\u0093\u0004\u001a\u00030\u008a\u00048\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0092\u0004\u0010\u008c\u0004R\u0019\u0010\u0095\u0004\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0004\u0010Ä\u0002R#\u0010\u009a\u0004\u001a\u0005\u0018\u00010\u0096\u00048BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0097\u0004\u0010\u00ad\u0002\u001a\u0006\b\u0098\u0004\u0010\u0099\u0004¨\u0006\u009c\u0004"}, d2 = {"Lcom/transsion/player/longvideo/ui/LongVodPlayerView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lfo/a;", "Lcom/transsion/baselib/report/l$a;", "Lcom/transsion/ad/strategy/b$a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "getPlaybackInterceptionManager", "()Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "", "genre", "", "initAdHelper", "(Ljava/lang/String;)V", "Landroid/widget/FrameLayout;", "flPortraitPremium", "setPortraitPremiumView", "(Landroid/widget/FrameLayout;)V", "pageName", "Lcom/transsion/player/longvideo/constants/LongVodPageType;", "pageType", "tag", "fullscreenContainer", "Landroid/view/ViewGroup;", "subtitleSyncView", "", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "dubs", "Lcom/transsion/player/longvideo/constants/LongVodContentType;", "contentType", "init", "(Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPageType;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Ljava/util/List;Lcom/transsion/player/longvideo/constants/LongVodContentType;)V", "fragmentId", "setFragmentId", "Lcom/transsion/ad/monopoly/model/AdPlans;", "adPlan", "onAdClick", "(Lcom/transsion/ad/monopoly/model/AdPlans;)V", "", "needFinish", "showBackAd", "backClick", "(ZZ)V", "replay", "()V", "showReplay", "fastHide", "hideBottomController", "(Z)V", "isInPipMode", "onPipModeChanged", "isPressedPause", "()Z", "ugcAutoPause2PlayVideo", "parentVideoId", "trackId", "previousTrackId", "updateReportId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "visible", "setFeedBackVisible", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "info", "callback", "setAudioSelectCallback", "(Lkotlin/jvm/functions/Function1;)V", "isBackground", "onBackgroundStatusChange", "Lfo/a$b;", "setCallback", "(Lfo/a$b;)V", "Lgo/a;", "bean", "setDataSource", "(Lgo/a;)V", "from", "setMusicLikedFragment", "onViewResume", "onViewPause", "onHandlePause", "onHandlePlay", "onSaveHistory", "release", "onAttachedToWindow", "onDetachedFromWindow", "onPageDestroy", "reset", "onBackPressed", "", "currentPosition", "()J", "showNoNetError", "removeNoNetError", "hasNext", "hasNextEpisode", "", "speed", "setSpeed", "(F)V", "Lcom/transsion/player/orplayer/g;", "getPlayer", "()Lcom/transsion/player/orplayer/g;", "Lcom/transsion/player/ui/ORPlayerView;", "getPlayerView", "()Lcom/transsion/player/ui/ORPlayerView;", "Lcom/avery/subtitle/widget/SimpleSubtitleView;", "getSubtitleView", "()Lcom/avery/subtitle/widget/SimpleSubtitleView;", "getSubtitleViewGroup", "()Landroid/view/ViewGroup;", "Lgo/c;", "getPlayingStream", "()Lgo/c;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setFloatIsShow", "orPlayer", "playerView", "floatBack2ExitPage", "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V", "exitFullScreen", "Lgo/b;", XLogUtil.TAG, "onResolutionTipFailedFromDialog", "(Lgo/b;)V", "onResolutionTipFailedFromMemberTipView", "sceneId", "showResolutionIntercept", "(Lgo/b;Ljava/lang/String;)V", "getClassTag", "()Ljava/lang/String;", "h0", "Landroidx/fragment/app/FragmentActivity;", "X1", "()Landroidx/fragment/app/FragmentActivity;", "forceAttach", "u2", "activity", "container", "b0", "(Landroidx/fragment/app/FragmentActivity;Landroid/widget/FrameLayout;)V", "s2", "(Landroidx/fragment/app/FragmentActivity;)V", "getTvProDialogMaxHeight", "()I", "y0", "f0", "getTvProModuleName", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getTvProReportMap", "()Ljava/util/HashMap;", "R1", "Q1", "A0", "d1", "W0", "(Ljava/lang/String;Lgo/a;)V", "videoPlaying", "B2", "C0", "a1", "(Landroid/view/ViewGroup;)V", "D2", "B0", "D0", "x1", "r1", "k0", "X0", "Lcom/tn/lib/view/SecondariesSeekBar;", "seekBarView", "Y0", "(Lcom/tn/lib/view/SecondariesSeekBar;)V", "n0", KaManager.NOTIFICATION_GROUP_FULLSCREEN, "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "curUiType", "a2", "(ZLcom/transsion/player/longvideo/ui/LongVodUiType;)V", "L1", "keepScreenOn", "o1", "t1", "u0", "y2", "z0", "m1", "r0", "Z0", "playStream", "V0", "(Lgo/a;Lgo/c;)V", "Landroid/view/MotionEvent;", "e", "isDoubleClick", "H2", "(Landroid/view/MotionEvent;Z)V", "z1", "U1", "selectedBean", "u1", "y1", "i1", "t0", ToolBar.FORWARD, "l0", "Lcom/transsion/player/longvideo/helper/i;", "getLocalVideoLandForwardViewControl", "()Lcom/transsion/player/longvideo/helper/i;", "Lcom/transsion/postdetail/layer/local/q1;", "getLocalVideoMiddleForwardViewControl", "()Lcom/transsion/postdetail/layer/local/q1;", "s0", "J2", "autoHide", "e0", "f2", "o2", "isSeek", NotificationCompat.CATEGORY_PROGRESS, "C2", "(ZJ)V", "vis", "q1", "E2", "(J)V", "x0", "playing", "setPauseViewStatus", "w2", "content", "r2", "c1", "M1", "isNoNet", "i2", "j1", "K1", "I1", "F2", "d2", "G1", "A2", "P1", "c2", "n1", "k1", "l1", "h2", "w0", "setPlayerDataSourceAdPrepare", "(Lgo/c;)V", "n2", "F1", "S1", "Lcom/transsion/player/mediasession/MediaItem;", "p0", "(Lgo/c;)Lcom/transsion/player/mediasession/MediaItem;", "Landroid/app/PendingIntent;", "q0", "(Lgo/c;)Landroid/app/PendingIntent;", "Landroid/content/Intent;", "o0", "(Lgo/c;Ljava/lang/String;)Landroid/content/Intent;", "getPendingIntentFlag", "Y1", "T1", "h1", "isPortrait", "d0", NativeComponentConstants.KEY_COMPONENT_TYPE, "O1", "", "getReportNextMap", "()Ljava/util/Map;", "N1", "Lcom/transsion/player/enum/ScaleMode;", "scaleMode", "scaleModeName", "K2", "(Lcom/transsion/player/enum/ScaleMode;Ljava/lang/String;)V", "J1", "H1", "j0", "e2", "Lho/j;", "a", "Lho/j;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getResolutionPanelTargetWidth", "resolutionPanelTargetWidth", "c", "I", "screenWidth", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "screenHeight", "Lcom/transsion/player/ui/longvideo/a;", "Lcom/transsion/player/ui/longvideo/a;", "playerControl", "f", "Landroid/view/ViewGroup;", "playerViewParent", "g", "Lcom/transsion/player/longvideo/constants/LongVodPageType;", "h", "Ljava/lang/String;", "playerTag", "i", "Lcom/transsion/player/longvideo/constants/LongVodContentType;", "j", CampaignEx.JSON_KEY_AD_K, "Z", "isFloatPlaying", "l", "isUGCPlay", "m", "isUGCPauseShowing", "n", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "o", "curUiRotation", TtmlNode.TAG_P, "videoHeight", CampaignEx.JSON_KEY_AD_Q, "videoWidth", CampaignEx.JSON_KEY_AD_R, "J", "totalDuration", "s", "playProgress", "t", "pressSeekProgress", TmcStartParams.KEY_URL_SHORT, "subSelectId", "v", "showToolbarAlways", "w", "isShowLoading", "x", "isSeeking", "y", "z", "formUserSeek", "A", "isReload", "B", "isMobilePaused", "C", "isPageResumed", "D", "isHasNext", "E", "isMultipleResChangeResolution", "F", "isNewPlayer", "G", "isFloatShow", "H", "isMultiplePlayer", "isPrepared", "K", "Lgo/a;", "curBean", "L", "Lgo/c;", "curPlayStream", "Landroid/view/View;", "M", "Landroid/view/View;", "errorLayout", "N", "replayLayout", "O", "Landroid/widget/FrameLayout;", "Landroid/os/Handler;", "P", "Landroid/os/Handler;", "handler", "Q", "Lcom/transsion/player/longvideo/helper/i;", "localVideoLandForwardViewControl", "R", "Lcom/transsion/postdetail/layer/local/q1;", "localVideoMiddleForwardViewControl", "Lcom/transsion/postdetail/layer/local/j1;", "S", "Lcom/transsion/postdetail/layer/local/j1;", "localToastControl", "T", "toastLayout", "U", "playingStream", "V", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "Lcom/transsion/postdetail/layer/local/c0;", "W", "Lcom/transsion/postdetail/layer/local/c0;", "videoDot", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "a0", "getVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "videoDetailPlayDao", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "getUgcVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "ugcVideoDetailPlayDao", "c0", "Lfo/a$b;", "playerCallback", "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;", "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;", "subtitleHelper", "Lcom/transsion/player/longvideo/helper/j;", "Lcom/transsion/player/longvideo/helper/j;", "spaceHelper", "Lcom/transsion/player/longvideo/helper/w;", "Lcom/transsion/player/longvideo/helper/w;", "resolutionHelper", "Lcom/transsion/player/longvideo/helper/g;", "g0", "Lcom/transsion/player/longvideo/helper/g;", "gameResHelper", "Lcom/transsion/player/longvideo/helper/u;", "Lcom/transsion/player/longvideo/helper/u;", "mobileDataHelper", "Lcom/transsion/player/longvideo/helper/c;", "i0", "Lcom/transsion/player/longvideo/helper/c;", "adHelper", "isCompletionBlock", "resumeSpeed", "Lcom/transsion/player/longvideo/ui/dialog/a;", "getConfigViewModel", "()Lcom/transsion/player/longvideo/ui/dialog/a;", "configViewModel", "Lcom/transsion/postdetail/ui/dialog/o;", "m0", "getSpeedViewModel", "()Lcom/transsion/postdetail/ui/dialog/o;", "speedViewModel", "Lmo/d;", "Lmo/d;", "dashVideoTracksGroup", "Lmo/b;", "Lmo/b;", "curVideoFormat", "isFirstSetTracks", "", "Ljava/util/List;", "resolutionList", "hideFloat", "playTimeoutHandler", "Lao/e;", "Lao/e;", "curTimeoutMediaSource", "getPlayTimeoutStream", "playTimeoutStream", "v0", "getPkStyle", "pkStyle", "Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/n0;", "coroutineScopeIO", "Lkotlin/jvm/functions/Function1;", "audioSelectCallback", "isAdShowing", "isRewardUnlock", "isRewardInterceptShowing", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "playbackInterceptionManager", "Lcom/transsion/player/longvideo/intercept/c;", "Lcom/transsion/player/longvideo/intercept/c;", "playbackBack", "E0", "isTvProPanelShowing", "F0", "tvProPanelContainer", "Lcom/transsion/player/longvideo/view/LongVodTvProPanelView;", "G0", "Lcom/transsion/player/longvideo/view/LongVodTvProPanelView;", "tvProPanelView", "Lcom/transsion/player/longvideo/ui/dialog/LongVodTvProDialog;", "H0", "Lcom/transsion/player/longvideo/ui/dialog/LongVodTvProDialog;", "tvProDialog", "", "I0", "Ljava/util/Set;", "tvProExposureModules", "J0", "Lcom/transsion/baselib/helper/ScreenRotationHelper;", "K0", "getScreenHelper", "()Lcom/transsion/baselib/helper/ScreenRotationHelper;", "screenHelper", "L0", "isPreparedInterceptPlay", "com/transsion/player/longvideo/ui/LongVodPlayerView$c", "M0", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$c;", "bandwidthRedundancyListener", "com/transsion/player/longvideo/ui/LongVodPlayerView$k", "N0", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;", "playerListener", "O0", "pressTime", "Ljava/lang/Runnable;", "P0", "Ljava/lang/Runnable;", "runnable", "com/transsion/player/longvideo/ui/LongVodPlayerView$h", "Q0", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$h;", "netListener", "R0", "playTimeoutRunnable", "S0", "isMusicLikedFragment", "Lcom/transsion/postdetail/util/o;", "T0", "getOrientationEventListener", "()Lcom/transsion/postdetail/util/o;", "orientationEventListener", "Companion", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LongVodPlayerView extends ConstraintLayout implements fo.a, com.transsion.baselib.report.l.a, com.transsion.ad.strategy.b.a {
    public static final String PK_NEW_PLAYER_UI_KEY = "pk_player_ui_key";
    public static final String TAG = "LongVodPlayerView";

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private boolean isReload;

    /* JADX INFO: renamed from: A0, reason: from kotlin metadata */
    private boolean isRewardUnlock;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private boolean isMobilePaused;

    /* JADX INFO: renamed from: B0, reason: from kotlin metadata */
    private boolean isRewardInterceptShowing;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private boolean isPageResumed;

    /* JADX INFO: renamed from: C0, reason: from kotlin metadata */
    private PlaybackInterceptionManager playbackInterceptionManager;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private boolean isHasNext;

    /* JADX INFO: renamed from: D0, reason: from kotlin metadata */
    private com.transsion.player.longvideo.intercept.c playbackBack;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean isMultipleResChangeResolution;

    /* JADX INFO: renamed from: E0, reason: from kotlin metadata */
    private boolean isTvProPanelShowing;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private boolean isNewPlayer;

    /* JADX INFO: renamed from: F0, reason: from kotlin metadata */
    private FrameLayout tvProPanelContainer;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private boolean isFloatShow;

    /* JADX INFO: renamed from: G0, reason: from kotlin metadata */
    private LongVodTvProPanelView tvProPanelView;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean isMultiplePlayer;

    /* JADX INFO: renamed from: H0, reason: from kotlin metadata */
    private LongVodTvProDialog tvProDialog;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private boolean isPrepared;

    /* JADX INFO: renamed from: I0, reason: from kotlin metadata */
    private final Set tvProExposureModules;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private String fragmentId;

    /* JADX INFO: renamed from: J0, reason: from kotlin metadata */
    private FrameLayout flPortraitPremium;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private go.a curBean;

    /* JADX INFO: renamed from: K0, reason: from kotlin metadata */
    private final Lazy screenHelper;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private go.c curPlayStream;

    /* JADX INFO: renamed from: L0, reason: from kotlin metadata */
    private boolean isPreparedInterceptPlay;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private View errorLayout;

    /* JADX INFO: renamed from: M0, reason: from kotlin metadata */
    private final c bandwidthRedundancyListener;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private View replayLayout;

    /* JADX INFO: renamed from: N0, reason: from kotlin metadata */
    private final k playerListener;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private FrameLayout fullscreenContainer;

    /* JADX INFO: renamed from: O0, reason: from kotlin metadata */
    private long pressTime;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private Handler handler;

    /* JADX INFO: renamed from: P0, reason: from kotlin metadata */
    private final Runnable runnable;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private com.transsion.player.longvideo.helper.i localVideoLandForwardViewControl;

    /* JADX INFO: renamed from: Q0, reason: from kotlin metadata */
    private final h netListener;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private q1 localVideoMiddleForwardViewControl;

    /* JADX INFO: renamed from: R0, reason: from kotlin metadata */
    private final Runnable playTimeoutRunnable;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private j1 localToastControl;

    /* JADX INFO: renamed from: S0, reason: from kotlin metadata */
    private boolean isMusicLikedFragment;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    private View toastLayout;

    /* JADX INFO: renamed from: T0, reason: from kotlin metadata */
    private final Lazy orientationEventListener;

    /* JADX INFO: renamed from: U, reason: from kotlin metadata */
    private go.c playingStream;

    /* JADX INFO: renamed from: V, reason: from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: W, reason: from kotlin metadata */
    private com.transsion.postdetail.layer.local.c0 videoDot;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final ho.j viewBinding;

    /* JADX INFO: renamed from: a0, reason: collision with root package name and from kotlin metadata */
    private final Lazy videoDetailPlayDao;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy resolutionPanelTargetWidth;

    /* JADX INFO: renamed from: b0, reason: collision with root package name and from kotlin metadata */
    private final Lazy ugcVideoDetailPlayDao;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final int screenWidth;

    /* JADX INFO: renamed from: c0, reason: collision with root package name and from kotlin metadata */
    private fo.a.b playerCallback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int screenHeight;

    /* JADX INFO: renamed from: d0, reason: collision with root package name and from kotlin metadata */
    private LongVodSubtitleHelper subtitleHelper;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final com.transsion.player.ui.longvideo.a playerControl;

    /* JADX INFO: renamed from: e0, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.longvideo.helper.j spaceHelper;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ViewGroup playerViewParent;

    /* JADX INFO: renamed from: f0, reason: collision with root package name and from kotlin metadata */
    private final com.transsion.player.longvideo.helper.w resolutionHelper;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private LongVodPageType pageType;

    /* JADX INFO: renamed from: g0, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.longvideo.helper.g gameResHelper;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private String playerTag;

    /* JADX INFO: renamed from: h0, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.longvideo.helper.u mobileDataHelper;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private LongVodContentType contentType;

    /* JADX INFO: renamed from: i0, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.longvideo.helper.c adHelper;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    /* JADX INFO: renamed from: j0, reason: collision with root package name and from kotlin metadata */
    private boolean isCompletionBlock;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isFloatPlaying;

    /* JADX INFO: renamed from: k0, reason: collision with root package name and from kotlin metadata */
    private float resumeSpeed;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isUGCPlay;

    /* JADX INFO: renamed from: l0, reason: collision with root package name and from kotlin metadata */
    private final Lazy configViewModel;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isUGCPauseShowing;

    /* JADX INFO: renamed from: m0, reason: collision with root package name and from kotlin metadata */
    private final Lazy speedViewModel;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private LongVodUiType curUiType;

    /* JADX INFO: renamed from: n0, reason: collision with root package name and from kotlin metadata */
    private mo.d dashVideoTracksGroup;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private LongVodUiType curUiRotation;

    /* JADX INFO: renamed from: o0, reason: collision with root package name and from kotlin metadata */
    private mo.b curVideoFormat;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private int videoHeight;

    /* JADX INFO: renamed from: p0, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstSetTracks;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private int videoWidth;

    /* JADX INFO: renamed from: q0, reason: collision with root package name and from kotlin metadata */
    private List resolutionList;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private long totalDuration;

    /* JADX INFO: renamed from: r0, reason: collision with root package name and from kotlin metadata */
    private boolean hideFloat;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private long playProgress;

    /* JADX INFO: renamed from: s0, reason: collision with root package name and from kotlin metadata */
    private final Handler playTimeoutHandler;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private long pressSeekProgress;

    /* JADX INFO: renamed from: t0, reason: collision with root package name and from kotlin metadata */
    private ao.e curTimeoutMediaSource;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private String subSelectId;

    /* JADX INFO: renamed from: u0, reason: collision with root package name and from kotlin metadata */
    private final Lazy playTimeoutStream;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean showToolbarAlways;

    /* JADX INFO: renamed from: v0, reason: collision with root package name and from kotlin metadata */
    private final Lazy pkStyle;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean isShowLoading;

    /* JADX INFO: renamed from: w0, reason: collision with root package name and from kotlin metadata */
    private final kotlinx.coroutines.n0 coroutineScopeIO;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean isSeeking;

    /* JADX INFO: renamed from: x0, reason: collision with root package name and from kotlin metadata */
    private Function1 audioSelectCallback;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean isPressedPause;

    /* JADX INFO: renamed from: y0, reason: collision with root package name and from kotlin metadata */
    private List dubs;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private boolean formUserSeek;

    /* JADX INFO: renamed from: z0, reason: collision with root package name and from kotlin metadata */
    private boolean isAdShowing;

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48287b;

        static {
            int[] iArr = new int[LongVodPlayerConfigType.values().length];
            try {
                iArr[LongVodPlayerConfigType.BITRATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LongVodPlayerConfigType.SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48286a = iArr;
            int[] iArr2 = new int[LongVodContentType.values().length];
            try {
                iArr2[LongVodContentType.SUBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LongVodContentType.UGC_VIDEO_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[LongVodContentType.UGC_VIDEO_ONLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f48287b = iArr2;
        }
    }

    public static final class c implements com.transsion.player.orplayer.e {
        c() {
        }

        @Override // com.transsion.player.orplayer.e
        public void a(Double d11, long j11, long j12, Double d12) {
            boolean zI = ko.l0.f66968a.i();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onBandwidthRedundancyRate LongVodView:isBandwidthRedundancyRateOn:");
            sb2.append(zI);
            if (zI) {
                com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
                if (c0Var != null) {
                    c0Var.h(d11, j11, j12, d12);
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("onBandwidthRedundancyRate LongVodView: redundancyRate:");
                sb3.append(d11);
                sb3.append("，totalDownloadBytesAll : ");
                sb3.append(j11);
                sb3.append("，consumed:");
                sb3.append(j12);
                sb3.append(",poolPercent:");
                sb3.append(d12);
            }
        }
    }

    public static final class d implements com.transsion.mbwidget.guide.a {
        d() {
        }

        @Override // com.transsion.mbwidget.guide.a
        public void a() {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "DeskWidget，show stop auto pip", false, 4, null);
            LongVodPlayerView.this.B2(false);
        }

        @Override // com.transsion.mbwidget.guide.a
        public void onDismiss() {
            LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                if (longVodPlayerView.playerControl.isPlaying()) {
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "DeskWidget，dismiss resume auto pip", false, 4, null);
                    longVodPlayerView.B2(true);
                }
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class e implements com.transsion.player.ui.longvideo.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f48290a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f48291b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f48292c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f48293d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f48295f;

        e(boolean z10) {
            this.f48295f = z10;
        }

        @Override // com.transsion.player.ui.longvideo.a.b
        public void a() {
            LongVodPlayerView.this.x1();
        }

        @Override // com.transsion.player.ui.longvideo.a.b
        public void b(float f11, float f12) {
            if (!this.f48292c) {
                this.f48293d = LongVodPlayerView.this.viewBinding.f64618h.f64655t.getCurrentProgress();
                LongVodPlayerView.this.f2(false);
            }
            LongVodPlayerView.this.formUserSeek = true;
            this.f48292c = true;
            LongVodPlayerView.this.handler.removeCallbacks(LongVodPlayerView.this.runnable);
            long j11 = (long) (this.f48293d + (((this.f48295f ? f11 - f12 : f12 - f11) * LongVodPlayerView.this.totalDuration) / ((LongVodPlayerView.this.curUiType == LongVodUiType.LAND ? LongVodPlayerView.this.screenHeight : LongVodPlayerView.this.screenWidth) * 4)));
            if (j11 < 0) {
                j11 = 0;
            } else if (j11 > LongVodPlayerView.this.totalDuration) {
                j11 = LongVodPlayerView.this.totalDuration;
            }
            LongVodPlayerView.this.viewBinding.f64618h.f64655t.setProgress(j11);
            LongVodPlayerView.this.viewBinding.f64619i.f64675n.setProgress(j11);
            this.f48291b = (j11 * 1.0f) / LongVodPlayerView.this.totalDuration;
            long j12 = (long) (LongVodPlayerView.this.totalDuration * this.f48291b);
            this.f48290a = j12;
            LongVodPlayerView.this.C2(true, j12);
        }

        @Override // com.transsion.player.ui.longvideo.a.b
        public void c() {
            if (this.f48292c) {
                LongVodPlayerView.this.playerControl.seekTo(this.f48290a);
                if (!LongVodPlayerView.this.playerControl.isPlaying() && !LongVodPlayerView.this.j1()) {
                    if (LongVodPlayerView.this.m1()) {
                        LongVodPlayerView.this.y2();
                    } else {
                        LongVodPlayerView.this.playerControl.play();
                    }
                }
                com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
                if (c0Var != null) {
                    c0Var.q();
                }
                LongVodPlayerView.this.C2(false, 0L);
                LongVodPlayerView.this.hideBottomController(false);
            }
            LongVodPlayerView.this.formUserSeek = false;
            this.f48292c = false;
            LongVodPlayerView.this.k0();
        }

        @Override // com.transsion.player.ui.longvideo.a.b
        public void onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            if (LongVodPlayerView.this.viewBinding.f64618h.f64647l.isSelected()) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onDoubleTap ", false, 4, null);
            LongVodPlayerView.this.H2(e11, true);
        }

        @Override // com.transsion.player.ui.longvideo.a.b
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            LongVodPlayerView.this.r1();
        }
    }

    public static final class f implements com.tn.lib.view.v {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.LongRef f48297b;

        f(Ref.LongRef longRef) {
            this.f48297b = longRef;
        }

        @Override // com.tn.lib.view.v
        public void a(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onStopTrackingTouch targetProgress:" + this.f48297b.element + " ", false, 4, null);
            LongVodPlayerView.this.formUserSeek = false;
            LongVodPlayerView.this.playerControl.seekTo(this.f48297b.element);
            if (!LongVodPlayerView.this.playerControl.isPlaying() && !LongVodPlayerView.this.j1()) {
                LongVodPlayerView.this.playerControl.play();
            }
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.q();
            }
            LongVodPlayerView.this.C2(false, 0L);
            LongVodPlayerView.this.hideBottomController(false);
        }

        @Override // com.tn.lib.view.v
        public void b(SecondariesSeekBar seekBar, long j11, boolean z10) {
            View view;
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                View view2 = LongVodPlayerView.this.replayLayout;
                if (view2 != null && jg.c.i(view2) && (view = LongVodPlayerView.this.replayLayout) != null) {
                    jg.c.g(view);
                }
                if (LongVodPlayerView.this.m1()) {
                    LongVodPlayerView.this.y2();
                }
                LongVodPlayerView.this.formUserSeek = true;
                LongVodPlayerView.this.handler.removeCallbacks(LongVodPlayerView.this.runnable);
                if (LongVodPlayerView.this.totalDuration > 0) {
                    this.f48297b.element = (long) (LongVodPlayerView.this.totalDuration * (j11 / LongVodPlayerView.this.totalDuration));
                }
                LongVodPlayerView.this.C2(true, this.f48297b.element);
            }
        }

        @Override // com.tn.lib.view.v
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onStartTrackingTouch ", false, 4, null);
        }
    }

    public static final class g implements com.transsion.player.longvideo.helper.x {
        g() {
        }

        @Override // com.transsion.player.longvideo.helper.x
        public void b(boolean z10, boolean z11) {
            LongVodPlayerView.this.e0(z10, z11);
        }

        @Override // com.transsion.player.longvideo.helper.x
        public void c(String text) {
            Intrinsics.h(text, "text");
            LongVodPlayerView.this.r2(text);
        }

        @Override // com.transsion.player.longvideo.helper.x
        public void d(String str, String str2) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.t(str, str2);
            }
        }

        @Override // com.transsion.player.longvideo.helper.x
        public void e(List list) {
            Intrinsics.h(list, "list");
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.r(list);
            }
        }

        @Override // com.transsion.player.longvideo.helper.x
        public void f(String str) {
            LongVodPlayerView.this.subSelectId = str;
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onSetSelectId, selectId:" + str + " ", false, 4, null);
        }

        @Override // com.transsion.player.longvideo.helper.x
        public void g(String name, String lan, int i11) {
            Intrinsics.h(name, "name");
            Intrinsics.h(lan, "lan");
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.s(name, lan, i11);
            }
        }
    }

    public static final class h implements nh.n {
        h() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            LongVodPlayerView.this.K1();
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, LongVodPlayerView.TAG, "onConnected ", false, 4, null);
            if (!LongVodPlayerView.this.isPressedPause && nh.m.f70474a.e() && LongVodPlayerView.this.isPageResumed) {
                c0828a.c(LongVodPlayerView.TAG, "onConnected, isPrepared:" + LongVodPlayerView.this.isPrepared + " ", true);
                if (LongVodPlayerView.this.isPrepared) {
                    c0828a.c(LongVodPlayerView.TAG, "onConnected play", true);
                    LongVodPlayerView.this.playerControl.play();
                } else {
                    go.c cVar = LongVodPlayerView.this.curPlayStream;
                    if (cVar != null) {
                        LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                        c0828a.c(LongVodPlayerView.TAG, "onConnected setPlayerDataSourceAdPrepare", true);
                        longVodPlayerView.setPlayerDataSourceAdPrepare(cVar);
                    }
                }
            }
            LongVodSubtitleHelper longVodSubtitleHelper = LongVodPlayerView.this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.S();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    public static final class i implements zx.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ go.b f48301b;

        i(go.b bVar) {
            this.f48301b = bVar;
        }

        @Override // zx.e
        public void a(boolean z10) {
            if (z10) {
                LongVodPlayerView.this.getConfigViewModel().c(this.f48301b);
            }
            LongVodPlayerView.this.playerControl.play();
            ok.c.f71034a.a(LongVodPlayerView.this.getClassTag() + " --> onResolutionTipFailedFromDialog() --> 继续播放");
        }
    }

    public static final class j implements zx.e {
        j() {
        }

        @Override // zx.e
        public void a(boolean z10) {
            if (z10) {
                LongVodPlayerView.this.viewBinding.f64618h.f64653r.onShowComplete();
                go.b bVarA = com.transsion.player.longvideo.member.q.f48233a.a(LongVodPlayerView.this.resolutionList);
                if (bVarA != null) {
                    LongVodPlayerView.this.getConfigViewModel().c(bVarA);
                    ok.c.f71034a.a(LongVodPlayerView.this.getClassTag() + " --> onResolutionTipFailedFromMemberTipView() --> 自动播放最高分辨率 --> maxResolution = " + bVarA.d());
                }
            }
            LongVodPlayerView.this.playerControl.play();
            ok.c.f71034a.a(LongVodPlayerView.this.getClassTag() + " --> onResolutionTipFailedFromMemberTipView() --> 继续播放");
        }
    }

    public static final class k implements com.transsion.player.orplayer.f {

        public static final class a implements com.transsion.player.longvideo.intercept.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ LongVodPlayerView f48304a;

            a(LongVodPlayerView longVodPlayerView) {
                this.f48304a = longVodPlayerView;
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void a() {
                com.transsion.player.longvideo.intercept.d.a.d(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void b() {
                com.transsion.player.longvideo.intercept.d.a.b(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public go.b c() {
                return com.transsion.player.longvideo.intercept.d.a.a(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void d() {
                com.transsion.player.longvideo.intercept.d.a.e(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void e() {
                com.transsion.player.longvideo.intercept.d.a.g(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void f() {
                com.transsion.player.longvideo.intercept.d.a.f(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void onComplete() {
                com.transsion.player.longvideo.intercept.d.a.c(this);
                fo.a.b bVar = this.f48304a.playerCallback;
                if (bVar != null) {
                    bVar.onCompletion();
                }
                if (this.f48304a.pageType == LongVodPageType.TRAILER) {
                    this.f48304a.h2();
                    this.f48304a.showReplay();
                }
            }
        }

        public static final class b implements com.transsion.player.longvideo.intercept.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ LongVodPlayerView f48305a;

            b(LongVodPlayerView longVodPlayerView) {
                this.f48305a = longVodPlayerView;
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void a() {
                com.transsion.player.longvideo.intercept.d.a.d(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void b() {
                com.transsion.player.longvideo.intercept.d.a.b(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public go.b c() {
                return com.transsion.player.longvideo.intercept.d.a.a(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void d() {
                com.transsion.player.longvideo.intercept.d.a.e(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void e() {
                com.transsion.player.longvideo.intercept.d.a.g(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void f() {
                com.transsion.player.longvideo.intercept.d.a.f(this);
            }

            @Override // com.transsion.player.longvideo.intercept.d
            public void onComplete() {
                com.transsion.player.longvideo.intercept.d.a.c(this);
                lg.a.C0828a.f(lg.a.f68839a, "premium_p", "StartInterceptAdManager --> 启播逻辑处理完毕，继续播放", false, 4, null);
                this.f48305a.t1();
            }
        }

        k() {
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
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.z(true);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onBufferedPosition(long j11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.d(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onCompletion(ao.e eVar) {
            LongVodPlayerView.this.B2(false);
            LongVodPlayerView.this.w2(false);
            LongVodPlayerView.this.setPauseViewStatus(false);
            com.transsion.player.orplayer.f.a.z(this, LongVodPlayerView.this.totalDuration, null, 2, null);
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.i();
            }
            lg.a.f68839a.c(LongVodPlayerView.TAG, "onCompletion", true);
            PlaybackInterceptionManager playbackInterceptionManager = LongVodPlayerView.this.playbackInterceptionManager;
            if (playbackInterceptionManager != null) {
                playbackInterceptionManager.D(eVar, LongVodPlayerView.this.curBean, LongVodPlayerView.this.viewBinding.f64626p, new a(LongVodPlayerView.this));
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onFocusChange(boolean z10) {
            com.transsion.player.orplayer.f.a.g(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onIsPlayingChanged(boolean z10) {
            LongVodSubtitleHelper longVodSubtitleHelper = LongVodPlayerView.this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.e0(z10);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingBegin(ao.e eVar) {
            go.c cVar;
            LongVodPlayerView.this.showToolbarAlways = false;
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.j();
            }
            if (nh.m.f70474a.e() || (cVar = LongVodPlayerView.this.curPlayStream) == null || !cVar.j()) {
                LongVodPlayerView.this.K1();
                LongVodPlayerView.this.w2(true);
            } else {
                lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onLoadingBegin， not net----", false, 4, null);
                LongVodPlayerView.j2(LongVodPlayerView.this, false, 1, null);
            }
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onLoadingBegin", false, 4, null);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingEnd(ao.e eVar) {
            LongVodPlayerView.this.showToolbarAlways = false;
            LongVodPlayerView.this.K1();
            LongVodPlayerView.this.w2(false);
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.k();
            }
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onLoadingEnd", false, 4, null);
            LongVodPlayerView.this.handler.removeCallbacksAndMessages(null);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingProgress(int i11, float f11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoopingStart() {
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onLoopingStart", false, 4, null);
        }

        @Override // com.transsion.player.orplayer.f
        public void onMediaItemTransition(String str) {
            com.transsion.player.orplayer.f.a.p(this, str);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayError(PlayError errorInfo, ao.e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
            LongVodPlayerView.this.S1();
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.m(errorInfo);
            }
            boolean zE = nh.m.f70474a.e();
            lg.a.f68839a.c(LongVodPlayerView.TAG, "onPlayError， hasNet:" + zE + ", code:" + errorInfo.getErrorCode() + ", msg:" + errorInfo.getErrorMessage(), true);
            LongVodPlayerView.this.i2(zE ^ true);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerRelease(ao.e eVar) {
            com.transsion.player.orplayer.f.a.t(this, eVar);
            if (LongVodPlayerView.this.k1()) {
                Context context = LongVodPlayerView.this.getContext();
                AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
                if (appCompatActivity != null) {
                    appCompatActivity.finish();
                }
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerReset() {
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onPlayerReset", false, 4, null);
            LongVodPlayerView.this.showToolbarAlways = false;
            LongVodPlayerView.this.totalDuration = 0L;
            LongVodPlayerView.this.playProgress = 0L;
        }

        @Override // com.transsion.player.orplayer.f
        public void onPrepare(ao.e eVar) {
            LongVodPlayerView.this.S1();
            LongVodPlayerView.this.isPrepared = true;
            LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
            longVodPlayerView.totalDuration = longVodPlayerView.playerControl.getDuration();
            LongVodPlayerView.this.e2();
            lg.a.f68839a.c(LongVodPlayerView.TAG, "onPrepare， totalDuration:" + LongVodPlayerView.this.totalDuration, true);
            LongVodPlayerView.this.viewBinding.f64619i.f64675n.setMax(LongVodPlayerView.this.totalDuration);
            LongVodPlayerView.this.viewBinding.f64618h.f64655t.setMax(LongVodPlayerView.this.totalDuration);
            LongVodPlayerView.this.Z0();
            if (LongVodPlayerView.this.isPreparedInterceptPlay) {
                LongVodPlayerView.this.isPreparedInterceptPlay = false;
            } else if (!LongVodPlayerView.this.isMobilePaused && !LongVodPlayerView.this.isUGCPauseShowing) {
                LongVodPlayerView.this.playerControl.play();
            }
            LongVodPlayerView.this.isMultipleResChangeResolution = false;
        }

        @Override // com.transsion.player.orplayer.f
        public void onProgress(long j11, ao.e eVar) {
            if (LongVodPlayerView.this.isMultipleResChangeResolution && j11 == 0 && LongVodPlayerView.this.playProgress > 0) {
                lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onProgress, 正在切换分辨率，progress重置，不做处理", false, 4, null);
            } else {
                LongVodPlayerView.this.E2(j11);
            }
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.n(j11);
            }
            LongVodPlayerView.this.playProgress = j11;
            LongVodPlayerView.this.pressSeekProgress = j11;
            com.transsion.player.longvideo.helper.c cVar = LongVodPlayerView.this.adHelper;
            if (cVar != null) {
                cVar.e(j11, LongVodPlayerView.this.totalDuration);
            }
            LongVodSubtitleHelper longVodSubtitleHelper = LongVodPlayerView.this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.X(j11);
            }
            LongVodPlayerView.this.viewBinding.f64619i.f64675n.setMax(LongVodPlayerView.this.totalDuration);
            LongVodPlayerView.this.viewBinding.f64618h.f64655t.setMax(LongVodPlayerView.this.totalDuration);
            if (!ak.o.f646a.i()) {
                ak.g.f639a.b();
            }
            go.a aVar = LongVodPlayerView.this.curBean;
            if (aVar != null) {
                String str = LongVodPlayerView.this.pageName;
                if (str == null) {
                    str = "";
                }
                aVar.y(str);
            }
            PlaybackInterceptionManager playbackInterceptionManager = LongVodPlayerView.this.playbackInterceptionManager;
            if (playbackInterceptionManager != null) {
                playbackInterceptionManager.G(j11, LongVodPlayerView.this.curBean, LongVodPlayerView.this.playerControl, LongVodPlayerView.this.viewBinding);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onRenderFirstFrame() {
            lg.a.f68839a.c(LongVodPlayerView.TAG, "onRenderFirstFrame", true);
            if (!LongVodPlayerView.this.isPrepared) {
                LongVodPlayerView.this.isPreparedInterceptPlay = true;
            }
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.o();
            }
            LongVodPlayerView.this.playerControl.pause();
            com.transsion.player.orplayer.g orPlayer = LongVodPlayerView.this.playerControl.getOrPlayer();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("player is :");
            sb2.append(orPlayer);
            if (orPlayer instanceof ko.f0) {
                ((ko.f0) orPlayer).h(LongVodPlayerView.this.bandwidthRedundancyListener);
            }
            go.a aVar = LongVodPlayerView.this.curBean;
            if (aVar != null) {
                String str = LongVodPlayerView.this.pageName;
                if (str == null) {
                    str = "";
                }
                aVar.y(str);
            }
            PlaybackInterceptionManager playbackInterceptionManager = LongVodPlayerView.this.playbackInterceptionManager;
            if (playbackInterceptionManager != null) {
                playbackInterceptionManager.H(LongVodPlayerView.this.viewBinding.f64626p, LongVodPlayerView.this.viewBinding.f64624n, LongVodPlayerView.this.curBean, new b(LongVodPlayerView.this));
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onSetDataSource() {
            com.transsion.player.orplayer.f.a.B(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksAudioBitrateChange(int i11) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.u(i11);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksChange(mo.c tracks) {
            ImmutableList immutableListA;
            com.transsion.postdetail.layer.local.c0 c0Var;
            Intrinsics.h(tracks, "tracks");
            com.transsion.player.orplayer.f.a.D(this, tracks);
            go.a aVar = LongVodPlayerView.this.curBean;
            if ((aVar == null || !aVar.w()) && (immutableListA = tracks.a()) != null && !immutableListA.isEmpty() && LongVodPlayerView.this.isFirstSetTracks) {
                LongVodPlayerView.this.isFirstSetTracks = false;
                LongVodPlayerView.this.resolutionList.clear();
                lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onTracksChange, tracks =\n " + tracks, false, 4, null);
                ImmutableList<mo.d> immutableListA2 = tracks.a();
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                for (mo.d dVar : immutableListA2) {
                    if (dVar.e() == 2) {
                        longVodPlayerView.dashVideoTracksGroup = dVar;
                        for (mo.b bVar : dVar.b()) {
                            longVodPlayerView.resolutionList.add(new go.b(false, bVar.c() + "P", LongVodPlayerConfigType.BITRATE));
                        }
                    }
                }
                go.a aVar2 = LongVodPlayerView.this.curBean;
                if ((aVar2 != null ? aVar2.v() : null) != PlayMimeType.HLS || (c0Var = LongVodPlayerView.this.videoDot) == null) {
                    return;
                }
                c0Var.K(LongVodPlayerView.this.resolutionList.size() > 1 ? PrepareException.ERROR_NO_URL : "5");
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksVideoBitrateChange(int i11) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.v(i11);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoPause(ao.e eVar) {
            LongVodPlayerView.this.B2(false);
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.w();
            }
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onVideoPause", false, 4, null);
            LongVodPlayerView.this.o1(false);
            com.transsion.player.longvideo.helper.c cVar = LongVodPlayerView.this.adHelper;
            if (cVar != null) {
                cVar.d();
            }
            LongVodPlayerView.this.setPauseViewStatus(false);
            if (!LongVodPlayerView.this.isAdShowing && !LongVodPlayerView.this.isRewardInterceptShowing) {
                LongVodPlayerView.g2(LongVodPlayerView.this, false, 1, null);
            }
            PlaybackInterceptionManager playbackInterceptionManager = LongVodPlayerView.this.playbackInterceptionManager;
            if (playbackInterceptionManager != null) {
                playbackInterceptionManager.N(LongVodPlayerView.this.viewBinding.f64624n);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoSizeChanged(int i11, int i12) {
            LongVodPlayerView.this.videoWidth = i11;
            LongVodPlayerView.this.videoHeight = i12;
            com.transsion.player.longvideo.helper.j jVar = LongVodPlayerView.this.spaceHelper;
            if (jVar != null) {
                jVar.b(i11, i12);
            }
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoStart(ao.e eVar) {
            com.transsion.player.longvideo.helper.u uVar;
            if (LongVodPlayerView.this.isRewardInterceptShowing) {
                LongVodPlayerView.this.playerControl.pause();
                return;
            }
            PlaybackInterceptionManager playbackInterceptionManager = LongVodPlayerView.this.playbackInterceptionManager;
            if (playbackInterceptionManager != null) {
                VideoContentInterceptView playbackInterceptView = LongVodPlayerView.this.viewBinding.f64624n;
                Intrinsics.g(playbackInterceptView, "playbackInterceptView");
                playbackInterceptionManager.O(eVar, playbackInterceptView, LongVodPlayerView.this.playerControl);
            }
            LongVodPlayerView.this.isUGCPauseShowing = false;
            FrameLayout flUGCAutoPlayGroup = LongVodPlayerView.this.viewBinding.f64619i.f64663b;
            Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
            jg.c.g(flUGCAutoPlayGroup);
            LongVodPlayerView.this.B2(true);
            com.transsion.player.longvideo.helper.u uVar2 = LongVodPlayerView.this.mobileDataHelper;
            if (uVar2 != null) {
                uVar2.E();
            }
            LongVodPlayerView.this.isPressedPause = false;
            LongVodPlayerView.this.w0();
            LongVodPlayerView.this.S1();
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.x();
            }
            lg.a.C0828a.f(lg.a.f68839a, LongVodPlayerView.TAG, "onVideoStart", false, 4, null);
            LongVodPlayerView.this.hideBottomController(false);
            LongVodPlayerView.this.setPauseViewStatus(true);
            LongVodPlayerView.this.o1(true);
            LongVodPlayerView.this.K1();
            LongVodPlayerView.this.w2(false);
            com.transsion.player.longvideo.helper.c cVar = LongVodPlayerView.this.adHelper;
            if (cVar != null) {
                cVar.f();
            }
            if (LongVodPlayerView.this.isMobilePaused) {
                LongVodPlayerView.this.isMobilePaused = false;
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                String string = Utils.a().getString(R$string.long_vod_load_us_cellular);
                Intrinsics.g(string, "getString(...)");
                longVodPlayerView.r2(string);
            }
            if (LongVodPlayerView.this.n2() && (uVar = LongVodPlayerView.this.mobileDataHelper) != null) {
                uVar.D();
            }
            MusicFloatManager.f43454h.b().B(eVar != null ? eVar.i() : null);
        }

        @Override // com.transsion.player.orplayer.f
        public void setOnSeekCompleteListener() {
            com.transsion.player.orplayer.f.a.K(this);
        }
    }

    static final class l implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f48306a;

        l(Function1 function) {
            Intrinsics.h(function, "function");
            this.f48306a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f48306a;
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
            this.f48306a.invoke(obj);
        }
    }

    public static final class m implements com.transsion.player.longvideo.intercept.d {
        m() {
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void a() {
            com.transsion.player.longvideo.intercept.d.a.d(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void b() {
            com.transsion.player.longvideo.intercept.d.a.b(this);
            LongVodPlayerView.backClick$default(LongVodPlayerView.this, false, false, 3, null);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public go.b c() {
            return com.transsion.player.longvideo.member.q.f48233a.b(LongVodPlayerView.this.resolutionList);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void d() {
            com.transsion.player.longvideo.intercept.d.a.e(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void e() {
            com.transsion.player.longvideo.intercept.d.a.g(this);
            go.b bVarB = com.transsion.player.longvideo.member.q.f48233a.b(LongVodPlayerView.this.resolutionList);
            if (bVarB != null) {
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                lg.a.C0828a.f(lg.a.f68839a, "premium_p", longVodPlayerView.getClassTag() + " --> onResolutionReduction() --> 资源内容拦截,降级分辨率 --> content = " + bVarB.d(), false, 4, null);
                longVodPlayerView.getConfigViewModel().c(go.b.b(bVarB, false, bVarB.d(), null, 5, null));
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void f() {
            com.transsion.player.longvideo.intercept.d.a.f(this);
            LongVodPlayerView.this.n0();
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void onComplete() {
            com.transsion.player.longvideo.intercept.d.a.c(this);
        }
    }

    /* JADX INFO: renamed from: com.transsion.player.longvideo.ui.LongVodPlayerView$onSaveHistory$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$onSaveHistory$1", f = "LongVodPlayerView.kt", l = {3063, 3100}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ go.a $bean;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ LongVodPlayerView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(go.a aVar, LongVodPlayerView longVodPlayerView, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bean = aVar;
            this.this$0 = longVodPlayerView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$bean, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:60:0x0169  */
        /* JADX WARN: Code duplicated, block: B:63:0x0182 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            go.a aVar;
            LongVodPlayerView longVodPlayerView;
            ArrayList arrayList;
            Object objL;
            String str;
            String ops;
            VideoDetailPlayBean videoDetailPlayBean;
            VideoDetailPlayDao videoDetailPlayDao;
            Long lastAdEndTimeStamp;
            Long lastAdStartTimeStamp;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    arrayList = (ArrayList) this.L$2;
                    aVar = (go.a) this.L$1;
                    longVodPlayerView = (LongVodPlayerView) this.L$0;
                    ResultKt.b(obj);
                    objL = obj;
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                my.e eVar = new my.e(true, false);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = my.e.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, eVar, 0L);
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            aVar = this.$bean;
            if (aVar != null) {
                longVodPlayerView = this.this$0;
                arrayList = new ArrayList();
                Iterator it = aVar.a().iterator();
                while (it.hasNext()) {
                    String subjectId = ((DubsInfo) it.next()).getSubjectId();
                    if (subjectId != null) {
                        arrayList.add(subjectId);
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList.add(aVar.o());
                }
                VideoDetailPlayDao videoDetailPlayDao2 = longVodPlayerView.getVideoDetailPlayDao();
                String strO = aVar.o();
                int iL = aVar.l();
                int iE = aVar.e();
                this.L$0 = longVodPlayerView;
                this.L$1 = aVar;
                this.L$2 = arrayList;
                this.label = 1;
                objL = videoDetailPlayDao2.l(strO, iL, iE, this);
                if (objL == objF) {
                    return objF;
                }
            }
            return Unit.f67061a;
            ArrayList arrayList2 = arrayList;
            VideoDetailPlayBean videoDetailPlayBean2 = (VideoDetailPlayBean) objL;
            boolean rewardPlayed = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardPlayed() : false;
            boolean rewardFree = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardFree() : false;
            longVodPlayerView.isRewardUnlock = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardUnlock() : false;
            go.c cVar = longVodPlayerView.curPlayStream;
            if (cVar != null) {
                String strO2 = aVar.o();
                String strC = cVar.c();
                int iE2 = aVar.e();
                int iL2 = aVar.l();
                long j11 = longVodPlayerView.playProgress;
                long j12 = longVodPlayerView.totalDuration;
                long jN = aVar.n();
                String strP = aVar.p();
                String strH = cVar.h();
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strC2 = aVar.c();
                String strS = aVar.s();
                String strB = aVar.b();
                Integer numR = aVar.r();
                boolean zG = aVar.g();
                String value = PlayMode.STREAM.getValue();
                long jLongValue = (videoDetailPlayBean2 == null || (lastAdStartTimeStamp = videoDetailPlayBean2.getLastAdStartTimeStamp()) == null) ? 0L : lastAdStartTimeStamp.longValue();
                long jLongValue2 = (videoDetailPlayBean2 == null || (lastAdEndTimeStamp = videoDetailPlayBean2.getLastAdEndTimeStamp()) == null) ? 0L : lastAdEndTimeStamp.longValue();
                boolean z10 = longVodPlayerView.isRewardUnlock;
                String strQ = aVar.q();
                if (strQ == null || strQ.length() == 0) {
                    if (videoDetailPlayBean2 != null) {
                        ops = videoDetailPlayBean2.getOps();
                    } else {
                        str = null;
                    }
                    videoDetailPlayBean = new VideoDetailPlayBean(strO2, strC, iE2, iL2, j11, strP, strC2, strS, strH, jCurrentTimeMillis, null, Boxing.e(j12), Boxing.e(jN), strB, numR, zG, value, null, null, 0L, arrayList2, Boxing.e(jLongValue), Boxing.e(jLongValue2), rewardPlayed, z10, rewardFree, str, 525312, null);
                    if (longVodPlayerView.subSelectId != null) {
                        videoDetailPlayBean.setSubtitleSelectId(longVodPlayerView.subSelectId);
                    }
                    videoDetailPlayDao = longVodPlayerView.getVideoDetailPlayDao();
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 2;
                    if (videoDetailPlayDao.p(videoDetailPlayBean, this) == objF) {
                        return objF;
                    }
                    my.e eVar2 = new my.e(true, false);
                    FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                    String name2 = my.e.class.getName();
                    Intrinsics.g(name2, "getName(...)");
                    flowEventBus2.postEvent(name2, eVar2, 0L);
                } else {
                    ops = aVar.q();
                }
                str = ops;
                videoDetailPlayBean = new VideoDetailPlayBean(strO2, strC, iE2, iL2, j11, strP, strC2, strS, strH, jCurrentTimeMillis, null, Boxing.e(j12), Boxing.e(jN), strB, numR, zG, value, null, null, 0L, arrayList2, Boxing.e(jLongValue), Boxing.e(jLongValue2), rewardPlayed, z10, rewardFree, str, 525312, null);
                if (longVodPlayerView.subSelectId != null) {
                    videoDetailPlayBean.setSubtitleSelectId(longVodPlayerView.subSelectId);
                }
                videoDetailPlayDao = longVodPlayerView.getVideoDetailPlayDao();
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 2;
                if (videoDetailPlayDao.p(videoDetailPlayBean, this) == objF) {
                    return objF;
                }
                my.e eVar3 = new my.e(true, false);
                FlowEventBus flowEventBus3 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name3 = my.e.class.getName();
                Intrinsics.g(name3, "getName(...)");
                flowEventBus3.postEvent(name3, eVar3, 0L);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.player.longvideo.ui.LongVodPlayerView$setDataSource$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$setDataSource$2", f = "LongVodPlayerView.kt", l = {2692}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ go.a $bean;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(go.a aVar, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$bean = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LongVodPlayerView.this.new AnonymousClass2(this.$bean, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                com.transsion.player.longvideo.helper.w wVar = LongVodPlayerView.this.resolutionHelper;
                go.a aVar = this.$bean;
                this.label = 1;
                obj = wVar.a(aVar, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            go.c cVar = (go.c) obj;
            if (cVar != null) {
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                go.a aVar2 = this.$bean;
                longVodPlayerView.w2(longVodPlayerView.isNewPlayer);
                LongVodSubtitleHelper longVodSubtitleHelper = longVodPlayerView.subtitleHelper;
                if (longVodSubtitleHelper != null) {
                    longVodSubtitleHelper.T(aVar2, cVar);
                }
                if (aVar2.w()) {
                    longVodPlayerView.V0(aVar2, cVar);
                }
                longVodPlayerView.curPlayStream = cVar;
                PlaybackInterceptionManager playbackInterceptionManager = longVodPlayerView.playbackInterceptionManager;
                if (playbackInterceptionManager != null) {
                    playbackInterceptionManager.S(cVar.e(), "mp4");
                }
                fo.a.b bVar = longVodPlayerView.playerCallback;
                if (bVar != null) {
                    bVar.h(cVar.e());
                }
                longVodPlayerView.P1(aVar2, cVar);
                if (longVodPlayerView.isNewPlayer) {
                    longVodPlayerView.setPlayerDataSourceAdPrepare(cVar);
                } else {
                    longVodPlayerView.setPauseViewStatus(true);
                    longVodPlayerView.playerControl.play();
                    LongVodSubtitleHelper longVodSubtitleHelper2 = longVodPlayerView.subtitleHelper;
                    if (longVodSubtitleHelper2 != null) {
                        longVodSubtitleHelper2.e0(true);
                    }
                }
                lg.a.C0828a.v(lg.a.f68839a, LongVodPlayerView.TAG, "setDataSource, reset isNewPlayer", false, 4, null);
                longVodPlayerView.isNewPlayer = true;
            }
            MediaItem mediaItemQ = MusicFloatManager.f43454h.b().q();
            if (mediaItemQ != null) {
                mediaItemQ.setPageName(LongVodPlayerView.this.pageName);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.player.longvideo.ui.LongVodPlayerView$setPlayerDataSourceAdPrepare$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$setPlayerDataSourceAdPrepare$1", f = "LongVodPlayerView.kt", l = {}, m = "invokeSuspend")
    static final class C10711 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        C10711(Continuation<? super C10711> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LongVodPlayerView.this.new C10711(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10711) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            lg.a.C0828a.f(lg.a.f68839a, "premium_p", "LongVodPlayerView --> playerControl?.prepare() --> 这里才是设置播放器的播放资源", false, 4, null);
            LongVodPlayerView.this.playerControl.prepare();
            LongVodPlayerView.this.playTimeoutHandler.postDelayed(LongVodPlayerView.this.playTimeoutRunnable, LongVodPlayerView.this.getPlayTimeoutStream());
            if (LongVodPlayerView.this.n2() && !io.a.f65273a.b()) {
                LongVodPlayerView.this.r0();
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.player.longvideo.ui.LongVodPlayerView$showResolutionIntercept$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$showResolutionIntercept$1", f = "LongVodPlayerView.kt", l = {3669}, m = "invokeSuspend")
    static final class C10721 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $sceneId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10721(String str, Continuation<? super C10721> continuation) {
            super(2, continuation);
            this.$sceneId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LongVodPlayerView.this.new C10721(this.$sceneId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10721) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.u0.a(500L, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            PlaybackInterceptionManager playbackInterceptionManager = LongVodPlayerView.this.playbackInterceptionManager;
            if (playbackInterceptionManager != null) {
                PlaybackInterceptionManager.X(playbackInterceptionManager, true, this.$sceneId, ti.n.f76264a.b(), false, 8, null);
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongVodPlayerView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongVodPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongVodPlayerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.resolutionPanelTargetWidth = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.r0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(LongVodPlayerView.V1());
            }
        });
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.screenHeight = com.blankj.utilcode.util.y.c();
        this.contentType = LongVodContentType.SUBJECT;
        LongVodUiType longVodUiType = LongVodUiType.MIDDLE;
        this.curUiType = longVodUiType;
        this.curUiRotation = longVodUiType;
        this.isPageResumed = true;
        this.isNewPlayer = true;
        this.isMultiplePlayer = true;
        this.handler = new Handler(Looper.getMainLooper());
        this.videoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.G2();
            }
        });
        this.ugcVideoDetailPlayDao = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.z2();
            }
        });
        this.configViewModel = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.g0(this.f48315a);
            }
        });
        this.speedViewModel = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.x2(this.f48339a);
            }
        });
        this.isFirstSetTracks = true;
        this.resolutionList = new ArrayList();
        this.playTimeoutHandler = new Handler(Looper.getMainLooper());
        this.playTimeoutStream = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Long.valueOf(LongVodPlayerView.E1());
            }
        });
        this.pkStyle = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(LongVodPlayerView.C1());
            }
        });
        this.coroutineScopeIO = kotlinx.coroutines.o0.a(y0.b());
        this.tvProExposureModules = new LinkedHashSet();
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", "LongVodPlayerView --> init()", false, 4, null);
        PlaybackInterceptionManager playbackInterceptionManager = new PlaybackInterceptionManager();
        playbackInterceptionManager.R(new Function0() { // from class: com.transsion.player.longvideo.ui.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.p1(this.f48343a);
            }
        });
        this.playbackInterceptionManager = playbackInterceptionManager;
        ho.j jVarB = ho.j.b(LayoutInflater.from(getContext()), this);
        Intrinsics.g(jVarB, "inflate(...)");
        this.viewBinding = jVarB;
        ORLongVodPlayerView orLongVodView = jVarB.f64623m;
        Intrinsics.g(orLongVodView, "orLongVodView");
        this.playerControl = orLongVodView;
        this.resolutionHelper = new com.transsion.player.longvideo.helper.w();
        setClickable(true);
        h0();
        this.screenHelper = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.Z1(this.f48345a);
            }
        });
        this.bandwidthRedundancyListener = new c();
        this.playerListener = new k();
        this.runnable = new Runnable() { // from class: com.transsion.player.longvideo.ui.j
            @Override // java.lang.Runnable
            public final void run() {
                LongVodPlayerView.W1(this.f48347a);
            }
        };
        this.netListener = new h();
        this.playTimeoutRunnable = new Runnable() { // from class: com.transsion.player.longvideo.ui.s0
            @Override // java.lang.Runnable
            public final void run() {
                LongVodPlayerView.D1(this.f48366a);
            }
        };
        this.orientationEventListener = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.ui.t0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.A1(this.f48368a);
            }
        });
    }

    private final void A0() {
        if (!getPkStyle()) {
            this.viewBinding.f64618h.f64647l.setText((CharSequence) null);
            this.viewBinding.f64618h.f64659x.setText((CharSequence) null);
            TextView tvPlayScale = this.viewBinding.f64618h.f64661z;
            Intrinsics.g(tvPlayScale, "tvPlayScale");
            jg.c.g(tvPlayScale);
        }
        this.viewBinding.f64618h.A.updateSpeed(com.transsion.baselib.helper.d.f43265a.d(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.postdetail.util.o A1(final LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        return new com.transsion.postdetail.util.o((Activity) context, new Function1() { // from class: com.transsion.player.longvideo.ui.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodPlayerView.B1(this.f48353a, ((Integer) obj).intValue());
            }
        });
    }

    private final void A2() {
        com.transsion.baselib.report.l.f43359a.u(this);
        nh.m.f70474a.m(this.netListener);
    }

    private final void B0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B1(LongVodPlayerView longVodPlayerView, int i11) {
        com.transsion.player.longvideo.helper.j jVar;
        if ((i11 == 0 || i11 == 1 || i11 == 3) && (jVar = longVodPlayerView.spaceHelper) != null) {
            jVar.d(longVodPlayerView.curUiType, i11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B2(boolean videoPlaying) {
        if (k1()) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Context context = getContext();
            FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
            if (fragmentActivity != null && !fragmentActivity.isDestroyed() && !fragmentActivity.isFinishing()) {
                ox.e.a aVar = ox.e.f72197a;
                if (aVar.b().c() && com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
                    ox.e eVarB = aVar.b();
                    ViewParent parent = getParent();
                    Result.m454constructorimpl(eVarB.a(fragmentActivity, false, videoPlaying, parent instanceof ViewGroup ? (ViewGroup) parent : null));
                }
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void C0() {
        if (n1()) {
            com.transsion.player.longvideo.helper.c cVar = new com.transsion.player.longvideo.helper.c(this.viewBinding);
            cVar.a();
            this.adHelper = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C1() {
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), PK_NEW_PLAYER_UI_KEY, false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        return value == null || value.length() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C2(boolean isSeek, long progress) {
        this.isSeeking = isSeek;
        if (j1()) {
            AppCompatTextView tvCenterProgress = this.viewBinding.f64627q;
            Intrinsics.g(tvCenterProgress, "tvCenterProgress");
            jg.c.g(tvCenterProgress);
            return;
        }
        if (isSeek) {
            this.viewBinding.f64627q.setVisibility(0);
            this.viewBinding.f64627q.setText(Html.fromHtml(Utils.a().getString(R$string.long_vod_progress_tx_style, com.transsion.postdetail.util.n.d(progress), com.transsion.postdetail.util.n.d(this.totalDuration))));
            LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.i0(progress);
            }
            q1(false);
            lg.a.C0828a.f(lg.a.f68839a, TAG, "updateSeekbar loading gone", false, 4, null);
            return;
        }
        LongVodSubtitleHelper longVodSubtitleHelper2 = this.subtitleHelper;
        if (longVodSubtitleHelper2 != null) {
            longVodSubtitleHelper2.Y();
        }
        AppCompatTextView tvCenterProgress2 = this.viewBinding.f64627q;
        Intrinsics.g(tvCenterProgress2, "tvCenterProgress");
        jg.c.g(tvCenterProgress2);
        lg.a.C0828a.f(lg.a.f68839a, TAG, "updateSeekbar loading " + this.isShowLoading, false, 4, null);
        q1(this.isShowLoading);
    }

    private final void D0() {
        q1.f49097b.f(this.viewBinding);
        this.viewBinding.f64619i.f64667f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.E0(this.f48355a, view);
            }
        });
        this.viewBinding.f64620j.f64602b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.F0(this.f48370a, view);
            }
        });
        this.viewBinding.f64619i.f64666e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.G0(this.f48372a, view);
            }
        });
        this.viewBinding.f64618h.f64646k.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.H0(this.f48373a, view);
            }
        });
        this.viewBinding.f64620j.f64604d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.I0(this.f48374a, view);
            }
        });
        this.viewBinding.f64620j.f64605e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.J0(this.f48312a, view);
            }
        });
        this.viewBinding.f64620j.f64606f.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.K0(this.f48313a, view);
            }
        });
        this.viewBinding.f64618h.f64656u.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.L0(this.f48314a, view);
            }
        });
        this.viewBinding.f64618h.f64660y.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.M0(this.f48316a, view);
            }
        });
        this.viewBinding.f64618h.f64638c.f16595d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.N0(this.f48340a, view);
            }
        });
        this.viewBinding.f64618h.f64638c.f16596e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.O0(this.f48357a, view);
            }
        });
        this.viewBinding.f64618h.f64638c.f16594c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.P0(this.f48359a, view);
            }
        });
        this.viewBinding.f64618h.f64649n.setOnModelChangeListener(new ImmScaleView.a() { // from class: com.transsion.player.longvideo.ui.q
            @Override // com.transsion.postdetail.ui.view.ImmScaleView.a
            public final void a(ScaleMode scaleMode, String str) {
                LongVodPlayerView.Q0(this.f48362a, scaleMode, str);
            }
        });
        this.viewBinding.f64618h.f64652q.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.R0(this.f48364a, view);
            }
        });
        this.viewBinding.f64620j.f64603c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.S0(this.f48365a, view);
            }
        });
        this.viewBinding.f64618h.f64647l.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.T0(this.f48367a, view);
            }
        });
        this.playerControl.setGestureListener(new e(jg.c.f()));
        AppCompatImageView ivFloat = this.viewBinding.f64619i.f64665d;
        Intrinsics.g(ivFloat, "ivFloat");
        ivFloat.setVisibility(l1() ? 0 : 8);
        this.viewBinding.f64619i.f64665d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.U0(this.f48369a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(LongVodPlayerView longVodPlayerView) {
        ao.e eVar = longVodPlayerView.curTimeoutMediaSource;
        if (eVar != null) {
            longVodPlayerView.playerControl.reset();
            longVodPlayerView.playerControl.stop();
            com.transsion.postdetail.layer.local.c0 c0Var = longVodPlayerView.videoDot;
            if (c0Var != null) {
                c0Var.M(true);
            }
            lg.a.f68839a.c(TAG, "playerTimeout,change 2 software decoder, path = " + eVar.k(), true);
            longVodPlayerView.playerControl.enableHardwareDecoder(false);
            longVodPlayerView.playerControl.setDataSource(eVar);
            longVodPlayerView.playerControl.prepare();
        }
    }

    private final void D2() {
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            List list = this.dubs;
            if (list == null) {
                Intrinsics.z("dubs");
                list = null;
            }
            longVodSubtitleHelper.h0(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.n0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long E1() {
        Long lX;
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sb_lv_play_timeout_dp", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 12000L;
        }
        return lX.longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E2(long progress) {
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.i0(progress);
        }
        if (this.totalDuration <= 0) {
            this.totalDuration = this.playerControl.getDuration();
        }
        if (!this.formUserSeek) {
            long j11 = this.totalDuration;
            if (j11 > 0) {
                int i11 = (int) ((progress / j11) * j11);
                if (!this.isSeeking) {
                    long j12 = i11;
                    this.viewBinding.f64618h.f64655t.setProgress(j12);
                    this.viewBinding.f64619i.f64675n.setProgress(j12);
                }
            }
        }
        if (this.totalDuration >= 0) {
            String strD = com.transsion.postdetail.util.n.d(progress);
            String strD2 = com.transsion.postdetail.util.n.d(this.totalDuration);
            this.viewBinding.f64618h.f64657v.setText(strD);
            this.viewBinding.f64618h.f64658w.setText(strD2);
            this.viewBinding.f64619i.f64676o.setText(strD + "/" + strD2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(LongVodPlayerView longVodPlayerView, View view) {
        backClick$default(longVodPlayerView, false, true, 1, null);
    }

    private final void F1() {
        long jK = this.playProgress;
        long j11 = 0;
        if (jK <= 2000) {
            go.a aVar = this.curBean;
            jK = aVar != null ? aVar.k() : 0L;
        }
        long j12 = this.totalDuration;
        if (jK >= j12 - ((long) 5000)) {
            lg.a.C0828a.v(lg.a.f68839a, TAG, "prepareSeekTo,记录时长已经是播放完成,重置播放 " + jK + ",<-> " + j12, false, 4, null);
        } else {
            j11 = jK;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        go.a aVar2 = this.curBean;
        lg.a.C0828a.v(c0828a, TAG, "prepareSeekTo,progress:" + j11 + ", historyProgress:" + (aVar2 != null ? Long.valueOf(aVar2.k()) : null), false, 4, null);
        if (j11 < 1000 || k1()) {
            return;
        }
        c0828a.c(TAG, "prepareSeekTo,progress = " + j11, true);
        this.playerControl.seekTo(j11);
        E2(j11);
        if (this.isReload || this.isMultipleResChangeResolution) {
            return;
        }
        r2(Utils.a().getString(R$string.long_vod_last_played_time) + " " + com.transsion.postdetail.util.n.d(j11));
    }

    private final void F2(go.a bean) {
        String strP;
        if (bean.e() > 0) {
            strP = bean.p() + " " + ak.i.b(bean.e(), bean.l(), bean.r()) + ak.i.d(bean.f());
        } else {
            strP = bean.p();
        }
        this.viewBinding.f64620j.f64610j.setText(strP);
        d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(LongVodPlayerView longVodPlayerView, View view) {
        I2(longVodPlayerView, null, false, 3, null);
    }

    private final void G1() {
        com.transsion.baselib.report.l.f43359a.g(this);
        nh.m.f70474a.l(this.netListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao G2() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(LongVodPlayerView longVodPlayerView, View view) {
        bo.c cVar = bo.c.f16641a;
        String str = longVodPlayerView.pageName;
        String str2 = longVodPlayerView.subSelectId;
        go.a aVar = longVodPlayerView.curBean;
        cVar.a(str, str2, aVar != null ? aVar.q() : null, false);
        I2(longVodPlayerView, null, false, 3, null);
    }

    private final void H1() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.postdetail.util.o orientationEventListener = getOrientationEventListener();
            if (orientationEventListener != null) {
                orientationEventListener.disable();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H2(MotionEvent e11, boolean isDoubleClick) {
        if (com.transsion.baseui.util.c.f43504a.a(this.viewBinding.f64619i.f64666e.getId(), 500L)) {
            return;
        }
        lg.a.f68839a.c(TAG, "videoPause click", true);
        if (j1()) {
            if (nh.m.f70474a.e()) {
                return;
            }
            ToastUtils.r(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        View orLongVodPlayerBg = this.viewBinding.f64622l;
        Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
        jg.c.g(orLongVodPlayerBg);
        com.transsion.player.longvideo.helper.u uVar = this.mobileDataHelper;
        if (uVar != null) {
            uVar.E();
        }
        if (this.playerControl.isComplete()) {
            if (i1()) {
                return;
            }
            J2();
        } else {
            if (this.playerControl.isPlaying()) {
                t0(e11, isDoubleClick);
                return;
            }
            com.transsion.player.longvideo.helper.c cVar = this.adHelper;
            if (cVar == null || !cVar.b()) {
                if (m1()) {
                    y2();
                } else {
                    this.playerControl.play();
                }
                this.isPressedPause = false;
                setPauseViewStatus(true);
                ox.c.f72196a.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.z1();
    }

    private final void I1() {
        this.isReload = true;
        go.a aVar = this.curBean;
        if (aVar != null) {
            K1();
            this.playerControl.stop();
            setDataSource(aVar);
        }
    }

    static /* synthetic */ void I2(LongVodPlayerView longVodPlayerView, MotionEvent motionEvent, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            motionEvent = null;
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        longVodPlayerView.H2(motionEvent, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.Q1();
        v2(longVodPlayerView, false, 1, null);
    }

    private final void J1() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        List<Fragment> listY0 = ((FragmentActivity) context).getSupportFragmentManager().y0();
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

    private final void J2() {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.p();
        }
        View view = this.replayLayout;
        if (view != null) {
            jg.c.g(view);
        }
        this.playerControl.seekTo(0L);
        this.playerControl.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(LongVodPlayerView longVodPlayerView, View view) {
        Integer numR;
        Context context = longVodPlayerView.getContext();
        String string = null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            PlayerSettingDialog playerSettingDialog = new PlayerSettingDialog();
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            playerSettingDialog.show(supportFragmentManager, "PlayerSettingDialog");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        go.a aVar = longVodPlayerView.curBean;
        linkedHashMap.put("subject_id", aVar != null ? aVar.o() : null);
        go.a aVar2 = longVodPlayerView.curBean;
        linkedHashMap.put("subject_ops", aVar2 != null ? aVar2.q() : null);
        go.a aVar3 = longVodPlayerView.curBean;
        linkedHashMap.put("ops", aVar3 != null ? aVar3.q() : null);
        go.a aVar4 = longVodPlayerView.curBean;
        linkedHashMap.put("subject_name", aVar4 != null ? aVar4.p() : null);
        go.a aVar5 = longVodPlayerView.curBean;
        linkedHashMap.put("title_name", aVar5 != null ? aVar5.t() : null);
        go.a aVar6 = longVodPlayerView.curBean;
        if (aVar6 != null && (numR = aVar6.r()) != null) {
            string = numR.toString();
        }
        linkedHashMap.put("subject_type", string);
        linkedHashMap.put("module_name", "video_setting");
        String str = longVodPlayerView.pageName;
        if (str != null) {
            hj.i.f64505a.p(str, linkedHashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K1() {
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
    }

    private final void K2(ScaleMode scaleMode, String scaleModeName) {
        this.playerControl.setScaleMode(scaleMode);
        this.viewBinding.f64618h.f64661z.setText(scaleModeName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.U1();
    }

    private final void L1() {
        if (getParent() != null) {
            ViewParent parent = getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(LongVodPlayerView longVodPlayerView, View view) {
        hj.i iVar = hj.i.f64505a;
        String str = longVodPlayerView.pageName;
        if (str == null) {
            str = "";
        }
        iVar.p(str, longVodPlayerView.getReportNextMap());
        fo.a.b bVar = longVodPlayerView.playerCallback;
        if (bVar != null) {
            bVar.a();
        }
    }

    private final void M1() {
        j1 j1Var = this.localToastControl;
        if (j1Var != null) {
            j1Var.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(LongVodPlayerView longVodPlayerView, View view) {
        bo.c cVar = bo.c.f16641a;
        String str = longVodPlayerView.pageName;
        String str2 = longVodPlayerView.subSelectId;
        go.a aVar = longVodPlayerView.curBean;
        cVar.a(str, str2, aVar != null ? aVar.q() : null, true);
        I2(longVodPlayerView, null, false, 3, null);
    }

    private final void N1() {
        ho.j jVar = this.viewBinding;
        AppCompatTextView tvPlayNext = jVar.f64618h.f64660y;
        Intrinsics.g(tvPlayNext, "tvPlayNext");
        if (tvPlayNext.getVisibility() == 0) {
            ConstraintLayout root = jVar.f64618h.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            if (root.getVisibility() == 0) {
                hj.i iVar = hj.i.f64505a;
                String str = this.pageName;
                if (str == null) {
                    str = "";
                }
                iVar.D(str, getReportNextMap());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.O1(ToolBar.FORWARD);
        longVodPlayerView.l0(true, false);
        longVodPlayerView.hideBottomController(false);
    }

    private final void O1(String type) {
        List listJ;
        go.c cVar;
        hj.i iVar = hj.i.f64505a;
        String str = this.pageName;
        if (str == null) {
            str = "";
        }
        Pair pair = new Pair("module_name", type);
        go.a aVar = this.curBean;
        String strC = null;
        Pair pair2 = new Pair("subject_id", aVar != null ? aVar.o() : null);
        go.a aVar2 = this.curBean;
        Pair pairA = TuplesKt.a("ops", aVar2 != null ? aVar2.q() : null);
        go.a aVar3 = this.curBean;
        if (aVar3 != null && (listJ = aVar3.j()) != null && (cVar = (go.c) CollectionsKt.k0(listJ)) != null) {
            strC = cVar.c();
        }
        iVar.p(str, MapsKt.l(pair, pair2, pairA, new Pair("resource_id", strC)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.O1(ToolBar.BACKWARD);
        longVodPlayerView.hideBottomController(false);
        longVodPlayerView.l0(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P1(go.a bean, go.c playStream) {
        DownloadBean downloadBean;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideoBelongToCollection belongToCollection2;
        UGCVideoBelongToCollection belongToCollection3;
        if (bean.d() != null) {
            downloadBean = bean.d();
        } else {
            downloadBean = new DownloadBean(playStream.h(), playStream.c(), bean.p(), "", StringsKt.x(playStream.g()), "", null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -64, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            UGCVideo uGCVideoU = bean.u();
            downloadBean.setUgcVideoId(uGCVideoU != null ? uGCVideoU.getUgcVideoId() : null);
            UGCVideo uGCVideoU2 = bean.u();
            downloadBean.setUgcVideoCollectionId((uGCVideoU2 == null || (belongToCollection3 = uGCVideoU2.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionId());
            UGCVideo uGCVideoU3 = bean.u();
            downloadBean.setUgcVideoName(uGCVideoU3 != null ? uGCVideoU3.getTitle() : null);
            UGCVideo uGCVideoU4 = bean.u();
            downloadBean.setUgcVideoCollectionName((uGCVideoU4 == null || (belongToCollection2 = uGCVideoU4.getBelongToCollection()) == null) ? null : belongToCollection2.getCollectionName());
            UGCVideo uGCVideoU5 = bean.u();
            downloadBean.setUgcVideoPosition((uGCVideoU5 == null || (belongToCollection = uGCVideoU5.getBelongToCollection()) == null) ? null : belongToCollection.getPosition());
            UGCVideo uGCVideoU6 = bean.u();
            downloadBean.setUgcVideoType(uGCVideoU6 != null ? uGCVideoU6.getCategory() : null);
            downloadBean.setSubjectId(bean.o());
            downloadBean.setEp(bean.e());
            downloadBean.setSe(bean.l());
            downloadBean.setOps(bean.q());
            downloadBean.setSubtitleIdType(playStream.d());
        }
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.a();
        }
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
        if (c0Var2 != null) {
            c0Var2.A(downloadBean, bean.h());
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.Q(bean.u());
        }
        if (bean.v() == PlayMimeType.DASH) {
            com.transsion.postdetail.layer.local.c0 c0Var4 = this.videoDot;
            if (c0Var4 != null) {
                c0Var4.K("3");
                return;
            }
            return;
        }
        if (bean.v() == PlayMimeType.HLS) {
            com.transsion.postdetail.layer.local.c0 c0Var5 = this.videoDot;
            if (c0Var5 != null) {
                c0Var5.K(bean.w() ? "5" : PrepareException.ERROR_NO_URL);
                return;
            }
            return;
        }
        if (playStream.j()) {
            com.transsion.postdetail.layer.local.c0 c0Var6 = this.videoDot;
            if (c0Var6 != null) {
                c0Var6.K("4");
                return;
            }
            return;
        }
        com.transsion.postdetail.layer.local.c0 c0Var7 = this.videoDot;
        if (c0Var7 != null) {
            c0Var7.K("0");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(LongVodPlayerView longVodPlayerView, ScaleMode scaleMode, String scaleModeName) {
        Intrinsics.h(scaleMode, "scaleMode");
        Intrinsics.h(scaleModeName, "scaleModeName");
        longVodPlayerView.K2(scaleMode, scaleModeName);
    }

    private final void Q1() {
        hj.i iVar = hj.i.f64505a;
        String str = this.pageName;
        if (str == null) {
            str = "";
        }
        iVar.q(str, getTvProReportMap(), ClickType.FEATURE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.viewBinding.f64618h.f64649n.performClick();
    }

    private final void R1() {
        ConstraintLayout root = this.viewBinding.f64620j.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        if (root.getVisibility() == 0) {
            GradientTextView tvPro = this.viewBinding.f64620j.f64605e;
            Intrinsics.g(tvPro, "tvPro");
            if (tvPro.getVisibility() == 0) {
                String tvProModuleName = getTvProModuleName();
                if (this.tvProExposureModules.add(tvProModuleName)) {
                    hj.i iVar = hj.i.f64505a;
                    String str = this.pageName;
                    if (str == null) {
                        str = "";
                    }
                    iVar.E(str, MapsKt.j(TuplesKt.a("module_name", tvProModuleName), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "button")), BrowseType.FEATURE);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.j0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S1() {
        this.curTimeoutMediaSource = null;
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.M(false);
        }
        this.playTimeoutHandler.removeCallbacks(this.playTimeoutRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(LongVodPlayerView longVodPlayerView, View view) {
        String strO;
        view.setSelected(!view.isSelected());
        if (view.isSelected()) {
            Context context = longVodPlayerView.getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context).setRequestedOrientation(11);
            longVodPlayerView.hideBottomController(true);
            Intrinsics.e(view);
            jg.c.k(view);
        } else {
            Context context2 = longVodPlayerView.getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context2).setRequestedOrientation(6);
            longVodPlayerView.f2(true);
        }
        hj.i iVar = hj.i.f64505a;
        String str = longVodPlayerView.pageName;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        Pair pair = new Pair("module_name", "lock");
        go.a aVar = longVodPlayerView.curBean;
        Pair pair2 = new Pair("ops", aVar != null ? aVar.q() : null);
        go.a aVar2 = longVodPlayerView.curBean;
        if (aVar2 != null && (strO = aVar2.o()) != null) {
            str2 = strO;
        }
        iVar.p(str, MapsKt.m(pair, pair2, new Pair("subject_id", str2), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, view.isSelected() ? "1" : "0")));
        com.transsion.postdetail.layer.local.c0 c0Var = longVodPlayerView.videoDot;
        if (c0Var != null) {
            c0Var.F(view.isSelected());
        }
        longVodPlayerView.playerControl.enableGesture(true ^ view.isSelected());
        if (longVodPlayerView.getPkStyle()) {
            longVodPlayerView.viewBinding.f64618h.f64647l.setText(view.isSelected() ? longVodPlayerView.getContext().getString(com.transsion.baseui.R$string.play_tap_unlock) : longVodPlayerView.getContext().getString(com.transsion.baseui.R$string.play_tap_lock));
        }
    }

    private final void T1() {
        if (this.isNewPlayer) {
            lg.a.f68839a.c(TAG, "player resetPlayer", true);
            this.isReload = false;
            this.isFirstSetTracks = true;
            com.transsion.player.longvideo.helper.j jVar = this.spaceHelper;
            if (jVar != null) {
                jVar.c();
            }
            this.playerControl.reset();
            setPauseViewStatus(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(LongVodPlayerView longVodPlayerView, View view) {
        fo.a.b bVar = longVodPlayerView.playerCallback;
        if (bVar != null) {
            bVar.c(FloatActionType.ICON);
        }
    }

    private final void U1() {
        LongVdPlayerConfigDialog longVdPlayerConfigDialog = new LongVdPlayerConfigDialog();
        longVdPlayerConfigDialog.G0(this.pageName, LongVodPlayerConfigType.BITRATE, this.resolutionList, this.curBean, this);
        longVdPlayerConfigDialog.k0(getContext(), "LongVdPlayerConfigDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0(go.a bean, go.c playStream) {
        if (playStream.e().length() == 0) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, TAG, "initMp4Resolution, resolution = " + playStream.e(), false, 4, null);
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.L(playStream.e() + "P");
        }
        this.viewBinding.f64618h.f64656u.setText(playStream.e() + "P");
        this.resolutionList.clear();
        this.resolutionList.addAll(this.resolutionHelper.e(playStream, bean.j()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int V1() {
        return com.blankj.utilcode.util.a0.a(298.0f);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0121  */
    private final void W0(String tag, go.a bean) {
        com.transsion.player.orplayer.g gVarS;
        boolean z10;
        String strH;
        if (this.orPlayerView != null) {
            return;
        }
        bo.d dVar = new bo.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 512, 0, false, false, false, false, false, null, 130559, null);
        com.transsion.baselib.helper.d dVar2 = com.transsion.baselib.helper.d.f43265a;
        bo.a aVar = new bo.a(dVar, null, false, false, dVar2.d(), dVar2.c(), 10, null);
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        this.orPlayerView = new ORPlayerView(context, aVar.c() ? RenderType.SURFACE_VIEW : RenderType.TEXTURE_VIEW);
        go.c cVar = (go.c) CollectionsKt.k0(bean.j());
        if (cVar == null || (strH = cVar.h()) == null) {
            gVarS = null;
            z10 = true;
        } else {
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, TAG, "initPayer, id：" + ak.k.k(strH).hashCode() + ",", false, 4, null);
            if (k1()) {
                MusicFloatManager.a aVar2 = MusicFloatManager.f43454h;
                gVarS = aVar2.b().s();
                String str = this.fragmentId;
                if (str != null) {
                    aVar2.b().w().add(str);
                }
                lg.a.C0828a.f(c0828a, TAG, "music  mediaSourceId:" + aVar2.b().r(), false, 4, null);
                if (Intrinsics.c(aVar2.b().r(), String.valueOf(ak.k.k(strH).hashCode()))) {
                    lg.a.C0828a.f(c0828a, TAG, "music 是同一个音乐", false, 4, null);
                    z10 = false;
                } else {
                    lg.a.C0828a.f(c0828a, TAG, "music 是不同的音乐", false, 4, null);
                    if (gVarS != null) {
                        gVarS.stop();
                    }
                    if (gVarS != null) {
                        gVarS.reset();
                    }
                    this.playProgress = 0L;
                }
            } else {
                gVarS = null;
            }
            z10 = true;
        }
        com.transsion.player.orplayer.g gVarB = com.transsion.videofloat.manager.a0.f57933a.b(tag == null ? "" : tag);
        boolean z11 = gVarB == null && z10;
        this.isNewPlayer = z11;
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        c0828a2.c(TAG, "initPayer, tag:" + tag + ", isNewPlayer:" + z11, true);
        if (gVarS != null) {
            lg.a.C0828a.f(c0828a2, TAG, "initPayer, 音乐播放器复用", false, 4, null);
            com.transsion.player.ui.longvideo.a aVar3 = this.playerControl;
            ORPlayerView oRPlayerView = this.orPlayerView;
            Intrinsics.e(oRPlayerView);
            aVar3.setExistPlayer(aVar, gVarS, oRPlayerView);
            View orLongVodPlayerBg = this.viewBinding.f64622l;
            Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
            jg.c.g(orLongVodPlayerBg);
            this.playerControl.play();
        } else if (gVarB != null) {
            lg.a.C0828a.r(c0828a2, TAG, new String[]{"initPayer, float播放器复用"}, false, 4, null);
            View orLongVodPlayerBg2 = this.viewBinding.f64622l;
            Intrinsics.g(orLongVodPlayerBg2, "orLongVodPlayerBg");
            jg.c.g(orLongVodPlayerBg2);
            this.isFloatPlaying = true;
            com.transsion.player.ui.longvideo.a aVar4 = this.playerControl;
            ORPlayerView oRPlayerView2 = this.orPlayerView;
            Intrinsics.e(oRPlayerView2);
            aVar4.setExistPlayer(aVar, gVarB, oRPlayerView2);
        } else {
            com.transsion.player.ui.longvideo.a aVar5 = this.playerControl;
            ORPlayerView oRPlayerView3 = this.orPlayerView;
            Intrinsics.e(oRPlayerView3);
            aVar5.initLongVodPlayer(aVar, oRPlayerView3);
        }
        ox.b.C0878b.a(ox.b.f72191a.c(), false, 1, null);
        this.playerControl.addPlayerListener(this.playerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W1(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.x0();
    }

    private final void X0() {
        SecondariesSeekBar seekBarLand = this.viewBinding.f64618h.f64655t;
        Intrinsics.g(seekBarLand, "seekBarLand");
        Y0(seekBarLand);
        SecondariesSeekBar seekBarMiddle = this.viewBinding.f64619i.f64675n;
        Intrinsics.g(seekBarMiddle, "seekBarMiddle");
        Y0(seekBarMiddle);
    }

    private final FragmentActivity X1() {
        Context context = getContext();
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        if (fragmentActivity == null || fragmentActivity.isDestroyed() || fragmentActivity.isFinishing()) {
            return null;
        }
        return fragmentActivity;
    }

    private final void Y0(SecondariesSeekBar seekBarView) {
        seekBarView.setOnSeekBarChangeListener(new f(new Ref.LongRef()));
    }

    private final void Y1() {
        kotlinx.coroutines.k.d(this.coroutineScopeIO, null, null, new LongVodPlayerView$saveUGCVideoHistory$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0() {
        go.a aVar = this.curBean;
        if (aVar == null || !aVar.w()) {
            mo.b currentVideoFormat = this.playerControl.getCurrentVideoFormat();
            this.curVideoFormat = currentVideoFormat;
            if (currentVideoFormat != null && currentVideoFormat.c() > 0) {
                this.resolutionHelper.f(String.valueOf(currentVideoFormat.c()));
            }
            lg.a.C0828a.f(lg.a.f68839a, TAG, "onPrepareInitBitrate, curVideoFormat = " + this.curVideoFormat, false, 4, null);
            if (this.curVideoFormat != null && !this.resolutionList.isEmpty()) {
                mo.d dVar = this.dashVideoTracksGroup;
                if (dVar != null) {
                    for (mo.b bVar : dVar.b()) {
                        mo.b bVar2 = this.curVideoFormat;
                        if (Intrinsics.c(bVar2 != null ? bVar2.d() : null, bVar.d())) {
                            this.viewBinding.f64618h.f64656u.setText(bVar.c() + "P");
                            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
                            if (c0Var == null) {
                                break;
                            }
                            c0Var.L(bVar.c() + "P");
                            break;
                        }
                    }
                }
                for (go.b bVar3 : this.resolutionList) {
                    String strD = bVar3.d();
                    mo.b bVar4 = this.curVideoFormat;
                    Intrinsics.e(bVar4);
                    if (Intrinsics.c(strD, bVar4.c() + "P")) {
                        bVar3.f(true);
                    }
                }
            }
            ok.c cVar = ok.c.f71034a;
            String classTag = getClassTag();
            mo.b bVar5 = this.curVideoFormat;
            cVar.a(classTag + " --> initStreamResolution() --> 流媒体开始播放 --> curVideoFormat.height = " + (bVar5 != null ? Integer.valueOf(bVar5.c()) : null));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ScreenRotationHelper Z1(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.g(context, "getContext(...)");
        return new ScreenRotationHelper(context, new LongVodPlayerView$screenHelper$2$1(longVodPlayerView), new LongVodPlayerView$screenHelper$2$2(longVodPlayerView));
    }

    private final void a1(ViewGroup subtitleSyncView) {
        if (!n1()) {
            Group groupControlPk = this.viewBinding.f64618h.f64643h;
            Intrinsics.g(groupControlPk, "groupControlPk");
            jg.c.g(groupControlPk);
            return;
        }
        ho.j jVar = this.viewBinding;
        String str = this.pageName;
        List list = this.dubs;
        if (list == null) {
            Intrinsics.z("dubs");
            list = null;
        }
        LongVodSubtitleHelper longVodSubtitleHelper = new LongVodSubtitleHelper(jVar, str, list, new g(), new Function1() { // from class: com.transsion.player.longvideo.ui.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodPlayerView.b1(this.f48354a, (DubsInfo) obj);
            }
        }, false, 32, null);
        longVodSubtitleHelper.j0(com.transsion.baselib.helper.d.f43265a.d());
        longVodSubtitleHelper.f0(subtitleSyncView);
        this.subtitleHelper = longVodSubtitleHelper;
    }

    private final void a2(boolean fullScreen, LongVodUiType curUiType) {
        com.transsion.player.longvideo.helper.u uVar;
        if (curUiType == LongVodUiType.LAND) {
            this.viewBinding.f64620j.f64606f.setVisibility(0);
        } else {
            this.viewBinding.f64620j.f64606f.setVisibility(8);
        }
        if (k1()) {
            this.viewBinding.f64620j.f64606f.setVisibility(8);
        }
        c1();
        com.transsion.player.longvideo.helper.g gVar = this.gameResHelper;
        if (gVar != null) {
            gVar.h(curUiType);
        }
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.W(curUiType);
        }
        com.transsion.player.longvideo.helper.c cVar = this.adHelper;
        if (cVar != null) {
            cVar.c(curUiType);
        }
        d2();
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.l(curUiType == LongVodUiType.MIDDLE ? LocalUiType.MIDDLE : LocalUiType.LAND);
        }
        ViewGroup.LayoutParams layoutParams = this.viewBinding.f64617g.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        com.transsion.postdetail.util.o orientationEventListener = getOrientationEventListener();
        if (orientationEventListener != null) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            int iB = orientationEventListener.b((Activity) context);
            if (orientationEventListener.a() != iB) {
                orientationEventListener.c(iB);
            }
        }
        ViewGroup.LayoutParams layoutParams2 = this.viewBinding.f64627q.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
        if (fullScreen) {
            bVar.f7684l = 0;
            bVar.I = "0";
            bVar2.f7678i = -1;
            ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin = dk.a.b(80);
        } else {
            bVar.I = "h,16:9";
            bVar.f7684l = -1;
            bVar2.f7678i = this.viewBinding.f64617g.getId();
            ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin = 0;
            this.viewBinding.f64618h.f64647l.setSelected(false);
        }
        ConstraintLayout root = this.viewBinding.f64618h.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        root.setVisibility(fullScreen ? 0 : 8);
        ConstraintLayout root2 = this.viewBinding.f64619i.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        root2.setVisibility(fullScreen ? 8 : 0);
        Log.e(TAG, "screenUIChange  fullScreen:" + fullScreen + "  rotation:" + getRotation());
        if (fullScreen) {
            if (this.playerViewParent == null) {
                ViewParent parent = getParent();
                this.playerViewParent = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            }
            ViewGroup viewGroup = this.fullscreenContainer;
            if (viewGroup != null) {
                Intrinsics.e(viewGroup);
            } else {
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
                viewGroup = (ViewGroup) ((Activity) context2).findViewById(R.id.content);
            }
            L1();
            viewGroup.addView(this, new FrameLayout.LayoutParams(-1, -1));
        } else {
            ViewGroup viewGroup2 = this.playerViewParent;
            if (viewGroup2 != null) {
                L1();
                viewGroup2.addView(this);
            }
        }
        if (n2() && (uVar = this.mobileDataHelper) != null) {
            uVar.C(fullScreen);
        }
        this.viewBinding.f64614d.setVisibility(8);
        boolean z10 = this.isTvProPanelShowing;
        PlaybackInterceptionManager playbackInterceptionManager = this.playbackInterceptionManager;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.M(curUiType, this.viewBinding);
        }
        if (z10) {
            post(new Runnable() { // from class: com.transsion.player.longvideo.ui.q0
                @Override // java.lang.Runnable
                public final void run() {
                    LongVodPlayerView.b2(this.f48363a);
                }
            });
        }
    }

    private final void b0(FragmentActivity activity, FrameLayout container) {
        f0();
        Context context = container.getContext();
        Intrinsics.g(context, "getContext(...)");
        LongVodTvProPanelView longVodTvProPanelView = new LongVodTvProPanelView(context, null, 0, 6, null);
        container.removeAllViews();
        container.addView(longVodTvProPanelView, new FrameLayout.LayoutParams(-1, -1));
        jg.c.k(container);
        this.tvProPanelContainer = container;
        this.tvProPanelView = longVodTvProPanelView;
        FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        longVodTvProPanelView.bind(supportFragmentManager, this.pageName, new Function0() { // from class: com.transsion.player.longvideo.ui.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.c0(this.f48348a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b1(LongVodPlayerView longVodPlayerView, DubsInfo it) {
        Intrinsics.h(it, "it");
        Function1 function1 = longVodPlayerView.audioSelectCallback;
        if (function1 != null) {
            function1.invoke(it);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b2(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.u2(true);
    }

    public static /* synthetic */ void backClick$default(LongVodPlayerView longVodPlayerView, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            z11 = false;
        }
        longVodPlayerView.backClick(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.y0();
        return Unit.f67061a;
    }

    private final void c1() {
        com.transsion.player.longvideo.helper.j jVar;
        View view = this.toastLayout;
        if (view == null) {
            return;
        }
        Intrinsics.e(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = LongVodUiType.LAND;
        int iA = 0;
        ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = longVodUiType == longVodUiType2 ? com.blankj.utilcode.util.a0.a(72.0f) : 0;
        if (this.curUiType == longVodUiType2 && (jVar = this.spaceHelper) != null) {
            iA = jVar.a();
        }
        bVar.setMarginStart(iA);
        View view2 = this.toastLayout;
        Intrinsics.e(view2);
        view2.setLayoutParams(bVar);
    }

    private final void c2() {
        Map mapE;
        Map mapE2;
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null && (mapE2 = c0Var.e()) != null) {
                mapE2.clear();
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
            if (c0Var2 == null || (mapE = c0Var2.e()) == null) {
                return;
            }
            mapE.putAll(longVodSubtitleHelper.M());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0(boolean isPortrait) {
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = this.curUiRotation;
        boolean z10 = this.isPageResumed;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("旋转to竖屏: ");
        sb2.append(isPortrait);
        sb2.append("，curUiType：");
        sb2.append(longVodUiType);
        sb2.append("，curUiRation: ");
        sb2.append(longVodUiType2);
        sb2.append(", resume:");
        sb2.append(z10);
        if (this.viewBinding.f64618h.f64647l.isSelected()) {
            return;
        }
        LongVodUiType longVodUiType3 = isPortrait ? LongVodUiType.MIDDLE : LongVodUiType.LAND;
        if (!this.isPageResumed || this.curUiRotation == longVodUiType3 || longVodUiType3 == this.curUiType) {
            this.curUiRotation = longVodUiType3;
            return;
        }
        this.curUiRotation = longVodUiType3;
        hj.i.f64505a.t("auto_screen", MapsKt.f(new Pair("orientation", longVodUiType3 == LongVodUiType.LAND ? "land" : "port")));
        if (!isPortrait) {
            n0();
        } else {
            J1();
            backClick$default(this, false, false, 2, null);
        }
    }

    private final void d1() {
        com.transsion.postdetail.layer.local.c0 c0Var;
        ConstraintLayout root = this.viewBinding.f64618h.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        jg.c.g(root);
        if (this.contentType != LongVodContentType.SUBJECT) {
            AppCompatTextView tvDownloadView = this.viewBinding.f64620j.f64603c;
            Intrinsics.g(tvDownloadView, "tvDownloadView");
            jg.c.k(tvDownloadView);
        }
        this.spaceHelper = new com.transsion.player.longvideo.helper.j(this.viewBinding);
        LiveData liveDataB = getConfigViewModel().b();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        liveDataB.j((FragmentActivity) context, new l(new Function1() { // from class: com.transsion.player.longvideo.ui.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodPlayerView.e1(this.f48341a, (go.b) obj);
            }
        }));
        LiveData liveDataB2 = getSpeedViewModel().b();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        liveDataB2.j((FragmentActivity) context2, new l(new Function1() { // from class: com.transsion.player.longvideo.ui.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodPlayerView.f1(this.f48342a, (Float) obj);
            }
        }));
        post(new Runnable() { // from class: com.transsion.player.longvideo.ui.i0
            @Override // java.lang.Runnable
            public final void run() {
                LongVodPlayerView.g1(this.f48346a);
            }
        });
        if (n1() || k1()) {
            this.videoDot = new com.transsion.postdetail.layer.local.c0();
            if (k1() && (c0Var = this.videoDot) != null) {
                c0Var.E("music_play");
            }
        }
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
        if (c0Var2 != null) {
            c0Var2.g();
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.I(this.playerControl);
        }
        if (k1()) {
            this.viewBinding.f64620j.f64606f.setVisibility(8);
        }
    }

    private final void d2() {
        AppCompatTextView vdTitle = this.viewBinding.f64620j.f64610j;
        Intrinsics.g(vdTitle, "vdTitle");
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = LongVodUiType.MIDDLE;
        vdTitle.setVisibility(longVodUiType != longVodUiType2 ? 0 : 8);
        if (this.curUiType != longVodUiType2 || this.isRewardInterceptShowing) {
            AppCompatImageView ivBack = this.viewBinding.f64620j.f64602b;
            Intrinsics.g(ivBack, "ivBack");
            jg.c.k(ivBack);
        } else {
            AppCompatImageView ivBack2 = this.viewBinding.f64620j.f64602b;
            Intrinsics.g(ivBack2, "ivBack");
            jg.c.h(ivBack2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0(boolean show, boolean autoHide) {
        if (show) {
            f2(autoHide);
        } else {
            hideBottomController(autoHide);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e1(LongVodPlayerView longVodPlayerView, go.b bVar) {
        int i11 = b.f48286a[bVar.c().ordinal()];
        if (i11 == 1) {
            Intrinsics.e(bVar);
            longVodPlayerView.u1(bVar);
        } else {
            if (i11 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            Intrinsics.e(bVar);
            longVodPlayerView.y1(bVar);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e2() {
        go.c cVar;
        String strA;
        if (this.totalDuration != 0 || (cVar = this.playingStream) == null || (strA = cVar.a()) == null) {
            return;
        }
        Long.parseLong(strA);
    }

    private final void f0() {
        LongVodTvProPanelView longVodTvProPanelView = this.tvProPanelView;
        if (longVodTvProPanelView != null) {
            longVodTvProPanelView.destroyWebFragment();
        }
        FrameLayout frameLayout = this.tvProPanelContainer;
        if (frameLayout != null) {
            frameLayout.removeView(this.tvProPanelView);
        }
        FrameLayout frameLayout2 = this.tvProPanelContainer;
        if (frameLayout2 != null) {
            jg.c.g(frameLayout2);
        }
        this.tvProPanelView = null;
        this.tvProPanelContainer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(LongVodPlayerView longVodPlayerView, Float f11) {
        Intrinsics.e(f11);
        longVodPlayerView.setSpeed(f11.floatValue());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f2(boolean autoHide) {
        if (!this.showToolbarAlways && com.blankj.utilcode.util.c.l()) {
            if (this.viewBinding.f64618h.f64647l.isSelected()) {
                AppCompatTextView ivLock = this.viewBinding.f64618h.f64647l;
                Intrinsics.g(ivLock, "ivLock");
                AppCompatTextView ivLock2 = this.viewBinding.f64618h.f64647l;
                Intrinsics.g(ivLock2, "ivLock");
                ivLock.setVisibility(ivLock2.getVisibility() == 0 ? 8 : 0);
                return;
            }
            AppCompatTextView ivLock3 = this.viewBinding.f64618h.f64647l;
            Intrinsics.g(ivLock3, "ivLock");
            ivLock3.setVisibility(0);
            if (autoHide) {
                hideBottomController(false);
            } else {
                this.handler.removeCallbacks(this.runnable);
            }
            ConstraintLayout clBottomControl = this.viewBinding.f64618h.f64639d;
            Intrinsics.g(clBottomControl, "clBottomControl");
            clBottomControl.setVisibility(0);
            ConstraintLayout root = this.viewBinding.f64618h.f64638c.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            root.setVisibility(0);
            if (getPkStyle() && n1()) {
                Group groupControlPk = this.viewBinding.f64618h.f64643h;
                Intrinsics.g(groupControlPk, "groupControlPk");
                groupControlPk.setVisibility(0);
            }
            ConstraintLayout root2 = this.viewBinding.f64620j.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            root2.setVisibility(0);
            fo.a.b bVar = this.playerCallback;
            if (bVar != null) {
                bVar.g(true);
            }
            View landGradientTop = this.viewBinding.f64618h.f64651p;
            Intrinsics.g(landGradientTop, "landGradientTop");
            landGradientTop.setVisibility(0);
            View landGradientBottom = this.viewBinding.f64618h.f64650o;
            Intrinsics.g(landGradientBottom, "landGradientBottom");
            landGradientBottom.setVisibility(0);
            AppCompatTextView tvPlayNext = this.viewBinding.f64618h.f64660y;
            Intrinsics.g(tvPlayNext, "tvPlayNext");
            tvPlayNext.setVisibility(this.isHasNext ? 0 : 8);
            View middleGradientTop = this.viewBinding.f64619i.f64672k;
            Intrinsics.g(middleGradientTop, "middleGradientTop");
            middleGradientTop.setVisibility(0);
            LinearLayout llMiddleBottomController = this.viewBinding.f64619i.f64670i;
            Intrinsics.g(llMiddleBottomController, "llMiddleBottomController");
            llMiddleBottomController.setVisibility(0);
            View middleGradientBottom = this.viewBinding.f64619i.f64671j;
            Intrinsics.g(middleGradientBottom, "middleGradientBottom");
            middleGradientBottom.setVisibility(0);
            R1();
            N1();
            View viewFindViewById = findViewById(R.id.message);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.player.longvideo.ui.dialog.a g0(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (com.transsion.player.longvideo.ui.dialog.a) new v0((FragmentActivity) context).a(com.transsion.player.longvideo.ui.dialog.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.G1();
    }

    static /* synthetic */ void g2(LongVodPlayerView longVodPlayerView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.f2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = LongVodPlayerView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.player.longvideo.ui.dialog.a getConfigViewModel() {
        return (com.transsion.player.longvideo.ui.dialog.a) this.configViewModel.getValue();
    }

    private final com.transsion.player.longvideo.helper.i getLocalVideoLandForwardViewControl() {
        View viewInflate;
        if (this.localVideoLandForwardViewControl == null && (viewInflate = this.viewBinding.f64618h.F.inflate()) != null) {
            ho.c cVarA = ho.c.a(viewInflate);
            Intrinsics.g(cVarA, "bind(...)");
            this.localVideoLandForwardViewControl = new com.transsion.player.longvideo.helper.i(cVarA);
        }
        return this.localVideoLandForwardViewControl;
    }

    private final q1 getLocalVideoMiddleForwardViewControl() {
        View viewInflate;
        if (this.localVideoMiddleForwardViewControl == null && (viewInflate = this.viewBinding.f64619i.f64678q.inflate()) != null) {
            ho.c cVarA = ho.c.a(viewInflate);
            Intrinsics.g(cVarA, "bind(...)");
            this.localVideoMiddleForwardViewControl = new q1(cVarA);
        }
        return this.localVideoMiddleForwardViewControl;
    }

    private final com.transsion.postdetail.util.o getOrientationEventListener() {
        return (com.transsion.postdetail.util.o) this.orientationEventListener.getValue();
    }

    private final int getPendingIntentFlag() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final boolean getPkStyle() {
        return ((Boolean) this.pkStyle.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getPlayTimeoutStream() {
        return ((Number) this.playTimeoutStream.getValue()).longValue();
    }

    private final Map<String, String> getReportNextMap() {
        Pair pair = new Pair("module_name", "play_next");
        go.a aVar = this.curBean;
        Pair pair2 = new Pair("subject_id", aVar != null ? aVar.o() : null);
        go.a aVar2 = this.curBean;
        return MapsKt.l(pair, pair2, TuplesKt.a("ops", aVar2 != null ? aVar2.q() : null));
    }

    private final int getResolutionPanelTargetWidth() {
        return ((Number) this.resolutionPanelTargetWidth.getValue()).intValue();
    }

    private final ScreenRotationHelper getScreenHelper() {
        return (ScreenRotationHelper) this.screenHelper.getValue();
    }

    private final com.transsion.postdetail.ui.dialog.o getSpeedViewModel() {
        return (com.transsion.postdetail.ui.dialog.o) this.speedViewModel.getValue();
    }

    private final int getTvProDialogMaxHeight() {
        FrameLayout frameLayout = this.flPortraitPremium;
        int height = frameLayout != null ? frameLayout.getHeight() : 0;
        if (height > 0) {
            return height;
        }
        View rootView = getRootView();
        if (rootView == null) {
            return 0;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        rootView.getLocationOnScreen(iArr);
        getLocationOnScreen(iArr2);
        return RangesKt.f(rootView.getHeight() - ((iArr2[1] - iArr[1]) + getHeight()), 0);
    }

    private final String getTvProModuleName() {
        return this.curUiType == LongVodUiType.LAND ? "tv_pro" : "tv_pro_dialog";
    }

    private final HashMap<String, String> getTvProReportMap() {
        return MapsKt.j(TuplesKt.a("module_name", getTvProModuleName()), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "button"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailPlayDao getUgcVideoDetailPlayDao() {
        return (UGCVideoDetailPlayDao) this.ugcVideoDetailPlayDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao getVideoDetailPlayDao() {
        return (VideoDetailPlayDao) this.videoDetailPlayDao.getValue();
    }

    private final void h0() {
        com.transsion.player.longvideo.helper.g gVar = new com.transsion.player.longvideo.helper.g();
        gVar.c(this.pageName, this.viewBinding);
        this.gameResHelper = gVar;
        this.mobileDataHelper = new com.transsion.player.longvideo.helper.u(this.viewBinding, new Function0() { // from class: com.transsion.player.longvideo.ui.n0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.i0(this.f48356a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h1() {
        return ox.e.f72197a.b().j() || m1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h2() {
        go.a aVar = this.curBean;
        if (aVar == null || aVar.c().length() == 0) {
            return;
        }
        go.c cVar = (go.c) CollectionsKt.k0(aVar.j());
        boolean zI = cVar != null ? cVar.i() : false;
        lg.a.f68839a.c(TAG, "showCoverBg, isMp3:" + zI, true);
        if (this.pageType != LongVodPageType.TRAILER && !zI) {
            AppCompatImageView orLongVodIvBg = this.viewBinding.f64621k;
            Intrinsics.g(orLongVodIvBg, "orLongVodIvBg");
            jg.c.g(orLongVodIvBg);
            return;
        }
        AppCompatImageView orLongVodIvBg2 = this.viewBinding.f64621k;
        Intrinsics.g(orLongVodIvBg2, "orLongVodIvBg");
        jg.c.k(orLongVodIvBg2);
        ej.f.a aVar2 = ej.f.f61882a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarL = aVar2.m(context).g(aVar.c()).l(aVar.s());
        AppCompatImageView orLongVodIvBg3 = this.viewBinding.f64621k;
        Intrinsics.g(orLongVodIvBg3, "orLongVodIvBg");
        bVarL.d(orLongVodIvBg3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i0(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.g(context, "getContext(...)");
        if (!com.transsion.baseui.util.b.a(context)) {
            longVodPlayerView.getScreenHelper().h();
        }
        longVodPlayerView.z0();
        I2(longVodPlayerView, null, false, 3, null);
        return Unit.f67061a;
    }

    private final boolean i1() {
        boolean z10 = this.curUiType == LongVodUiType.LAND && this.viewBinding.f64618h.f64640e.getVisibility() == 0;
        this.isCompletionBlock = z10;
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i2(boolean isNoNet) {
        TextView textView;
        if (this.errorLayout == null) {
            View viewInflate = this.viewBinding.f64632v.inflate();
            this.errorLayout = viewInflate;
            if (viewInflate != null) {
                final TextView textView2 = (TextView) viewInflate.findViewById(R$id.tv_fail_left_btn);
                Intrinsics.e(textView2);
                textView2.setVisibility(isNoNet ? 0 : 8);
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LongVodPlayerView.k2(textView2, view);
                    }
                });
                ((TextView) viewInflate.findViewById(R$id.tv_fail_right_btn)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LongVodPlayerView.l2(this.f48351a, view);
                    }
                });
                ((ImageView) viewInflate.findViewById(R$id.iv_fail_back)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.w
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LongVodPlayerView.m2(this.f48371a, view);
                    }
                });
            }
        }
        View view = this.errorLayout;
        if (view != null && (textView = (TextView) view.findViewById(R$id.tv_fail_title)) != null) {
            textView.setText(Utils.a().getString(isNoNet ? R$string.long_vod_load_failed : com.tn.lib.widget.R$string.error_load_failed));
        }
        w2(false);
        View view2 = this.replayLayout;
        if (view2 != null) {
            jg.c.g(view2);
        }
        if (this.curUiType == LongVodUiType.MIDDLE) {
            setPauseViewStatus(false);
        }
        this.playerControl.pause();
        View view3 = this.errorLayout;
        if (view3 != null) {
            jg.c.k(view3);
        }
    }

    private final void j0() {
        Navigator.x(TheRouter.c("/download/ugc_my_downloads"), getContext(), null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j1() {
        View view = this.errorLayout;
        return (view == null || view == null || view.getVisibility() != 0) ? false : true;
    }

    static /* synthetic */ void j2(LongVodPlayerView longVodPlayerView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.i2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0() {
        if (this.resumeSpeed > 0.0f) {
            o2(false);
            setSpeed(this.resumeSpeed);
            String str = this.pageName;
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.pressTime;
            go.a aVar = this.curBean;
            String strO = aVar != null ? aVar.o() : null;
            go.a aVar2 = this.curBean;
            ak.p.b(str, jElapsedRealtime, strO, aVar2 != null ? aVar2.q() : null, Float.valueOf(this.resumeSpeed));
            this.resumeSpeed = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean k1() {
        return this.pageType == LongVodPageType.MUSIC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k2(TextView textView, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            NetworkUtils.v();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void l0(boolean forward, boolean show) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.q();
        }
        if (show) {
            if (this.curUiType == LongVodUiType.MIDDLE) {
                q1 localVideoMiddleForwardViewControl = getLocalVideoMiddleForwardViewControl();
                if (localVideoMiddleForwardViewControl != null) {
                    localVideoMiddleForwardViewControl.e(forward);
                }
            } else {
                com.transsion.player.longvideo.helper.i localVideoLandForwardViewControl = getLocalVideoLandForwardViewControl();
                if (localVideoLandForwardViewControl != null) {
                    localVideoLandForwardViewControl.d(forward);
                }
            }
        }
        long j11 = forward ? RangesKt.j(this.pressSeekProgress + ((long) 10000), this.totalDuration) : RangesKt.g(this.pressSeekProgress - ((long) 10000), 0L);
        this.pressSeekProgress = j11;
        this.playerControl.seekTo(j11);
    }

    private final boolean l1() {
        return (!this.isMultiplePlayer || k1() || this.hideFloat) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l2(LongVodPlayerView longVodPlayerView, View view) {
        fo.a.b bVar = longVodPlayerView.playerCallback;
        if ((bVar == null || !bVar.b()) && nh.m.f70474a.e()) {
            longVodPlayerView.I1();
        }
    }

    static /* synthetic */ void m0(LongVodPlayerView longVodPlayerView, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        longVodPlayerView.l0(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m1() {
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f64619i.f64663b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        return flUGCAutoPlayGroup.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m2(LongVodPlayerView longVodPlayerView, View view) {
        backClick$default(longVodPlayerView, false, true, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0() {
        View view;
        if (!this.playerControl.isPlaying() && !this.playerControl.isComplete() && !j1() && !this.isAdShowing && !this.isRewardInterceptShowing) {
            if (m1()) {
                y2();
            }
            View view2 = this.replayLayout;
            if (view2 != null) {
                Intrinsics.e(view2);
                if (jg.c.i(view2) && (view = this.replayLayout) != null) {
                    jg.c.g(view);
                }
            }
        }
        ox.c.f72196a.a();
        this.curUiType = LongVodUiType.LAND;
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        ImmersionBar.with(fragmentActivity).hideBar(BarHide.FLAG_HIDE_BAR).init();
        fragmentActivity.setRequestedOrientation(6);
        this.viewBinding.f64631u.setPadding(0, 0, 0, 0);
        a2(true, this.curUiType);
    }

    private final boolean n1() {
        LongVodPageType longVodPageType = this.pageType;
        return longVodPageType == LongVodPageType.STREAM || longVodPageType == LongVodPageType.LOCAL_VIDEO;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n2() {
        go.c cVar;
        com.transsion.player.longvideo.helper.u uVar;
        nh.m mVar = nh.m.f70474a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        boolean z10 = mVar.h(applicationA) && (cVar = this.curPlayStream) != null && cVar.j() && (uVar = this.mobileDataHelper) != null && uVar.v();
        return (z10 && this.contentType == LongVodContentType.UGC_VIDEO_ONLINE) ? !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false) : z10;
    }

    private final Intent o0(go.c playStream, String pageName) {
        DownloadBean downloadBeanD;
        DownloadBean downloadBeanD2;
        UGCVideo uGCVideoU;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideo uGCVideoU2;
        Intent intent = new Intent();
        int i11 = b.f48287b[this.contentType.ordinal()];
        String ugcVideoId = null;
        if (i11 == 1) {
            intent.putExtra("path", "/playvideo/music_detail");
            go.a aVar = this.curBean;
            intent.putExtra("id", aVar != null ? aVar.o() : null);
            intent.putExtra("isMusicLikedFragment", this.isMusicLikedFragment);
        } else if (i11 == 2) {
            intent.putExtra("path", "/ugc_video/local_detail");
            go.a aVar2 = this.curBean;
            intent.putExtra("resource_id", (aVar2 == null || (downloadBeanD2 = aVar2.d()) == null) ? null : downloadBeanD2.getResourceId());
            go.a aVar3 = this.curBean;
            if (aVar3 != null && (downloadBeanD = aVar3.d()) != null) {
                ugcVideoId = downloadBeanD.getUgcVideoId();
            }
            intent.putExtra("id", ugcVideoId);
            intent.putExtra("isMusicLikedFragment", this.isMusicLikedFragment);
        } else {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            intent.putExtra("path", "/ugc_video/detail");
            go.a aVar4 = this.curBean;
            intent.putExtra("id", (aVar4 == null || (uGCVideoU2 = aVar4.u()) == null) ? null : uGCVideoU2.getUgcVideoId());
            go.a aVar5 = this.curBean;
            if (aVar5 != null && (uGCVideoU = aVar5.u()) != null && (belongToCollection = uGCVideoU.getBelongToCollection()) != null) {
                ugcVideoId = belongToCollection.getCollectionId();
            }
            intent.putExtra("collection_id", ugcVideoId);
            intent.putExtra("isMusicLikedFragment", this.isMusicLikedFragment);
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o1(boolean keepScreenOn) {
        this.viewBinding.getRoot().setKeepScreenOn(keepScreenOn);
    }

    private final void o2(boolean show) {
        if (!show) {
            AppCompatTextView tvPressSpeed = this.viewBinding.f64628r;
            Intrinsics.g(tvPressSpeed, "tvPressSpeed");
            tvPressSpeed.setVisibility(8);
        } else {
            hideBottomController(true);
            x0();
            AppCompatTextView tvPressSpeed2 = this.viewBinding.f64628r;
            Intrinsics.g(tvPressSpeed2, "tvPressSpeed");
            tvPressSpeed2.setVisibility(0);
        }
    }

    private final MediaItem p0(go.c playStream) {
        LongVodPageType longVodPageType = this.pageType;
        LongVodPageType longVodPageType2 = LongVodPageType.MUSIC;
        if (longVodPageType != longVodPageType2) {
            return null;
        }
        go.a aVar = this.curBean;
        String strT = aVar != null ? aVar.t() : null;
        go.a aVar2 = this.curBean;
        String strO = aVar2 != null ? aVar2.o() : null;
        go.a aVar3 = this.curBean;
        String strC = aVar3 != null ? aVar3.c() : null;
        PendingIntent pendingIntentQ0 = q0(playStream);
        Intent intentO0 = o0(playStream, "media_music_float_notification");
        MusicFloatManager musicFloatManagerB = MusicFloatManager.f43454h.b();
        go.a aVar4 = this.curBean;
        String strT2 = musicFloatManagerB.t(aVar4 != null ? aVar4.o() : null);
        boolean z10 = this.pageType == longVodPageType2;
        String str = this.pageName;
        go.a aVar5 = this.curBean;
        return new MediaItem(strT, "", strC, null, null, null, pendingIntentQ0, intentO0, strO, strT2, Boolean.valueOf(z10), str, null, aVar5 != null ? aVar5.q() : null, 4152, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.y0();
        return Unit.f67061a;
    }

    static /* synthetic */ void p2(LongVodPlayerView longVodPlayerView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.o2(z10);
    }

    private final PendingIntent q0(go.c playStream) {
        DownloadBean downloadBeanD;
        DownloadBean downloadBeanD2;
        DownloadBean downloadBeanD3;
        UGCVideo uGCVideoU;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideo uGCVideoU2;
        UGCVideo uGCVideoU3;
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        int i11 = b.f48287b[this.contentType.ordinal()];
        Intent intent = null;
        if (i11 == 1) {
            sb2.append(k1() ? "/playvideo/music_detail" : "/movie/detail");
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("extra_resource_id");
            sb2.append(UrlUtils.EQUAL_MARK);
            sb2.append(playStream.c());
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("subject_type");
            sb2.append(UrlUtils.EQUAL_MARK);
            go.a aVar = this.curBean;
            sb2.append(aVar != null ? aVar.r() : null);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("season");
            sb2.append(UrlUtils.EQUAL_MARK);
            go.a aVar2 = this.curBean;
            sb2.append(aVar2 != null ? aVar2.l() : 0);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("episode");
            sb2.append(UrlUtils.EQUAL_MARK);
            go.a aVar3 = this.curBean;
            sb2.append(aVar3 != null ? aVar3.e() : 0);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("id");
            sb2.append(UrlUtils.EQUAL_MARK);
            go.a aVar4 = this.curBean;
            sb2.append(aVar4 != null ? aVar4.o() : null);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("ops");
            sb2.append(UrlUtils.EQUAL_MARK);
            go.a aVar5 = this.curBean;
            sb2.append(aVar5 != null ? aVar5.q() : null);
            sb2.append(UrlUtils.AND_MARK);
        } else if (i11 == 2) {
            sb2.append("/ugc_video/local_detail");
            sb2.append("&resource_id=");
            go.a aVar6 = this.curBean;
            sb2.append((aVar6 == null || (downloadBeanD3 = aVar6.d()) == null) ? null : downloadBeanD3.getResourceId());
            sb2.append("&id=");
            go.a aVar7 = this.curBean;
            sb2.append((aVar7 == null || (downloadBeanD2 = aVar7.d()) == null) ? null : downloadBeanD2.getUgcVideoId());
            sb2.append("&collection_id=");
            go.a aVar8 = this.curBean;
            sb2.append((aVar8 == null || (downloadBeanD = aVar8.d()) == null) ? null : downloadBeanD.getUgcVideoCollectionId());
            sb2.append(UrlUtils.AND_MARK);
        } else {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            sb2.append("/ugc_video/detail");
            sb2.append("&id=");
            go.a aVar9 = this.curBean;
            sb2.append((aVar9 == null || (uGCVideoU3 = aVar9.u()) == null) ? null : uGCVideoU3.getUgcVideoId());
            sb2.append("&collection_id=");
            go.a aVar10 = this.curBean;
            sb2.append((aVar10 == null || (uGCVideoU2 = aVar10.u()) == null) ? null : uGCVideoU2.getUgcVideoId());
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("collection_id");
            sb2.append(UrlUtils.EQUAL_MARK);
            go.a aVar11 = this.curBean;
            sb2.append((aVar11 == null || (uGCVideoU = aVar11.u()) == null || (belongToCollection = uGCVideoU.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId());
            sb2.append(UrlUtils.AND_MARK);
        }
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(this.pageName);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("is_music_liked_fragment");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(this.isMusicLikedFragment);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("channel=media_notification&");
        if (iPushProvider != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            Intent intentA = iPushProvider.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse(sb2.toString()));
                intent = intentA;
            }
        }
        return PendingIntent.getActivity(Utils.a(), 0, intent, getPendingIntentFlag());
    }

    private final void q1(boolean vis) {
        ProgressBar progressBar = this.viewBinding.f64618h.f64638c.f16597f;
        Intrinsics.g(progressBar, "progressBar");
        progressBar.setVisibility(vis ? 0 : 8);
        AppCompatImageView ivCenterPause = this.viewBinding.f64618h.f64638c.f16595d;
        Intrinsics.g(ivCenterPause, "ivCenterPause");
        ivCenterPause.setVisibility(!vis ? 0 : 8);
        LinearLayout root = this.viewBinding.f64619i.f64669h.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        root.setVisibility(vis ? 0 : 8);
        if (vis) {
            AppCompatImageView ivCenterPause2 = this.viewBinding.f64618h.f64638c.f16595d;
            Intrinsics.g(ivCenterPause2, "ivCenterPause");
            jg.c.h(ivCenterPause2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q2(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.J2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0() {
        lg.a.f68839a.c(TAG, "onPrepare2PlayVideo, is mobile , pause video", true);
        this.isMobilePaused = true;
        s0();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (!com.transsion.baseui.util.b.a(context)) {
            getScreenHelper().l();
        }
        com.transsion.player.longvideo.helper.u uVar = this.mobileDataHelper;
        if (uVar != null) {
            uVar.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r1() {
        if (!this.playerControl.isPlaying() || this.viewBinding.f64618h.f64647l.isSelected()) {
            return;
        }
        float fD = com.transsion.baselib.helper.d.f43265a.d();
        this.resumeSpeed = fD;
        this.playerControl.setSpeed(fD * 2);
        p2(this, false, 1, null);
        this.pressTime = SystemClock.elapsedRealtime();
        String str = this.pageName;
        go.a aVar = this.curBean;
        String strO = aVar != null ? aVar.o() : null;
        go.a aVar2 = this.curBean;
        ak.p.a(str, strO, aVar2 != null ? aVar2.q() : null, Float.valueOf(this.resumeSpeed));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r2(String content) {
        if (this.toastLayout == null) {
            this.toastLayout = this.viewBinding.f64635y.inflate();
            c1();
            View view = this.toastLayout;
            Intrinsics.e(view);
            TextView textView = (TextView) view.findViewById(R$id.tv_toast_1);
            View view2 = this.toastLayout;
            Intrinsics.e(view2);
            this.localToastControl = new j1(textView, (TextView) view2.findViewById(R$id.tv_toast_2));
        }
        j1 j1Var = this.localToastControl;
        if (j1Var != null) {
            j1.i(j1Var, content, 0L, 2, null);
        }
    }

    private final void s0() {
        PlaybackInterceptionManager playbackInterceptionManager;
        this.isPressedPause = true;
        lg.a.f68839a.c(TAG, "----handlePause, pause video", true);
        setPauseViewStatus(false);
        this.playerControl.pause();
        w2(false);
        if (this.isMobilePaused || (playbackInterceptionManager = this.playbackInterceptionManager) == null) {
            return;
        }
        playbackInterceptionManager.y(this.curBean, this.viewBinding.f64626p, this.curUiType, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s1(LongVodPlayerView longVodPlayerView) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (longVodPlayerView.playerControl.isPlaying()) {
                lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "onAdClick resume auto pip", false, 4, null);
                longVodPlayerView.B2(true);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void s2(FragmentActivity activity) {
        f0();
        LongVodTvProDialog longVodTvProDialog = this.tvProDialog;
        if (longVodTvProDialog != null) {
            longVodTvProDialog.dismissAllowingStateLoss();
        }
        LongVodTvProDialog longVodTvProDialogB0 = new LongVodTvProDialog().c0(this.pageName).d0(getTvProDialogMaxHeight()).b0(new Function0() { // from class: com.transsion.player.longvideo.ui.l0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodPlayerView.t2(this.f48352a);
            }
        });
        longVodTvProDialogB0.X(activity, "LongVodTvPro");
        this.tvProDialog = longVodTvProDialogB0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setPauseViewStatus(boolean playing) {
        this.viewBinding.f64618h.f64646k.setTag(Boolean.valueOf(playing));
        this.viewBinding.f64619i.f64666e.setTag(Boolean.valueOf(playing));
        lg.a.C0828a.f(lg.a.f68839a, TAG, "setPauseViewStatus playing = " + playing, false, 4, null);
        if (playing) {
            this.viewBinding.f64618h.f64646k.setImageResource(R$mipmap.icon_player_pause);
            this.viewBinding.f64618h.f64638c.f16595d.setImageResource(R$drawable.ic_player_pause);
            this.viewBinding.f64619i.f64666e.setImageResource(R$mipmap.icon_player_pause);
        } else {
            this.viewBinding.f64618h.f64646k.setImageResource(R$mipmap.icon_player_play);
            this.viewBinding.f64618h.f64638c.f16595d.setImageResource(R$drawable.ic_player_play);
            this.viewBinding.f64619i.f64666e.setImageResource(R$mipmap.icon_player_play);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setPlayerDataSourceAdPrepare(go.c playStream) {
        LinkedHashMap linkedHashMap;
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        this.playingStream = playStream;
        if (playStream.f().length() > 0) {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("cookie", playStream.f());
        } else {
            linkedHashMap = null;
        }
        ao.e eVar = new ao.e(String.valueOf(ak.k.k(playStream.h()).hashCode()), playStream.h(), 0, playStream.b(), p0(playStream), 4, null);
        MusicFloatManager.a aVar = MusicFloatManager.f43454h;
        aVar.b().C(eVar.e());
        aVar.b().B(eVar.i());
        eVar.q(linkedHashMap);
        lg.a.C0828a c0828a = lg.a.f68839a;
        go.a aVar2 = this.curBean;
        Integer numValueOf = aVar2 != null ? Integer.valueOf(aVar2.l()) : null;
        go.a aVar3 = this.curBean;
        Integer numValueOf2 = aVar3 != null ? Integer.valueOf(aVar3.e()) : null;
        c0828a.c(TAG, "setPlayerDataSourceAdPrepare,  se:" + numValueOf + " ep:" + numValueOf2 + ", resolution:" + playStream.e() + "，id：" + eVar.e() + ",url:" + playStream.h(), true);
        S1();
        this.curTimeoutMediaSource = eVar;
        this.playerControl.clearScreen();
        this.playerControl.setDataSource(eVar);
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new C10711(null), 3, null);
    }

    private final void t0(MotionEvent e11, boolean isDoubleClick) {
        LongVodUiType longVodUiType = this.curUiType;
        if ((longVodUiType != LongVodUiType.LAND && longVodUiType != LongVodUiType.MIDDLE) || !isDoubleClick || e11 == null) {
            s0();
            return;
        }
        int iE = com.blankj.utilcode.util.y.e() / 3;
        int rawX = (int) e11.getRawX();
        boolean zF = jg.c.f();
        if (rawX >= 0 && rawX <= iE) {
            m0(this, zF, false, 2, null);
        } else if (rawX > iE * 2) {
            m0(this, !zF, false, 2, null);
        } else {
            s0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1() {
        View orLongVodPlayerBg = this.viewBinding.f64622l;
        Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
        jg.c.g(orLongVodPlayerBg);
        if (u0()) {
            return;
        }
        if (!this.isReload && !this.isMultipleResChangeResolution) {
            String string = Utils.a().getString(R$string.long_vod_analysing_from);
            String[] stringArray = Utils.a().getResources().getStringArray(R$array.long_vod_analysing_array);
            Intrinsics.g(stringArray, "getStringArray(...)");
            r2(string + " [" + ArraysKt.y0(stringArray, Random.INSTANCE) + "]");
        }
        E2(0L);
        F1();
        if (!this.isPageResumed) {
            lg.a.f68839a.c(TAG, "----onPrepare2PlayVideo, pause video", true);
            this.playerControl.pause();
            w2(false);
        } else {
            if (n2() && this.isMobilePaused) {
                lg.a.f68839a.c(TAG, "----onPrepare2PlayVideo, showMobileDataTips pause", true);
                return;
            }
            w0();
            lg.a.f68839a.c(TAG, "onPrepare2PlayVideo, play", true);
            this.playerControl.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t2(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.isTvProPanelShowing = false;
        longVodPlayerView.tvProDialog = null;
        return Unit.f67061a;
    }

    private final boolean u0() {
        if (this.contentType != LongVodContentType.UGC_VIDEO_ONLINE) {
            this.isUGCPauseShowing = false;
            FrameLayout flUGCAutoPlayGroup = this.viewBinding.f64619i.f64663b;
            Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
            jg.c.g(flUGCAutoPlayGroup);
            return false;
        }
        if (this.isUGCPlay || this.isFloatPlaying || com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false) || ak.o.f646a.i()) {
            this.isUGCPauseShowing = false;
            FrameLayout flUGCAutoPlayGroup2 = this.viewBinding.f64619i.f64663b;
            Intrinsics.g(flUGCAutoPlayGroup2, "flUGCAutoPlayGroup");
            jg.c.g(flUGCAutoPlayGroup2);
            return false;
        }
        this.isUGCPauseShowing = true;
        f2(false);
        FrameLayout flUGCAutoPlayGroup3 = this.viewBinding.f64619i.f64663b;
        Intrinsics.g(flUGCAutoPlayGroup3, "flUGCAutoPlayGroup");
        jg.c.k(flUGCAutoPlayGroup3);
        this.viewBinding.f64619i.f64668g.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LongVodPlayerView.v0(this.f48350a, view);
            }
        });
        return true;
    }

    private final void u1(go.b selectedBean) {
        int i11;
        Iterator it = this.resolutionList.iterator();
        while (true) {
            i11 = 0;
            if (!it.hasNext()) {
                break;
            }
            go.b bVar = (go.b) it.next();
            if (bVar.e()) {
                bVar.f(false);
                break;
            }
        }
        int i12 = 0;
        for (go.b bVar2 : this.resolutionList) {
            int i13 = i12 + 1;
            if (Intrinsics.c(selectedBean.d(), bVar2.d())) {
                bVar2.f(true);
                this.viewBinding.f64618h.f64656u.setText(bVar2.d());
                i11 = i12;
                break;
            }
            i12 = i13;
        }
        lg.a.f68839a.c(TAG, "onResolutionChange, content = " + selectedBean.d() + ", selectedIndex = " + i11, true);
        go.a aVar = this.curBean;
        if (aVar != null) {
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null) {
                c0Var.L(selectedBean.d());
            }
            if (!aVar.w()) {
                mo.d dVar = this.dashVideoTracksGroup;
                if (dVar != null) {
                    this.playerControl.changeTrackSelection(dVar, i11);
                    return;
                }
                return;
            }
            go.c cVarD = this.resolutionHelper.d(aVar, selectedBean);
            if (cVarD != null) {
                this.resolutionHelper.f(cVarD.e());
                go.a aVar2 = this.curBean;
                if (aVar2 != null) {
                    aVar2.z(this.playerControl.getCurrentPosition());
                }
                this.isMultipleResChangeResolution = true;
                T1();
                setPlayerDataSourceAdPrepare(cVarD);
            }
        }
    }

    private final void u2(boolean forceAttach) {
        FragmentActivity fragmentActivityX1 = X1();
        if (fragmentActivityX1 == null) {
            return;
        }
        hideBottomController(true);
        if (this.curUiType != LongVodUiType.LAND) {
            if (forceAttach || !this.isTvProPanelShowing || this.tvProDialog == null) {
                this.isTvProPanelShowing = true;
                s2(fragmentActivityX1);
                return;
            }
            return;
        }
        PlaybackInterceptionManager playbackInterceptionManager = this.playbackInterceptionManager;
        boolean z10 = false;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.W(false, "LongVodTvPro", ti.n.f76264a.b(), true);
        }
        FrameLayout flLandscapePremium = this.viewBinding.f64613c;
        Intrinsics.g(flLandscapePremium, "flLandscapePremium");
        if (this.isTvProPanelShowing && Intrinsics.c(this.tvProPanelContainer, flLandscapePremium) && this.tvProPanelView != null) {
            z10 = true;
        }
        if (!forceAttach && z10) {
            jg.c.k(flLandscapePremium);
            return;
        }
        this.isTvProPanelShowing = true;
        LongVodTvProDialog longVodTvProDialog = this.tvProDialog;
        if (longVodTvProDialog != null) {
            longVodTvProDialog.dismissAllowingStateLoss();
        }
        this.tvProDialog = null;
        b0(fragmentActivityX1, flLandscapePremium);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.y2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(LongVodPlayerView longVodPlayerView, go.b bVar) {
        ok.c.f71034a.a(longVodPlayerView.getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率面板开通会员失败，继续激励场景 --> config = " + bVar);
        Context context = longVodPlayerView.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            longVodPlayerView.s0();
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f48205a;
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            resolutionMemberManager.h(supportFragmentManager, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, longVodPlayerView.curBean, longVodPlayerView.pageName, longVodPlayerView.new i(bVar));
        }
    }

    static /* synthetic */ void v2(LongVodPlayerView longVodPlayerView, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        longVodPlayerView.u2(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0() {
        List listJ;
        go.c cVar;
        go.a aVar = this.curBean;
        if ((aVar == null || (listJ = aVar.j()) == null || (cVar = (go.c) CollectionsKt.k0(listJ)) == null) ? false : cVar.i()) {
            return;
        }
        AppCompatImageView orLongVodIvBg = this.viewBinding.f64621k;
        Intrinsics.g(orLongVodIvBg, "orLongVodIvBg");
        jg.c.g(orLongVodIvBg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w1(LongVodPlayerView longVodPlayerView) {
        ok.c.f71034a.a(longVodPlayerView.getClassTag() + " --> onResolutionTipFailedFromMemberTipView() --> 右下角提示开通会员失败，继续激励场景");
        Context context = longVodPlayerView.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            longVodPlayerView.s0();
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f48205a;
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            resolutionMemberManager.h(supportFragmentManager, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, longVodPlayerView.curBean, longVodPlayerView.pageName, longVodPlayerView.new j());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w2(boolean show) {
        if (this.isShowLoading == show) {
            return;
        }
        this.isShowLoading = show;
        if (!show) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "showVideoLoading gone", false, 4, null);
            q1(false);
        } else {
            if (this.isSeeking) {
                return;
            }
            K1();
            q1(true);
            lg.a.C0828a.f(lg.a.f68839a, TAG, "showVideoLoading visible", false, 4, null);
        }
    }

    private final void x0() {
        if (!this.showToolbarAlways) {
            ConstraintLayout root = this.viewBinding.f64620j.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            root.setVisibility(8);
        }
        fo.a.b bVar = this.playerCallback;
        if (bVar != null) {
            bVar.g(false);
        }
        AppCompatTextView ivLock = this.viewBinding.f64618h.f64647l;
        Intrinsics.g(ivLock, "ivLock");
        ivLock.setVisibility(8);
        ConstraintLayout clBottomControl = this.viewBinding.f64618h.f64639d;
        Intrinsics.g(clBottomControl, "clBottomControl");
        clBottomControl.setVisibility(8);
        ConstraintLayout root2 = this.viewBinding.f64618h.f64638c.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        root2.setVisibility(8);
        Group groupControlPk = this.viewBinding.f64618h.f64643h;
        Intrinsics.g(groupControlPk, "groupControlPk");
        groupControlPk.setVisibility(8);
        AppCompatTextView tvPlayNext = this.viewBinding.f64618h.f64660y;
        Intrinsics.g(tvPlayNext, "tvPlayNext");
        tvPlayNext.setVisibility(8);
        View landGradientTop = this.viewBinding.f64618h.f64651p;
        Intrinsics.g(landGradientTop, "landGradientTop");
        landGradientTop.setVisibility(8);
        View landGradientBottom = this.viewBinding.f64618h.f64650o;
        Intrinsics.g(landGradientBottom, "landGradientBottom");
        landGradientBottom.setVisibility(8);
        View middleGradientTop = this.viewBinding.f64619i.f64672k;
        Intrinsics.g(middleGradientTop, "middleGradientTop");
        middleGradientTop.setVisibility(8);
        View middleGradientBottom = this.viewBinding.f64619i.f64671j;
        Intrinsics.g(middleGradientBottom, "middleGradientBottom");
        middleGradientBottom.setVisibility(8);
        LinearLayout llMiddleBottomController = this.viewBinding.f64619i.f64670i;
        Intrinsics.g(llMiddleBottomController, "llMiddleBottomController");
        llMiddleBottomController.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x1() {
        ConstraintLayout root = this.viewBinding.f64620j.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        if (root.getVisibility() == 0) {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "onSingleTap hideBottomController ", false, 4, null);
            hideBottomController(true);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, TAG, "onSingleTap showBottomController ", false, 4, null);
            g2(this, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.postdetail.ui.dialog.o x2(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (com.transsion.postdetail.ui.dialog.o) new v0((FragmentActivity) context).a(com.transsion.postdetail.ui.dialog.o.class);
    }

    private final void y0() {
        this.isTvProPanelShowing = false;
        f0();
        LongVodTvProDialog longVodTvProDialog = this.tvProDialog;
        if (longVodTvProDialog != null) {
            longVodTvProDialog.dismissAllowingStateLoss();
        }
        this.tvProDialog = null;
    }

    private final void y1(go.b selectedBean) {
        Float fT = StringsKt.t(selectedBean.d());
        if (fT != null) {
            this.playerControl.setSpeed(fT.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y2() {
        z0();
        t1();
    }

    private final void z0() {
        this.isUGCPlay = true;
        this.isUGCPauseShowing = false;
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f64619i.f64663b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        jg.c.g(flUGCAutoPlayGroup);
    }

    private final void z1() {
        fo.a.b bVar = this.playerCallback;
        if (bVar != null) {
            bVar.f(this.curBean);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao z2() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final void backClick(boolean needFinish, boolean showBackAd) {
        com.transsion.player.longvideo.intercept.c cVar;
        if (this.isTvProPanelShowing) {
            y0();
            return;
        }
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = LongVodUiType.MIDDLE;
        if (longVodUiType != longVodUiType2) {
            if (longVodUiType == LongVodUiType.LAND) {
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
                Activity activity = (Activity) context;
                ImmersionBar.with(activity).hideBar(BarHide.FLAG_SHOW_BAR).init();
                activity.setRequestedOrientation(1);
            }
            this.viewBinding.f64631u.setPadding(0, 0, 0, 0);
            this.curUiType = longVodUiType2;
            a2(false, longVodUiType2);
            return;
        }
        if (needFinish) {
            if (showBackAd && (cVar = this.playbackBack) != null && cVar.k()) {
                return;
            }
            fo.a.b bVar = this.playerCallback;
            if (bVar != null ? bVar.c(FloatActionType.BACK) : false) {
                return;
            }
            Context context2 = getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context2).finish();
        }
    }

    @Override // fo.a
    public long currentPosition() {
        return this.playerControl.getCurrentPosition();
    }

    @Override // fo.a
    public void exitFullScreen() {
        if (this.curUiType != LongVodUiType.MIDDLE) {
            if (this.viewBinding.f64618h.f64647l.isSelected()) {
                this.viewBinding.f64618h.f64647l.performClick();
            }
            backClick$default(this, false, false, 2, null);
        }
    }

    public void floatBack2ExitPage(com.transsion.player.orplayer.g orPlayer, ORPlayerView playerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(playerView, "playerView");
    }

    @Override // fo.a
    public PlaybackInterceptionManager getPlaybackInterceptionManager() {
        return this.playbackInterceptionManager;
    }

    @Override // fo.a
    public com.transsion.player.orplayer.g getPlayer() {
        return this.playerControl.getOrPlayer();
    }

    @Override // fo.a
    /* JADX INFO: renamed from: getPlayerView, reason: from getter */
    public ORPlayerView getOrPlayerView() {
        return this.orPlayerView;
    }

    @Override // fo.a
    public go.c getPlayingStream() {
        return this.playingStream;
    }

    @Override // fo.a
    public SimpleSubtitleView getSubtitleView() {
        return this.viewBinding.f64630t;
    }

    @Override // fo.a
    public ViewGroup getSubtitleViewGroup() {
        return this.viewBinding.f64616f;
    }

    @Override // fo.a
    public void hasNextEpisode(boolean hasNext) {
        this.isHasNext = hasNext;
        ConstraintLayout clBottomControl = this.viewBinding.f64618h.f64639d;
        Intrinsics.g(clBottomControl, "clBottomControl");
        if (clBottomControl.getVisibility() == 0) {
            AppCompatTextView tvPlayNext = this.viewBinding.f64618h.f64660y;
            Intrinsics.g(tvPlayNext, "tvPlayNext");
            tvPlayNext.setVisibility(this.isHasNext ? 0 : 8);
            N1();
        }
    }

    @Override // fo.a
    public void hideBottomController(boolean fastHide) {
        if (com.blankj.utilcode.util.c.l()) {
            if (fastHide) {
                x0();
            } else if (this.playerControl.isPlaying()) {
                this.handler.removeCallbacks(this.runnable);
                this.handler.postDelayed(this.runnable, 3000L);
            }
        }
    }

    @Override // fo.a
    public void init(String pageName, LongVodPageType pageType, String tag, FrameLayout fullscreenContainer, ViewGroup subtitleSyncView, List<DubsInfo> dubs, LongVodContentType contentType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageType, "pageType");
        Intrinsics.h(dubs, "dubs");
        Intrinsics.h(contentType, "contentType");
        Function0 function0P = ko.l0.f66968a.p();
        boolean z10 = false;
        if (function0P != null && ((Boolean) function0P.invoke()).booleanValue()) {
            z10 = true;
        }
        this.isMultiplePlayer = z10;
        this.contentType = contentType;
        this.pageName = pageName;
        this.pageType = pageType;
        this.fullscreenContainer = fullscreenContainer;
        this.dubs = dubs;
        this.playerTag = tag;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, TAG, "init,pageName:" + pageName + ", pageType:" + pageType + " ", false, 4, null);
        lg.a.C0828a.f(c0828a, "premium_p", "LongVodPlayerView --> init(播放器初始化)", false, 4, null);
        d1();
        A0();
        X0();
        C0();
        com.transsion.player.longvideo.intercept.c cVar = new com.transsion.player.longvideo.intercept.c();
        this.playbackBack = cVar;
        cVar.j(pageType);
        com.transsion.player.longvideo.intercept.c cVar2 = this.playbackBack;
        if (cVar2 != null) {
            cVar2.i(this);
        }
        com.transsion.player.longvideo.intercept.c cVar3 = this.playbackBack;
        if (cVar3 != null) {
            cVar3.g();
        }
        a1(subtitleSyncView);
        D0();
        com.transsion.postdetail.util.o orientationEventListener = getOrientationEventListener();
        if (orientationEventListener != null) {
            orientationEventListener.enable();
        }
        B0();
        com.transsion.ad.strategy.b.f42227a.c(this);
        com.transsion.mbwidget.d.f46239a.r(new d());
    }

    public final void initAdHelper(String genre) {
        com.transsion.player.longvideo.intercept.c cVar = this.playbackBack;
        if (cVar != null) {
            cVar.h(genre);
        }
    }

    /* JADX INFO: renamed from: isPressedPause, reason: from getter */
    public boolean getIsPressedPause() {
        return this.isPressedPause;
    }

    @Override // com.transsion.ad.strategy.b.a
    public void onAdClick(AdPlans adPlan) {
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "onAdClick stop auto pip", false, 4, null);
        B2(false);
        postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.ui.h0
            @Override // java.lang.Runnable
            public final void run() {
                LongVodPlayerView.s1(this.f48344a);
            }
        }, 3000L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (com.transsion.baseui.util.b.a(context)) {
            return;
        }
        getScreenHelper().h();
    }

    @Override // fo.a
    public boolean onBackPressed() {
        if (this.isTvProPanelShowing) {
            y0();
            return true;
        }
        if (this.curUiType != LongVodUiType.MIDDLE) {
            backClick$default(this, false, false, 3, null);
            return true;
        }
        backClick$default(this, false, true, 1, null);
        return false;
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean isBackground) {
        if (isBackground) {
            lg.a.f68839a.c(TAG, "app退至后台 上报埋点", true);
            if (this.playerControl.isPlaying()) {
                this.isPageResumed = false;
                if (!k1()) {
                    this.playerControl.pause();
                }
                H1();
            }
            c2();
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null) {
                c0Var.b(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (com.transsion.baseui.util.b.a(context)) {
            return;
        }
        getScreenHelper().l();
    }

    @Override // fo.a
    public void onHandlePause() {
        lg.a.f68839a.c(TAG, "onHandlePause", true);
        this.isPageResumed = false;
        this.isPressedPause = true;
        if (!k1()) {
            this.playerControl.pause();
        }
        H1();
    }

    @Override // fo.a
    public void onHandlePlay() {
        lg.a.f68839a.c(TAG, "onHandlePlay", true);
        this.isPageResumed = true;
        if (this.isMobilePaused) {
            return;
        }
        I2(this, null, false, 3, null);
    }

    @Override // fo.a
    public void onPageDestroy() {
        this.isFirstSetTracks = true;
        c2();
        lg.a.f68839a.c(TAG, "页面关闭 上报埋点", true);
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
        }
        this.playerControl.removePlayerListener(this.playerListener);
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.R();
        }
        A2();
        S1();
        com.transsion.ad.strategy.b.f42227a.m(this);
        com.transsion.mbwidget.d.f46239a.r(null);
        PlaybackInterceptionManager playbackInterceptionManager = this.playbackInterceptionManager;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.w();
        }
        this.viewBinding.f64618h.f64653r.destroy();
        y0();
        com.transsion.player.longvideo.intercept.c cVar = this.playbackBack;
        if (cVar != null) {
            cVar.c();
        }
    }

    @Override // fo.a
    public void onPipModeChanged(boolean isInPipMode) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.D(isInPipMode);
        }
    }

    @Deprecated
    public final void onResolutionTipFailedFromDialog(final go.b config) {
        Intrinsics.h(config, "config");
        if (ak.o.f646a.g() || ak.g.f639a.b()) {
            return;
        }
        if (!PSActivateManager.f42171a.d()) {
            lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率面板 开通会员失败 后续逻辑 --> 没有激活广告，直接返回", false, 2, null);
            return;
        }
        if (!yx.a.f79085a.k(MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG)) {
            backClick$default(this, false, false, 3, null);
            ok.c.f71034a.a("LongVdPlayerConfigDialog --> 横竖屏切换完成");
            postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.ui.p0
                @Override // java.lang.Runnable
                public final void run() {
                    LongVodPlayerView.v1(this.f48360a, config);
                }
            }, 500L);
        } else {
            lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率 --> 没有开启，直接返回", false, 2, null);
        }
    }

    public final void onResolutionTipFailedFromMemberTipView() {
        if (ak.o.f646a.g() || ak.g.f639a.b()) {
            return;
        }
        if (!PSActivateManager.f42171a.d()) {
            lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率面板 开通会员失败 后续逻辑 --> 没有激活广告，直接返回", false, 2, null);
            return;
        }
        if (!yx.a.f79085a.k(MemberSource.SOURCE_STREAM_RESOLUTION_TIP)) {
            backClick$default(this, false, false, 3, null);
            ok.c.f71034a.a("LongVdPlayerConfigDialog --> 横竖屏切换完成");
            postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.ui.o0
                @Override // java.lang.Runnable
                public final void run() {
                    LongVodPlayerView.w1(this.f48358a);
                }
            }, 500L);
        } else {
            lg.a.C0828a.g(lg.a.f68839a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 右下角 --> 没有开启，直接返回", false, 2, null);
        }
    }

    @Override // fo.a
    public void onSaveHistory() {
        if (this.pageType != LongVodPageType.TRAILER && this.playProgress > 0) {
            go.a aVar = this.curBean;
            LongVodContentType longVodContentType = this.contentType;
            if (longVodContentType == LongVodContentType.UGC_VIDEO_ONLINE || longVodContentType == LongVodContentType.UGC_VIDEO_LOCAL) {
                Y1();
            } else {
                kotlinx.coroutines.k.d(this.coroutineScopeIO, null, null, new AnonymousClass1(aVar, this, null), 3, null);
            }
        }
    }

    @Override // fo.a
    public void onViewPause() {
        PlaybackInterceptionManager playbackInterceptionManager = this.playbackInterceptionManager;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.P();
        }
        lg.a.f68839a.c(TAG, "onViewPause", true);
        this.isPageResumed = false;
        if (!k1()) {
            this.playerControl.pause();
        }
        H1();
    }

    @Override // fo.a
    public void onViewResume() {
        PlaybackInterceptionManager playbackInterceptionManager = this.playbackInterceptionManager;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.Q();
        }
        lg.a.f68839a.c(TAG, "onViewResume", true);
        this.isPageResumed = true;
        com.transsion.postdetail.util.o orientationEventListener = getOrientationEventListener();
        if (orientationEventListener != null) {
            orientationEventListener.enable();
        }
        if (this.isPressedPause || !nh.m.f70474a.e() || ox.c.f72196a.d() || this.isAdShowing || this.isRewardInterceptShowing) {
            return;
        }
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f64619i.f64663b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        if (flUGCAutoPlayGroup.getVisibility() == 0) {
            return;
        }
        VideoContentInterceptView playbackInterceptView = this.viewBinding.f64624n;
        Intrinsics.g(playbackInterceptView, "playbackInterceptView");
        if (playbackInterceptView.getVisibility() == 0) {
            return;
        }
        PlaybackInterceptAdView startInterceptView = this.viewBinding.f64626p;
        Intrinsics.g(startInterceptView, "startInterceptView");
        if (startInterceptView.getVisibility() == 0) {
            return;
        }
        this.playerControl.play();
    }

    @Override // fo.a
    public void release() {
        this.isPrepared = false;
        if (k1()) {
            lg.a.f68839a.c(TAG, "music release clearSurfaceOnly", true);
            this.playerControl.clearSurfaceOnly();
            return;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.c(TAG, "release player", true);
        if (com.transsion.videofloat.manager.a0.f57933a.c(getPlayer())) {
            c0828a.c(TAG, "播放器在缓存中，后续要用到，不能release", true);
            this.playerControl.clearSurfaceOnly();
        } else {
            com.transsion.player.ui.longvideo.a aVar = this.playerControl;
            go.c cVar = this.playingStream;
            String strH = cVar != null ? cVar.h() : null;
            aVar.release(String.valueOf(strH != null ? strH.hashCode() : 0));
        }
    }

    @Override // fo.a
    public void removeNoNetError() {
        K1();
    }

    @Override // fo.a
    public void replay() {
        J2();
    }

    @Override // fo.a
    public void reset() {
        if (this.isNewPlayer) {
            lg.a.f68839a.c(TAG, "player reset", true);
            this.isReload = false;
            this.isPrepared = false;
            this.isFirstSetTracks = true;
            LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.Z();
            }
            com.transsion.player.longvideo.helper.j jVar = this.spaceHelper;
            if (jVar != null) {
                jVar.c();
            }
            this.playerControl.reset();
            S1();
            E2(0L);
            setPauseViewStatus(false);
        }
    }

    public final void setAudioSelectCallback(Function1<? super DubsInfo, Unit> callback) {
        this.audioSelectCallback = callback;
    }

    @Override // fo.a
    public void setCallback(fo.a.b callback) {
        Intrinsics.h(callback, "callback");
        this.playerCallback = callback;
        com.transsion.player.longvideo.helper.g gVar = this.gameResHelper;
        if (gVar != null) {
            gVar.d(callback);
        }
    }

    @Override // fo.a
    public void setDataSource(go.a bean) {
        String strO;
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        String strO2;
        Intrinsics.h(bean, "bean");
        this.isMobilePaused = false;
        this.isPrepared = false;
        this.playProgress = 0L;
        com.transsion.player.longvideo.helper.u uVar = this.mobileDataHelper;
        if (uVar != null) {
            uVar.E();
        }
        this.isRewardInterceptShowing = false;
        E2(0L);
        PlaybackInterceptionManager playbackInterceptionManager = this.playbackInterceptionManager;
        if (playbackInterceptionManager != null) {
            playbackInterceptionManager.T(bean, this.viewBinding, this.flPortraitPremium, this.pageName, new m());
        }
        W0(this.playerTag, bean);
        this.dubs = bean.a();
        D2();
        lg.a.C0828a.f(lg.a.f68839a, TAG, "setDataSource,  isNewPlayer：" + this.isNewPlayer, false, 4, null);
        onSaveHistory();
        if (this.curBean != null) {
            c2();
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null) {
                com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
            if (c0Var2 != null) {
                c0Var2.g();
            }
        }
        this.isFirstSetTracks = true;
        this.curBean = bean;
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.J(bean.i());
        }
        com.transsion.postdetail.layer.local.c0 c0Var4 = this.videoDot;
        if (c0Var4 != null) {
            c0Var4.G(this.isMusicLikedFragment);
        }
        String strI = bean.i();
        this.pageName = strI;
        ImmScaleView immScaleView = this.viewBinding.f64618h.f64649n;
        go.a aVar = this.curBean;
        String str = "";
        if (aVar == null || (strO = aVar.o()) == null) {
            strO = "";
        }
        immScaleView.setPageParams(strI, strO);
        ImmSpeedView immSpeedView = this.viewBinding.f64618h.A;
        String str2 = this.pageName;
        go.a aVar2 = this.curBean;
        if (aVar2 != null && (strO2 = aVar2.o()) != null) {
            str = strO2;
        }
        immSpeedView.setPageParams(str2, str);
        ImmScaleView immScaleView2 = this.viewBinding.f64618h.f64649n;
        go.a aVar3 = this.curBean;
        immScaleView2.setOps(aVar3 != null ? aVar3.q() : null);
        ImmSpeedView immSpeedView2 = this.viewBinding.f64618h.A;
        go.a aVar4 = this.curBean;
        immSpeedView2.setOps(aVar4 != null ? aVar4.q() : null);
        F2(bean);
        if (this.isNewPlayer) {
            h2();
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new AnonymousClass2(bean, null), 3, null);
    }

    public final void setFeedBackVisible(boolean visible) {
        AppCompatTextView tvFeedback = this.viewBinding.f64620j.f64604d;
        Intrinsics.g(tvFeedback, "tvFeedback");
        jg.c.j(tvFeedback, visible);
        GradientTextView tvPro = this.viewBinding.f64620j.f64605e;
        Intrinsics.g(tvPro, "tvPro");
        jg.c.j(tvPro, visible);
        R1();
        if (visible) {
            return;
        }
        y0();
    }

    @Override // fo.a
    public void setFloatIsShow(boolean show) {
        this.isFloatShow = show;
    }

    public void setFragmentId(String fragmentId) {
        Intrinsics.h(fragmentId, "fragmentId");
        this.fragmentId = fragmentId;
    }

    public final void setMusicLikedFragment(boolean from) {
        this.isMusicLikedFragment = from;
    }

    public final void setPortraitPremiumView(FrameLayout flPortraitPremium) {
        this.flPortraitPremium = flPortraitPremium;
    }

    public void setSpeed(float speed) {
        this.playerControl.setSpeed(speed);
        ImmSpeedView.updateSpeed$default(this.viewBinding.f64618h.A, speed, false, 2, null);
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.j0(speed);
        }
    }

    @Override // fo.a
    public void showNoNetError() {
        j2(this, false, 1, null);
    }

    @Override // fo.a
    public void showReplay() {
        if (j1()) {
            return;
        }
        if (this.curUiType == LongVodUiType.MIDDLE) {
            hideBottomController(true);
        } else {
            f2(false);
        }
        setPauseViewStatus(false);
        M1();
        if (this.replayLayout == null) {
            this.replayLayout = this.viewBinding.f64634x.inflate();
        }
        View view = this.replayLayout;
        if (view != null) {
            jg.c.k(view);
        }
        View view2 = this.replayLayout;
        if (view2 != null) {
            if (this.curUiType == LongVodUiType.LAND) {
                this.isCompletionBlock = false;
            }
            ((TextView) view2.findViewById(R$id.tv_replay)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.ui.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    LongVodPlayerView.q2(this.f48349a, view3);
                }
            });
        }
    }

    public final void showResolutionIntercept(go.b config, String sceneId) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        Intrinsics.h(config, "config");
        Intrinsics.h(sceneId, "sceneId");
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new C10721(sceneId, null), 3, null);
    }

    @Override // fo.a
    public void ugcAutoPause2PlayVideo() {
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f64619i.f64663b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        if (flUGCAutoPlayGroup.getVisibility() == 0) {
            FrameLayout flUGCAutoPlayGroup2 = this.viewBinding.f64619i.f64663b;
            Intrinsics.g(flUGCAutoPlayGroup2, "flUGCAutoPlayGroup");
            jg.c.g(flUGCAutoPlayGroup2);
            this.playerControl.play();
        }
    }

    @Override // fo.a
    public void updateReportId(String parentVideoId, String trackId, String previousTrackId) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.N(parentVideoId);
        }
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
        if (c0Var2 != null) {
            c0Var2.P(trackId);
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.O(previousTrackId);
        }
    }
}
