package com.transsion.player.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.player.control.BaseVideoController;
import com.transsion.player.control.b;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.PipStatus;
import com.transsion.player.p007enum.ScaleMode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mo.d;
import oo.c;
import oo.e;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0019\u001a\u00020\u000f2\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0010\u0010\u001c\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000fH\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\u000fH\u0016¢\u0006\u0004\b&\u0010$J\u0017\u0010)\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b+\u0010*J\u0017\u0010.\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u000f2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u000fH\u0016¢\u0006\u0004\b4\u0010$J\u000f\u00105\u001a\u00020\u000fH\u0016¢\u0006\u0004\b5\u0010$J\u000f\u00106\u001a\u00020\u000fH\u0016¢\u0006\u0004\b6\u0010$J\u0017\u00109\u001a\u00020\u000f2\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010=\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010@\u001a\u00020\u000f2\u0006\u0010?\u001a\u000200H\u0016¢\u0006\u0004\b@\u00103J\u0017\u0010B\u001a\u00020\u000f2\u0006\u0010A\u001a\u000207H\u0016¢\u0006\u0004\bB\u0010:J\u0017\u0010D\u001a\u00020\u000f2\u0006\u0010C\u001a\u000207H\u0016¢\u0006\u0004\bD\u0010:J\u001f\u0010H\u001a\u00020\u000f2\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020\nH\u0016¢\u0006\u0004\bH\u0010IJ\u0011\u0010J\u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020,H\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020,H\u0016¢\u0006\u0004\bN\u0010MJ\u000f\u0010O\u001a\u000207H\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u000207H\u0016¢\u0006\u0004\bQ\u0010PJ\u000f\u0010R\u001a\u000207H\u0016¢\u0006\u0004\bR\u0010PJ\u000f\u0010S\u001a\u000207H\u0016¢\u0006\u0004\bS\u0010PJ\u000f\u0010T\u001a\u00020\nH\u0016¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\nH\u0016¢\u0006\u0004\bV\u0010UJ\u000f\u0010W\u001a\u000207H\u0016¢\u0006\u0004\bW\u0010PJ\u0011\u0010Y\u001a\u0004\u0018\u00010XH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u000207H\u0016¢\u0006\u0004\b[\u0010PJ\u000f\u0010\\\u001a\u000207H\u0016¢\u0006\u0004\b\\\u0010PJ\u001f\u0010_\u001a\u00020\u000f2\u0006\u0010]\u001a\u0002072\u0006\u0010^\u001a\u000207H\u0016¢\u0006\u0004\b_\u0010`J\u0017\u0010c\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bc\u0010dJ\u0017\u0010e\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\be\u0010dJ\u000f\u0010f\u001a\u00020aH\u0016¢\u0006\u0004\bf\u0010gR\u0014\u0010j\u001a\u00020h8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010iR\u0018\u0010m\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010p\u001a\u00020\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0014\u0010t\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010sR\u0014\u0010v\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010sR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR \u0010}\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\\\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0018\u0010[\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0083\u0001R\u0019\u0010\u0087\u0001\u001a\u00020a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R \u0010\u008b\u0001\u001a\t\u0012\u0004\u0012\u00020'0\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0018\u00101\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u00108\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u0083\u0001R\u0018\u0010?\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u008d\u0001R\u0018\u0010A\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0083\u0001R\u0018\u0010<\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R#\u0010\u0095\u0001\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001¨\u0006\u0096\u0001"}, d2 = {"Lcom/transsion/player/ui/ORVideoView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/player/ui/a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "", "a", "(Lcom/transsion/player/ui/ORPlayerView;)V", "Lcom/transsion/player/orplayer/g;", "player", "initCreatePlayer", "(Landroid/content/Context;Lcom/transsion/player/orplayer/g;)V", "Lkotlin/Function0;", "Landroid/view/ViewGroup;", "callback", "setActivityContainerCallback", "(Lkotlin/jvm/functions/Function0;)V", "Lcom/transsion/player/control/BaseVideoController;", "mediaController", "setVideoController", "(Lcom/transsion/player/control/BaseVideoController;)V", "Lao/e;", "data", "setMediaData", "(Lao/e;)V", "prepare", "()V", MediaItem.MUSIC_FLOAT_STATE_PLAY, "pause", "Lcom/transsion/player/orplayer/f;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addPlayerListener", "(Lcom/transsion/player/orplayer/f;)V", "removePayerListener", "", "mills", "seekTo", "(J)V", "", "speed", "setSpeed", "(F)V", "reset", "release", "clearScreen", "", "isLoop", "setLooping", "(Z)V", "Lcom/transsion/player/enum/ScaleMode;", "scaleMode", "setScaleMode", "(Lcom/transsion/player/enum/ScaleMode;)V", "volume", "setVolume", CampaignEx.JSON_NATIVE_VIDEO_MUTE, "setMute", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "enableHardwareDecoder", "Lmo/d;", "mediaTrackGroup", "index", "changeTrackSelection", "(Lmo/d;I)V", "getMediaData", "()Lao/e;", "getDuration", "()J", "getPosition", "isPlaying", "()Z", "isComplete", "isMute", "isBuffering", "getVideoWidth", "()I", "getVideoHeight", "isPrepared", "Lmo/b;", "getVideoFormat", "()Lmo/b;", "isLand", "isFullscreen", "fullscreen", "land", "changeFullscreen", "(ZZ)V", "Lcom/transsion/player/enum/PipStatus;", "pipStatus", "pipChangeFullscreen", "(Lcom/transsion/player/enum/PipStatus;)V", "setPipStatus", "getCurPipStatus", "()Lcom/transsion/player/enum/PipStatus;", "", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/orplayer/g;", "mPlayer", "c", "Landroid/widget/FrameLayout;", "playerRoot", "Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "startSpaceView", "e", "endSpaceView", "Landroid/widget/LinearLayout;", "f", "Landroid/widget/LinearLayout;", "playerContainer", "g", "Lcom/transsion/player/control/BaseVideoController;", "videoController", "Loo/c;", "h", "Loo/c;", "spaceHelper", "i", "Z", "j", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/enum/PipStatus;", "curPipStatus", "Ljava/util/concurrent/CopyOnWriteArrayList;", "l", "Ljava/util/concurrent/CopyOnWriteArrayList;", "listeners", "m", "F", "n", "o", TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/player/enum/ScaleMode;", CampaignEx.JSON_KEY_AD_R, "Lkotlin/jvm/functions/Function0;", "activityContainer", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ORVideoView extends FrameLayout implements com.transsion.player.ui.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private g mPlayer;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private FrameLayout playerRoot;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final View startSpaceView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final View endSpaceView;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private LinearLayout playerContainer;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private BaseVideoController videoController;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final c spaceHelper;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isFullscreen;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isLand;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private PipStatus curPipStatus;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private CopyOnWriteArrayList listeners;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private float speed;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isLoop;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private float volume;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean mute;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private ScaleMode scaleMode;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private Function0 activityContainer;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48570a;

        static {
            int[] iArr = new int[PipStatus.values().length];
            try {
                iArr[PipStatus.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PipStatus.PIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PipStatus.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48570a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORVideoView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ORVideoView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.TAG = "ORVideoView-player";
        this.playerRoot = new FrameLayout(getContext());
        View view = new View(getContext());
        view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.startSpaceView = view;
        View view2 = new View(getContext());
        view2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.endSpaceView = view2;
        this.playerContainer = new LinearLayout(getContext());
        this.isLand = true;
        this.curPipStatus = PipStatus.DEFAULT;
        this.listeners = new CopyOnWriteArrayList();
        this.speed = 1.0f;
        this.volume = 1.0f;
        this.scaleMode = ScaleMode.SCALE_ASPECT_FIT;
        this.spaceHelper = new c(view, view2);
    }

    private final void a(ORPlayerView orPlayerView) {
        addView(this.playerContainer, new FrameLayout.LayoutParams(-1, -1));
        this.playerContainer.setOrientation(0);
        this.playerContainer.addView(this.startSpaceView, new LinearLayout.LayoutParams(0, -1));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        this.playerContainer.addView(this.playerRoot, layoutParams);
        this.playerContainer.addView(this.endSpaceView, new LinearLayout.LayoutParams(0, -1));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        this.playerRoot.addView(orPlayerView, 0, layoutParams2);
    }

    public void addPlayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        if (!this.listeners.contains(listener)) {
            this.listeners.add(listener);
        }
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.addPlayerListener(listener);
        }
    }

    public void changeFullscreen(boolean fullscreen, boolean land) {
        ViewGroup viewGroup;
        LinkedHashMap<b, Boolean> controlComponentMap;
        Function0 function0 = this.activityContainer;
        if (function0 == null || (viewGroup = (ViewGroup) function0.invoke()) == null) {
            return;
        }
        this.isFullscreen = fullscreen;
        if (!fullscreen) {
            land = false;
        }
        this.isLand = land;
        e.b(e.f71074a, this.TAG, "changeFullscreen, isFullscreen:" + fullscreen + ", isLand:" + land + ", curPipStatus:" + this.curPipStatus, false, 4, null);
        ViewParent parent = this.playerContainer.getParent();
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.playerContainer);
        }
        if (fullscreen) {
            viewGroup.addView(this.playerContainer, new FrameLayout.LayoutParams(-1, -1));
        } else {
            addView(this.playerContainer, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        BaseVideoController baseVideoController = this.videoController;
        if (baseVideoController != null && (controlComponentMap = baseVideoController.getControlComponentMap()) != null) {
            Iterator<Map.Entry<b, Boolean>> it = controlComponentMap.entrySet().iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next().getKey());
                throw null;
            }
        }
        this.spaceHelper.f(this.isLand);
    }

    public void changeTrackSelection(d mediaTrackGroup, int index) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.changeTrackSelection(mediaTrackGroup, index);
        }
    }

    public void clearScreen() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.clearScreen();
        }
    }

    public void enableHardwareDecoder(boolean enable) {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.enableHardwareDecoder(enable);
        }
    }

    public PipStatus getCurPipStatus() {
        return this.curPipStatus;
    }

    public long getDuration() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.getDuration();
        }
        return 0L;
    }

    public ao.e getMediaData() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.currentMediaSource();
        }
        return null;
    }

    public long getPosition() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.getCurrentPosition();
        }
        return 0L;
    }

    public mo.b getVideoFormat() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.getCurrentVideoFormat();
        }
        return null;
    }

    public int getVideoHeight() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.getVideoHeight();
        }
        return 0;
    }

    public int getVideoWidth() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.getVideoWidth();
        }
        return 0;
    }

    public final void initCreatePlayer(Context context, g player) {
        Intrinsics.h(context, "context");
        Intrinsics.h(player, "player");
        this.mPlayer = player;
        ORPlayerView oRPlayerView = new ORPlayerView(context);
        a(oRPlayerView);
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setSurfaceView(oRPlayerView.getSurface());
        }
    }

    public boolean isBuffering() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.isLoading();
        }
        return false;
    }

    public boolean isComplete() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.isComplete();
        }
        return false;
    }

    /* JADX INFO: renamed from: isFullscreen, reason: from getter */
    public boolean getIsFullscreen() {
        return this.isFullscreen;
    }

    /* JADX INFO: renamed from: isLand, reason: from getter */
    public boolean getIsLand() {
        return this.isLand;
    }

    public boolean isMute() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.isMute();
        }
        return false;
    }

    public boolean isPlaying() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.isPlaying();
        }
        return false;
    }

    public boolean isPrepared() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            return gVar.isPrepared();
        }
        return false;
    }

    public void pause() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.pause();
        }
        this.spaceHelper.c();
        setKeepScreenOn(false);
    }

    public void pipChangeFullscreen(PipStatus pipStatus) {
        ViewGroup viewGroup;
        BaseVideoController baseVideoController;
        LinkedHashMap<b, Boolean> controlComponentMap;
        LinkedHashMap<b, Boolean> controlComponentMap2;
        Intrinsics.h(pipStatus, "pipStatus");
        this.curPipStatus = pipStatus;
        BaseVideoController baseVideoController2 = this.videoController;
        if (baseVideoController2 != null && (controlComponentMap2 = baseVideoController2.getControlComponentMap()) != null) {
            Iterator<Map.Entry<b, Boolean>> it = controlComponentMap2.entrySet().iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next().getKey());
                throw null;
            }
        }
        int i11 = a.f48570a[pipStatus.ordinal()];
        if (i11 == 1) {
            this.spaceHelper.d();
        } else {
            if (i11 != 2 && i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            this.spaceHelper.c();
            this.spaceHelper.f(false);
        }
        Function0 function0 = this.activityContainer;
        if (function0 == null || (viewGroup = (ViewGroup) function0.invoke()) == null) {
            return;
        }
        e.b(e.f71074a, this.TAG, "pipChangeFullscreen, isLand:" + this.isLand + ", curPipStatus:" + this.curPipStatus, false, 4, null);
        ViewParent parent = this.playerContainer.getParent();
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.playerContainer);
        }
        PipStatus pipStatus2 = PipStatus.PIP;
        if (pipStatus == pipStatus2) {
            viewGroup.addView(this.playerContainer, new FrameLayout.LayoutParams(-1, -1));
        } else {
            addView(this.playerContainer, 0, new FrameLayout.LayoutParams(-1, -1));
        }
        if (!this.isFullscreen || pipStatus != pipStatus2 || (baseVideoController = this.videoController) == null || (controlComponentMap = baseVideoController.getControlComponentMap()) == null) {
            return;
        }
        Iterator<Map.Entry<b, Boolean>> it2 = controlComponentMap.entrySet().iterator();
        if (it2.hasNext()) {
            android.support.v4.media.session.c.a(it2.next().getKey());
            throw null;
        }
    }

    public void play() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.play();
        }
        this.spaceHelper.d();
        setKeepScreenOn(true);
    }

    public void prepare() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.prepare();
        }
    }

    public void release() {
        LinkedHashMap<b, Boolean> controlComponentMap;
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.release();
        }
        BaseVideoController baseVideoController = this.videoController;
        if (baseVideoController != null && (controlComponentMap = baseVideoController.getControlComponentMap()) != null) {
            Iterator<Map.Entry<b, Boolean>> it = controlComponentMap.entrySet().iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next().getKey());
                throw null;
            }
        }
        this.spaceHelper.c();
        setKeepScreenOn(false);
    }

    public void release(String str) {
        com.transsion.player.ui.a.C0645a.a(this, str);
    }

    public void removePayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        this.listeners.remove(listener);
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(listener);
        }
    }

    public void reset() {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.reset();
        }
        this.spaceHelper.c();
        setKeepScreenOn(false);
    }

    public void seekTo(long mills) {
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.seekTo(mills);
        }
    }

    public final void setActivityContainerCallback(Function0<? extends ViewGroup> callback) {
        Intrinsics.h(callback, "callback");
        this.activityContainer = callback;
    }

    public void setLooping(boolean isLoop) {
        this.isLoop = isLoop;
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setLooping(isLoop);
        }
    }

    public void setMediaData(ao.e data) {
        Intrinsics.h(data, "data");
        e.f71074a.a(this.TAG, "setMediaData, url:" + data.k() + " ", true);
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setDataSource(data);
        }
        this.spaceHelper.d();
        setKeepScreenOn(true);
    }

    public void setMute(boolean mute) {
        this.mute = mute;
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setMute(mute);
        }
    }

    public void setPipStatus(PipStatus pipStatus) {
        LinkedHashMap<b, Boolean> controlComponentMap;
        Intrinsics.h(pipStatus, "pipStatus");
        this.curPipStatus = pipStatus;
        BaseVideoController baseVideoController = this.videoController;
        if (baseVideoController != null) {
            baseVideoController.onPipStatusChange(pipStatus);
        }
        BaseVideoController baseVideoController2 = this.videoController;
        if (baseVideoController2 != null && (controlComponentMap = baseVideoController2.getControlComponentMap()) != null) {
            Iterator<Map.Entry<b, Boolean>> it = controlComponentMap.entrySet().iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next().getKey());
                throw null;
            }
        }
        int i11 = a.f48570a[pipStatus.ordinal()];
        if (i11 == 1) {
            this.spaceHelper.d();
        } else if (i11 == 2) {
            this.spaceHelper.c();
        } else {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            this.spaceHelper.c();
        }
    }

    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        this.scaleMode = scaleMode;
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setScaleMode(scaleMode);
        }
    }

    public void setSpeed(float speed) {
        this.speed = speed;
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setSpeed(speed);
        }
    }

    public final void setVideoController(BaseVideoController<?, ?> mediaController) {
        this.playerRoot.removeView(this.videoController);
        this.videoController = mediaController;
        if (mediaController != null) {
            mediaController.setPayerView(this);
            this.playerRoot.addView(mediaController, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void setVolume(float volume) {
        this.volume = volume;
        g gVar = this.mPlayer;
        if (gVar != null) {
            gVar.setVolume(volume);
        }
    }
}
