package com.transsion.ugcvideodetail.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.pager.PagerLayoutManager;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.m;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.push.PushConstants;
import com.transsion.ugcvideodetail.R$drawable;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.dialog.UGCImmVideoSettingDialog;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.R$color;
import com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.ILoginApi;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import qv.r;
import tv.h;
import tv.i;
import tv.n;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012JI\u0010\u001d\u001a\u00020\u001c2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\b¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u001cH\u0014¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u001cH\u0014¢\u0006\u0004\b$\u0010#J\r\u0010%\u001a\u00020\u001c¢\u0006\u0004\b%\u0010#J\r\u0010&\u001a\u00020\u001c¢\u0006\u0004\b&\u0010#J\r\u0010'\u001a\u00020\u001c¢\u0006\u0004\b'\u0010#J\r\u0010(\u001a\u00020\u001c¢\u0006\u0004\b(\u0010#J+\u0010.\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010-\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b.\u0010/J!\u00104\u001a\u00020\u001c2\b\u00101\u001a\u0004\u0018\u0001002\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b4\u00105J\r\u00107\u001a\u000206¢\u0006\u0004\b7\u00108J\u0015\u0010:\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\b¢\u0006\u0004\b:\u0010!J\u0019\u0010<\u001a\u00020\u001c2\b\u0010;\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b<\u0010=J\r\u0010>\u001a\u00020\u001c¢\u0006\u0004\b>\u0010#J\u000f\u0010?\u001a\u00020\u001cH\u0016¢\u0006\u0004\b?\u0010#J\r\u0010@\u001a\u00020\u001c¢\u0006\u0004\b@\u0010#J\r\u0010A\u001a\u00020\u001c¢\u0006\u0004\bA\u0010#J\r\u0010B\u001a\u00020\u001c¢\u0006\u0004\bB\u0010#J\u0015\u0010D\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\u001cH\u0016¢\u0006\u0004\bF\u0010#J\u001f\u0010I\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\b2\u0006\u0010H\u001a\u00020\bH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u001cH\u0016¢\u0006\u0004\bK\u0010#J\u0019\u0010N\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bN\u0010OJ\u0019\u0010P\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bP\u0010OJ\u0019\u0010Q\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bQ\u0010OJ!\u0010S\u001a\u00020\u001c2\u0006\u0010R\u001a\u0002062\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bS\u0010TJ\u0019\u0010U\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bU\u0010OJ\u0019\u0010V\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bV\u0010OJ!\u0010Y\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020W2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u001cH\u0016¢\u0006\u0004\b[\u0010#J\u0019\u0010\\\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\b\\\u0010OJ\r\u0010]\u001a\u00020\u001c¢\u0006\u0004\b]\u0010#J\u000f\u0010^\u001a\u00020\u001cH\u0002¢\u0006\u0004\b^\u0010#J\u0017\u0010_\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b_\u0010`J\u0017\u0010c\u001a\u00020\u001c2\u0006\u0010b\u001a\u00020aH\u0002¢\u0006\u0004\bc\u0010dJ\u0017\u0010e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\bH\u0002¢\u0006\u0004\be\u0010!J\u0017\u0010g\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002¢\u0006\u0004\bg\u0010hJ\u0017\u0010i\u001a\u00020\u001c2\u0006\u0010b\u001a\u00020aH\u0002¢\u0006\u0004\bi\u0010dJ\u0017\u0010j\u001a\u00020\u001c2\u0006\u0010R\u001a\u000206H\u0002¢\u0006\u0004\bj\u0010kJ\u0017\u0010m\u001a\u00020\u001c2\u0006\u0010l\u001a\u000206H\u0002¢\u0006\u0004\bm\u0010kJ\u0017\u0010n\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002¢\u0006\u0004\bn\u0010hJ#\u0010q\u001a\u00020\u001c2\b\u0010o\u001a\u0004\u0018\u00010\b2\b\u0010p\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\u001cH\u0002¢\u0006\u0004\bs\u0010#J\u0017\u0010u\u001a\u00020\u001c2\u0006\u0010t\u001a\u00020\bH\u0002¢\u0006\u0004\bu\u0010!J\u000f\u0010v\u001a\u00020\u001cH\u0002¢\u0006\u0004\bv\u0010#J\u000f\u0010w\u001a\u00020\u001cH\u0002¢\u0006\u0004\bw\u0010#J\u0017\u0010x\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002¢\u0006\u0004\bx\u0010hR\u0014\u0010{\u001a\u00020\u00168\u0002X\u0082D¢\u0006\u0006\n\u0004\by\u0010zR\u0014\u0010\u007f\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010~R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bp\u0010\u0092\u0001R\u0017\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010zR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010zR\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0095\u0001\u0010zR\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001a\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001c\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R!\u0010£\u0001\u001a\u00030\u009e\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001R!\u0010¨\u0001\u001a\u00030¤\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0001\u0010 \u0001\u001a\u0006\b¦\u0001\u0010§\u0001R!\u0010\u00ad\u0001\u001a\u00030©\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bª\u0001\u0010 \u0001\u001a\u0006\b«\u0001\u0010¬\u0001R!\u0010²\u0001\u001a\u00030®\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¯\u0001\u0010 \u0001\u001a\u0006\b°\u0001\u0010±\u0001R!\u0010·\u0001\u001a\u00030³\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b´\u0001\u0010 \u0001\u001a\u0006\bµ\u0001\u0010¶\u0001R!\u0010¼\u0001\u001a\u00030¸\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¹\u0001\u0010 \u0001\u001a\u0006\bº\u0001\u0010»\u0001R\u0017\u0010¿\u0001\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u0018\u0010Á\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b;\u0010À\u0001R\u0018\u0010Â\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bo\u0010À\u0001R\u0019\u0010Ä\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010À\u0001R\u0017\u0010Æ\u0001\u001a\u00020\b8\u0002X\u0082D¢\u0006\b\n\u0006\bÅ\u0001\u0010¾\u0001R\u0017\u0010È\u0001\u001a\u00020\b8\u0002X\u0082D¢\u0006\b\n\u0006\bÇ\u0001\u0010¾\u0001R\u0017\u0010Ê\u0001\u001a\u00020\b8\u0002X\u0082D¢\u0006\b\n\u0006\bÉ\u0001\u0010¾\u0001R\u0019\u0010Ì\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010¾\u0001R\u0018\u0010Í\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bc\u0010À\u0001R\u0018\u0010Î\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b^\u0010À\u0001R\u0019\u0010Ð\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010À\u0001R\u0019\u0010Ó\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R\u0018\u0010Ô\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bu\u0010Ò\u0001R\u0018\u0010Õ\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bv\u0010À\u0001R#\u0010Ù\u0001\u001a\u0005\u0018\u00010Ö\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¾\u0001\u0010 \u0001\u001a\u0006\b×\u0001\u0010Ø\u0001R\u0019\u0010Ú\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010¾\u0001R-\u0010ß\u0001\u001a\u0018\u0012\u0013\u0012\u0011\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010Ü\u00010Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÝ\u0001\u0010Þ\u0001R\u0018\u0010à\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bw\u0010À\u0001R\u0018\u0010á\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bs\u0010À\u0001R\u0019\u0010ã\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010À\u0001R\u0018\u0010ç\u0001\u001a\u00030ä\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u0019\u0010é\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010Ò\u0001R\u0019\u0010ë\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010À\u0001¨\u0006ì\u0001"}, d2 = {"Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/f;", "Landroid/view/View$OnClickListener;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "adapterPosition", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "fragment", "", "trackId", "previousTrackId", "previousPageVideoId", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "data", "", "setData", "(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V", NotificationCompat.CATEGORY_STATUS, "setDownloadStatus", "(I)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "onPagePause", "onPageResume", "onPageStop", "onPageDestroy", "Lcom/transsion/player/orplayer/g;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", WebConstants.FIELD_ITEM, "onPageSelected", "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/moviedetailapi/bean/FirstFrame;", "firstImage", "addVideoView", "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V", "", "getProgress", "()J", RequestParameters.POSITION, "onPageRelease", "v", "onClick", "(Landroid/view/View;)V", "onNetConnect", "onPlayerReset", "reset", "app2Background", "videoStartPrepare", "url", "setVideoUrl", "(Ljava/lang/String;)V", "onSetDataSource", "width", "height", "onVideoSizeChanged", "(II)V", "onRenderFirstFrame", "Lao/e;", "mediaSource", "onPrepare", "(Lao/e;)V", "onVideoStart", "onVideoPause", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLao/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onLoopingStart", "onCompletion", "onItemViewMediaItemTransition", "D", "setContent", "(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "C", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setDownloadLoadingIconVisibility", "(Z)V", "setupHashTags", "W", "(J)V", "max", "X", "setLoading", "w", "h", "Y", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "M", "resolution", "G", "H", "L", "setControlVisible", "a", "Ljava/lang/String;", "TAG", "Lqv/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lqv/r;", "viewBinding", "c", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "detailViewModel", "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", "e", "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", "subtitleViewModel", "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;", "f", "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;", "downloadViewModel", "Lcom/transsion/ugcvideodetail/hepler/a;", "g", "Lcom/transsion/ugcvideodetail/hepler/a;", "dotLayer", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "i", "j", CampaignEx.JSON_KEY_AD_K, "l", "Lcom/transsion/player/orplayer/g;", "m", "Lcom/transsion/player/ui/ORPlayerView;", "Lcom/tn/lib/pager/PagerLayoutManager;", "n", "Lcom/tn/lib/pager/PagerLayoutManager;", "pagerLayoutManager", "Ltv/i;", "o", "Lkotlin/Lazy;", "getReportDelegate", "()Ltv/i;", "reportDelegate", "Ltv/e;", TtmlNode.TAG_P, "getDownloadDelegate", "()Ltv/e;", "downloadDelegate", "Ltv/h;", CampaignEx.JSON_KEY_AD_Q, "getPlayerDelegate", "()Ltv/h;", "playerDelegate", "Ltv/a;", CampaignEx.JSON_KEY_AD_R, "getActionDelegate", "()Ltv/a;", "actionDelegate", "Ltv/n;", "s", "getSubtitleDelegate", "()Ltv/n;", "subtitleDelegate", "Ltv/g;", "t", "getGestureDelegate", "()Ltv/g;", "gestureDelegate", TmcStartParams.KEY_URL_SHORT, "I", "screenWidth", "Z", "isClickPause", "isPageHide", "x", "isDownloadImmediately", "y", "DOWNLOAD_STATUS_DOWNLOAD_NONE", "z", "DOWNLOAD_STATUS_DOWNLOADING", "A", "DOWNLOAD_STATUS_DOWNLOAD_COMPLETE", "B", "singleDownloadImmediatelyStatus", "isSearchShow", "isEpLayoutShow", "E", "isHashTagShow", "F", "J", "totalDuration", "playProgress", "isSubscriptionInitiatedByThisView", "Lcom/transsnet/loginapi/ILoginApi;", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "curStatus", "Landroidx/lifecycle/c0;", "Lkotlin/Pair;", "K", "Landroidx/lifecycle/c0;", "subscriptObserver", "isLoading", "isFirstFrame", "N", "isPrepare", "Ljava/lang/Runnable;", "O", "Ljava/lang/Runnable;", "delayToastNetErrRunnable", "P", "lastShowNetWorkErrToastTime", "Q", "isBarHide", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.f, View.OnClickListener {

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final int DOWNLOAD_STATUS_DOWNLOAD_COMPLETE;

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private int singleDownloadImmediatelyStatus;

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private boolean isSearchShow;

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    private boolean isEpLayoutShow;

    /* JADX INFO: renamed from: E, reason: from kotlin metadata */
    private boolean isHashTagShow;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private long totalDuration;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private long playProgress;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean isSubscriptionInitiatedByThisView;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final Lazy loginApi;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private int curStatus;

    /* JADX INFO: renamed from: K, reason: from kotlin metadata */
    private final c0 subscriptObserver;

    /* JADX INFO: renamed from: L, reason: from kotlin metadata */
    private boolean isLoading;

    /* JADX INFO: renamed from: M, reason: from kotlin metadata */
    private boolean isFirstFrame;

    /* JADX INFO: renamed from: N, reason: from kotlin metadata */
    private boolean isPrepare;

    /* JADX INFO: renamed from: O, reason: from kotlin metadata */
    private final Runnable delayToastNetErrRunnable;

    /* JADX INFO: renamed from: P, reason: from kotlin metadata */
    private long lastShowNetWorkErrToastTime;

    /* JADX INFO: renamed from: Q, reason: from kotlin metadata */
    private boolean isBarHide;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final r viewBinding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideoDetailFragment fragment;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideoDetailViewModel detailViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.hepler.subtitle.a subtitleViewModel;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private UGCDownloadViewModel downloadViewModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.hepler.a dotLayer;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private UGCImmVideo data;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String trackId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String previousTrackId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String previousPageVideoId;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g orPlayer;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private PagerLayoutManager pagerLayoutManager;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Lazy reportDelegate;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final Lazy downloadDelegate;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final Lazy playerDelegate;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Lazy actionDelegate;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy subtitleDelegate;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Lazy gestureDelegate;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final int screenWidth;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean isClickPause;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private boolean isPageHide;

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private boolean isDownloadImmediately;

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final int DOWNLOAD_STATUS_DOWNLOAD_NONE;

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final int DOWNLOAD_STATUS_DOWNLOADING;

    public static final class a implements tv.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f56514a;

        a() {
            this.f56514a = UGCImmVideoItemView.this.viewBinding;
        }

        @Override // tv.a.b
        public r a() {
            return this.f56514a;
        }

        @Override // tv.a.b
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override // tv.a.b
        public UGCImmVideoDetailFragment c() {
            return UGCImmVideoItemView.this.fragment;
        }

        @Override // tv.a.b
        public String d() {
            return UGCImmVideoItemView.this.trackId;
        }

        @Override // tv.a.b
        public String e() {
            return UGCImmVideoItemView.this.previousPageVideoId;
        }

        @Override // tv.a.b
        public String f() {
            return UGCImmVideoItemView.this.previousTrackId;
        }

        @Override // tv.a.b
        public boolean g() {
            return UGCImmVideoItemView.this.isDownloadImmediately;
        }

        @Override // tv.a.b
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override // tv.a.b
        public ILoginApi h() {
            return UGCImmVideoItemView.this.getLoginApi();
        }

        @Override // tv.a.b
        public void i(boolean z10) {
            UGCImmVideoItemView.this.isSubscriptionInitiatedByThisView = z10;
        }
    }

    public static final class b implements tv.e.b {
        b() {
        }

        @Override // tv.e.b
        public void a(boolean z10) {
            UGCImmVideoItemView.this.setDownloadLoadingIconVisibility(z10);
        }

        @Override // tv.e.b
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override // tv.e.b
        public UGCImmVideoDetailFragment c() {
            return UGCImmVideoItemView.this.fragment;
        }

        @Override // tv.e.b
        public String d() {
            return UGCImmVideoItemView.this.trackId;
        }

        @Override // tv.e.b
        public String e() {
            return UGCImmVideoItemView.this.previousTrackId;
        }

        @Override // tv.e.b
        public UGCDownloadViewModel f() {
            return UGCImmVideoItemView.this.downloadViewModel;
        }

        @Override // tv.e.b
        public String g() {
            return UGCImmVideoItemView.this.previousPageVideoId;
        }

        @Override // tv.e.b
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }
    }

    public static final class c implements tv.g.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f56517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f56518b;

        c() {
            this.f56517a = UGCImmVideoItemView.this.viewBinding;
            this.f56518b = UGCImmVideoItemView.this.screenWidth;
        }

        @Override // tv.g.a
        public r a() {
            return this.f56517a;
        }

        @Override // tv.g.a
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override // tv.g.a
        public PagerLayoutManager c() {
            return UGCImmVideoItemView.this.pagerLayoutManager;
        }

        @Override // tv.g.a
        public void d() {
            UGCImmVideoItemView.this.M();
        }

        @Override // tv.g.a
        public void e(boolean z10) {
            UGCImmVideoItemView.this.setControlVisible(z10);
        }

        @Override // tv.g.a
        public void f(long j11) {
            UGCImmVideoItemView.this.W(j11);
        }

        @Override // tv.g.a
        public void g() {
            UGCImmVideoItemView.this.H();
        }

        @Override // tv.g.a
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override // tv.g.a
        public String getLogTag() {
            return UGCImmVideoItemView.this.TAG;
        }

        @Override // tv.g.a
        public com.transsion.player.orplayer.g getOrPlayer() {
            return UGCImmVideoItemView.this.orPlayer;
        }

        @Override // tv.g.a
        public void h(boolean z10) {
            UGCImmVideoItemView.this.isClickPause = z10;
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = UGCImmVideoItemView.this.fragment;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.b1(z10);
            }
        }

        @Override // tv.g.a
        public int i() {
            return this.f56518b;
        }

        @Override // tv.g.a
        public boolean isLoading() {
            return UGCImmVideoItemView.this.isLoading;
        }
    }

    public static final class d implements h.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f56520a;

        d() {
            this.f56520a = UGCImmVideoItemView.this.viewBinding;
        }

        @Override // tv.h.a
        public r a() {
            return this.f56520a;
        }

        @Override // tv.h.a
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override // tv.h.a
        public void c(boolean z10) {
            UGCImmVideoItemView.this.setKeepScreenOn(z10);
        }

        @Override // tv.h.a
        public void d() {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = UGCImmVideoItemView.this.fragment;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.hideLoading();
            }
        }

        @Override // tv.h.a
        public n e() {
            return UGCImmVideoItemView.this.getSubtitleDelegate();
        }

        @Override // tv.h.a
        public com.transsion.ugcvideodetail.hepler.a f() {
            return UGCImmVideoItemView.this.dotLayer;
        }

        @Override // tv.h.a
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override // tv.h.a
        public String getLogTag() {
            return UGCImmVideoItemView.this.TAG;
        }

        @Override // tv.h.a
        public com.transsion.player.orplayer.g getOrPlayer() {
            return UGCImmVideoItemView.this.orPlayer;
        }

        @Override // tv.h.a
        public void showLoading() {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = UGCImmVideoItemView.this.fragment;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.startLoading();
            }
        }
    }

    public static final class e implements i.a {
        e() {
        }

        @Override // tv.i.a
        public String d() {
            return UGCImmVideoItemView.this.trackId;
        }

        @Override // tv.i.a
        public String e() {
            return UGCImmVideoItemView.this.previousPageVideoId;
        }

        @Override // tv.i.a
        public String f() {
            return UGCImmVideoItemView.this.previousTrackId;
        }
    }

    public static final class f implements RequestListener {
        f() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            lg.a.C0828a.f(lg.a.f68839a, UGCImmVideoItemView.this.TAG, "onResourceReady ", false, 4, null);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            lg.a.C0828a.f(lg.a.f68839a, UGCImmVideoItemView.this.TAG, "onLoadFailed ", false, 4, null);
            return false;
        }
    }

    public static final class g implements n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f56524a;

        g() {
            this.f56524a = UGCImmVideoItemView.this.viewBinding;
        }

        @Override // tv.n.a
        public r a() {
            return this.f56524a;
        }

        @Override // tv.n.a
        public com.transsion.ugcvideodetail.hepler.subtitle.a b() {
            return UGCImmVideoItemView.this.subtitleViewModel;
        }

        @Override // tv.n.a
        public UGCImmVideoDetailFragment c() {
            return UGCImmVideoItemView.this.fragment;
        }

        @Override // tv.n.a
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override // tv.n.a
        public String getLogTag() {
            return UGCImmVideoItemView.this.TAG;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCImmVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCImmVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCImmVideoItemView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "UGCImmVideoItemView";
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.trackId = string;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.reportDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: sv.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.J(this.f75922a);
            }
        });
        this.downloadDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: sv.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.A(this.f75925a);
            }
        });
        this.playerDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: sv.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.I(this.f75928a);
            }
        });
        this.actionDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: sv.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.y(this.f75931a);
            }
        });
        this.subtitleDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: sv.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.U(this.f75889a);
            }
        });
        this.gestureDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() { // from class: sv.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.B(this.f75893a);
            }
        });
        this.screenWidth = y.e();
        this.DOWNLOAD_STATUS_DOWNLOAD_NONE = 1;
        this.DOWNLOAD_STATUS_DOWNLOADING = 2;
        this.DOWNLOAD_STATUS_DOWNLOAD_COMPLETE = 3;
        this.singleDownloadImmediatelyStatus = 1;
        this.loginApi = LazyKt.b(new Function0() { // from class: sv.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UGCImmVideoItemView.F();
            }
        });
        View.inflate(getContext(), R$layout.view_ugc_imm_video_detail_item, this);
        r rVarA = r.a(this);
        Intrinsics.g(rVarA, "bind(...)");
        this.viewBinding = rVarA;
        rVarA.D.setOnClickListener(this);
        rVarA.C.setOnClickListener(this);
        rVarA.f73878z.setOnClickListener(this);
        rVarA.f73867o.setOnClickListener(this);
        rVarA.f73863k.setOnClickListener(this);
        rVarA.f73869q.setOnClickListener(this);
        rVarA.H.setOnClickListener(this);
        rVarA.f73868p.setOnClickListener(this);
        rVarA.f73870r.setOnClickListener(this);
        rVarA.f73871s.setOnClickListener(this);
        FrameLayout vTopStatus = rVarA.J;
        Intrinsics.g(vTopStatus, "vTopStatus");
        jg.c.e(vTopStatus);
        getGestureDelegate().i();
        D();
        this.curStatus = -1;
        this.subscriptObserver = new c0() { // from class: sv.e
            @Override // androidx.p009lifecycle.c0
            public final void onChanged(Object obj) {
                UGCImmVideoItemView.T(this.f75899a, (Pair) obj);
            }
        };
        this.delayToastNetErrRunnable = new Runnable() { // from class: sv.f
            @Override // java.lang.Runnable
            public final void run() {
                UGCImmVideoItemView.z(this.f75902a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tv.e A(UGCImmVideoItemView uGCImmVideoItemView) {
        return new tv.e(uGCImmVideoItemView.new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tv.g B(UGCImmVideoItemView uGCImmVideoItemView) {
        return new tv.g(uGCImmVideoItemView.new c(), uGCImmVideoItemView.getReportDelegate());
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    private final void C(UGCVideo video) {
        boolean z10;
        UGCVideoPlayInfo playInfo;
        List<UGCVideoPlayStream> resources;
        if (video.isCollection()) {
            z10 = false;
        } else {
            z10 = true;
            if (video.getDownloadStyle() != null) {
                Integer downloadStyle = video.getDownloadStyle();
                if (downloadStyle == null || downloadStyle.intValue() != 1) {
                    z10 = false;
                }
            } else {
                UGCImmVideo uGCImmVideo = this.data;
                if (((uGCImmVideo == null || (playInfo = uGCImmVideo.getPlayInfo()) == null || (resources = playInfo.getResources()) == null) ? 0 : resources.size()) > 1) {
                    z10 = false;
                }
            }
        }
        this.isDownloadImmediately = z10;
        if (z10) {
            UGCImmVideo uGCImmVideo2 = this.data;
            V(uGCImmVideo2 != null ? uGCImmVideo2.getDownloadStatus() : 0);
        } else {
            setDownloadLoadingIconVisibility(false);
            this.viewBinding.f73863k.setImageResource(R$drawable.ugc_imm_video_ic_download);
        }
    }

    private final void D() {
        if (Build.VERSION.SDK_INT >= 30) {
            post(new Runnable() { // from class: sv.g
                @Override // java.lang.Runnable
                public final void run() {
                    UGCImmVideoItemView.E(this.f75904a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public static final void E(UGCImmVideoItemView uGCImmVideoItemView) {
        WindowInsets rootWindowInsets;
        Insets insets;
        boolean z10;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        Context context = uGCImmVideoItemView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        if (window == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null || (insets = rootWindowInsets.getInsets(WindowInsets.Type.tappableElement())) == null) {
            return;
        }
        if (com.blankj.utilcode.util.d.e(window)) {
            z10 = com.blankj.utilcode.util.d.a() > 1;
        }
        int iA = a0.a(24.0f);
        int iA2 = Build.VERSION.SDK_INT >= 35 ? a0.a(20.0f) + RangesKt.f(iA, insets.top) : RangesKt.f(iA, insets.top);
        if (z10 || insets.top <= 0) {
            Space progressUgcImmGuideline = uGCImmVideoItemView.viewBinding.f73875w;
            Intrinsics.g(progressUgcImmGuideline, "progressUgcImmGuideline");
            ViewGroup.LayoutParams layoutParams = progressUgcImmGuideline.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ViewGroup.LayoutParams layoutParams2 = uGCImmVideoItemView.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            int i11 = marginLayoutParams2 != null ? marginLayoutParams2.leftMargin : 0;
            ViewGroup.LayoutParams layoutParams3 = uGCImmVideoItemView.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            int i12 = marginLayoutParams3 != null ? marginLayoutParams3.topMargin : 0;
            ViewGroup.LayoutParams layoutParams4 = uGCImmVideoItemView.getLayoutParams();
            marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
            bVar.setMargins(i11, i12, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iA);
            progressUgcImmGuideline.setLayoutParams(bVar);
            return;
        }
        Space progressUgcImmGuideline2 = uGCImmVideoItemView.viewBinding.f73875w;
        Intrinsics.g(progressUgcImmGuideline2, "progressUgcImmGuideline");
        ViewGroup.LayoutParams layoutParams5 = progressUgcImmGuideline2.getLayoutParams();
        if (layoutParams5 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams5;
        ViewGroup.LayoutParams layoutParams6 = uGCImmVideoItemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
        int i13 = marginLayoutParams4 != null ? marginLayoutParams4.leftMargin : 0;
        ViewGroup.LayoutParams layoutParams7 = uGCImmVideoItemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
        int i14 = marginLayoutParams5 != null ? marginLayoutParams5.topMargin : 0;
        ViewGroup.LayoutParams layoutParams8 = uGCImmVideoItemView.getLayoutParams();
        marginLayoutParams = layoutParams8 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams8 : null;
        bVar2.setMargins(i13, i14, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iA2);
        progressUgcImmGuideline2.setLayoutParams(bVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi F() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final void G(int resolution) {
        UGCVideoPlayInfo playInfo;
        Integer numValueOf;
        Object next;
        UGCVideo ugcVideo;
        Map mapA;
        UGCVideo ugcVideo2;
        UGCImmVideo uGCImmVideo = this.data;
        if (uGCImmVideo == null || (playInfo = uGCImmVideo.getPlayInfo()) == null) {
            return;
        }
        Iterator<T> it = playInfo.getResources().iterator();
        do {
            numValueOf = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((UGCVideoPlayStream) next).getResolutions(), String.valueOf(resolution)));
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) next;
        if (uGCVideoPlayStream == null) {
            return;
        }
        String url = uGCVideoPlayStream.getUrl();
        String url2 = uGCVideoPlayStream.getUrl();
        UGCImmVideo uGCImmVideo2 = this.data;
        boolean zContainsKey = false;
        ao.e eVar = new ao.e(url, url2, (uGCImmVideo2 == null || (ugcVideo2 = uGCImmVideo2.getUgcVideo()) == null) ? 0 : ugcVideo2.videoUGCPosition(), null, null, 24, null);
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        lo.f fVar = gVar instanceof lo.f ? (lo.f) gVar : null;
        if (fVar != null && (mapA = fVar.a()) != null) {
            zContainsKey = mapA.containsKey(eVar.e());
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.TAG;
        UGCImmVideo uGCImmVideo3 = this.data;
        if (uGCImmVideo3 != null && (ugcVideo = uGCImmVideo3.getUgcVideo()) != null) {
            numValueOf = Integer.valueOf(ugcVideo.videoUGCPosition());
        }
        lg.a.C0828a.f(c0828a, str, "resolution play, resolution:" + resolution + ", EP:" + numValueOf + ", inList:" + zContainsKey + ", url:" + uGCVideoPlayStream.getUrl(), false, 4, null);
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        long currentPosition = gVar2 != null ? gVar2.getCurrentPosition() : 0L;
        if (!zContainsKey) {
            com.transsion.player.orplayer.g gVar3 = this.orPlayer;
            if (gVar3 != null) {
                gVar3.addDataSource(eVar);
            }
            com.transsion.player.orplayer.g gVar4 = this.orPlayer;
            if (gVar4 != null) {
                gVar4.prepare();
            }
        }
        com.transsion.player.orplayer.g gVar5 = this.orPlayer;
        if (gVar5 != null) {
            String strE = eVar.e();
            if (strE == null) {
                strE = "";
            }
            gVar5.seekTo(strE, currentPosition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H() {
        getPlayerDelegate().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h I(UGCImmVideoItemView uGCImmVideoItemView) {
        return new h(uGCImmVideoItemView.new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i J(UGCImmVideoItemView uGCImmVideoItemView) {
        return new i(uGCImmVideoItemView.new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(UGCVideo uGCVideo, UGCImmVideoItemView uGCImmVideoItemView, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<UGCVideoHashTag> filteredHashTags = uGCVideo.getFilteredHashTags();
        UGCVideoHashTag uGCVideoHashTag = filteredHashTags != null ? (UGCVideoHashTag) CollectionsKt.l0(filteredHashTags, i11) : null;
        i reportDelegate = uGCImmVideoItemView.getReportDelegate();
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = uGCImmVideoItemView.detailViewModel;
        reportDelegate.a("hash_tag", uGCVideo, uGCImmVideoDetailViewModel != null ? Boolean.valueOf(uGCImmVideoDetailViewModel.Y0()) : null, uGCVideoHashTag != null ? uGCVideoHashTag.getTag() : null, Integer.valueOf(i11));
        Navigator.x(TheRouter.c("/home/hashtag").I("titleHashTag", uGCVideoHashTag).K("UGCVideoId", uGCVideo.getUgcVideoId()), uGCImmVideoItemView.getContext(), null, 2, null);
    }

    private final void L() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastShowNetWorkErrToastTime > ToastStrategy.LONG_DURATION_TIMEOUT) {
            this.lastShowNetWorkErrToastTime = jCurrentTimeMillis;
            uh.b.f76753a.d(R$string.no_network_toast);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment;
        FragmentManager childFragmentManager;
        Object objM454constructorimpl;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment2 = this.fragment;
        if (uGCImmVideoDetailFragment2 == null || !uGCImmVideoDetailFragment2.isAdded() || (uGCImmVideoDetailFragment = this.fragment) == null || (childFragmentManager = uGCImmVideoDetailFragment.getChildFragmentManager()) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            UGCImmVideoSettingDialog uGCImmVideoSettingDialogA = UGCImmVideoSettingDialog.INSTANCE.a();
            uGCImmVideoSettingDialogA.u0(new Function1() { // from class: sv.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.N(this.f75885a, ((Float) obj).floatValue());
                }
            });
            uGCImmVideoSettingDialogA.t0(new Function1() { // from class: sv.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.O(this.f75908a, ((Integer) obj).intValue());
                }
            });
            uGCImmVideoSettingDialogA.v0(new Function1() { // from class: sv.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.P(this.f75909a, (eu.a) obj);
                }
            });
            uGCImmVideoSettingDialogA.s0(new Function0() { // from class: sv.k
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UGCImmVideoItemView.Q(this.f75912a);
                }
            });
            uGCImmVideoSettingDialogA.r0(new Function1() { // from class: sv.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.S(this.f75915a, ((Boolean) obj).booleanValue());
                }
            });
            uGCImmVideoSettingDialogA.show(childFragmentManager, "UGCImmVideoSettingDialog");
            objM454constructorimpl = Result.m454constructorimpl(uGCImmVideoSettingDialogA);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Result.m453boximpl(objM454constructorimpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(UGCImmVideoItemView uGCImmVideoItemView, float f11) {
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = uGCImmVideoItemView.detailViewModel;
        if (uGCImmVideoDetailViewModel != null) {
            uGCImmVideoDetailViewModel.e1(f11);
        }
        com.transsion.player.orplayer.g gVar = uGCImmVideoItemView.orPlayer;
        if (gVar != null) {
            gVar.setSpeed(f11);
        }
        lg.a.C0828a.f(lg.a.f68839a, uGCImmVideoItemView.TAG, "setSpeed speed:" + f11, false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(UGCImmVideoItemView uGCImmVideoItemView, int i11) {
        lg.a.C0828a.f(lg.a.f68839a, uGCImmVideoItemView.TAG, "resolution change:" + i11, false, 4, null);
        uGCImmVideoItemView.G(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(UGCImmVideoItemView uGCImmVideoItemView, eu.a subtitle) {
        Intrinsics.h(subtitle, "subtitle");
        lg.a.C0828a.f(lg.a.f68839a, uGCImmVideoItemView.TAG, "subtitle change:" + subtitle, false, 4, null);
        uGCImmVideoItemView.getSubtitleDelegate().o(subtitle);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(final UGCImmVideoItemView uGCImmVideoItemView) {
        uGCImmVideoItemView.isBarHide = true;
        uGCImmVideoItemView.post(new Runnable() { // from class: sv.h
            @Override // java.lang.Runnable
            public final void run() {
                UGCImmVideoItemView.R(this.f75906a);
            }
        });
        uGCImmVideoItemView.setControlVisible(false);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(UGCImmVideoItemView uGCImmVideoItemView) {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = uGCImmVideoItemView.fragment;
        if (uGCImmVideoDetailFragment != null) {
            ImmersionBar.with(uGCImmVideoDetailFragment).hideBar(BarHide.FLAG_HIDE_BAR).init();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(UGCImmVideoItemView uGCImmVideoItemView, boolean z10) {
        com.transsion.player.orplayer.g gVar = uGCImmVideoItemView.orPlayer;
        if (gVar != null) {
            gVar.setLooping(!z10);
        }
        lg.a.C0828a.f(lg.a.f68839a, uGCImmVideoItemView.TAG, "autoplay change:" + z10, false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(UGCImmVideoItemView uGCImmVideoItemView, Pair pair) {
        UGCVideo ugcVideo;
        UGCVideoCreator creator;
        String uid;
        UGCVideo ugcVideo2;
        UGCVideoCreator creator2;
        UGCVideo ugcVideo3;
        UGCVideoCreator creator3;
        String uid2 = null;
        String str = pair != null ? (String) pair.getFirst() : null;
        UGCImmVideo uGCImmVideo = uGCImmVideoItemView.data;
        if (uGCImmVideo != null && (ugcVideo3 = uGCImmVideo.getUgcVideo()) != null && (creator3 = ugcVideo3.getCreator()) != null) {
            uid2 = creator3.getUid();
        }
        if (Intrinsics.c(str, uid2)) {
            boolean z10 = uGCImmVideoItemView.isSubscriptionInitiatedByThisView;
            if (z10) {
                uGCImmVideoItemView.isSubscriptionInitiatedByThisView = false;
                ProgressBar pbUgcImmSubscribeLoading = uGCImmVideoItemView.viewBinding.f73873u;
                Intrinsics.g(pbUgcImmSubscribeLoading, "pbUgcImmSubscribeLoading");
                jg.c.g(pbUgcImmSubscribeLoading);
            }
            if (pair == null) {
                if (z10) {
                    AppCompatImageView ivUgcImmSubscribe = uGCImmVideoItemView.viewBinding.f73868p;
                    Intrinsics.g(ivUgcImmSubscribe, "ivUgcImmSubscribe");
                    jg.c.k(ivUgcImmSubscribe);
                    return;
                }
                return;
            }
            if (((Boolean) pair.getSecond()).booleanValue()) {
                AppCompatImageView ivUgcImmSubscribe2 = uGCImmVideoItemView.viewBinding.f73868p;
                Intrinsics.g(ivUgcImmSubscribe2, "ivUgcImmSubscribe");
                jg.c.g(ivUgcImmSubscribe2);
            }
            UGCImmVideo uGCImmVideo2 = uGCImmVideoItemView.data;
            if (uGCImmVideo2 != null && (ugcVideo2 = uGCImmVideo2.getUgcVideo()) != null && (creator2 = ugcVideo2.getCreator()) != null) {
                creator2.setHasSubscribe((Boolean) pair.getSecond());
            }
            if (z10) {
                m.c(((Boolean) pair.getSecond()).booleanValue() ? com.transsion.baseui.R$string.ugc_video_detail_followed : com.transsion.baseui.R$string.ugc_video_detail_unfollowed);
                UGCImmVideo uGCImmVideo3 = uGCImmVideoItemView.data;
                if (uGCImmVideo3 == null || (ugcVideo = uGCImmVideo3.getUgcVideo()) == null || (creator = ugcVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
                    return;
                }
                ov.d dVar = new ov.d(uid, ((Boolean) pair.getSecond()).booleanValue());
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = ov.d.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, dVar, 0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n U(UGCImmVideoItemView uGCImmVideoItemView) {
        return new n(uGCImmVideoItemView.new g());
    }

    private final void V(int status) {
        switch (status) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
                this.singleDownloadImmediatelyStatus = this.DOWNLOAD_STATUS_DOWNLOADING;
                setDownloadLoadingIconVisibility(true);
                break;
            case 5:
                this.singleDownloadImmediatelyStatus = this.DOWNLOAD_STATUS_DOWNLOAD_COMPLETE;
                setDownloadLoadingIconVisibility(false);
                this.viewBinding.f73863k.setImageResource(R$drawable.ugc_imm_video_ic_downloaded);
                break;
            default:
                this.singleDownloadImmediatelyStatus = this.DOWNLOAD_STATUS_DOWNLOAD_NONE;
                setDownloadLoadingIconVisibility(false);
                this.viewBinding.f73863k.setImageResource(R$drawable.ugc_imm_video_ic_download);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(long progress) {
        getPlayerDelegate().g(progress);
    }

    private final void X(long max) {
        getPlayerDelegate().h(max);
    }

    private final void Y(Integer w11, Integer h11) {
        if (w11 == null || h11 == null || w11.intValue() == 0) {
            return;
        }
        int i11 = this.screenWidth;
        int iC = w11.intValue() > h11.intValue() ? (int) (y.c() * 0.14f) : 0;
        FrameLayout flUgcImmContainer = this.viewBinding.f73856d;
        Intrinsics.g(flUgcImmContainer, "flUgcImmContainer");
        ViewGroup.LayoutParams layoutParams = flUgcImmContainer.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        int iIntValue = (h11.intValue() * this.screenWidth) / w11.intValue();
        if (i11 != ((ViewGroup.MarginLayoutParams) bVar).width || iIntValue != ((ViewGroup.MarginLayoutParams) bVar).height) {
            ((ViewGroup.MarginLayoutParams) bVar).width = i11;
            ((ViewGroup.MarginLayoutParams) bVar).height = iIntValue;
            lg.a.C0828a.v(lg.a.f68839a, this.TAG, "=====> updateSurface, w:" + i11 + ", h:" + iIntValue, false, 4, null);
        }
        ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = iC;
        flUgcImmContainer.setLayoutParams(bVar);
        AppCompatImageView ivUgcImmCover = this.viewBinding.f73862j;
        Intrinsics.g(ivUgcImmCover, "ivUgcImmCover");
        ViewGroup.LayoutParams layoutParams2 = ivUgcImmCover.getLayoutParams();
        if (layoutParams2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
        ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin = iC;
        ivUgcImmCover.setLayoutParams(bVar2);
    }

    private final tv.a getActionDelegate() {
        return (tv.a) this.actionDelegate.getValue();
    }

    private final tv.e getDownloadDelegate() {
        return (tv.e) this.downloadDelegate.getValue();
    }

    private final tv.g getGestureDelegate() {
        return (tv.g) this.gestureDelegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    private final h getPlayerDelegate() {
        return (h) this.playerDelegate.getValue();
    }

    private final i getReportDelegate() {
        return (i) this.reportDelegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n getSubtitleDelegate() {
        return (n) this.subtitleDelegate.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:115:0x02b6 A[PHI: r5
  0x02b6: PHI (r5v38 java.lang.String) = (r5v26 java.lang.String), (r5v28 java.lang.String), (r5v40 java.lang.String) binds: [B:120:0x02c4, B:123:0x02cc, B:113:0x02b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x0081  */
    private final void setContent(UGCImmVideo data) {
        boolean zC;
        String url;
        String str;
        Object objM454constructorimpl;
        FragmentActivity activity;
        int i11;
        Integer width;
        Integer height;
        Integer width2;
        Integer height2;
        FirstFrame firstImage;
        Integer width3;
        FirstFrame firstImage2;
        Integer height3;
        FirstFrame firstImage3;
        String str2;
        String description;
        UGCVideo ugcVideo;
        UGCVideoCreator creator;
        LiveData liveDataI0;
        int iIntValue = 1;
        UGCVideo ugcVideo2 = data.getUgcVideo();
        if (ugcVideo2 == null) {
            return;
        }
        UGCVideoCreator creator2 = ugcVideo2.getCreator();
        String string = "";
        if (creator2 != null) {
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            String avatar = creator2.getAvatar();
            if (avatar == null) {
                avatar = "";
            }
            ej.f.b bVarI = bVarM.g(avatar).i(R$color.white_20);
            ShapeableImageView ivUgcImmUserCover = this.viewBinding.f73869q;
            Intrinsics.g(ivUgcImmUserCover, "ivUgcImmUserCover");
            bVarI.d(ivUgcImmUserCover);
            this.viewBinding.H.setText(creator2.getNickname());
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel == null || !uGCImmVideoDetailViewModel.Y0()) {
            UGCVideoCreator creator3 = ugcVideo2.getCreator();
            if (creator3 != null) {
                zC = Intrinsics.c(creator3.getHasSubscribe(), Boolean.TRUE);
            } else {
                zC = false;
            }
        } else {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.detailViewModel;
            UGCImmVideo uGCImmVideo = (uGCImmVideoDetailViewModel2 == null || (liveDataI0 = uGCImmVideoDetailViewModel2.I0()) == null) ? null : (UGCImmVideo) liveDataI0.f();
            if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (creator = ugcVideo.getCreator()) == null) {
                zC = false;
            } else {
                zC = Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
            }
        }
        AppCompatImageView ivUgcImmSubscribe = this.viewBinding.f73868p;
        Intrinsics.g(ivUgcImmSubscribe, "ivUgcImmSubscribe");
        ivUgcImmSubscribe.setVisibility(!zC ? 0 : 8);
        this.viewBinding.H.setMaxWidth(this.screenWidth - dk.a.b(zC ? Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE : 142));
        String description2 = ugcVideo2.getDescription();
        if (description2 == null || description2.length() == 0) {
            NestedScrollableHost nsUgcImmPostDes = this.viewBinding.f73872t;
            Intrinsics.g(nsUgcImmPostDes, "nsUgcImmPostDes");
            jg.c.g(nsUgcImmPostDes);
        } else {
            this.viewBinding.f73855c.setText(ugcVideo2.getDescription());
            if (ugcVideo2.videoUGCPosition() > 0) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                description = String.format("EP%s | %s", Arrays.copyOf(new Object[]{Integer.valueOf(ugcVideo2.videoUGCPosition()), ugcVideo2.getDescription()}, 2));
                Intrinsics.g(description, "format(...)");
            } else {
                description = ugcVideo2.getDescription();
            }
            this.viewBinding.f73855c.l(description);
            NestedScrollableHost nsUgcImmPostDes2 = this.viewBinding.f73872t;
            Intrinsics.g(nsUgcImmPostDes2, "nsUgcImmPostDes");
            jg.c.k(nsUgcImmPostDes2);
        }
        RecyclerView recyclerView = this.viewBinding.f73876x;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        if (this.viewBinding.f73876x.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new ig.c(dk.a.b(12), dk.a.b(8)));
        }
        setupHashTags(ugcVideo2);
        UGCVideoInteractiveInfo interactiveInfo = ugcVideo2.getInteractiveInfo();
        if (interactiveInfo != null) {
            AppCompatTextView appCompatTextView = this.viewBinding.D;
            String likeNum = interactiveInfo.getLikeNum();
            if (likeNum == null) {
                likeNum = "0";
            }
            Long lX = StringsKt.x(likeNum);
            appCompatTextView.setText(j.a(lX != null ? lX.longValue() : 0L));
            AppCompatTextView appCompatTextView2 = this.viewBinding.D;
            Boolean hasLike = interactiveInfo.getHasLike();
            Boolean bool = Boolean.TRUE;
            appCompatTextView2.setSelected(Intrinsics.c(hasLike, bool));
            AppCompatTextView appCompatTextView3 = this.viewBinding.C;
            String favoriteNum = interactiveInfo.getFavoriteNum();
            if (favoriteNum == null) {
                favoriteNum = "0";
            }
            Long lX2 = StringsKt.x(favoriteNum);
            appCompatTextView3.setText(j.a(lX2 != null ? lX2.longValue() : 0L));
            this.viewBinding.C.setSelected(Intrinsics.c(interactiveInfo.getHasFavorite(), bool));
            AppCompatTextView appCompatTextView4 = this.viewBinding.f73878z;
            String commentNum = interactiveInfo.getCommentNum();
            Long lX3 = StringsKt.x(commentNum != null ? commentNum : "0");
            appCompatTextView4.setText(j.a(lX3 != null ? lX3.longValue() : 0L));
        }
        String str3 = " ";
        if (ugcVideo2.isCollection()) {
            this.isEpLayoutShow = true;
            ConstraintLayout layoutUgcImmTvEpisode = this.viewBinding.f73870r;
            Intrinsics.g(layoutUgcImmTvEpisode, "layoutUgcImmTvEpisode");
            jg.c.k(layoutUgcImmTvEpisode);
            AppCompatTextView appCompatTextView5 = this.viewBinding.B;
            if (ugcVideo2.isShortTv()) {
                Context context2 = getContext();
                int i12 = com.transsion.ugcvideodetail.R$string.ugc_video_detail_short_tv_prefix;
                String title = ugcVideo2.getTitle();
                if (title == null) {
                    title = " ";
                }
                string = context2.getString(i12, title);
            } else {
                String title2 = ugcVideo2.getTitle();
                if (title2 != null) {
                    string = title2;
                }
            }
            appCompatTextView5.setText(string);
            int iVideoUGCPosition = ugcVideo2.videoUGCPosition();
            if (iVideoUGCPosition > 0) {
                this.viewBinding.A.setText("/EP" + iVideoUGCPosition);
            }
            AppCompatImageView ivUgcImmEpTitleIc = this.viewBinding.f73865m;
            Intrinsics.g(ivUgcImmEpTitleIc, "ivUgcImmEpTitleIc");
            UGCVideoTypeKt.h(ivUgcImmEpTitleIc, ugcVideo2, Integer.valueOf(dk.a.b(16)));
        } else {
            this.isEpLayoutShow = false;
            ConstraintLayout layoutUgcImmTvEpisode2 = this.viewBinding.f73870r;
            Intrinsics.g(layoutUgcImmTvEpisode2, "layoutUgcImmTvEpisode");
            jg.c.g(layoutUgcImmTvEpisode2);
        }
        List<String> searchWord = ugcVideo2.getSearchWord();
        if (searchWord == null || searchWord.isEmpty()) {
            this.isSearchShow = false;
            FrameLayout layoutUgcImmTvSearch = this.viewBinding.f73871s;
            Intrinsics.g(layoutUgcImmTvSearch, "layoutUgcImmTvSearch");
            jg.c.g(layoutUgcImmTvSearch);
        } else {
            this.isSearchShow = true;
            FrameLayout layoutUgcImmTvSearch2 = this.viewBinding.f73871s;
            Intrinsics.g(layoutUgcImmTvSearch2, "layoutUgcImmTvSearch");
            jg.c.k(layoutUgcImmTvSearch2);
            TextView textView = this.viewBinding.G;
            Context context3 = getContext();
            int i13 = com.transsion.ugcvideodetail.R$string.ugc_video_detail_search_prefix;
            List<String> searchWord2 = ugcVideo2.getSearchWord();
            if (searchWord2 != null && (str2 = (String) CollectionsKt.k0(searchWord2)) != null) {
                str3 = str2;
            }
            textView.setText(context3.getString(i13, str3));
        }
        UGCVideoPlayInfo playInfo = data.getPlayInfo();
        if (playInfo == null || (firstImage3 = playInfo.getFirstImage()) == null || (url = firstImage3.getUrl()) == null) {
            Cover coverVertical = ugcVideo2.getCoverVertical();
            url = coverVertical != null ? coverVertical.getUrl() : null;
            if (url != null) {
                str = url;
            } else {
                Cover cover = ugcVideo2.getCover();
                if (cover != null) {
                    url = cover.getUrl();
                    str = url;
                } else {
                    str = null;
                }
            }
        } else {
            str = url;
        }
        int i14 = this.screenWidth / 2;
        try {
            Result.Companion companion = Result.INSTANCE;
            UGCVideoPlayInfo playInfo2 = data.getPlayInfo();
            if ((playInfo2 != null ? playInfo2.getFirstImage() : null) != null) {
                UGCVideoPlayInfo playInfo3 = data.getPlayInfo();
                int iIntValue2 = ((playInfo3 == null || (firstImage2 = playInfo3.getFirstImage()) == null || (height3 = firstImage2.getHeight()) == null) ? 0 : height3.intValue()) * i14;
                UGCVideoPlayInfo playInfo4 = data.getPlayInfo();
                if (playInfo4 != null && (firstImage = playInfo4.getFirstImage()) != null && (width3 = firstImage.getWidth()) != null) {
                    iIntValue = width3.intValue();
                }
                i11 = iIntValue2 / iIntValue;
            } else if (ugcVideo2.getCoverVertical() != null) {
                Cover coverVertical2 = ugcVideo2.getCoverVertical();
                int iIntValue3 = ((coverVertical2 == null || (height2 = coverVertical2.getHeight()) == null) ? 0 : height2.intValue()) * i14;
                Cover coverVertical3 = ugcVideo2.getCoverVertical();
                if (coverVertical3 != null && (width2 = coverVertical3.getWidth()) != null) {
                    iIntValue = width2.intValue();
                }
                i11 = iIntValue3 / iIntValue;
            } else {
                Cover cover2 = ugcVideo2.getCover();
                int iIntValue4 = ((cover2 == null || (height = cover2.getHeight()) == null) ? 0 : height.intValue()) * i14;
                Cover cover3 = ugcVideo2.getCover();
                if (cover3 != null && (width = cover3.getWidth()) != null) {
                    iIntValue = width.intValue();
                }
                i11 = iIntValue4 / iIntValue;
            }
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf(i11));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Integer num = (Integer) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        int iIntValue5 = num != null ? num.intValue() : 0;
        if (str != null) {
            String strD = as.b.f16104a.d(str, (120 & 2) != 0 ? 0 : i14, (120 & 4) != 0 ? 0 : iIntValue5, (120 & 8) != 0, (120 & 16) != 0 ? false : false, (120 & 32) == 0 ? false : false, (120 & 64) != 0 ? 25 : 0);
            if (Intrinsics.c(strD, this.viewBinding.f73862j.getTag())) {
                return;
            }
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
            if (uGCImmVideoDetailFragment != null && (activity = uGCImmVideoDetailFragment.getActivity()) != null) {
                this.viewBinding.f73862j.setTag(strD);
                Glide.with(activity).load2(strD).addListener(new f()).into(this.viewBinding.f73862j);
            }
        }
        C(ugcVideo2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setControlVisible(boolean show) {
        AppCompatImageView appCompatImageViewL0;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment;
        if (show && this.isBarHide && (uGCImmVideoDetailFragment = this.fragment) != null) {
            this.isBarHide = false;
            ImmersionBar.with(uGCImmVideoDetailFragment).hideBar(BarHide.FLAG_SHOW_BAR).init();
        }
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment2 = this.fragment;
        if (uGCImmVideoDetailFragment2 != null && (appCompatImageViewL0 = uGCImmVideoDetailFragment2.L0()) != null) {
            appCompatImageViewL0.setVisibility(show ? 0 : 8);
        }
        Group groupUgcImmControl = this.viewBinding.f73861i;
        Intrinsics.g(groupUgcImmControl, "groupUgcImmControl");
        groupUgcImmControl.setVisibility(show ? 0 : 8);
        FrameLayout layoutUgcImmTvSearch = this.viewBinding.f73871s;
        Intrinsics.g(layoutUgcImmTvSearch, "layoutUgcImmTvSearch");
        layoutUgcImmTvSearch.setVisibility(show && this.isSearchShow ? 0 : 8);
        ConstraintLayout layoutUgcImmTvEpisode = this.viewBinding.f73870r;
        Intrinsics.g(layoutUgcImmTvEpisode, "layoutUgcImmTvEpisode");
        layoutUgcImmTvEpisode.setVisibility(show && this.isEpLayoutShow ? 0 : 8);
        RecyclerView rvUgcImmTags = this.viewBinding.f73876x;
        Intrinsics.g(rvUgcImmTags, "rvUgcImmTags");
        rvUgcImmTags.setVisibility(show && this.isHashTagShow ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDownloadLoadingIconVisibility(boolean show) {
        if (show) {
            AppCompatImageView ivUgcImmDownload = this.viewBinding.f73863k;
            Intrinsics.g(ivUgcImmDownload, "ivUgcImmDownload");
            jg.c.h(ivUgcImmDownload);
            UGCImmRingLoadingView vUgcImmDownloadLoading = this.viewBinding.K;
            Intrinsics.g(vUgcImmDownloadLoading, "vUgcImmDownloadLoading");
            jg.c.k(vUgcImmDownloadLoading);
            return;
        }
        AppCompatImageView ivUgcImmDownload2 = this.viewBinding.f73863k;
        Intrinsics.g(ivUgcImmDownload2, "ivUgcImmDownload");
        jg.c.k(ivUgcImmDownload2);
        UGCImmRingLoadingView vUgcImmDownloadLoading2 = this.viewBinding.K;
        Intrinsics.g(vUgcImmDownloadLoading2, "vUgcImmDownloadLoading");
        jg.c.g(vUgcImmDownloadLoading2);
    }

    private final void setLoading(boolean show) {
        this.isLoading = show;
        getPlayerDelegate().f(show);
    }

    private final void setupHashTags(final UGCVideo video) {
        List<UGCVideoHashTag> filteredHashTags = video.getFilteredHashTags();
        if (filteredHashTags == null || filteredHashTags.isEmpty()) {
            this.isHashTagShow = false;
            RecyclerView rvUgcImmTags = this.viewBinding.f73876x;
            Intrinsics.g(rvUgcImmTags, "rvUgcImmTags");
            jg.c.g(rvUgcImmTags);
            return;
        }
        this.isHashTagShow = true;
        RecyclerView rvUgcImmTags2 = this.viewBinding.f73876x;
        Intrinsics.g(rvUgcImmTags2, "rvUgcImmTags");
        jg.c.k(rvUgcImmTags2);
        List<UGCVideoHashTag> filteredHashTags2 = video.getFilteredHashTags();
        Intrinsics.e(filteredHashTags2);
        com.transsion.ugcvideodetail.adapter.i iVar = new com.transsion.ugcvideodetail.adapter.i(filteredHashTags2, true);
        this.viewBinding.f73876x.setAdapter(iVar);
        iVar.w1(new p6.d() { // from class: sv.m
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCImmVideoItemView.K(video, this, baseQuickAdapter, view, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tv.a y(UGCImmVideoItemView uGCImmVideoItemView) {
        return new tv.a(uGCImmVideoItemView.new a(), uGCImmVideoItemView.getReportDelegate(), uGCImmVideoItemView.getDownloadDelegate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(UGCImmVideoItemView uGCImmVideoItemView) {
        uGCImmVideoItemView.L();
    }

    public final void addVideoView(View view, FirstFrame firstImage) {
        ORPlayerView oRPlayerView = this.orPlayerView;
        if ((oRPlayerView != null ? oRPlayerView.getParent() : null) != null) {
            ORPlayerView oRPlayerView2 = this.orPlayerView;
            ViewParent parent = oRPlayerView2 != null ? oRPlayerView2.getParent() : null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.orPlayerView);
            }
        }
        this.viewBinding.f73856d.addView(view, new FrameLayout.LayoutParams(-1, -1));
        if (firstImage != null) {
            Y(firstImage.getWidth(), firstImage.getHeight());
        }
    }

    public final void app2Background() {
        UGCImmVideo uGCImmVideo = this.data;
        boolean zIsFree = uGCImmVideo != null ? uGCImmVideo.isFree() : false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.c(zIsFree, true);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final long getProgress() {
        return this.viewBinding.f73877y.getCurrentProgress();
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
        u viewLifecycleOwner;
        LiveData liveDataR;
        super.onAttachedToWindow();
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null && (viewLifecycleOwner = uGCImmVideoDetailFragment.getViewLifecycleOwner()) != null) {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
            if (uGCImmVideoDetailViewModel != null && (liveDataR = uGCImmVideoDetailViewModel.R()) != null) {
                liveDataR.j(viewLifecycleOwner, this.subscriptObserver);
            }
            getDownloadDelegate().j(viewLifecycleOwner);
        }
        getSubtitleDelegate().e();
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v11) {
        getActionDelegate().a(v11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        lg.a.C0828a.r(lg.a.f68839a, this.TAG, new String[]{"onCompletion， play next"}, false, 4, null);
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.g();
        }
        W(0L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        u viewLifecycleOwner;
        LiveData liveDataR;
        super.onDetachedFromWindow();
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel != null && (liveDataR = uGCImmVideoDetailViewModel.R()) != null) {
            liveDataR.o(this.subscriptObserver);
        }
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null && (viewLifecycleOwner = uGCImmVideoDetailFragment.getViewLifecycleOwner()) != null) {
            getDownloadDelegate().k(viewLifecycleOwner);
        }
        getSubtitleDelegate().g();
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
    }

    public final void onItemViewMediaItemTransition() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onMediaItemTransition: " + this.viewBinding.f73877y.getMaxProgress() + "  : " + this, false, 4, null);
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.g();
        }
        reset();
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e mediaSource) {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.h();
        }
        setLoading(true);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e mediaSource) {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.i();
        }
        setLoading(false);
        removeCallbacks(this.delayToastNetErrRunnable);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        lg.a.C0828a.r(lg.a.f68839a, this.TAG, new String[]{"onLoopingStart"}, false, 4, null);
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.j();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    public final void onNetConnect() {
        lg.a.C0828a.f(lg.a.f68839a, "ORSubtitle_v", "onNetConnect, 网络恢复，检测字幕", false, 4, null);
        getSubtitleDelegate().f();
    }

    public final void onPageDestroy() {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.p();
        }
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(this);
        }
    }

    public final void onPagePause() {
        com.transsion.player.orplayer.g gVar;
        this.isPageHide = true;
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPause", false, 4, null);
        if (ox.c.f72196a.c(this.orPlayer) || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.pause();
    }

    public final void onPageRelease(int position) {
        onPlayerReset();
    }

    public final void onPageResume() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment;
        this.isPageHide = false;
        if (this.isClickPause || (uGCImmVideoDetailFragment = this.fragment) == null || !uGCImmVideoDetailFragment.isVisible()) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "ON_RESUME", false, 4, null);
        H();
    }

    public final void onPageSelected(com.transsion.player.orplayer.g orPlayer, ORPlayerView orPlayerView, UGCImmVideo item) {
        String url;
        b0 b0VarM0;
        UGCVideoPlayInfo playInfo;
        b0 b0VarB;
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        b0 b0VarD;
        UGCVideo ugcVideo2;
        b0 b0VarL0;
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.t(orPlayer);
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel != null && (b0VarL0 = uGCImmVideoDetailViewModel.L0()) != null) {
            b0VarL0.q(this.data);
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.detailViewModel;
        if (uGCImmVideoDetailViewModel2 != null && (b0VarD = uGCImmVideoDetailViewModel2.D()) != null) {
            UGCImmVideo uGCImmVideo = this.data;
            b0VarD.q((uGCImmVideo == null || (ugcVideo2 = uGCImmVideo.getUgcVideo()) == null) ? null : ugcVideo2.getUgcVideoId());
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel3 = this.detailViewModel;
        if (uGCImmVideoDetailViewModel3 != null && (b0VarB = uGCImmVideoDetailViewModel3.B()) != null) {
            UGCImmVideo uGCImmVideo2 = this.data;
            b0VarB.q((uGCImmVideo2 == null || (ugcVideo = uGCImmVideo2.getUgcVideo()) == null || (belongToCollection = ugcVideo.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId());
        }
        if (orPlayer != null) {
            orPlayer.addPlayerListener(this);
        }
        FirstFrame firstImage = (item == null || (playInfo = item.getPlayInfo()) == null) ? null : playInfo.getFirstImage();
        if (orPlayerView != null) {
            addVideoView(orPlayerView, firstImage);
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "addView-----", false, 4, null);
        }
        UGCVideoPlayStream uGCVideoPlayStreamA = pv.a.f72500a.a(item != null ? item.getPlayInfo() : null);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel4 = this.detailViewModel;
        if (uGCImmVideoDetailViewModel4 != null && (b0VarM0 = uGCImmVideoDetailViewModel4.M0()) != null) {
            b0VarM0.q(uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getResolutions() : null);
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "play url=" + (uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getUrl() : null) + " , duration: " + (uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getDuration() : null) + ", resolutions:" + (uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getResolutions() : null), false, 4, null);
        getSubtitleDelegate().i(uGCVideoPlayStreamA);
        videoStartPrepare();
        if (uGCVideoPlayStreamA != null && (url = uGCVideoPlayStreamA.getUrl()) != null) {
            if (orPlayer != null) {
                orPlayer.seekTo(url, 0L);
            }
            setVideoUrl(url);
        }
        if (orPlayer != null) {
            orPlayer.play();
        }
    }

    public final void onPageStop() {
        if (this.totalDuration == 0) {
            com.transsion.player.orplayer.g gVar = this.orPlayer;
            this.totalDuration = gVar != null ? gVar.getDuration() : 0L;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onPageStop: totalDuration:" + this.totalDuration + ",playProgress:" + this.playProgress, false, 4, null);
        getPlayerDelegate().a(this.totalDuration, this.playProgress);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Integer errorCode;
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.k(errorInfo);
        }
        lg.a.f68839a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.k() : null) + " --> 短播放失败了", true);
        setLoading(false);
        Integer errorCode2 = errorInfo.getErrorCode();
        if ((errorCode2 != null && errorCode2.intValue() == 2001) || ((errorCode = errorInfo.getErrorCode()) != null && errorCode.intValue() == 2002)) {
            L();
        }
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, ao.e eVar) {
        com.transsion.player.orplayer.f.a.s(this, tnPlayerType, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.TAG, "player- onPlayerReset data: " + this.data, false, 4, null);
        getSubtitleDelegate().n();
        setKeepScreenOn(false);
        this.isClickPause = false;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null) {
            uGCImmVideoDetailFragment.b1(false);
        }
        this.isFirstFrame = false;
        this.isPrepare = false;
        UGCImmVideo uGCImmVideo = this.data;
        boolean zIsFree = uGCImmVideo != null ? uGCImmVideo.isFree() : false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.c(zIsFree, false);
        }
        if (zIsFree && (uGCImmVideoDetailViewModel = this.detailViewModel) != null) {
            uGCImmVideoDetailViewModel.f1(this.data, this.playProgress, this.totalDuration);
        }
        AppCompatImageView ivUgcImmCover = this.viewBinding.f73862j;
        Intrinsics.g(ivUgcImmCover, "ivUgcImmCover");
        jg.c.k(ivUgcImmCover);
        lg.a.C0828a.f(c0828a, this.TAG, "onPlayerReset   visible  " + this, false, 4, null);
        AppCompatImageView ivUgcImmPlayStatus = this.viewBinding.f73866n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        jg.c.g(ivUgcImmPlayStatus);
        com.transsion.player.orplayer.g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(this);
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        W(0L);
        X(100L);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e mediaSource) {
        b0 b0VarH;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
        com.transsion.player.orplayer.g gVar;
        b0 b0VarH2;
        UGCVideo ugcVideo;
        if (this.isPrepare) {
            return;
        }
        this.isPrepare = true;
        com.transsion.player.orplayer.g gVar2 = this.orPlayer;
        long duration = gVar2 != null ? gVar2.getDuration() : 0L;
        this.totalDuration = duration;
        X(duration);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel != null && (b0VarH = uGCImmVideoDetailViewModel.H()) != null && (uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) b0VarH.f()) != null) {
            String ugcVideoId = uGCVideoDetailPlayBean.getUgcVideoId();
            UGCImmVideo uGCImmVideo = this.data;
            if (Intrinsics.c(ugcVideoId, (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? null : ugcVideo.getUgcVideoId())) {
                long progress = uGCVideoDetailPlayBean.getProgress();
                lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f73877y.getCurrentProgress() + ", progress = " + progress + "  duration = " + duration, false, 4, null);
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.detailViewModel;
                if (uGCImmVideoDetailViewModel2 != null && (b0VarH2 = uGCImmVideoDetailViewModel2.H()) != null) {
                    b0VarH2.q(null);
                }
                if (progress > 0 && Math.abs(duration - progress) > 2000 && (gVar = this.orPlayer) != null) {
                    gVar.seekTo(progress);
                }
            }
        }
        setKeepScreenOn(true);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        this.playProgress = progress;
        getPlayerDelegate().b(progress, getGestureDelegate().k());
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.TAG;
        AppCompatImageView ivUgcImmCover = this.viewBinding.f73862j;
        Intrinsics.g(ivUgcImmCover, "ivUgcImmCover");
        lg.a.C0828a.f(c0828a, str, "player-onRenderFirstFrame   viewBinding.ivCover.isVisible:" + (ivUgcImmCover.getVisibility() == 0) + " ", false, 4, null);
        if (!this.isFirstFrame) {
            this.isFirstFrame = true;
            com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
            if (aVar != null) {
                aVar.m();
            }
        }
        setLoading(false);
        AppCompatImageView ivUgcImmCover2 = this.viewBinding.f73862j;
        Intrinsics.g(ivUgcImmCover2, "ivUgcImmCover");
        jg.c.g(ivUgcImmCover2);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.f();
        }
        com.transsion.ugcvideodetail.hepler.a aVar2 = this.dotLayer;
        if (aVar2 != null) {
            aVar2.a();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        if (getGestureDelegate().m(event)) {
            return true;
        }
        return super.onTouchEvent(event);
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
        getPlayerDelegate().c();
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int width, int height) {
        com.transsion.player.orplayer.f.a.H(this, width, height);
        Y(Integer.valueOf(width), Integer.valueOf(height));
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "player- onVideoStart", false, 4, null);
        onPrepare(mediaSource);
        getPlayerDelegate().d();
    }

    public final void reset() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "playNewMedia data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null) {
            uGCImmVideoDetailFragment.b1(false);
        }
        this.isFirstFrame = false;
        UGCImmVideo uGCImmVideo = this.data;
        boolean zIsFree = uGCImmVideo != null ? uGCImmVideo.isFree() : false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.c(zIsFree, false);
        }
        AppCompatImageView ivUgcImmPlayStatus = this.viewBinding.f73866n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        jg.c.g(ivUgcImmPlayStatus);
        W(0L);
        X(100L);
    }

    public final void setData(Integer adapterPosition, UGCImmVideoDetailFragment fragment, String trackId, String previousTrackId, String previousPageVideoId, UGCImmVideo data) {
        FragmentActivity activity;
        Intrinsics.h(trackId, "trackId");
        Intrinsics.h(data, "data");
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "--------------------------setData position:" + adapterPosition, false, 4, null);
        this.data = data;
        this.trackId = trackId;
        this.previousTrackId = previousTrackId;
        this.previousPageVideoId = previousPageVideoId;
        this.fragment = fragment;
        this.isSubscriptionInitiatedByThisView = false;
        com.transsion.ugcvideodetail.hepler.a aVar = new com.transsion.ugcvideodetail.hepler.a("/ugc_video/immersive_detail", fragment != null ? fragment.getLastPageFrom() : null);
        this.dotLayer = aVar;
        aVar.s(data.getUgcVideo());
        com.transsion.ugcvideodetail.hepler.a aVar2 = this.dotLayer;
        if (aVar2 != null) {
            aVar2.r(adapterPosition);
        }
        if (fragment != null && (activity = fragment.getActivity()) != null) {
            this.detailViewModel = (UGCImmVideoDetailViewModel) new v0(activity).a(UGCImmVideoDetailViewModel.class);
            this.subtitleViewModel = (com.transsion.ugcvideodetail.hepler.subtitle.a) new v0(activity).a(com.transsion.ugcvideodetail.hepler.subtitle.a.class);
            this.downloadViewModel = (UGCDownloadViewModel) new v0(activity).a(UGCDownloadViewModel.class);
        }
        setContent(data);
    }

    public final void setDownloadStatus(int status) {
        if (this.isDownloadImmediately && status != this.curStatus) {
            this.curStatus = status;
            UGCImmVideo uGCImmVideo = this.data;
            if (uGCImmVideo != null) {
                uGCImmVideo.setDownloadStatus(status);
            }
            V(status);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    public final void setVideoUrl(String url) {
        Intrinsics.h(url, "url");
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.u(url);
        }
    }

    public final void videoStartPrepare() {
        this.isFirstFrame = false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.f();
        }
        com.transsion.ugcvideodetail.hepler.a aVar2 = this.dotLayer;
        if (aVar2 != null) {
            aVar2.a();
        }
        setLoading(true);
    }
}
