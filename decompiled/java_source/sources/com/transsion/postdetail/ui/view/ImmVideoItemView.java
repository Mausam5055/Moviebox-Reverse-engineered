package com.transsion.postdetail.ui.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baseui.util.UrlContent;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.moviedetailapi.IMovieDetailService;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$mipmap;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.CommentLikeBody;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.shorttv.ShortTvPlayListViewModel;
import com.transsion.postdetail.ui.dialog.ImmVideoCommentDialog;
import com.transsion.postdetail.ui.dialog.PostConfirmDialog;
import com.transsion.postdetail.ui.fragment.CommentFragment;
import com.transsion.postdetail.ui.fragment.VideoFragment;
import com.transsion.postdetail.viewmodel.CommentViewModel;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.push.PushConstants;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IRoomApi;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000°\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0002õ\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\rB\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0012\u0010\u0011Jk\u0010!\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u001a2\b\b\u0002\u0010\u001f\u001a\u00020\u001a2\b\b\u0002\u0010 \u001a\u00020\u0018¢\u0006\u0004\b!\u0010\"J\u001d\u0010'\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0015\u0010+\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\r\u0010.\u001a\u00020-¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u00182\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016¢\u0006\u0004\b9\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J\r\u0010>\u001a\u00020\u000f¢\u0006\u0004\b>\u0010\u0011J\u0017\u0010?\u001a\u00020\u000f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b?\u0010@J\u0015\u0010B\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u001a¢\u0006\u0004\bB\u0010@J\u000f\u0010C\u001a\u00020\u000fH\u0016¢\u0006\u0004\bC\u0010\u0011J\u000f\u0010D\u001a\u00020\u000fH\u0016¢\u0006\u0004\bD\u0010\u0011J\u0019\u0010E\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bE\u0010=J\u0019\u0010F\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bF\u0010=J\u0019\u0010G\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bG\u0010=J!\u0010J\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020H2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bJ\u0010KJ\u0019\u0010L\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bL\u0010=J\u0019\u0010M\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bM\u0010=J!\u0010P\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020N2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\u000fH\u0016¢\u0006\u0004\bR\u0010\u0011J\u0019\u0010S\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bS\u0010=J\u000f\u0010T\u001a\u00020\u000fH\u0016¢\u0006\u0004\bT\u0010\u0011J\u0019\u0010W\u001a\u00020\u000f2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\r\u0010Y\u001a\u00020\u000f¢\u0006\u0004\bY\u0010\u0011J\u0019\u0010[\u001a\u00020\u000f2\b\u0010Z\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b[\u0010@J\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\\\u0010\rJ\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b]\u0010^J\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b_\u0010^J\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020HH\u0002¢\u0006\u0004\ba\u0010bJ\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020HH\u0002¢\u0006\u0004\bd\u0010bJ\u0017\u0010e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\be\u0010^J\u0017\u0010f\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bf\u0010^J\u0017\u0010g\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bg\u0010^J\u001f\u0010j\u001a\u00020\u000f2\u0006\u0010h\u001a\u00020\u00182\u0006\u0010i\u001a\u00020\u0018H\u0002¢\u0006\u0004\bj\u0010kJ\u0017\u0010l\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bl\u0010^J\u001f\u0010o\u001a\u00020\u000f2\u0006\u0010n\u001a\u00020m2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bq\u0010^J\u001f\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u00020\u000fH\u0002¢\u0006\u0004\bu\u0010\u0011J\u000f\u0010v\u001a\u00020\u000fH\u0002¢\u0006\u0004\bv\u0010\u0011J\u000f\u0010w\u001a\u00020\u000fH\u0002¢\u0006\u0004\bw\u0010\u0011J\u000f\u0010x\u001a\u00020\u000fH\u0002¢\u0006\u0004\bx\u0010\u0011J\u0017\u0010z\u001a\u00020\u000f2\u0006\u0010y\u001a\u00020\u0018H\u0002¢\u0006\u0004\bz\u0010{J\u0017\u0010|\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020HH\u0002¢\u0006\u0004\b|\u0010bJ\u0017\u0010~\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0004\b~\u0010XJ\u000f\u0010\u007f\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u007f\u0010\u0011J\u0019\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0080\u0001\u0010XJ\u0019\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0081\u0001\u0010XJ\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0082\u0001\u0010XJ\u001c\u0010\u0085\u0001\u001a\u00020\u000f2\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0002¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u001c\u0010\u0088\u0001\u001a\u00020\u000f2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0005\b\u0088\u0001\u0010@J\u0019\u0010\u0089\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0089\u0001\u0010XJ\u0019\u0010\u008a\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u008a\u0001\u0010XJ\u0019\u0010\u008b\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u008b\u0001\u0010XJ\u0011\u0010\u008c\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0005\b\u008c\u0001\u0010\u0011J\u001a\u0010\u008e\u0001\u001a\u00020\u000f2\u0007\u0010\u008d\u0001\u001a\u00020\u0018H\u0002¢\u0006\u0005\b\u008e\u0001\u0010{J\u0019\u0010\u008f\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u008f\u0001\u0010XJ\u0019\u0010\u0090\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0090\u0001\u0010XR\u0017\u0010\u0093\u0001\u001a\u00020\u001a8\u0002X\u0082D¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0018\u0010\u0097\u0001\u001a\u00030\u0094\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001c\u0010£\u0001\u001a\u0005\u0018\u00010 \u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001b\u0010ª\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010´\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u0092\u0001R\u0018\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010\u0092\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R\u001c\u0010À\u0001\u001a\u0005\u0018\u00010½\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u001c\u0010Ä\u0001\u001a\u0005\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010Å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R#\u0010Î\u0001\u001a\u0005\u0018\u00010É\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÊ\u0001\u0010Ë\u0001\u001a\u0006\bÌ\u0001\u0010Í\u0001R\u001c\u0010Ò\u0001\u001a\u0005\u0018\u00010Ï\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010Ñ\u0001R\u001c\u0010Ö\u0001\u001a\u0005\u0018\u00010Ó\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u0018\u0010Ø\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bV\u0010×\u0001R\u0019\u0010Ú\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010×\u0001R\u0019\u0010Ü\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010×\u0001R\u0018\u0010Ý\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b[\u0010×\u0001R\u0019\u0010Þ\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010×\u0001R\u0018\u0010à\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bo\u0010ß\u0001R\u0015\u0010á\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010vR\u0016\u0010â\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010vR\u0016\u0010ä\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bã\u0001\u0010vR\u0016\u0010æ\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bå\u0001\u0010vR\u0016\u0010ç\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010vR\u0016\u0010è\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010vR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0092\u0001R\u0017\u0010ë\u0001\u001a\u00030é\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bv\u0010ê\u0001R\u0019\u0010ì\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0001\u0010ß\u0001R\u0018\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010×\u0001R\u0018\u0010î\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bw\u0010×\u0001R\u0019\u0010ð\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0001\u0010×\u0001R\u0016\u0010ñ\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010vR\u0018\u0010 \u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010×\u0001R\u001b\u0010ô\u0001\u001a\u0005\u0018\u00010ò\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b|\u0010ó\u0001R\u0018\u0010ø\u0001\u001a\u00030õ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bö\u0001\u0010÷\u0001R!\u0010ý\u0001\u001a\u00030ù\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bú\u0001\u0010Ë\u0001\u001a\u0006\bû\u0001\u0010ü\u0001R\u001f\u0010\u0080\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0þ\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b~\u0010ÿ\u0001¨\u0006\u0082\u0002²\u0006\u000e\u0010\u009b\u0001\u001a\u00030\u0098\u00018\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u009f\u0001\u001a\u00030\u009c\u00018\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0081\u0002\u001a\u00030 \u00018\nX\u008a\u0084\u0002"}, d2 = {"Lcom/transsion/postdetail/ui/view/ImmVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/f;", "Landroid/view/View$OnClickListener;", "Landroidx/lifecycle/r;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "Landroidx/fragment/app/Fragment;", "fragment", RequestParameters.POSITION, "", "videoLoadMore", "", "basePostId", "baseItemType", "attachToMain", "commentId", "pageFrom", "isFromDownloaded", "setData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V", "Lcom/transsion/player/orplayer/g;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "setPlayer", "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "pagerLayoutManager", "setPagerLayoutManager", "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V", "Landroid/widget/FrameLayout;", "getPlayerContainer", "()Landroid/widget/FrameLayout;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "onPlayerReset", "Lao/e;", "mediaSource", "onPlayerRelease", "(Lao/e;)V", "app2Background", "videoStartPrepare", "(Ljava/lang/String;)V", "url", "setVideoUrl", "onSetDataSource", "onRenderFirstFrame", "onVideoStart", "onPrepare", "onVideoPause", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLao/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onLoopingStart", "onCompletion", "setOnSeekCompleteListener", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "showCommentDialog", NativeComponentConstants.KEY_COMPONENT_TYPE, "y", "B", "p0", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "i0", "comment", "e0", "(J)V", "share", "l0", "o0", "setBottomSubjectModuleData", "setBottomRoomModuleData", "isShowSubject", "isShowRoom", "setBottomSubjectAndRoomVisibility", "(ZZ)V", "f0", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "hotComment", "A", "(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "W", "moduleName", "X", "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "m0", "I", "L", "U", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setLoading", "(Z)V", "P", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "S", "j0", "O", "N", "T", "Lcom/transsion/baselib/db/download/DownloadBean;", "download", "Y", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "id", "z", "F", "H", "G", "C", "visible", "setContentVisibility", "c0", "d0", "a", "Ljava/lang/String;", "TAG", "Lso/y;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lso/y;", "viewBinding", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "c", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "videoDetailModel", "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", "shortTvPlayListViewModel", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "e", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "mCommentViewModel", "Lcom/transsion/share/share/ShareDialogFragment;", "f", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "g", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "data", "h", "Landroidx/fragment/app/Fragment;", "i", "Ljava/lang/Boolean;", "j", "Ljava/lang/Integer;", "getPosition", "()Ljava/lang/Integer;", "setPosition", "(Ljava/lang/Integer;)V", CampaignEx.JSON_KEY_AD_K, "l", "m", "Lcom/transsion/player/orplayer/g;", "n", "Lcom/transsion/player/ui/ORPlayerView;", "o", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "Lcom/transsion/room/api/IAudioApi;", TtmlNode.TAG_P, "Lcom/transsion/room/api/IAudioApi;", "audioApi", "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", "guideView", "Landroid/view/GestureDetector;", CampaignEx.JSON_KEY_AD_R, "Landroid/view/GestureDetector;", "gestureDetector", "Lcom/transsnet/loginapi/ILoginApi;", "s", "Lkotlin/Lazy;", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Lcom/transsion/postdetail/layer/b;", "t", "Lcom/transsion/postdetail/layer/b;", "dotLayer", "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;", "commentDialog", "Z", "isClickPause", "w", "isHorizontalDragging", "x", "isPageHide", "isShowHotComment", "isFavoriteShow", "J", "currentSaveProgress", "resImgLargeWidth", "resImgLargeHeight", "D", "resImgSmallWidth", "E", "resImgSmallHeight", "screenHeight", "dp170", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isSeekToFinish", "nextSeekTo", "K", "isPageRelease", "M", "isLongPressTriggered", "screenWidth", "Landroid/animation/ObjectAnimator;", "Landroid/animation/ObjectAnimator;", "rotateAnimator", "com/transsion/postdetail/ui/view/ImmVideoItemView$b", "Q", "Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;", "downloadListener", "Lcom/transsnet/downloader/manager/g;", "R", "getDownloadManager", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Landroidx/lifecycle/c0;", "Landroidx/lifecycle/c0;", "favoriteResultObserver", "commentViewModel", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ImmVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.f, View.OnClickListener, androidx.p009lifecycle.r {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private long currentSaveProgress;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private final int resImgLargeWidth;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private final int resImgLargeHeight;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private final int resImgSmallWidth;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private final int resImgSmallHeight;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final int screenHeight;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int dp170;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private String pageFrom;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final AtomicBoolean isSeekToFinish;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private long nextSeekTo;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private boolean attachToMain;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private boolean isPageRelease;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private boolean isLongPressTriggered;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private final int screenWidth;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private boolean isFromDownloaded;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private ObjectAnimator rotateAnimator;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private final b downloadListener;

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private final Lazy downloadManager;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 favoriteResultObserver;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final so.y viewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private PostDetailViewModel videoDetailModel;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ShortTvPlayListViewModel shortTvPlayListViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private CommentViewModel mCommentViewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private ShareDialogFragment mShareDialog;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private PostSubjectItem data;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Fragment fragment;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Boolean videoLoadMore;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Integer position;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String basePostId;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String commentId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g orPlayer;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager pagerLayoutManager;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private IAudioApi audioApi;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private ImmVideoGuideView guideView;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private GestureDetector gestureDetector;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private com.transsion.postdetail.layer.b dotLayer;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private ImmVideoCommentDialog commentDialog;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean isClickPause;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean isHorizontalDragging;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean isPageHide;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private boolean isShowHotComment;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private boolean isFavoriteShow;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f49920a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f49920a = iArr;
        }
    }

    public static final class b implements lj.m0 {
        b() {
        }

        private final void i(DownloadBean downloadBean) {
            String postId = downloadBean.getPostId();
            PostSubjectItem postSubjectItem = ImmVideoItemView.this.data;
            if (!Intrinsics.c(postId, postSubjectItem != null ? postSubjectItem.getPostId() : null)) {
                String resourceId = downloadBean.getResourceId();
                PostSubjectItem postSubjectItem2 = ImmVideoItemView.this.data;
                if (!Intrinsics.c(resourceId, postSubjectItem2 != null ? postSubjectItem2.getPostId() : null)) {
                    return;
                }
            }
            final ImmVideoItemView immVideoItemView = ImmVideoItemView.this;
            immVideoItemView.post(new Runnable() { // from class: com.transsion.postdetail.ui.view.r
                @Override // java.lang.Runnable
                public final void run() {
                    ImmVideoItemView.b.j(immVideoItemView);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void j(ImmVideoItemView immVideoItemView) {
            immVideoItemView.j0();
        }

        @Override // lj.m0
        public void a(DownloadBean bean, DownloadException downloadException) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override // lj.m0
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override // lj.m0
        public void c(DownloadBean bean, long j11, long j12) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override // lj.m0
        public void d(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override // lj.m0
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override // lj.m0
        public void f(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override // lj.m0
        public void g(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }
    }

    public static final class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            return super.onDoubleTap(e11);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            super.onLongPress(e11);
            int i11 = ImmVideoItemView.this.screenWidth / 3;
            int x10 = (int) e11.getX();
            ImmVideoItemView.this.isLongPressTriggered = true;
            if (x10 >= 0 && x10 <= i11) {
                lg.a.C0828a.f(lg.a.f68839a, ImmVideoItemView.this.TAG, "左边长按，clickX=" + x10 + ", cut=" + i11, false, 4, null);
                return;
            }
            if (x10 > i11 * 2) {
                lg.a.C0828a.f(lg.a.f68839a, ImmVideoItemView.this.TAG, "右边长按，clickX=" + x10 + ", cut=" + i11, false, 4, null);
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, ImmVideoItemView.this.TAG, "中间长按，clickX=" + x10 + ", cut=" + i11, false, 4, null);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            ImmVideoItemView.this.U();
            return super.onSingleTapUp(e11);
        }
    }

    public static final class d implements com.transsion.baseui.widget.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f49923a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f49924b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f49925c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f49926d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f49927e = com.blankj.utilcode.util.a0.a(1.5f);

        d() {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void a() {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void b(float f11, float f12) {
            int i11 = 0;
            if (!ImmVideoItemView.this.isHorizontalDragging) {
                PagerLayoutManager pagerLayoutManager = ImmVideoItemView.this.pagerLayoutManager;
                if (pagerLayoutManager != null) {
                    pagerLayoutManager.W(false);
                }
                this.f49923a = ImmVideoItemView.this.viewBinding.f75782u.getProgress();
                ImmVideoItemView.this.setContentVisibility(false);
                AppCompatTextView tvProgressDes = ImmVideoItemView.this.viewBinding.D;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                jg.c.k(tvProgressDes);
                AppCompatSeekBar seekBar = ImmVideoItemView.this.viewBinding.f75784w;
                Intrinsics.g(seekBar, "seekBar");
                jg.c.k(seekBar);
                ProgressBar progressBar = ImmVideoItemView.this.viewBinding.f75782u;
                Intrinsics.g(progressBar, "progressBar");
                jg.c.g(progressBar);
                this.f49925c = ImmVideoItemView.this.viewBinding.f75782u.getWidth();
                int max = ImmVideoItemView.this.viewBinding.f75782u.getMax();
                this.f49924b = max;
                this.f49926d = com.transsion.postdetail.util.n.c(max);
            }
            ImmVideoItemView.this.isHorizontalDragging = true;
            float f13 = f12 - f11;
            int i12 = this.f49924b;
            int i13 = (int) (this.f49923a + ((f13 * i12) / this.f49925c));
            if (i13 >= 0) {
                i11 = i13 > i12 ? i12 : i13;
            }
            ImmVideoItemView.this.viewBinding.D.setText(com.transsion.postdetail.util.n.c(i11) + " / " + this.f49926d);
            ImmVideoItemView.this.viewBinding.f75782u.setProgress(i11);
            ImmVideoItemView.this.viewBinding.f75784w.setProgress(i11);
        }

        @Override // com.transsion.baseui.widget.f.a
        public void c(float f11, float f12) {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void d(float f11, float f12) {
        }

        @Override // com.transsion.baseui.widget.f.a
        public void e() {
            com.transsion.player.orplayer.g gVar;
            PagerLayoutManager pagerLayoutManager = ImmVideoItemView.this.pagerLayoutManager;
            if (pagerLayoutManager != null) {
                pagerLayoutManager.W(true);
            }
            if (ImmVideoItemView.this.isHorizontalDragging) {
                ImmVideoItemView.this.isHorizontalDragging = false;
                ImmVideoItemView.this.setContentVisibility(true);
                AppCompatTextView tvProgressDes = ImmVideoItemView.this.viewBinding.D;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                jg.c.g(tvProgressDes);
                AppCompatSeekBar seekBar = ImmVideoItemView.this.viewBinding.f75784w;
                Intrinsics.g(seekBar, "seekBar");
                jg.c.g(seekBar);
                ProgressBar progressBar = ImmVideoItemView.this.viewBinding.f75782u;
                Intrinsics.g(progressBar, "progressBar");
                jg.c.k(progressBar);
                long progress = ImmVideoItemView.this.viewBinding.f75782u.getProgress();
                ImmVideoItemView immVideoItemView = ImmVideoItemView.this;
                if (immVideoItemView.isSeekToFinish.compareAndSet(true, false)) {
                    com.transsion.player.orplayer.g gVar2 = ImmVideoItemView.this.orPlayer;
                    if (gVar2 != null) {
                        gVar2.seekTo(progress);
                    }
                    progress = 0;
                }
                immVideoItemView.nextSeekTo = progress;
                com.transsion.player.orplayer.g gVar3 = ImmVideoItemView.this.orPlayer;
                if (gVar3 == null || gVar3.isPlaying() || (gVar = ImmVideoItemView.this.orPlayer) == null) {
                    return;
                }
                gVar.play();
            }
        }

        @Override // com.transsion.baseui.widget.f.a
        public void onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }

        @Override // com.transsion.baseui.widget.f.a
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
        }
    }

    public static final class e implements com.transsion.share.share.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f49929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImmVideoItemView f49930b;

        public static final class a implements PostConfirmDialog.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImmVideoItemView f49931a;

            a(ImmVideoItemView immVideoItemView) {
                this.f49931a = immVideoItemView;
            }

            @Override // com.transsion.postdetail.ui.dialog.PostConfirmDialog.a
            public void a() {
                String postId;
                PostDetailViewModel postDetailViewModel;
                PostSubjectItem postSubjectItem = this.f49931a.data;
                if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null || (postDetailViewModel = this.f49931a.videoDetailModel) == null) {
                    return;
                }
                postDetailViewModel.r(postId);
            }
        }

        e(View view, ImmVideoItemView immVideoItemView) {
            this.f49929a = view;
            this.f49930b = immVideoItemView;
        }

        @Override // com.transsion.share.share.a
        public void a(String id2, PostType postType) {
            Fragment fragment;
            FragmentManager childFragmentManager;
            Intrinsics.h(id2, "id");
            PostConfirmDialog postConfirmDialog = new PostConfirmDialog();
            postConfirmDialog.r0(new a(this.f49930b));
            Fragment fragment2 = this.f49930b.fragment;
            if (fragment2 == null || !fragment2.isAdded() || (fragment = this.f49930b.fragment) == null || (childFragmentManager = fragment.getChildFragmentManager()) == null) {
                return;
            }
            childFragmentManager.g0();
            if (postConfirmDialog.isAdded() || childFragmentManager.k0("PostConfirmDialog") != null) {
                return;
            }
            postConfirmDialog.show(childFragmentManager, "PostConfirmDialog");
        }

        @Override // com.transsion.share.share.a
        public void b(String str) {
            this.f49930b.z(str);
        }

        @Override // com.transsion.share.share.a
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Subject subject;
            ResourceDetectors resourceDetector;
            String resourceLink;
            Media media;
            Cover cover;
            Integer size;
            Media media2;
            Cover cover2;
            String url2;
            String url3;
            String url4;
            Media media3;
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
            if (com.transsion.baseui.util.c.f43504a.a(this.f49929a.getId(), 500L)) {
                return;
            }
            PostSubjectItem postSubjectItem = this.f49930b.data;
            Video videoA = com.transsion.postdetail.util.u.a((postSubjectItem == null || (media3 = postSubjectItem.getMedia()) == null) ? null : media3.getVideo());
            PostSubjectItem postSubjectItem2 = this.f49930b.data;
            String title = postSubjectItem2 != null ? postSubjectItem2.getTitle() : null;
            if (TextUtils.isEmpty(title)) {
                PostSubjectItem postSubjectItem3 = this.f49930b.data;
                title = postSubjectItem3 != null ? postSubjectItem3.getContent() : null;
            }
            String str = title;
            String str2 = (videoA == null || (url4 = videoA.getUrl()) == null) ? "" : url4;
            String str3 = (videoA == null || (url3 = videoA.getUrl()) == null) ? "" : url3;
            PostSubjectItem postSubjectItem4 = this.f49930b.data;
            String str4 = (postSubjectItem4 == null || (media2 = postSubjectItem4.getMedia()) == null || (cover2 = media2.getCover()) == null || (url2 = cover2.getUrl()) == null) ? "" : url2;
            Long lValueOf = (videoA == null || (size = videoA.getSize()) == null) ? null : Long.valueOf(size.intValue());
            PostSubjectItem postSubjectItem5 = this.f49930b.data;
            String postId = postSubjectItem5 != null ? postSubjectItem5.getPostId() : null;
            PostSubjectItem postSubjectItem6 = this.f49930b.data;
            DownloadBean downloadBean = new DownloadBean(str2, str3, str, str4, lValueOf, postSubjectItem6 != null ? postSubjectItem6.getPostId() : null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, postId, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -134217792, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            PostSubjectItem postSubjectItem7 = this.f49930b.data;
            downloadBean.setThumbnail((postSubjectItem7 == null || (media = postSubjectItem7.getMedia()) == null || (cover = media.getCover()) == null) ? null : cover.getThumbnail());
            PostSubjectItem postSubjectItem8 = this.f49930b.data;
            if (postSubjectItem8 == null || !postSubjectItem8.getBuiltIn()) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context = this.f49930b.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                PostSubjectItem postSubjectItem9 = this.f49930b.data;
                String ops = postSubjectItem9 != null ? postSubjectItem9.getOps() : null;
                PostSubjectItem postSubjectItem10 = this.f49930b.data;
                downloadManagerApiA.O(fragmentActivity, downloadBean, VideoFragment.PAGE_NAME, ops, (postSubjectItem10 == null || (subject = postSubjectItem10.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink, (64 & 32) != 0 ? null : null, (64 & 64) != 0 ? null : null);
            } else {
                this.f49930b.Y(downloadBean);
            }
            com.transsion.postdetail.helper.a.f48866a.i(this.f49930b.data, VideoFragment.PAGE_NAME, this.f49930b.pageFrom);
        }

        @Override // com.transsion.share.share.a
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override // com.transsion.share.share.a
        public void e(String str) {
            com.transsion.share.share.a.C0656a.c(this, str);
        }
    }

    public static final class f implements CommentFragment.b {
        f() {
        }

        @Override // com.transsion.postdetail.ui.fragment.CommentFragment.b
        public void a(long j11) {
            Stat stat;
            PostSubjectItem postSubjectItem = ImmVideoItemView.this.data;
            if (postSubjectItem != null && (stat = postSubjectItem.getStat()) != null) {
                stat.setCommentCount(Long.valueOf(j11));
            }
            ImmVideoItemView.this.e0(j11);
        }
    }

    public static final class g implements ExpandView.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f49933a;

        g(Ref.BooleanRef booleanRef) {
            this.f49933a = booleanRef;
        }

        @Override // com.tn.lib.view.expand.ExpandView.c
        public void a(ExpandView expandView) {
            this.f49933a.element = true;
        }

        @Override // com.tn.lib.view.expand.ExpandView.c
        public void b(ExpandView expandView) {
            this.f49933a.element = false;
        }
    }

    public static final class h implements com.transsion.baseui.util.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f49934a;

        h(Ref.ObjectRef objectRef) {
            this.f49934a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.transsion.baseui.util.g
        public void a(List list) {
            Intrinsics.h(list, "list");
            this.f49934a.element = list;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmVideoItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "ImmVideoPlayer";
        this.commentId = "";
        this.loginApi = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.view.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ImmVideoItemView.E();
            }
        });
        this.screenHeight = com.blankj.utilcode.util.y.c();
        this.dp170 = com.blankj.utilcode.util.a0.a(170.0f);
        this.isSeekToFinish = new AtomicBoolean(true);
        this.attachToMain = true;
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.downloadListener = new b();
        this.downloadManager = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.view.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ImmVideoItemView.w();
            }
        });
        this.favoriteResultObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.postdetail.ui.view.j
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                ImmVideoItemView.x(this.f50079a, (String) obj);
            }
        };
        View.inflate(getContext(), R$layout.layout_immersion_video_item_view, this);
        so.y yVarA = so.y.a(this);
        Intrinsics.g(yVarA, "bind(...)");
        this.viewBinding = yVarA;
        yVarA.C.setOnClickListener(this);
        yVarA.f75785x.setOnClickListener(this);
        yVarA.E.setOnClickListener(this);
        yVarA.f75776o.setOnClickListener(this);
        yVarA.f75778q.setOnClickListener(this);
        yVarA.f75779r.f75497b.setOnClickListener(this);
        yVarA.f75779r.f75501f.setOnClickListener(this);
        yVarA.F.setOnClickListener(this);
        yVarA.f75771j.setOnClickListener(this);
        yVarA.f75777p.setOnClickListener(this);
        yVarA.G.setOnClickListener(this);
        yVarA.f75765d.setOnClickListener(this);
        this.resImgLargeWidth = com.blankj.utilcode.util.a0.a(48.0f);
        this.resImgLargeHeight = com.blankj.utilcode.util.a0.a(64.0f);
        this.resImgSmallWidth = com.blankj.utilcode.util.a0.a(24.0f);
        this.resImgSmallHeight = com.blankj.utilcode.util.a0.a(32.0f);
        B(context);
        if (ImmVideoHelper.f48840h.a().h() > 0) {
            ViewGroup.LayoutParams layoutParams = yVarA.f75783v.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            if (((ViewGroup.MarginLayoutParams) bVar).bottomMargin < com.blankj.utilcode.util.a0.a(35.0f)) {
                ((ViewGroup.MarginLayoutParams) bVar).bottomMargin += com.blankj.utilcode.util.a0.a(10.0f);
                yVarA.f75783v.setLayoutParams(bVar);
            }
        }
    }

    private final void A(CommentBean hotComment, PostSubjectItem item) {
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.base_net_err);
            return;
        }
        Boolean likeStatu = hotComment.getLikeStatu();
        Boolean bool = Boolean.TRUE;
        boolean zC = Intrinsics.c(likeStatu, bool);
        AppCompatImageView appCompatImageView = this.viewBinding.f75774m;
        if (appCompatImageView != null) {
            if (appCompatImageView.isEnabled()) {
                appCompatImageView.setEnabled(false);
                hotComment.setLikeStatu(Boolean.FALSE);
                if (hotComment.getLikeCnt() > 0) {
                    hotComment.setLikeCnt(hotComment.getLikeCnt() - 1);
                }
            } else {
                appCompatImageView.setEnabled(true);
                hotComment.setLikeStatu(bool);
                hotComment.setLikeCnt(hotComment.getLikeCnt() + 1);
            }
        }
        this.viewBinding.B.setText(hotComment.getLikeCnt() == 0 ? "" : com.transsion.baseui.util.j.a(hotComment.getLikeCnt()));
        String commentId = hotComment.getCommentId();
        if (commentId != null) {
            X(zC ? "dislike_hot_comment" : "like_hot_comment", item);
            CommentLikeBody commentLikeBody = new CommentLikeBody(commentId, Integer.valueOf(zC ? 1 : 0));
            CommentViewModel commentViewModel = this.mCommentViewModel;
            if (commentViewModel != null) {
                commentViewModel.q(commentLikeBody);
            }
            in.b bVar = new in.b(!zC, commentId, hotComment.getLikeCnt());
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = in.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
        }
    }

    private final void B(Context context) {
        this.gestureDetector = new GestureDetector(context, new c());
        L();
        I();
        C();
    }

    private final void C() {
        new com.transsion.baseui.widget.f(getContext(), this.viewBinding.J).s(new d());
        this.viewBinding.f75784w.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.postdetail.ui.view.g
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ImmVideoItemView.D(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi E() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void F(View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        UserInfo userInfo = new UserInfo();
        PostSubjectItem postSubjectItem = this.data;
        User user = postSubjectItem != null ? postSubjectItem.getUser() : null;
        userInfo.setUserId(user != null ? user.getUserId() : null);
        userInfo.setNickname(user != null ? user.getNickname() : null);
        userInfo.setUsername(user != null ? user.getUsername() : null);
        userInfo.setAvatar(user != null ? user.getAvatar() : null);
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), getContext(), null, 2, null);
        com.transsion.postdetail.helper.a.f48866a.c(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    private final void G(View view) {
        Group group;
        Integer num;
        FragmentActivity fragmentActivityRequireActivity;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        String strC = hh.b.f64461b.a().c();
        IRoomApi iRoomApi = (IRoomApi) TheRouter.d(IRoomApi.class, new Object[0]);
        if (!TextUtils.equals(strC, iRoomApi != null ? iRoomApi.d() : null) || (num = this.position) == null || num.intValue() != 0) {
            Navigator navigatorC = TheRouter.c("/room/detail");
            PostSubjectItem postSubjectItem = this.data;
            Navigator.x(navigatorC.K("id", (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getGroupId()), getContext(), null, 2, null);
            com.transsion.postdetail.helper.a.f48866a.m(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
            return;
        }
        Fragment fragment = this.fragment;
        if (fragment == null || (fragmentActivityRequireActivity = fragment.requireActivity()) == null) {
            return;
        }
        fragmentActivityRequireActivity.finish();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ec  */
    private final void H(View view) {
        PostSubjectItem postSubjectItem;
        int value;
        PostSubjectItem postSubjectItem2;
        String subjectId;
        PostSubjectItem postSubjectItem3;
        String ops;
        Subject subject;
        Subject subject2;
        Integer subjectType;
        Subject subject3;
        Subject subject4;
        Integer num;
        FragmentActivity fragmentActivityRequireActivity;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        String strC = hh.b.f64461b.a().c();
        IMovieDetailService iMovieDetailService = (IMovieDetailService) TheRouter.d(IMovieDetailService.class, new Object[0]);
        if (TextUtils.equals(strC, iMovieDetailService != null ? iMovieDetailService.d() : null) && (num = this.position) != null && num.intValue() == 0) {
            Fragment fragment = this.fragment;
            if (fragment == null || (fragmentActivityRequireActivity = fragment.requireActivity()) == null) {
                return;
            }
            fragmentActivityRequireActivity.finish();
            return;
        }
        PostSubjectItem postSubjectItem4 = this.data;
        if (postSubjectItem4 == null || (subject3 = postSubjectItem4.getSubject()) == null) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            postSubjectItem = this.data;
            if (postSubjectItem != null || (subject2 = postSubjectItem.getSubject()) == null || (subjectType = subject2.getSubjectType()) == null) {
                value = SubjectType.MOVIE.getValue();
            } else {
                value = subjectType.intValue();
            }
            Navigator navigatorF = navigatorC.F("subject_type", value);
            postSubjectItem2 = this.data;
            if (postSubjectItem2 != null || (subject = postSubjectItem2.getSubject()) == null) {
                subjectId = null;
            } else {
                subjectId = subject.getSubjectId();
            }
            Navigator navigatorK = navigatorF.K("id", subjectId);
            postSubjectItem3 = this.data;
            if (postSubjectItem3 != null) {
                ops = postSubjectItem3.getOps();
            } else {
                ops = null;
            }
            Navigator.x(navigatorK.K("ops", ops), getContext(), null, 2, null);
        } else {
            Integer subjectType2 = subject3.getSubjectType();
            int value2 = SubjectType.SHORT_TV.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                PostSubjectItem postSubjectItem5 = this.data;
                String ops2 = (postSubjectItem5 == null || (subject4 = postSubjectItem5.getSubject()) == null) ? null : subject4.getOps();
                PostSubjectItem postSubjectItem6 = this.data;
                downloadManagerApiA.d0(fragmentActivity, VideoFragment.PAGE_NAME, (384 & 4) != 0 ? "" : "", ops2, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : postSubjectItem6 != null ? postSubjectItem6.getSubject() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
            } else {
                Navigator navigatorC2 = TheRouter.c("/movie/detail");
                postSubjectItem = this.data;
                if (postSubjectItem != null) {
                    value = SubjectType.MOVIE.getValue();
                } else {
                    value = SubjectType.MOVIE.getValue();
                }
                Navigator navigatorF2 = navigatorC2.F("subject_type", value);
                postSubjectItem2 = this.data;
                if (postSubjectItem2 != null) {
                    subjectId = null;
                } else {
                    subjectId = null;
                }
                Navigator navigatorK2 = navigatorF2.K("id", subjectId);
                postSubjectItem3 = this.data;
                if (postSubjectItem3 != null) {
                    ops = postSubjectItem3.getOps();
                } else {
                    ops = null;
                }
                Navigator.x(navigatorK2.K("ops", ops), getContext(), null, 2, null);
            }
        }
        com.transsion.postdetail.helper.a.f48866a.C(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    private final void I() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        AppCompatActivity appCompatActivity = (AppCompatActivity) context;
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.view.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmVideoItemView.J(this.f50073a, (AddToDownloadEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(appCompatActivity, name, state, kotlinx.coroutines.y0.c().q(), false, function1);
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function2 = new Function1() { // from class: com.transsion.postdetail.ui.view.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmVideoItemView.K(this.f50075a, (uy.c) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = uy.c.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent((AppCompatActivity) context2, name2, state, kotlinx.coroutines.y0.c().q(), false, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J(ImmVideoItemView immVideoItemView, AddToDownloadEvent value) {
        Subject subject;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = immVideoItemView.data;
            if (!TextUtils.equals(subjectId, (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) ? null : subject.getSubjectId())) {
                return Unit.f67061a;
            }
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(ImmVideoItemView immVideoItemView, uy.c value) {
        Subject subject;
        ShortTVFavInfo shortTVFavInfo;
        Subject subject2;
        Intrinsics.h(value, "value");
        try {
            String strC = value.c();
            PostSubjectItem postSubjectItem = immVideoItemView.data;
            if (!TextUtils.equals(strC, (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId())) {
                return Unit.f67061a;
            }
            PostSubjectItem postSubjectItem2 = immVideoItemView.data;
            if (postSubjectItem2 != null && (subject = postSubjectItem2.getSubject()) != null && (shortTVFavInfo = subject.getShortTVFavInfo()) != null) {
                shortTVFavInfo.setFavoriteNum(value.b());
                shortTVFavInfo.setHasFavorite(value.a());
            }
            immVideoItemView.viewBinding.f75786y.setSelected(value.a());
            AppCompatTextView appCompatTextView = immVideoItemView.viewBinding.f75786y;
            String strB = value.b();
            appCompatTextView.setText(com.transsion.baseui.util.j.a(strB != null ? Long.parseLong(strB) : 0L));
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    private final void L() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.view.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmVideoItemView.M(this.f50076a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(ImmVideoItemView immVideoItemView, LikeEvent value) {
        Stat stat;
        Stat stat2;
        Long likeCount;
        Stat stat3;
        Stat stat4;
        Long likeCount2;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = immVideoItemView.data;
            if (!TextUtils.equals(subjectId, postSubjectItem != null ? postSubjectItem.getPostId() : null)) {
                return Unit.f67061a;
            }
            PostSubjectItem postSubjectItem2 = immVideoItemView.data;
            if (postSubjectItem2 != null) {
                postSubjectItem2.setHasLike(Boolean.valueOf(value.getLike()));
            }
            if (value.getLike()) {
                PostSubjectItem postSubjectItem3 = immVideoItemView.data;
                if (postSubjectItem3 != null && (stat3 = postSubjectItem3.getStat()) != null) {
                    PostSubjectItem postSubjectItem4 = immVideoItemView.data;
                    stat3.setLikeCount((postSubjectItem4 == null || (stat4 = postSubjectItem4.getStat()) == null || (likeCount2 = stat4.getLikeCount()) == null) ? null : Long.valueOf(likeCount2.longValue() + 1));
                }
            } else {
                PostSubjectItem postSubjectItem5 = immVideoItemView.data;
                if (postSubjectItem5 != null && (stat = postSubjectItem5.getStat()) != null) {
                    PostSubjectItem postSubjectItem6 = immVideoItemView.data;
                    stat.setLikeCount((postSubjectItem6 == null || (stat2 = postSubjectItem6.getStat()) == null || (likeCount = stat2.getLikeCount()) == null) ? null : Long.valueOf(likeCount.longValue() - 1));
                }
            }
            PostSubjectItem postSubjectItem7 = immVideoItemView.data;
            if (postSubjectItem7 != null) {
                immVideoItemView.i0(postSubjectItem7);
            }
            return Unit.f67061a;
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
    }

    private final void N(View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        showCommentDialog();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.transsion.postdetail.viewmodel.PostDetailViewModel] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void O(View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_tips);
            return;
        }
        PostSubjectItem postSubjectItem = this.data;
        ?? C = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : 0;
        ?? r11 = this.videoDetailModel;
        if (r11 != 0) {
            PostSubjectItem postSubjectItem2 = this.data;
            r11.G(postSubjectItem2 != null ? postSubjectItem2.getPostId() : null, C);
        }
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f48866a;
        PostSubjectItem postSubjectItem3 = this.data;
        aVar.p(postSubjectItem3, postSubjectItem3 != null ? Intrinsics.c(postSubjectItem3.getHasLike(), Boolean.TRUE) : false, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    private final void P(long progress) {
        Boolean bool = this.videoLoadMore;
        Boolean bool2 = Boolean.TRUE;
        if (Intrinsics.c(bool, bool2)) {
            ImmVideoHelper.a aVar = ImmVideoHelper.f48840h;
            if (aVar.a().n() && progress >= 1000) {
                aVar.a().t();
                ImmVideoGuideView immVideoGuideViewA = ImmVideoGuideView.INSTANCE.a(this);
                immVideoGuideViewA.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.view.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmVideoItemView.Q(this.f50104a);
                    }
                }, 5000L);
                this.guideView = immVideoGuideViewA;
                return;
            }
        }
        if (Intrinsics.c(this.videoLoadMore, bool2) && Intrinsics.c(this.pageFrom, "Trending")) {
            ImmVideoHelper.a aVar2 = ImmVideoHelper.f48840h;
            if (!aVar2.a().o() || progress < 1000) {
                return;
            }
            aVar2.a().u();
            ImmVideoGuideView immVideoGuideViewA2 = ImmVideoGuideView.INSTANCE.a(this);
            immVideoGuideViewA2.postDelayed(new Runnable() { // from class: com.transsion.postdetail.ui.view.q
                @Override // java.lang.Runnable
                public final void run() {
                    ImmVideoItemView.R(this.f50107a);
                }
            }, 5000L);
            this.guideView = immVideoGuideViewA2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(ImmVideoItemView immVideoItemView) {
        ImmVideoGuideView immVideoGuideView = immVideoItemView.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(ImmVideoItemView immVideoItemView) {
        ImmVideoGuideView immVideoGuideView = immVideoItemView.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
    }

    private final void S(View view) {
        PostSubjectItem postSubjectItem;
        DownloadBean downloadBeanG;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L) || (postSubjectItem = this.data) == null || (downloadBeanG = DownloadUtil.f59900a.G(postSubjectItem)) == null) {
            return;
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f59419m.a();
        String resourceId = downloadBeanG.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ == null || downloadBeanQ.getStatus() != 5) {
            com.transsion.baseui.util.m.c(R$string.shorts_click_download);
            com.transsion.postdetail.helper.a.f48866a.i(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
            getDownloadManager().p(downloadBeanG);
            j0();
        }
    }

    private final void T(View view) {
        Fragment fragment;
        FragmentManager childFragmentManager;
        ShareDialogFragment shareDialogFragment;
        Integer subjectRate;
        User user;
        User user2;
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 500L)) {
            return;
        }
        com.transsion.postdetail.helper.a.f48866a.A(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
        if (this.mShareDialog == null) {
            ILoginApi loginApi = getLoginApi();
            UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
            PostSubjectItem postSubjectItem = this.data;
            boolean zEquals = TextUtils.equals((postSubjectItem == null || (user2 = postSubjectItem.getUser()) == null) ? null : user2.getUserId(), userInfoI != null ? userInfoI.getUserId() : null);
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.POST_TYPE;
            PostSubjectItem postSubjectItem2 = this.data;
            String postId = postSubjectItem2 != null ? postSubjectItem2.getPostId() : null;
            PostSubjectItem postSubjectItem3 = this.data;
            String userId = (postSubjectItem3 == null || (user = postSubjectItem3.getUser()) == null) ? null : user.getUserId();
            String value = ReportType.POST.getValue();
            PostSubjectItem postSubjectItem4 = this.data;
            String title = postSubjectItem4 != null ? postSubjectItem4.getTitle() : null;
            PostSubjectItem postSubjectItem5 = this.data;
            String string = (postSubjectItem5 == null || (subjectRate = postSubjectItem5.getSubjectRate()) == null) ? null : subjectRate.toString();
            PostSubjectItem postSubjectItem6 = this.data;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, postId, userId, value, title, string, false, zEquals, false, "postdetail", postSubjectItem6 != null ? postSubjectItem6.getOps() : null, view.getContext().getString(R$string.save_video));
            this.mShareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new e(view, this));
            }
        }
        try {
            Fragment fragment2 = this.fragment;
            if (fragment2 == null || !fragment2.isAdded() || (fragment = this.fragment) == null || (childFragmentManager = fragment.getChildFragmentManager()) == null) {
                return;
            }
            childFragmentManager.g0();
            ShareDialogFragment shareDialogFragment2 = this.mShareDialog;
            if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = this.mShareDialog) != null) {
                shareDialogFragment.show(childFragmentManager, "share");
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U() {
        ClipLoading clLoading = this.viewBinding.f75766e;
        Intrinsics.g(clLoading, "clLoading");
        if (clLoading.getVisibility() == 0) {
            return;
        }
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar == null || !gVar.isPlaying()) {
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.c();
            }
            com.transsion.player.orplayer.g gVar2 = this.orPlayer;
            if (gVar2 != null) {
                gVar2.play();
            }
            this.isClickPause = false;
            return;
        }
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.b();
        }
        com.transsion.player.orplayer.g gVar3 = this.orPlayer;
        if (gVar3 != null) {
            gVar3.pause();
        }
        this.isClickPause = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(ImmVideoItemView immVideoItemView) {
        com.transsion.player.orplayer.g gVar;
        Fragment fragment = immVideoItemView.fragment;
        if (fragment == null || !fragment.isVisible() || (gVar = immVideoItemView.orPlayer) == null) {
            return;
        }
        gVar.play();
    }

    private final void W(PostSubjectItem item) {
        String userId;
        String groupId;
        String subjectId;
        String string;
        String value;
        Integer subjectType;
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        Pair pairA = TuplesKt.a("post_id", postId);
        Pair pairA2 = TuplesKt.a(WebConstants.PAGE_FROM, this.pageFrom);
        Pair pairA3 = TuplesKt.a("module_name", "hot_comment");
        Pair pairA4 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
        User user = item.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA5 = TuplesKt.a("user_id", userId);
        Group group = item.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        Pair pairA6 = TuplesKt.a("group_id", groupId);
        Subject subject = item.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA7 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = item.getSubject();
        if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        Pair pairA8 = TuplesKt.a("subject_type", string);
        Pair pairA9 = TuplesKt.a("builtin", item.getBuiltIn() ? "1" : "0");
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        Pair pairA10 = TuplesKt.a("post_media_type", value);
        String ops = item.getOps();
        hj.i.f64505a.D(VideoFragment.PAGE_NAME, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, TuplesKt.a("ops", ops != null ? ops : "")));
    }

    private final void X(String moduleName, PostSubjectItem item) {
        String commentId;
        String value;
        String groupId;
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        CommentBean hotComment = item.getHotComment();
        String str = "";
        if (hotComment == null || (commentId = hotComment.getCommentId()) == null) {
            commentId = "";
        }
        map.put("comment_id", commentId);
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        Group group = item.getGroup();
        if (group != null && (groupId = group.getGroupId()) != null) {
            str = groupId;
        }
        map.put("group_id", str);
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        String str2 = this.pageFrom;
        if (str2 != null && str2.length() != 0) {
            String str3 = this.pageFrom;
            Intrinsics.e(str3);
            map.put(WebConstants.PAGE_FROM, str3);
        }
        com.transsion.baselib.helper.a.f43262a.i(VideoFragment.PAGE_NAME, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(DownloadBean download) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new ImmVideoItemView$saveBuiltInVideo$1(download, null), 3, null);
    }

    private static final PostDetailViewModel Z(Lazy lazy) {
        return (PostDetailViewModel) lazy.getValue();
    }

    private static final ShortTvPlayListViewModel a0(Lazy lazy) {
        return (ShortTvPlayListViewModel) lazy.getValue();
    }

    private static final CommentViewModel b0(Lazy lazy) {
        return (CommentViewModel) lazy.getValue();
    }

    private final void c0(View view) {
        ObjectAnimator objectAnimator = this.rotateAnimator;
        if (objectAnimator != null) {
            Intrinsics.e(objectAnimator);
            if (objectAnimator.isRunning()) {
                return;
            }
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "rotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.start();
        this.rotateAnimator = objectAnimatorOfFloat;
    }

    private final void d0(View view) {
        ObjectAnimator objectAnimator = this.rotateAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.rotateAnimator = null;
        view.setRotation(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0(long comment) {
        this.viewBinding.f75785x.setText(com.transsion.baseui.util.j.a(comment));
    }

    private final void f0(final PostSubjectItem item) {
        String url;
        Subject subject;
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                BLConstraintLayout clHotComment = this.viewBinding.f75765d;
                Intrinsics.g(clHotComment, "clHotComment");
                jg.c.g(clHotComment);
                return;
            }
        }
        final CommentBean hotComment = item.getHotComment();
        String content = hotComment != null ? hotComment.getContent() : null;
        if (content == null || content.length() == 0) {
            BLConstraintLayout clHotComment2 = this.viewBinding.f75765d;
            Intrinsics.g(clHotComment2, "clHotComment");
            jg.c.g(clHotComment2);
            NestedScrollableHost nsPostDes = this.viewBinding.f75781t;
            Intrinsics.g(nsPostDes, "nsPostDes");
            jg.c.k(nsPostDes);
            return;
        }
        W(item);
        BLConstraintLayout clHotComment3 = this.viewBinding.f75765d;
        Intrinsics.g(clHotComment3, "clHotComment");
        jg.c.k(clHotComment3);
        NestedScrollableHost nsPostDes2 = this.viewBinding.f75781t;
        Intrinsics.g(nsPostDes2, "nsPostDes");
        jg.c.g(nsPostDes2);
        this.viewBinding.f75787z.setText(content);
        String avatarUrl = hotComment.getAvatarUrl();
        String str = "";
        if (avatarUrl == null) {
            avatarUrl = "";
        }
        if (avatarUrl.length() > 0) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarC = aVar.m(context).g(avatarUrl).m(dk.a.b(20)).c(dk.a.b(20));
            ShapeableImageView ivHotCommentAvatar = this.viewBinding.f75772k;
            Intrinsics.g(ivHotCommentAvatar, "ivHotCommentAvatar");
            bVarC.d(ivHotCommentAvatar);
        }
        this.viewBinding.B.setText(hotComment.getLikeCnt() == 0 ? "" : com.transsion.baseui.util.j.a(hotComment.getLikeCnt()));
        this.viewBinding.f75774m.setEnabled(Intrinsics.c(hotComment.getLikeStatu(), Boolean.TRUE));
        List<Cover> imageList = hotComment.getImageList();
        if (imageList == null || imageList.isEmpty()) {
            ShapeableImageView commentCover = this.viewBinding.f75767f;
            Intrinsics.g(commentCover, "commentCover");
            jg.c.g(commentCover);
        } else {
            ShapeableImageView shapeableImageView = this.viewBinding.f75767f;
            shapeableImageView.setVisibility(0);
            ej.f.a aVar2 = ej.f.f61882a;
            Context context2 = shapeableImageView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            ej.f.b bVarM = aVar2.m(context2);
            List<Cover> imageList2 = hotComment.getImageList();
            Intrinsics.e(imageList2);
            Cover cover = imageList2.get(0);
            if (cover != null && (url = cover.getUrl()) != null) {
                str = url;
            }
            ej.f.b bVarG = bVarM.g(str);
            Intrinsics.e(shapeableImageView);
            bVarG.d(shapeableImageView);
            Intrinsics.e(shapeableImageView);
        }
        this.viewBinding.I.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmVideoItemView.g0(this.f50087a, hotComment, item, view);
            }
        });
        Context context3 = getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.postdetail.ui.view.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ImmVideoItemView.h0(hotComment, this, (in.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = in.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context3, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(ImmVideoItemView immVideoItemView, CommentBean commentBean, PostSubjectItem postSubjectItem, View view) {
        immVideoItemView.A(commentBean, postSubjectItem);
    }

    private final com.transsnet.downloader.manager.g getDownloadManager() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(CommentBean commentBean, ImmVideoItemView immVideoItemView, in.b value) {
        Intrinsics.h(value, "value");
        if (Intrinsics.c(value.a(), commentBean.getCommentId())) {
            commentBean.setLikeStatu(Boolean.valueOf(value.c()));
            commentBean.setLikeCnt(value.b());
            immVideoItemView.viewBinding.B.setText(value.b() == 0 ? "" : com.transsion.baseui.util.j.a(value.b()));
            immVideoItemView.viewBinding.f75774m.setEnabled(value.c());
        }
        return Unit.f67061a;
    }

    private final void i0(PostSubjectItem item) {
        Long likeCount;
        AppCompatTextView appCompatTextView = this.viewBinding.C;
        Boolean hasLike = item.getHasLike();
        appCompatTextView.setSelected(hasLike != null ? hasLike.booleanValue() : false);
        Stat stat = item.getStat();
        String strA = com.transsion.baseui.util.j.a((stat == null || (likeCount = stat.getLikeCount()) == null) ? 0L : likeCount.longValue());
        if (Intrinsics.c(strA, "0")) {
            strA = "";
        }
        appCompatTextView.setText(strA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0() {
        final String postId;
        AppCompatImageView appCompatImageView;
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null || (appCompatImageView = this.viewBinding.f75776o) == null) {
            return;
        }
        DownloadBean downloadBeanQ = DownloadEsHelper.f59419m.a().q(postId);
        if (downloadBeanQ == null) {
            d0(appCompatImageView);
            appCompatImageView.setImageResource(R$mipmap.post_detail_ic_video_download_new);
            appCompatImageView.setEnabled(true);
            appCompatImageView.setOnClickListener(this);
            return;
        }
        int status = downloadBeanQ.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            appCompatImageView.setImageResource(R$drawable.post_detail_ic_video_downloading);
            appCompatImageView.setEnabled(false);
            c0(appCompatImageView);
        } else {
            if (status != 5) {
                d0(appCompatImageView);
                appCompatImageView.setImageResource(R$mipmap.post_detail_ic_video_download_new);
                appCompatImageView.setEnabled(true);
                appCompatImageView.setOnClickListener(this);
                return;
            }
            d0(appCompatImageView);
            appCompatImageView.setImageResource(R$drawable.post_detail_ic_video_downloaded);
            appCompatImageView.setEnabled(true);
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ImmVideoItemView.k0(this.f50097a, postId, view);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(ImmVideoItemView immVideoItemView, String str, View view) {
        com.transsion.postdetail.helper.a.f48866a.k(immVideoItemView.data, VideoFragment.PAGE_NAME, immVideoItemView.pageFrom);
        Navigator.x(TheRouter.c("/download/panel_activity").F("extra_page_index", 0).K("extra_target_resource_id", str), immVideoItemView.getContext(), null, 2, null);
    }

    private final void l0(long share) {
        this.viewBinding.E.setText(com.transsion.baseui.util.j.a(share));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v47, types: [T, com.transsion.moviedetailapi.bean.ShortTVFavInfo] */
    private final void m0() {
        Subject subject;
        Subject subject2;
        Cover cover;
        String url;
        String thumbnail;
        Subject subject3;
        Cover cover2;
        Subject subject4;
        Subject subject5;
        Subject subject6;
        Subject subject7;
        ShortTVItem shortTVFirstEp;
        Subject subject8;
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                BLLinearLayout root = this.viewBinding.f75779r.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                jg.c.g(root);
                ShapeableImageView ivVideoAvatar = this.viewBinding.f75778q;
                Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
                jg.c.g(ivVideoAvatar);
                AppCompatImageView ivDownload = this.viewBinding.f75771j;
                Intrinsics.g(ivDownload, "ivDownload");
                jg.c.k(ivDownload);
                AppCompatTextView tvTitle = this.viewBinding.G;
                Intrinsics.g(tvTitle, "tvTitle");
                jg.c.k(tvTitle);
                BLTextView tvShortTvEp = this.viewBinding.F;
                Intrinsics.g(tvShortTvEp, "tvShortTvEp");
                jg.c.k(tvShortTvEp);
                ShapeableImageView ivShortCover = this.viewBinding.f75777p;
                Intrinsics.g(ivShortCover, "ivShortCover");
                jg.c.k(ivShortCover);
                AppCompatTextView appCompatTextView = this.viewBinding.G;
                PostSubjectItem postSubjectItem2 = this.data;
                T shortTVFavInfo = 0;
                shortTVFavInfo = 0;
                appCompatTextView.setText((postSubjectItem2 == null || (subject8 = postSubjectItem2.getSubject()) == null) ? null : subject8.getTitle());
                com.transsion.postdetail.util.t tVar = com.transsion.postdetail.util.t.f50179a;
                PostSubjectItem postSubjectItem3 = this.data;
                tVar.a(Integer.valueOf((postSubjectItem3 == null || (subject7 = postSubjectItem3.getSubject()) == null || (shortTVFirstEp = subject7.getShortTVFirstEp()) == null) ? 1 : shortTVFirstEp.getEp()));
                PostSubjectItem postSubjectItem4 = this.data;
                this.viewBinding.F.setText(getContext().getString(R$string.short_tv_play_all, tVar.a(Integer.valueOf((postSubjectItem4 == null || (subject6 = postSubjectItem4.getSubject()) == null) ? 0 : subject6.getTotalEpisode()))));
                com.transsion.baseui.widget.jumpingbeans.a.a(this.viewBinding.F).e(0, this.viewBinding.F.getText().toString().length()).g(true).i(100).f(0.05f).h(10000).a();
                ShapeableImageView shapeableImageView = this.viewBinding.f75777p;
                PostSubjectItem postSubjectItem5 = this.data;
                if (postSubjectItem5 == null || !postSubjectItem5.getBuiltIn()) {
                    PostSubjectItem postSubjectItem6 = this.data;
                    if (postSubjectItem6 != null && (subject2 = postSubjectItem6.getSubject()) != null && (cover = subject2.getCover()) != null && (url = cover.getUrl()) != null) {
                        ej.f.a aVar = ej.f.f61882a;
                        Context context = getContext();
                        Intrinsics.g(context, "getContext(...)");
                        ej.f.b bVarC = aVar.m(context).g(url).m(com.blankj.utilcode.util.i.e(21.0f)).c(com.blankj.utilcode.util.i.e(30.0f));
                        PostSubjectItem postSubjectItem7 = this.data;
                        if (postSubjectItem7 == null || (subject3 = postSubjectItem7.getSubject()) == null || (cover2 = subject3.getCover()) == null || (thumbnail = cover2.getThumbnail()) == null) {
                            thumbnail = "";
                        }
                        ej.f.b bVarH = bVarC.l(thumbnail).h(true);
                        ShapeableImageView ivShortCover2 = this.viewBinding.f75777p;
                        Intrinsics.g(ivShortCover2, "ivShortCover");
                        bVarH.d(ivShortCover2);
                    }
                } else {
                    kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ImmVideoItemView$updateShortTVInfo$1(this, null), 3, null);
                }
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                PostSubjectItem postSubjectItem8 = this.data;
                if (postSubjectItem8 != null && (subject5 = postSubjectItem8.getSubject()) != null) {
                    shortTVFavInfo = subject5.getShortTVFavInfo();
                }
                objectRef.element = shortTVFavInfo;
                if (shortTVFavInfo == 0) {
                    ?? shortTVFavInfo2 = new ShortTVFavInfo(null, false, null, 7, null);
                    shortTVFavInfo2.setFavoriteNum("0");
                    objectRef.element = shortTVFavInfo2;
                    PostSubjectItem postSubjectItem9 = this.data;
                    if (postSubjectItem9 != null && (subject4 = postSubjectItem9.getSubject()) != null) {
                        subject4.setShortTVFavInfo((ShortTVFavInfo) objectRef.element);
                    }
                }
                AppCompatTextView tvFavorite = this.viewBinding.f75786y;
                Intrinsics.g(tvFavorite, "tvFavorite");
                jg.c.k(tvFavorite);
                this.viewBinding.f75786y.setSelected(((ShortTVFavInfo) objectRef.element).getHasFavorite());
                AppCompatTextView appCompatTextView2 = this.viewBinding.f75786y;
                String favoriteNum = ((ShortTVFavInfo) objectRef.element).getFavoriteNum();
                appCompatTextView2.setText(com.transsion.baseui.util.j.a(Long.parseLong(favoriteNum != null ? favoriteNum : "0")));
                this.viewBinding.f75786y.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ImmVideoItemView.n0(this.f50101a, objectRef, view);
                    }
                });
                return;
            }
        }
        AppCompatTextView tvTitle2 = this.viewBinding.G;
        Intrinsics.g(tvTitle2, "tvTitle");
        jg.c.g(tvTitle2);
        BLTextView tvShortTvEp2 = this.viewBinding.F;
        Intrinsics.g(tvShortTvEp2, "tvShortTvEp");
        jg.c.g(tvShortTvEp2);
        ShapeableImageView ivShortCover3 = this.viewBinding.f75777p;
        Intrinsics.g(ivShortCover3, "ivShortCover");
        jg.c.g(ivShortCover3);
        AppCompatImageView ivDownload2 = this.viewBinding.f75771j;
        Intrinsics.g(ivDownload2, "ivDownload");
        jg.c.g(ivDownload2);
        ShapeableImageView ivVideoAvatar2 = this.viewBinding.f75778q;
        Intrinsics.g(ivVideoAvatar2, "ivVideoAvatar");
        jg.c.k(ivVideoAvatar2);
        AppCompatTextView tvFavorite2 = this.viewBinding.f75786y;
        Intrinsics.g(tvFavorite2, "tvFavorite");
        jg.c.g(tvFavorite2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void n0(ImmVideoItemView immVideoItemView, Ref.ObjectRef objectRef, View view) {
        Subject subject;
        Subject subject2;
        com.transsion.postdetail.shorttv.k kVar = com.transsion.postdetail.shorttv.k.f49224a;
        PostSubjectItem postSubjectItem = immVideoItemView.data;
        String subjectId = (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId();
        PostSubjectItem postSubjectItem2 = immVideoItemView.data;
        kVar.c(subjectId, (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) ? null : subject.getOps(), "", ((ShortTVFavInfo) objectRef.element).getHasFavorite(), VideoFragment.PAGE_NAME, immVideoItemView.pageFrom);
        ShortTvPlayListViewModel shortTvPlayListViewModel = immVideoItemView.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel != null) {
            PostSubjectItem postSubjectItem3 = immVideoItemView.data;
            shortTvPlayListViewModel.d(postSubjectItem3 != null ? postSubjectItem3.getSubject() : null);
        }
    }

    private final void o0(PostSubjectItem item) {
        setBottomSubjectAndRoomVisibility(item.getSubject() != null, item.getGroup() != null);
        if (item.getSubject() != null) {
            setBottomSubjectModuleData(item);
        }
        if (item.getGroup() != null) {
            Group group = item.getGroup();
            String name = group != null ? group.getName() : null;
            if (name == null || name.length() == 0) {
                return;
            }
            setBottomRoomModuleData(item);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ed  */
    private final void p0(final PostSubjectItem item) {
        String avatar;
        FirstFrame firstFrame;
        String url;
        String string;
        Subject subject;
        Subject subject2;
        FirstFrame firstFrame2;
        String description = null;
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ImmVideoItemView$updateVideoInfo$1(item, this, null), 3, null);
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ImmVideoItemView$updateVideoInfo$2(item, this, null), 3, null);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String str = this.TAG;
            Media media = item.getMedia();
            String url2 = (media == null || (firstFrame2 = media.getFirstFrame()) == null) ? null : firstFrame2.getUrl();
            User user = item.getUser();
            lg.a.C0828a.f(c0828a, str, "set info - firstFrame = " + url2 + ", avatar = " + (user != null ? user.getAvatar() : null), false, 4, null);
        } else {
            Media media2 = item.getMedia();
            if (media2 != null && (firstFrame = media2.getFirstFrame()) != null && (url = firstFrame.getUrl()) != null) {
                Glide.with(getContext()).load2(ej.f.a.e(ej.f.f61882a, url, jn.b.f66237e.a(), false, false, 12, null)).into(this.viewBinding.f75770i);
            }
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            User user2 = item.getUser();
            if (user2 == null || (avatar = user2.getAvatar()) == null) {
                avatar = "";
            }
            ej.f.b bVarC = bVarM.g(avatar).m(this.viewBinding.f75778q.getWidth()).c(this.viewBinding.f75778q.getHeight());
            ShapeableImageView ivVideoAvatar = this.viewBinding.f75778q;
            Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
            bVarC.d(ivVideoAvatar);
        }
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (subject2 = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                this.viewBinding.G.setTextSize(18.0f);
                NestedScrollableHost nsPostDes = this.viewBinding.f75781t;
                Intrinsics.g(nsPostDes, "nsPostDes");
                jg.c.g(nsPostDes);
                AppCompatImageView ivSave = this.viewBinding.f75776o;
                Intrinsics.g(ivSave, "ivSave");
                jg.c.g(ivSave);
                return;
            }
        }
        NestedScrollableHost nsPostDes2 = this.viewBinding.f75781t;
        Intrinsics.g(nsPostDes2, "nsPostDes");
        jg.c.k(nsPostDes2);
        AppCompatImageView ivSave2 = this.viewBinding.f75776o;
        Intrinsics.g(ivSave2, "ivSave");
        jg.c.k(ivSave2);
        j0();
        this.viewBinding.G.setTextSize(16.0f);
        final ExpandView expandView = this.viewBinding.f75768g;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        expandView.setExpandListener(new g(booleanRef));
        if (TextUtils.isEmpty(item.getTitle())) {
            String content = item.getContent();
            if (content != null) {
                string = StringsKt.n1(content).toString();
            } else {
                string = null;
            }
        } else if (TextUtils.isEmpty(item.getContent())) {
            String title = item.getTitle();
            if (title != null) {
                string = StringsKt.n1(title).toString();
            } else {
                string = null;
            }
        } else {
            String title2 = item.getTitle();
            String string2 = title2 != null ? StringsKt.n1(title2).toString() : null;
            String content2 = item.getContent();
            string = string2 + "\n" + (content2 != null ? StringsKt.n1(content2).toString() : null);
        }
        PostSubjectItem postSubjectItem2 = this.data;
        if (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) {
            description = string;
        } else {
            Integer subjectType2 = subject.getSubjectType();
            int value2 = SubjectType.SHORT_TV.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                Subject subject3 = item.getSubject();
                if (subject3 != null) {
                    description = subject3.getDescription();
                }
            } else {
                description = string;
            }
        }
        if (TextUtils.isEmpty(description)) {
            Intrinsics.e(expandView);
            jg.c.g(expandView);
        } else {
            Intrinsics.e(expandView);
            jg.c.k(expandView);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            expandView.m(com.transsion.baseui.util.l.b(expandView, description, false, new h(objectRef), new Function2() { // from class: com.transsion.postdetail.ui.view.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ImmVideoItemView.q0(expandView, booleanRef, objectRef, item, this, (View) obj, (String) obj2);
                }
            }));
        }
        Intrinsics.e(expandView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:30:0x0065  */
    public static final Unit q0(ExpandView expandView, Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, PostSubjectItem postSubjectItem, ImmVideoItemView immVideoItemView, View view, String str) {
        boolean z10;
        boolean z11;
        String resourceLink;
        ResourceDetectors resourceDetector;
        String subjectId;
        List<UrlContent> list;
        int length = expandView.getText().length();
        if (!booleanRef.element || (list = (List) objectRef.element) == null) {
            z10 = false;
        } else {
            z10 = false;
            for (UrlContent urlContent : list) {
                int indexOfUrl = urlContent.getIndexOfUrl();
                int indexOfUrl2 = urlContent.getIndexOfUrl() + urlContent.getUrl().length();
                if (indexOfUrl <= length && indexOfUrl2 >= length && indexOfUrl <= length && length < indexOfUrl2 + 1) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            expandView.performClick();
        } else {
            Subject subject = postSubjectItem.getSubject();
            if (subject != null && (subjectId = subject.getSubjectId()) != null) {
                z11 = subjectId.length() > 0;
            }
            if (z11) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context = expandView.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                Subject subject2 = postSubjectItem.getSubject();
                Intrinsics.e(str);
                PostSubjectItem postSubjectItem2 = immVideoItemView.data;
                String ops = postSubjectItem2 != null ? postSubjectItem2.getOps() : null;
                Subject subject3 = postSubjectItem.getSubject();
                if (subject3 == null || (resourceDetector = subject3.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                    resourceLink = "";
                }
                String str2 = resourceLink;
                User user = postSubjectItem.getUser();
                downloadManagerApiA.U(fragmentActivity, subject2, str, "post_video_detail", ops, str2, user != null ? user.getNickname() : null);
            } else {
                Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str), expandView.getContext(), null, 2, null);
            }
        }
        return Unit.f67061a;
    }

    private final void setBottomRoomModuleData(PostSubjectItem item) {
        String avatar;
        Cover cover;
        AppCompatTextView appCompatTextView = this.viewBinding.f75779r.f75502g;
        Group group = item.getGroup();
        String url = null;
        appCompatTextView.setText(group != null ? group.getName() : null);
        ej.f.a aVar = ej.f.f61882a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar.m(context);
        Group group2 = item.getGroup();
        if (group2 == null || (avatar = group2.getAvatar()) == null) {
            Group group3 = item.getGroup();
            if (group3 != null && (cover = group3.getCover()) != null) {
                url = cover.getUrl();
            }
            avatar = url == null ? "" : url;
        }
        ej.f.b bVarC = bVarM.g(avatar).m(dk.a.b(32)).c(dk.a.b(32));
        ShapeableImageView ivRoomCover = this.viewBinding.f75779r.f75498c;
        Intrinsics.g(ivRoomCover, "ivRoomCover");
        bVarC.d(ivRoomCover);
    }

    private final void setBottomSubjectAndRoomVisibility(boolean isShowSubject, boolean isShowRoom) {
        if (ak.g.f639a.b()) {
            BLLinearLayout root = this.viewBinding.f75779r.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            root.setVisibility(isShowRoom ? 0 : 8);
            ConstraintLayout clSubjectContent = this.viewBinding.f75779r.f75497b;
            Intrinsics.g(clSubjectContent, "clSubjectContent");
            jg.c.g(clSubjectContent);
            View vSubjectRoomLine = this.viewBinding.f75779r.f75508m;
            Intrinsics.g(vSubjectRoomLine, "vSubjectRoomLine");
            jg.c.g(vSubjectRoomLine);
            LinearLayout llRoomTag = this.viewBinding.f75779r.f75501f;
            Intrinsics.g(llRoomTag, "llRoomTag");
            llRoomTag.setVisibility(isShowRoom ? 0 : 8);
            return;
        }
        if (isShowSubject) {
            BLLinearLayout root2 = this.viewBinding.f75779r.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            jg.c.k(root2);
            ConstraintLayout clSubjectContent2 = this.viewBinding.f75779r.f75497b;
            Intrinsics.g(clSubjectContent2, "clSubjectContent");
            jg.c.k(clSubjectContent2);
            View vSubjectRoomLine2 = this.viewBinding.f75779r.f75508m;
            Intrinsics.g(vSubjectRoomLine2, "vSubjectRoomLine");
            vSubjectRoomLine2.setVisibility(isShowRoom ? 0 : 8);
            LinearLayout llRoomTag2 = this.viewBinding.f75779r.f75501f;
            Intrinsics.g(llRoomTag2, "llRoomTag");
            llRoomTag2.setVisibility(isShowRoom ? 0 : 8);
            return;
        }
        BLLinearLayout root3 = this.viewBinding.f75779r.getRoot();
        Intrinsics.g(root3, "getRoot(...)");
        root3.setVisibility(isShowRoom ? 0 : 8);
        ConstraintLayout clSubjectContent3 = this.viewBinding.f75779r.f75497b;
        Intrinsics.g(clSubjectContent3, "clSubjectContent");
        jg.c.g(clSubjectContent3);
        View vSubjectRoomLine3 = this.viewBinding.f75779r.f75508m;
        Intrinsics.g(vSubjectRoomLine3, "vSubjectRoomLine");
        jg.c.g(vSubjectRoomLine3);
        LinearLayout llRoomTag3 = this.viewBinding.f75779r.f75501f;
        Intrinsics.g(llRoomTag3, "llRoomTag");
        llRoomTag3.setVisibility(isShowRoom ? 0 : 8);
    }

    private final void setBottomSubjectModuleData(PostSubjectItem item) {
        String url;
        String thumbnail;
        String title;
        Subject subject;
        String genre;
        List listS0;
        String str;
        Cover cover;
        Cover cover2;
        ej.f.a aVar = ej.f.f61882a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ej.f.b bVarM = aVar.m(context);
        Subject subject2 = item.getSubject();
        String str2 = "";
        if (subject2 == null || (cover2 = subject2.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarC = bVarM.g(url).m(dk.a.b(32)).c(dk.a.b(32));
        Subject subject3 = item.getSubject();
        if (subject3 == null || (cover = subject3.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            thumbnail = "";
        }
        ej.f.b bVarL = bVarC.l(thumbnail);
        ShapeableImageView ivSubjectCover = this.viewBinding.f75779r.f75499d;
        Intrinsics.g(ivSubjectCover, "ivSubjectCover");
        bVarL.d(ivSubjectCover);
        AppCompatTextView appCompatTextView = this.viewBinding.f75779r.f75505j;
        Subject subject4 = item.getSubject();
        if (subject4 == null || (title = subject4.getTitle()) == null) {
            title = "";
        }
        appCompatTextView.setText(title);
        Subject subject5 = item.getSubject();
        this.viewBinding.f75779r.f75500e.setImageResource(com.transsion.moviedetailapi.g.a(subject5 != null ? subject5.getSubjectType() : null));
        Subject subject6 = item.getSubject();
        Date dateL = com.blankj.utilcode.util.c0.l(subject6 != null ? subject6.getReleaseDate() : null, "yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateL);
        this.viewBinding.f75779r.f75503h.setText(String.valueOf(calendar.get(1)));
        Subject subject7 = item.getSubject();
        String genre2 = subject7 != null ? subject7.getGenre() : null;
        if (genre2 != null && genre2.length() != 0 && (subject = item.getSubject()) != null && (genre = subject.getGenre()) != null && (listS0 = StringsKt.S0(genre, new String[]{", "}, false, 0, 6, null)) != null && (str = (String) CollectionsKt.k0(listS0)) != null) {
            str2 = str;
        }
        AppCompatTextView tvSubjectGenre = this.viewBinding.f75779r.f75504i;
        Intrinsics.g(tvSubjectGenre, "tvSubjectGenre");
        tvSubjectGenre.setVisibility(str2.length() > 0 ? 0 : 8);
        AppCompatTextView tvSubjectGenre2 = this.viewBinding.f75779r.f75504i;
        Intrinsics.g(tvSubjectGenre2, "tvSubjectGenre");
        tvSubjectGenre2.setVisibility(str2.length() > 0 ? 0 : 8);
        this.viewBinding.f75779r.f75504i.setText(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:21:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:22:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:40:0x0166  */
    public final void setContentVisibility(boolean visible) {
        Subject subject;
        String str;
        String str2;
        Subject subject2;
        if (!visible) {
            BLConstraintLayout clHotComment = this.viewBinding.f75765d;
            Intrinsics.g(clHotComment, "clHotComment");
            if (clHotComment.getVisibility() == 0) {
                this.isShowHotComment = true;
                BLConstraintLayout clHotComment2 = this.viewBinding.f75765d;
                Intrinsics.g(clHotComment2, "clHotComment");
                jg.c.h(clHotComment2);
            }
            AppCompatTextView tvFavorite = this.viewBinding.f75786y;
            Intrinsics.g(tvFavorite, "tvFavorite");
            if (tvFavorite.getVisibility() == 0) {
                this.isFavoriteShow = true;
                AppCompatTextView tvFavorite2 = this.viewBinding.f75786y;
                Intrinsics.g(tvFavorite2, "tvFavorite");
                jg.c.h(tvFavorite2);
            }
            PostSubjectItem postSubjectItem = this.data;
            if (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) {
                ShapeableImageView ivVideoAvatar = this.viewBinding.f75778q;
                Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
                jg.c.h(ivVideoAvatar);
                BLLinearLayout root = this.viewBinding.f75779r.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                jg.c.h(root);
                NestedScrollableHost nsPostDes = this.viewBinding.f75781t;
                Intrinsics.g(nsPostDes, "nsPostDes");
                jg.c.h(nsPostDes);
                AppCompatImageView ivSave = this.viewBinding.f75776o;
                Intrinsics.g(ivSave, "ivSave");
                jg.c.h(ivSave);
            } else {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    BLTextView tvShortTvEp = this.viewBinding.F;
                    Intrinsics.g(tvShortTvEp, "tvShortTvEp");
                    jg.c.h(tvShortTvEp);
                    AppCompatTextView tvTitle = this.viewBinding.G;
                    Intrinsics.g(tvTitle, "tvTitle");
                    jg.c.h(tvTitle);
                    AppCompatImageView ivDownload = this.viewBinding.f75771j;
                    Intrinsics.g(ivDownload, "ivDownload");
                    jg.c.h(ivDownload);
                    ShapeableImageView ivShortCover = this.viewBinding.f75777p;
                    Intrinsics.g(ivShortCover, "ivShortCover");
                    jg.c.h(ivShortCover);
                } else {
                    ShapeableImageView ivVideoAvatar2 = this.viewBinding.f75778q;
                    Intrinsics.g(ivVideoAvatar2, "ivVideoAvatar");
                    jg.c.h(ivVideoAvatar2);
                    BLLinearLayout root2 = this.viewBinding.f75779r.getRoot();
                    Intrinsics.g(root2, "getRoot(...)");
                    jg.c.h(root2);
                    NestedScrollableHost nsPostDes2 = this.viewBinding.f75781t;
                    Intrinsics.g(nsPostDes2, "nsPostDes");
                    jg.c.h(nsPostDes2);
                    AppCompatImageView ivSave2 = this.viewBinding.f75776o;
                    Intrinsics.g(ivSave2, "ivSave");
                    jg.c.h(ivSave2);
                }
            }
            ProgressBar progressBar = this.viewBinding.f75782u;
            Intrinsics.g(progressBar, "progressBar");
            jg.c.h(progressBar);
            AppCompatTextView tvLike = this.viewBinding.C;
            Intrinsics.g(tvLike, "tvLike");
            jg.c.h(tvLike);
            AppCompatTextView tvShare = this.viewBinding.E;
            Intrinsics.g(tvShare, "tvShare");
            jg.c.h(tvShare);
            AppCompatImageView ivSave3 = this.viewBinding.f75776o;
            Intrinsics.g(ivSave3, "ivSave");
            jg.c.h(ivSave3);
            AppCompatTextView tvComment = this.viewBinding.f75785x;
            Intrinsics.g(tvComment, "tvComment");
            jg.c.h(tvComment);
            return;
        }
        PostSubjectItem postSubjectItem2 = this.data;
        if (postSubjectItem2 != null && (subject2 = postSubjectItem2.getSubject()) != null) {
            Integer subjectType2 = subject2.getSubjectType();
            str = "tvFavorite";
            int value2 = SubjectType.SHORT_TV.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                BLTextView tvShortTvEp2 = this.viewBinding.F;
                Intrinsics.g(tvShortTvEp2, "tvShortTvEp");
                jg.c.k(tvShortTvEp2);
                AppCompatTextView tvTitle2 = this.viewBinding.G;
                Intrinsics.g(tvTitle2, "tvTitle");
                jg.c.k(tvTitle2);
                AppCompatImageView ivDownload2 = this.viewBinding.f75771j;
                Intrinsics.g(ivDownload2, "ivDownload");
                jg.c.k(ivDownload2);
                ShapeableImageView ivShortCover2 = this.viewBinding.f75777p;
                Intrinsics.g(ivShortCover2, "ivShortCover");
                jg.c.k(ivShortCover2);
            }
            ProgressBar progressBar2 = this.viewBinding.f75782u;
            Intrinsics.g(progressBar2, "progressBar");
            jg.c.k(progressBar2);
            AppCompatTextView tvLike2 = this.viewBinding.C;
            Intrinsics.g(tvLike2, "tvLike");
            jg.c.k(tvLike2);
            AppCompatTextView tvShare2 = this.viewBinding.E;
            Intrinsics.g(tvShare2, "tvShare");
            jg.c.k(tvShare2);
            AppCompatTextView tvComment2 = this.viewBinding.f75785x;
            Intrinsics.g(tvComment2, "tvComment");
            jg.c.k(tvComment2);
            if (this.isShowHotComment) {
                BLConstraintLayout clHotComment3 = this.viewBinding.f75765d;
                Intrinsics.g(clHotComment3, "clHotComment");
                jg.c.k(clHotComment3);
            }
            if (this.isFavoriteShow) {
                AppCompatTextView appCompatTextView = this.viewBinding.f75786y;
                str2 = str;
                Intrinsics.g(appCompatTextView, str2);
                jg.c.k(appCompatTextView);
            } else {
                str2 = str;
            }
            AppCompatTextView appCompatTextView2 = this.viewBinding.f75786y;
            Intrinsics.g(appCompatTextView2, str2);
            jg.c.k(appCompatTextView2);
        }
        str = "tvFavorite";
        ShapeableImageView ivVideoAvatar3 = this.viewBinding.f75778q;
        Intrinsics.g(ivVideoAvatar3, "ivVideoAvatar");
        jg.c.k(ivVideoAvatar3);
        BLLinearLayout root3 = this.viewBinding.f75779r.getRoot();
        Intrinsics.g(root3, "getRoot(...)");
        jg.c.k(root3);
        NestedScrollableHost nsPostDes3 = this.viewBinding.f75781t;
        Intrinsics.g(nsPostDes3, "nsPostDes");
        jg.c.k(nsPostDes3);
        AppCompatImageView ivSave4 = this.viewBinding.f75776o;
        Intrinsics.g(ivSave4, "ivSave");
        jg.c.k(ivSave4);
        ProgressBar progressBar3 = this.viewBinding.f75782u;
        Intrinsics.g(progressBar3, "progressBar");
        jg.c.k(progressBar3);
        AppCompatTextView tvLike3 = this.viewBinding.C;
        Intrinsics.g(tvLike3, "tvLike");
        jg.c.k(tvLike3);
        AppCompatTextView tvShare3 = this.viewBinding.E;
        Intrinsics.g(tvShare3, "tvShare");
        jg.c.k(tvShare3);
        AppCompatTextView tvComment3 = this.viewBinding.f75785x;
        Intrinsics.g(tvComment3, "tvComment");
        jg.c.k(tvComment3);
        if (this.isShowHotComment) {
            BLConstraintLayout clHotComment4 = this.viewBinding.f75765d;
            Intrinsics.g(clHotComment4, "clHotComment");
            jg.c.k(clHotComment4);
        }
        if (this.isFavoriteShow) {
            AppCompatTextView appCompatTextView3 = this.viewBinding.f75786y;
            str2 = str;
            Intrinsics.g(appCompatTextView3, str2);
            jg.c.k(appCompatTextView3);
        } else {
            str2 = str;
        }
        AppCompatTextView appCompatTextView4 = this.viewBinding.f75786y;
        Intrinsics.g(appCompatTextView4, str2);
        jg.c.k(appCompatTextView4);
    }

    private final void setLoading(boolean show) {
        if (show) {
            ClipLoading clLoading = this.viewBinding.f75766e;
            Intrinsics.g(clLoading, "clLoading");
            jg.c.k(clLoading);
            ProgressBar progressBar = this.viewBinding.f75782u;
            Intrinsics.g(progressBar, "progressBar");
            jg.c.g(progressBar);
            this.viewBinding.f75766e.start();
            return;
        }
        ProgressBar progressBar2 = this.viewBinding.f75782u;
        Intrinsics.g(progressBar2, "progressBar");
        jg.c.k(progressBar2);
        ClipLoading clLoading2 = this.viewBinding.f75766e;
        Intrinsics.g(clLoading2, "clLoading");
        jg.c.g(clLoading2);
        this.viewBinding.f75766e.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsnet.downloader.manager.g w() {
        return com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ImmVideoItemView immVideoItemView, String str) {
        immVideoItemView.y(str);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    private final void y(String type) {
        Integer numValueOf;
        if (type == null) {
            numValueOf = null;
        } else {
            int iHashCode = type.hashCode();
            if (iHashCode != -1550083459) {
                if (iHashCode != -877500447) {
                    if (iHashCode == 525878142 && type.equals("favorite_add")) {
                        numValueOf = Integer.valueOf(com.transsnet.downloader.R$string.short_tv_favorite_toast);
                    } else {
                        numValueOf = null;
                    }
                } else if (type.equals("favorite_fail")) {
                    numValueOf = Integer.valueOf(com.tn.lib.widget.R$string.failed_toast);
                } else {
                    numValueOf = null;
                }
            } else if (type.equals("favorite_cancel")) {
                numValueOf = Integer.valueOf(com.transsnet.downloader.R$string.short_tv_favorite_remove_toast);
            } else {
                numValueOf = null;
            }
        }
        if (numValueOf != null) {
            uh.b.f76753a.d(numValueOf.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z(String id2) {
        androidx.p009lifecycle.b0 b0VarC;
        lg.a.C0828a.r(lg.a.f68839a, this.TAG, new String[]{"finishAfterReport, position = " + this.position}, false, 4, null);
        PostDetailViewModel postDetailViewModel = this.videoDetailModel;
        if (postDetailViewModel == null || (b0VarC = postDetailViewModel.C()) == null) {
            return;
        }
        b0VarC.q(this.position);
    }

    public final void app2Background() {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.d(true);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final FrameLayout getPlayerContainer() {
        FrameLayout flContainer = this.viewBinding.f75769h;
        Intrinsics.g(flContainer, "flContainer");
        return flContainer;
    }

    public final Integer getPosition() {
        return this.position;
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        androidx.p009lifecycle.u viewLifecycleOwner;
        ShortTvPlayListViewModel shortTvPlayListViewModel;
        androidx.p009lifecycle.b0 b0VarF;
        super.onAttachedToWindow();
        Fragment fragment = this.fragment;
        if (fragment != null && (viewLifecycleOwner = fragment.getViewLifecycleOwner()) != null && (shortTvPlayListViewModel = this.shortTvPlayListViewModel) != null && (b0VarF = shortTvPlayListViewModel.f()) != null) {
            b0VarF.j(viewLifecycleOwner, this.favoriteResultObserver);
        }
        getDownloadManager().e(this.downloadListener);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        Subject subject;
        Context context;
        PostSubjectItem postSubjectItem;
        Subject subject2;
        Integer numValueOf = v11 != null ? Integer.valueOf(v11.getId()) : null;
        int i11 = R$id.tv_like;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            O(v11);
            return;
        }
        int i12 = R$id.tv_comment;
        if (numValueOf == null || numValueOf.intValue() != i12) {
            int i13 = R$id.clHotComment;
            if (numValueOf == null || numValueOf.intValue() != i13) {
                int i14 = R$id.tv_share;
                if (numValueOf != null && numValueOf.intValue() == i14) {
                    T(v11);
                    return;
                }
                int i15 = R$id.iv_save;
                if (numValueOf != null && numValueOf.intValue() == i15) {
                    S(v11);
                    return;
                }
                int i16 = R$id.iv_video_avatar;
                if (numValueOf != null && numValueOf.intValue() == i16) {
                    F(v11);
                    return;
                }
                int i17 = R$id.ev_post_des;
                if (numValueOf != null && numValueOf.intValue() == i17) {
                    return;
                }
                int i18 = R$id.cl_subject_content;
                if (numValueOf != null && numValueOf.intValue() == i18) {
                    H(v11);
                    return;
                }
                int i19 = R$id.ll_room_tag;
                if (numValueOf != null && numValueOf.intValue() == i19) {
                    G(v11);
                    return;
                }
                int i20 = R$id.tvShortTvEp;
                if (numValueOf != null && numValueOf.intValue() == i20) {
                    Fragment fragment = this.fragment;
                    if (fragment == null || (context = fragment.getContext()) == null || (postSubjectItem = this.data) == null || (subject2 = postSubjectItem.getSubject()) == null) {
                        return;
                    }
                    PostSubjectItem postSubjectItem2 = this.data;
                    subject2.setOps(postSubjectItem2 != null ? postSubjectItem2.getOps() : null);
                    Navigator navigatorF = TheRouter.c(ls.a.f69034a.b()).K("id", subject2.getSubjectId()).F("ep", 1);
                    PostSubjectItem postSubjectItem3 = this.data;
                    Navigator.x(navigatorF.K("ops", postSubjectItem3 != null ? postSubjectItem3.getOps() : null), context, null, 2, null);
                    return;
                }
                int i21 = R$id.iv_download;
                if (numValueOf == null || numValueOf.intValue() != i21) {
                    int i22 = R$id.iv_short_cover;
                    if (numValueOf == null || numValueOf.intValue() != i22) {
                        int i23 = R$id.tv_title;
                        if (numValueOf == null || numValueOf.intValue() != i23) {
                            return;
                        }
                    }
                }
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context2;
                PostSubjectItem postSubjectItem4 = this.data;
                String ops = (postSubjectItem4 == null || (subject = postSubjectItem4.getSubject()) == null) ? null : subject.getOps();
                boolean z10 = v11.getId() == R$id.iv_download;
                PostSubjectItem postSubjectItem5 = this.data;
                downloadManagerApiA.d0(fragmentActivity, VideoFragment.PAGE_NAME, (384 & 4) != 0 ? "" : "", ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : z10, (384 & 64) != 0 ? null : postSubjectItem5 != null ? postSubjectItem5.getSubject() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        N(v11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        Subject subject;
        Fragment fragment;
        Context context;
        PostSubjectItem postSubjectItem;
        Subject subject2;
        lg.a.C0828a.r(lg.a.f68839a, this.TAG, new String[]{"player- onCompletion"}, false, 4, null);
        PostSubjectItem postSubjectItem2 = this.data;
        if (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) {
            return;
        }
        Integer subjectType = subject.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType == null || subjectType.intValue() != value || (fragment = this.fragment) == null || (context = fragment.getContext()) == null || (postSubjectItem = this.data) == null || (subject2 = postSubjectItem.getSubject()) == null) {
            return;
        }
        PostSubjectItem postSubjectItem3 = this.data;
        subject2.setOps(postSubjectItem3 != null ? postSubjectItem3.getOps() : null);
        Navigator navigatorF = TheRouter.c(ls.a.f69034a.b()).K("id", subject2.getSubjectId()).F("ep", 1);
        PostSubjectItem postSubjectItem4 = this.data;
        Navigator.x(navigatorF.K("ops", postSubjectItem4 != null ? postSubjectItem4.getOps() : null), context, null, 2, null);
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.seekTo(0L);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.p009lifecycle.b0 b0VarF;
        androidx.p009lifecycle.b0 b0VarF2;
        super.onDetachedFromWindow();
        ShortTvPlayListViewModel shortTvPlayListViewModel = this.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel != null && (b0VarF2 = shortTvPlayListViewModel.f()) != null) {
            b0VarF2.q(null);
        }
        ShortTvPlayListViewModel shortTvPlayListViewModel2 = this.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel2 != null && (b0VarF = shortTvPlayListViewModel2.f()) != null) {
            b0VarF.o(this.favoriteResultObserver);
        }
        getDownloadManager().x(this.downloadListener);
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
    public void onLoadingBegin(ao.e mediaSource) {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.h();
        }
        setLoading(true);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e mediaSource) {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.i();
        }
        setLoading(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.j();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.k(errorInfo);
        }
        lg.a.f68839a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.k() : null) + " --> 短播放失败了", true);
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, ao.e eVar) {
        com.transsion.player.orplayer.f.a.s(this, tnPlayerType, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e mediaSource) {
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        String postId;
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPlayerReset", false, 4, null);
        this.isPageRelease = true;
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        setKeepScreenOn(false);
        this.isClickPause = false;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            com.transsion.postdetail.layer.b.e(bVar, false, 1, null);
        }
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (postId = postSubjectItem.getPostId()) != null) {
        }
        AppCompatImageView ivCover = this.viewBinding.f75770i;
        Intrinsics.g(ivCover, "ivCover");
        jg.c.k(ivCover);
        AppCompatImageView ivPause = this.viewBinding.f75775n;
        Intrinsics.g(ivPause, "ivPause");
        jg.c.g(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f75784w;
        Intrinsics.g(seekBar, "seekBar");
        jg.c.g(seekBar);
        this.viewBinding.f75768g.reset();
        ImmVideoGuideView immVideoGuideView = this.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        this.currentSaveProgress = 0L;
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e mediaSource) {
        Fragment fragment;
        String postId;
        long jLongValue;
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        boolean z10 = false;
        int duration = gVar != null ? (int) gVar.getDuration() : 0;
        this.viewBinding.f75782u.setMax(duration);
        this.viewBinding.f75784w.setMax(duration);
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (postId = postSubjectItem.getPostId()) != null) {
            if (this.isFromDownloaded) {
                jLongValue = ep.e.f61974a.c(postId);
            } else {
                Long lB = ep.c.f61972a.b(postId);
                jLongValue = lB != null ? lB.longValue() : 0L;
            }
            Long lValueOf = Long.valueOf(jLongValue);
            if (lValueOf.longValue() <= 0) {
                lValueOf = null;
            }
            if (lValueOf != null) {
                long jLongValue2 = lValueOf.longValue();
                lg.a.C0828a.v(lg.a.f68839a, "PostFeedVideo", "immvideo seek:" + jLongValue2, false, 4, null);
                com.transsion.player.orplayer.g gVar2 = this.orPlayer;
                if (gVar2 != null) {
                    gVar2.seekTo(jLongValue2);
                }
                z10 = true;
            }
            Long l11 = (Long) ImmVideoHelper.f48840h.a().j().get(postId);
            long jLongValue3 = l11 != null ? l11.longValue() : 0L;
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f75782u.getMax() + ", progress = " + jLongValue3, false, 4, null);
            if (jLongValue3 > 0 && !z10) {
                this.currentSaveProgress = jLongValue3;
                int i11 = (int) jLongValue3;
                this.viewBinding.f75782u.setProgress(i11);
                this.viewBinding.f75784w.setProgress(i11);
                com.transsion.player.orplayer.g gVar3 = this.orPlayer;
                if (gVar3 != null) {
                    gVar3.seekTo(jLongValue3);
                }
            }
        }
        if (!this.isClickPause && !this.isPageHide && (fragment = this.fragment) != null && fragment.isVisible()) {
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPrepare， play~", false, 4, null);
            com.transsion.player.orplayer.g gVar4 = this.orPlayer;
            if (gVar4 != null) {
                gVar4.play();
            }
        }
        setKeepScreenOn(true);
        j0();
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        if (this.isSeekToFinish.get() && !this.isHorizontalDragging) {
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.l(progress);
            }
            int i11 = (int) progress;
            this.viewBinding.f75782u.setProgress(i11);
            this.viewBinding.f75784w.setProgress(i11);
            P(progress);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onRenderFirstFrame", false, 4, null);
        AppCompatImageView ivCover = this.viewBinding.f75770i;
        Intrinsics.g(ivCover, "ivCover");
        jg.c.g(ivCover);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.m();
        }
        setLoading(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        this.isPageRelease = false;
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        setLoading(true);
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        String postId;
        String postId2;
        Lifecycle lifecycle;
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i11 = a.f49920a[event.ordinal()];
        if (i11 == 1) {
            this.isPageHide = true;
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, this.TAG, "player- onPause", false, 4, null);
            com.transsion.player.orplayer.g gVar = this.orPlayer;
            if (gVar != null) {
                gVar.pause();
            }
            PostSubjectItem postSubjectItem = this.data;
            if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
                return;
            }
            lg.a.C0828a.v(c0828a, "PostFeedVideo", "immvideo savePlayProgress:" + this.viewBinding.f75782u.getProgress(), false, 4, null);
            if (this.isFromDownloaded) {
                ep.e.f61974a.e(postId, this.viewBinding.f75782u.getProgress());
                return;
            } else {
                ep.c.f61972a.c(postId, this.viewBinding.f75782u.getProgress());
                return;
            }
        }
        if (i11 == 2) {
            this.isPageHide = false;
            if (this.isClickPause) {
                return;
            }
            Fragment fragment = this.fragment;
            if (fragment != null && !fragment.isVisible()) {
                post(new Runnable() { // from class: com.transsion.postdetail.ui.view.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmVideoItemView.V(this.f50071a);
                    }
                });
                return;
            }
            com.transsion.player.orplayer.g gVar2 = this.orPlayer;
            if (gVar2 != null) {
                gVar2.play();
                return;
            }
            return;
        }
        if (i11 == 3) {
            PostSubjectItem postSubjectItem2 = this.data;
            if (postSubjectItem2 == null || (postId2 = postSubjectItem2.getPostId()) == null) {
                return;
            }
            return;
        }
        if (i11 != 5) {
            return;
        }
        Fragment fragment2 = this.fragment;
        if (fragment2 != null && (lifecycle = fragment2.getLifecycle()) != null) {
            lifecycle.d(this);
        }
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.p();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null || !gestureDetector.onTouchEvent(event)) {
            return super.onTouchEvent(event);
        }
        return true;
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
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onVideoPause", false, 4, null);
        AppCompatImageView ivPause = this.viewBinding.f75775n;
        Intrinsics.g(ivPause, "ivPause");
        jg.c.k(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f75784w;
        Intrinsics.g(seekBar, "seekBar");
        jg.c.k(seekBar);
        ProgressBar progressBar = this.viewBinding.f75782u;
        Intrinsics.g(progressBar, "progressBar");
        jg.c.g(progressBar);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.n();
        }
        setKeepScreenOn(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onVideoStart", false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.o();
        }
        AppCompatImageView ivPause = this.viewBinding.f75775n;
        Intrinsics.g(ivPause, "ivPause");
        jg.c.g(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f75784w;
        Intrinsics.g(seekBar, "seekBar");
        jg.c.g(seekBar);
        setLoading(false);
        setKeepScreenOn(true);
        IAudioApi iAudioApi = this.audioApi;
        if (iAudioApi != null) {
            iAudioApi.pause();
        }
    }

    public final void setData(PostSubjectItem item, final Fragment fragment, Integer position, boolean videoLoadMore, String basePostId, String baseItemType, boolean attachToMain, String commentId, String pageFrom, boolean isFromDownloaded) {
        Long shareCount;
        Long commentCount;
        Integer subjectType;
        Intrinsics.h(item, "item");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(pageFrom, "pageFrom");
        com.transsion.postdetail.layer.b bVar = new com.transsion.postdetail.layer.b();
        this.dotLayer = bVar;
        bVar.s(basePostId);
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.r(baseItemType);
        }
        com.transsion.postdetail.layer.b bVar3 = this.dotLayer;
        if (bVar3 != null) {
            String postId = item.getPostId();
            if (postId == null) {
                postId = "";
            }
            bVar3.x(postId, item);
        }
        com.transsion.postdetail.layer.b bVar4 = this.dotLayer;
        if (bVar4 != null) {
            Subject subject = item.getSubject();
            bVar4.y((subject == null || (subjectType = subject.getSubjectType()) == null) ? 0 : subjectType.intValue());
        }
        this.fragment = fragment;
        this.videoLoadMore = Boolean.valueOf(videoLoadMore);
        this.basePostId = basePostId;
        this.position = position;
        this.attachToMain = attachToMain;
        this.commentId = commentId;
        this.pageFrom = pageFrom;
        this.isFromDownloaded = isFromDownloaded;
        fragment.getLifecycle().a(this);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.videoDetailModel = Z(FragmentViewModelLazyKt.a(fragment, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$3
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
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        }));
        final Function0<Fragment> function1 = new Function0<Fragment>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.shortTvPlayListViewModel = a0(FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTvPlayListViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function1.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function1.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        }));
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$7
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.mCommentViewModel = b0(FragmentViewModelLazyKt.a(fragment, Reflection.b(CommentViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$8
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function2.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.postdetail.ui.view.ImmVideoItemView$setData$$inlined$viewModels$default$9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function2.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        }));
        this.data = item;
        p0(item);
        i0(item);
        Stat stat = item.getStat();
        long jLongValue = 0;
        e0((stat == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue());
        Stat stat2 = item.getStat();
        if (stat2 != null && (shareCount = stat2.getShareCount()) != null) {
            jLongValue = shareCount.longValue();
        }
        l0(jLongValue);
        o0(item);
        f0(item);
        if (attachToMain) {
            ViewGroup.LayoutParams layoutParams = this.viewBinding.f75783v.getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.b) {
                ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).bottomMargin = com.blankj.utilcode.util.a0.a(16.0f);
            }
        }
        m0();
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
        this.isSeekToFinish.set(true);
        long j11 = this.nextSeekTo;
        if (j11 > 0) {
            lg.a.C0828a.r(lg.a.f68839a, this.TAG, new String[]{"seek OnSeekComplete，nextSeekTo:" + j11}, false, 4, null);
            com.transsion.player.orplayer.g gVar = this.orPlayer;
            if (gVar != null) {
                gVar.seekTo(this.nextSeekTo);
            }
            this.nextSeekTo = 0L;
        }
    }

    public final void setPagerLayoutManager(PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(pagerLayoutManager, "pagerLayoutManager");
        this.pagerLayoutManager = pagerLayoutManager;
    }

    public final void setPlayer(com.transsion.player.orplayer.g orPlayer, ORPlayerView orPlayerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(orPlayerView, "orPlayerView");
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.v(orPlayer);
        }
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final void setVideoUrl(String url) {
        Intrinsics.h(url, "url");
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.A(url);
        }
    }

    public final void showCommentDialog() {
        FragmentManager childFragmentManager;
        Fragment fragment = this.fragment;
        if (fragment != null && (childFragmentManager = fragment.getChildFragmentManager()) != null) {
            ImmVideoCommentDialog immVideoCommentDialogB = ImmVideoCommentDialog.Companion.b(ImmVideoCommentDialog.INSTANCE, this.data, this.commentId, VideoFragment.PAGE_NAME, null, 8, null);
            this.commentDialog = immVideoCommentDialogB;
            if (immVideoCommentDialogB != null) {
                immVideoCommentDialogB.show(childFragmentManager, "immComment");
            }
        }
        ImmVideoCommentDialog immVideoCommentDialog = this.commentDialog;
        if (immVideoCommentDialog != null) {
            immVideoCommentDialog.A0(new f());
        }
        com.transsion.postdetail.helper.a.f48866a.e(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    public final void videoStartPrepare(String pageFrom) {
        com.transsion.postdetail.layer.b bVar;
        this.pageFrom = pageFrom;
        if (pageFrom != null && (bVar = this.dotLayer) != null) {
            bVar.t(pageFrom);
        }
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.g();
        }
        com.transsion.postdetail.layer.b bVar3 = this.dotLayer;
        if (bVar3 != null) {
            bVar3.a(0, 0);
        }
        com.transsion.postdetail.layer.b bVar4 = this.dotLayer;
        if (bVar4 != null) {
            bVar4.w(this.position);
        }
    }
}
