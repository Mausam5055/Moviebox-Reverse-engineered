package com.transsion.videofloat.view;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import ao.e;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.y;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$color;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.videofloat.R$layout;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.manager.VideoFloatSubtitleControl;
import com.transsion.videofloat.manager.a0;
import com.transsion.videofloat.manager.d;
import com.transsion.videofloat.view.VideoFloatView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import rx.c;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001QB!\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\u000bB\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0010¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\r2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J\u0019\u0010+\u001a\u00020\r2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\rH\u0016¢\u0006\u0004\b-\u0010\u000fJ!\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020.2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00102\u001a\u00020\r2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b2\u0010(J\u0019\u00103\u001a\u00020\r2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b3\u0010(J\u0019\u00104\u001a\u00020\r2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b4\u0010(J\u0019\u00105\u001a\u00020\r2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b5\u0010(J\u000f\u00106\u001a\u00020\rH\u0003¢\u0006\u0004\b6\u0010\u000fJ\u0017\u00107\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\rH\u0002¢\u0006\u0004\b9\u0010\u000fJ\u000f\u0010:\u001a\u00020\rH\u0002¢\u0006\u0004\b:\u0010\u000fJ\u000f\u0010;\u001a\u00020\rH\u0002¢\u0006\u0004\b;\u0010\u000fJ\u0017\u0010>\u001a\u00020\r2\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\b>\u0010?J\u0017\u0010A\u001a\u00020\r2\u0006\u0010@\u001a\u00020\u0010H\u0002¢\u0006\u0004\bA\u0010BJ\u000f\u0010C\u001a\u00020\rH\u0002¢\u0006\u0004\bC\u0010\u000fJ\u0019\u0010E\u001a\u00020\r2\b\b\u0002\u0010D\u001a\u00020\u0010H\u0002¢\u0006\u0004\bE\u0010BJ\u0017\u0010G\u001a\u00020\r2\u0006\u0010F\u001a\u00020\u0010H\u0002¢\u0006\u0004\bG\u0010BJ\u000f\u0010H\u001a\u00020\rH\u0002¢\u0006\u0004\bH\u0010\u000fJ\u0017\u0010J\u001a\u00020\r2\u0006\u0010I\u001a\u00020\u0010H\u0002¢\u0006\u0004\bJ\u0010BJ\u0017\u0010K\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\bK\u00108J\u0017\u0010M\u001a\u00020\r2\u0006\u0010L\u001a\u00020\u0007H\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010O\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\bO\u00108R\u0014\u0010S\u001a\u00020P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Y\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010HR\u0016\u0010[\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010HR\u0016\u0010]\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010HR\u0016\u0010_\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010HR\u0014\u0010c\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0018\u0010g\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010m\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0018\u0010q\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0018\u0010w\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR\u0018\u0010{\u001a\u0004\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010\u007f\u001a\u00020|8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R \u0010\u0083\u0001\u001a\t\u0018\u00010\u0080\u0001R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0018\u0010\u0085\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bA\u0010\u0084\u0001R\u0017\u0010\u0088\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bG\u0010\u0087\u0001R\u0017\u0010\u008b\u0001\u001a\u00030\u0089\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bO\u0010\u008a\u0001¨\u0006\u008c\u0001"}, d2 = {"Lcom/transsion/videofloat/view/VideoFloatView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/f;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "removeFromWindow", "()V", "", "proactive", "Lpx/a;", "floatBean", "addToWindow", "(ZLpx/a;)V", "Lsx/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setVideoFloatListener", "(Lsx/a;)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "isPlaying", "()Z", "Lcom/transsion/player/orplayer/g;", "getPlayer", "()Lcom/transsion/player/orplayer/g;", "getFloatBean", "()Lpx/a;", "Lao/e;", "mediaSource", "onCompletion", "(Lao/e;)V", "", "uuid", "onMediaItemTransition", "(Ljava/lang/String;)V", "onRenderFirstFrame", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLao/e;)V", "onVideoPause", "onVideoStart", "onLoadingBegin", "onLoadingEnd", TmcStartParams.KEY_URL_SHORT, "H", "(Lpx/a;)V", "C", "B", "F", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "D", "(Landroid/view/View;)V", ToolBar.FORWARD, CampaignEx.JSON_KEY_AD_Q, "(Z)V", "E", "autoHide", "J", "fastHide", CampaignEx.JSON_KEY_AD_R, "I", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "setForwardStatus", "t", "width", "K", "(I)V", "s", "Lqx/b;", "a", "Lqx/b;", "viewBinding", "Lcom/transsion/videofloat/bean/FloatPlayType;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/videofloat/bean/FloatPlayType;", "lastFloatType", "c", "defMinWidth", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "defWidth", "e", "screenWidth", "f", "screenHeight", "Landroid/view/WindowManager;", "g", "Landroid/view/WindowManager;", "windowManager", "Landroid/view/WindowManager$LayoutParams;", "h", "Landroid/view/WindowManager$LayoutParams;", "windowLp", "i", "Lsx/a;", "floatListener", "j", "Lcom/transsion/player/orplayer/g;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "l", "Lpx/a;", "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;", "m", "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;", "subtitleControl", "Lcom/transsion/videofloat/manager/d;", "n", "Lcom/transsion/videofloat/manager/d;", "floatDot", "Landroid/os/Handler;", "o", "Landroid/os/Handler;", "controlHandler", "Lcom/transsion/videofloat/view/VideoFloatView$a;", TtmlNode.TAG_P, "Lcom/transsion/videofloat/view/VideoFloatView$a;", "screenStateReceiver", "Z", "isPressedPause", "Lrx/a;", "Lrx/a;", "gestureController", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "controlRunnable", "VideoFloat_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoFloatView extends ConstraintLayout implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final qx.b viewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private FloatPlayType lastFloatType;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int defMinWidth;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int defWidth;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int screenWidth;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int screenHeight;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final WindowManager windowManager;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private WindowManager.LayoutParams windowLp;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private sx.a floatListener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private g orPlayer;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private ORPlayerView orPlayerView;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private px.a floatBean;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private VideoFloatSubtitleControl subtitleControl;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private d floatDot;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private Handler controlHandler;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private a screenStateReceiver;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private boolean isPressedPause;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final rx.a gestureController;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Runnable controlRunnable;

    private final class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function1 f58012a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f58013b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ VideoFloatView f58014c;

        public a(VideoFloatView videoFloatView, Function1 callback) {
            Intrinsics.h(callback, "callback");
            this.f58014c = videoFloatView;
            this.f58012a = callback;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            String action = intent.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode == -2128145023) {
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                        this.f58013b = true;
                        this.f58012a.invoke(Boolean.TRUE);
                        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "Screen off", false, 4, null);
                        return;
                    }
                    return;
                }
                if (iHashCode == 823795052 && action.equals("android.intent.action.USER_PRESENT")) {
                    this.f58013b = false;
                    this.f58012a.invoke(Boolean.FALSE);
                    lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "User present", false, 4, null);
                }
            }
        }
    }

    public static final class b implements c {
        b() {
        }

        @Override // rx.c
        public void a() {
            VideoFloatView.this.E();
        }

        @Override // rx.c
        public void b(float f11, float f12) {
            WindowManager.LayoutParams layoutParams = VideoFloatView.this.windowLp;
            if (layoutParams != null) {
                VideoFloatView videoFloatView = VideoFloatView.this;
                layoutParams.x += (int) f11;
                layoutParams.y += (int) f12;
                int i11 = videoFloatView.screenWidth - layoutParams.width;
                int i12 = videoFloatView.screenHeight - layoutParams.height;
                int i13 = layoutParams.x;
                if (i11 <= 0) {
                    i11 = 0;
                }
                layoutParams.x = RangesKt.m(i13, 0, i11);
                int i14 = layoutParams.y;
                if (i12 <= 0) {
                    i12 = 0;
                }
                layoutParams.y = RangesKt.m(i14, 0, i12);
                videoFloatView.windowManager.updateViewLayout(videoFloatView, layoutParams);
            }
        }

        @Override // rx.c
        public void onScale(ScaleGestureDetector detector) {
            Intrinsics.h(detector, "detector");
            WindowManager.LayoutParams layoutParams = VideoFloatView.this.windowLp;
            if (layoutParams != null) {
                VideoFloatView videoFloatView = VideoFloatView.this;
                int scaleFactor = (int) (layoutParams.width * detector.getScaleFactor());
                layoutParams.width = scaleFactor;
                if (scaleFactor > videoFloatView.screenWidth) {
                    layoutParams.width = videoFloatView.screenWidth;
                }
                if (layoutParams.width < videoFloatView.defMinWidth) {
                    layoutParams.width = videoFloatView.defMinWidth;
                }
                videoFloatView.K(layoutParams.width);
                px.a aVar = videoFloatView.floatBean;
                layoutParams.height = (aVar != null ? aVar.i() : null) == FloatPlayType.SHORT_TV ? (layoutParams.width * 16) / 9 : (layoutParams.width * 9) / 16;
                videoFloatView.windowManager.updateViewLayout(videoFloatView, layoutParams);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoFloatView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VideoFloatView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoFloatView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        Object systemService = context.getSystemService("window");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.windowManager = (WindowManager) systemService;
        this.controlHandler = new Handler(Looper.getMainLooper());
        this.gestureController = new rx.a(context, new b());
        View.inflate(getContext(), R$layout.view_video_float, this);
        qx.b bVarA = qx.b.a(this);
        Intrinsics.g(bVarA, "bind(...)");
        this.viewBinding = bVarA;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        u();
        this.controlRunnable = new Runnable() { // from class: tx.b
            @Override // java.lang.Runnable
            public final void run() {
                VideoFloatView.p(this.f76410a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(VideoFloatView videoFloatView, View view) {
        videoFloatView.q(true);
    }

    private final void B() {
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.m();
        }
        removeFromWindow();
        a0.f57933a.d();
        g gVar = this.orPlayer;
        this.orPlayer = null;
        if (gVar != null) {
            gVar.release();
        }
        sx.a aVar = this.floatListener;
        if (aVar != null) {
            aVar.c(this.floatBean);
        }
    }

    private final void C() {
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.l();
        }
        sx.a aVar = this.floatListener;
        if (aVar != null) {
            aVar.b(this.floatBean);
        }
        removeFromWindow();
    }

    private final void D(View view) {
        g gVar;
        g gVar2 = this.orPlayer;
        if (gVar2 != null && gVar2.isPlaying()) {
            this.isPressedPause = true;
            g gVar3 = this.orPlayer;
            if (gVar3 != null) {
                gVar3.pause();
            }
            view.setSelected(true);
            J(false);
            return;
        }
        g gVar4 = this.orPlayer;
        if (gVar4 != null && gVar4.isComplete() && (gVar = this.orPlayer) != null) {
            gVar.seekTo(0L);
        }
        g gVar5 = this.orPlayer;
        if (gVar5 != null) {
            gVar5.play();
        }
        view.setSelected(false);
        setForwardStatus(false);
        J(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        Group groupControl = this.viewBinding.f73891c;
        Intrinsics.g(groupControl, "groupControl");
        if (jg.c.i(groupControl)) {
            r(true);
        } else {
            J(true);
        }
    }

    private final void F() {
        this.screenStateReceiver = new a(this, new Function1() { // from class: tx.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoFloatView.G(this.f76409a, ((Boolean) obj).booleanValue());
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(Build.VERSION.SDK_INT >= 33 ? getContext().registerReceiver(this.screenStateReceiver, intentFilter, 2) : getContext().registerReceiver(this.screenStateReceiver, intentFilter));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(VideoFloatView videoFloatView, boolean z10) {
        g gVar;
        if (z10) {
            g gVar2 = videoFloatView.orPlayer;
            if (gVar2 != null) {
                gVar2.pause();
            }
        } else if (!videoFloatView.isPressedPause && (gVar = videoFloatView.orPlayer) != null) {
            gVar.play();
        }
        return Unit.f67061a;
    }

    private final void H(px.a floatBean) {
        if (this.lastFloatType == floatBean.i()) {
            return;
        }
        this.screenWidth = y.e();
        int iC = y.c();
        this.screenHeight = iC;
        int i11 = this.screenWidth;
        if (i11 > iC) {
            this.screenWidth = iC;
            this.screenHeight = i11;
        }
        FloatPlayType floatPlayTypeI = floatBean.i();
        FloatPlayType floatPlayType = FloatPlayType.SHORT_TV;
        this.defMinWidth = floatPlayTypeI == floatPlayType ? com.blankj.utilcode.util.a0.a(120.0f) : com.blankj.utilcode.util.a0.a(180.0f);
        int iA = floatBean.i() == floatPlayType ? com.blankj.utilcode.util.a0.a(120.0f) : com.blankj.utilcode.util.a0.a(180.0f);
        this.defWidth = iA;
        int i12 = floatBean.i() == floatPlayType ? (iA * 16) / 9 : (iA * 9) / 16;
        int iA2 = (this.screenWidth - iA) - com.blankj.utilcode.util.a0.a(12.0f);
        int iA3 = ((this.screenHeight - i12) - com.blankj.utilcode.util.a0.a(64.0f)) - com.blankj.utilcode.util.d.c();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = Build.VERSION.SDK_INT >= 26 ? 2038 : 2003;
        layoutParams.format = -3;
        layoutParams.flags = 40;
        layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        layoutParams.width = iA;
        layoutParams.height = i12;
        layoutParams.x = iA2;
        layoutParams.y = iA3;
        this.windowLp = layoutParams;
        ViewGroup.LayoutParams layoutParams2 = this.viewBinding.f73890b.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams2 instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams2 : null;
        if (bVar != null) {
            bVar.I = floatBean.i() == floatPlayType ? "h,9:16" : "h,16:9";
        } else {
            bVar = new ConstraintLayout.b(0, 0);
            bVar.I = floatBean.i() == floatPlayType ? "h,9:16" : "h,16:9";
        }
        this.viewBinding.f73890b.setLayoutParams(bVar);
        this.lastFloatType = floatBean.i();
    }

    private final void I() {
        this.viewBinding.f73896h.setSelected(true);
        J(false);
        setForwardStatus(true);
    }

    private final void J(boolean autoHide) {
        Group groupControl = this.viewBinding.f73891c;
        Intrinsics.g(groupControl, "groupControl");
        jg.c.k(groupControl);
        if (autoHide) {
            r(false);
        } else {
            this.controlHandler.removeCallbacks(this.controlRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(int width) {
        this.viewBinding.f73897i.setTextSize(RangesKt.h(((width * 1.0f) / this.defWidth) * 12.0f, 16.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(VideoFloatView videoFloatView) {
        Group groupControl = videoFloatView.viewBinding.f73891c;
        Intrinsics.g(groupControl, "groupControl");
        jg.c.g(groupControl);
    }

    private final void q(boolean forward) {
        long jG;
        lg.a.f68839a.c("VideoFloat", "VideoFloatView--forwardOrBackward :" + forward, true);
        if (forward) {
            g gVar = this.orPlayer;
            long currentPosition = (gVar != null ? gVar.getCurrentPosition() : 0L) + ((long) 10000);
            g gVar2 = this.orPlayer;
            jG = RangesKt.j(currentPosition, gVar2 != null ? gVar2.getDuration() : 0L);
        } else {
            setForwardStatus(false);
            g gVar3 = this.orPlayer;
            jG = RangesKt.g(0L, (gVar3 != null ? gVar3.getCurrentPosition() : 0L) - ((long) 10000));
        }
        g gVar4 = this.orPlayer;
        if (gVar4 != null) {
            gVar4.seekTo(jG);
        }
    }

    private final void r(boolean fastHide) {
        if (!fastHide) {
            this.controlHandler.removeCallbacks(this.controlRunnable);
            this.controlHandler.postDelayed(this.controlRunnable, 2000L);
        } else {
            Group groupControl = this.viewBinding.f73891c;
            Intrinsics.g(groupControl, "groupControl");
            jg.c.g(groupControl);
        }
    }

    private final void s(px.a floatBean) {
        d dVar = new d(floatBean, floatBean.f().isPrepared());
        dVar.d();
        dVar.a();
        String strJ = floatBean.j();
        if (strJ == null) {
            strJ = "";
        }
        dVar.p(strJ);
        dVar.n();
        this.floatDot = dVar;
    }

    private final void setForwardStatus(boolean complete) {
        if (!this.viewBinding.f73894f.isClickable() || complete) {
            this.viewBinding.f73894f.setClickable(!complete);
            this.viewBinding.f73894f.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(getContext(), complete ? R$color.gray_dark_50 : R$color.white)));
        }
    }

    private final void t(px.a floatBean) {
        SimpleSubtitleView vSubtitle = this.viewBinding.f73897i;
        Intrinsics.g(vSubtitle, "vSubtitle");
        VideoFloatSubtitleControl videoFloatSubtitleControl = new VideoFloatSubtitleControl(vSubtitle, floatBean);
        videoFloatSubtitleControl.w(com.transsion.baselib.helper.d.f43265a.d());
        this.subtitleControl = videoFloatSubtitleControl;
    }

    private final void u() {
        setOnTouchListener(new View.OnTouchListener() { // from class: tx.c
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return VideoFloatView.v(this.f76411a, view, motionEvent);
            }
        });
        this.viewBinding.f73895g.setOnClickListener(new View.OnClickListener() { // from class: tx.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoFloatView.w(this.f76412a, view);
            }
        });
        this.viewBinding.f73893e.setOnClickListener(new View.OnClickListener() { // from class: tx.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoFloatView.x(this.f76413a, view);
            }
        });
        this.viewBinding.f73896h.setOnClickListener(new View.OnClickListener() { // from class: tx.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoFloatView.y(this.f76414a, view);
            }
        });
        this.viewBinding.f73892d.setOnClickListener(new View.OnClickListener() { // from class: tx.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoFloatView.z(this.f76415a, view);
            }
        });
        this.viewBinding.f73894f.setOnClickListener(new View.OnClickListener() { // from class: tx.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoFloatView.A(this.f76416a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v(VideoFloatView videoFloatView, View view, MotionEvent motionEvent) {
        rx.a aVar = videoFloatView.gestureController;
        Intrinsics.e(motionEvent);
        return aVar.d(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(VideoFloatView videoFloatView, View view) {
        videoFloatView.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(VideoFloatView videoFloatView, View view) {
        videoFloatView.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(VideoFloatView videoFloatView, View view) {
        Intrinsics.e(view);
        videoFloatView.D(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(VideoFloatView videoFloatView, View view) {
        videoFloatView.q(false);
    }

    public final void addToWindow(boolean proactive, px.a floatBean) {
        Intrinsics.h(floatBean, "floatBean");
        lg.a.f68839a.p("VideoFloat", new String[]{"VideoFloatView--addToWindow"}, true);
        t(floatBean);
        s(floatBean);
        this.orPlayer = floatBean.f();
        this.floatBean = floatBean;
        J(true);
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.addPlayerListener(this);
        }
        H(floatBean);
        try {
            Result.Companion companion = Result.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            ORPlayerView oRPlayerView = new ORPlayerView(applicationA, RenderType.SURFACE_VIEW);
            oRPlayerView.setKeepScreenOn(true);
            this.orPlayerView = oRPlayerView;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            this.viewBinding.f73890b.removeAllViews();
            this.viewBinding.f73890b.addView(oRPlayerView, layoutParams);
            this.windowManager.addView(this, this.windowLp);
            g gVar2 = this.orPlayer;
            if (gVar2 != null) {
                gVar2.setSurfaceView(oRPlayerView.getSurface());
            }
            F();
            if (!floatBean.f().isPlaying()) {
                floatBean.f().play();
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    public final px.a getFloatBean() {
        return this.floatBean;
    }

    /* JADX INFO: renamed from: getPlayer, reason: from getter */
    public final g getOrPlayer() {
        return this.orPlayer;
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
    }

    public final boolean isPlaying() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.isPlaying();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(e eVar) {
        f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, e eVar) {
        f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(e mediaSource) {
        f.a.e(this, mediaSource);
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.e();
        }
        sx.a aVar = this.floatListener;
        if (aVar != null && aVar.a(this.floatBean)) {
            d dVar2 = this.floatDot;
            if (dVar2 != null) {
                dVar2.a();
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            px.a aVar2 = this.floatBean;
            lg.a.C0828a.f(c0828a, "VideoFloat", "VideoFloatView--onCompletion curEp:" + (aVar2 != null ? Integer.valueOf(aVar2.c()) : null) + ", play next", false, 4, null);
            return;
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        px.a aVar3 = this.floatBean;
        lg.a.C0828a.f(c0828a2, "VideoFloat", "VideoFloatView--onCompletion curEp:" + (aVar3 != null ? Integer.valueOf(aVar3.c()) : null) + ",no next", false, 4, null);
        d dVar3 = this.floatDot;
        if (dVar3 != null) {
            dVar3.b();
        }
        I();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        this.screenWidth = y.e();
        this.screenHeight = y.c();
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(e mediaSource) {
        f.a.i(this, mediaSource);
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.f();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e mediaSource) {
        f.a.k(this, mediaSource);
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.g();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, e eVar) {
        f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String uuid) {
        f.a.p(this, uuid);
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.e();
        }
        sx.a aVar = this.floatListener;
        if (aVar != null && aVar.a(this.floatBean)) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            px.a aVar2 = this.floatBean;
            lg.a.C0828a.f(c0828a, "VideoFloat", "VideoFloatView--onMediaItemTransition curEp:" + (aVar2 != null ? Integer.valueOf(aVar2.c()) : null) + ", play next", false, 4, null);
            return;
        }
        lg.a.C0828a c0828a2 = lg.a.f68839a;
        px.a aVar3 = this.floatBean;
        lg.a.C0828a.f(c0828a2, "VideoFloat", "VideoFloatView--onMediaItemTransition curEp:" + (aVar3 != null ? Integer.valueOf(aVar3.c()) : null) + ",no next", false, 4, null);
        I();
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError playError, e eVar) {
        f.a.q(this, playError, eVar);
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, e eVar) {
        f.a.s(this, tnPlayerType, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(e eVar) {
        f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(e eVar) {
        f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, e mediaSource) {
        String strK;
        d dVar;
        f.a.y(this, progress, mediaSource);
        if (mediaSource != null && (strK = mediaSource.k()) != null && (dVar = this.floatDot) != null) {
            dVar.r(strK);
        }
        d dVar2 = this.floatDot;
        if (dVar2 != null) {
            dVar2.h(progress);
        }
        px.a aVar = this.floatBean;
        if (aVar != null) {
            aVar.F(progress);
        }
        VideoFloatSubtitleControl videoFloatSubtitleControl = this.subtitleControl;
        if (videoFloatSubtitleControl != null) {
            videoFloatSubtitleControl.u(progress);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        f.a.A(this);
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.i();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(e mediaSource) {
        f.a.F(this, mediaSource);
        this.viewBinding.f73896h.setSelected(true);
        VideoFloatSubtitleControl videoFloatSubtitleControl = this.subtitleControl;
        if (videoFloatSubtitleControl != null) {
            videoFloatSubtitleControl.v(false);
        }
        VideoFloatSubtitleControl videoFloatSubtitleControl2 = this.subtitleControl;
        if (videoFloatSubtitleControl2 != null) {
            videoFloatSubtitleControl2.q();
        }
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.j();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e mediaSource) {
        f.a.I(this, mediaSource);
        this.viewBinding.f73896h.setSelected(false);
        VideoFloatSubtitleControl videoFloatSubtitleControl = this.subtitleControl;
        if (videoFloatSubtitleControl != null) {
            videoFloatSubtitleControl.v(true);
        }
        VideoFloatSubtitleControl videoFloatSubtitleControl2 = this.subtitleControl;
        if (videoFloatSubtitleControl2 != null) {
            videoFloatSubtitleControl2.s();
        }
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.k();
        }
    }

    public final void removeFromWindow() {
        lg.a.f68839a.x("VideoFloat", "VideoFloatView--removeFromWindow", true);
        VideoFloatSubtitleControl videoFloatSubtitleControl = this.subtitleControl;
        if (videoFloatSubtitleControl != null) {
            videoFloatSubtitleControl.r();
        }
        this.subtitleControl = null;
        d dVar = this.floatDot;
        if (dVar != null) {
            dVar.b();
        }
        this.floatDot = null;
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(this);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            ORPlayerView oRPlayerView = this.orPlayerView;
            if (oRPlayerView != null) {
                oRPlayerView.setKeepScreenOn(false);
            }
            this.windowManager.removeViewImmediate(this);
            getContext().unregisterReceiver(this.screenStateReceiver);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.orPlayerView = null;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }

    public final void setVideoFloatListener(sx.a listener) {
        Intrinsics.h(listener, "listener");
        this.floatListener = listener;
    }
}
