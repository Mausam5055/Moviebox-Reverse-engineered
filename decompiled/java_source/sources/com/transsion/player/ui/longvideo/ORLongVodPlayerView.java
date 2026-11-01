package com.transsion.player.ui.longvideo;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import eo.e;
import eo.n;
import ko.e0;
import ko.l0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mo.b;
import mo.c;
import mo.d;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0012H\u0014¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016¢\u0006\u0004\b-\u0010,J\u0019\u00100\u001a\u00020\u00122\b\u0010/\u001a\u0004\u0018\u00010.H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00104\u001a\u00020\u00122\b\u00103\u001a\u0004\u0018\u000102H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0012H\u0016¢\u0006\u0004\b6\u0010)J\u0017\u00107\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016¢\u0006\u0004\b7\u0010,J\u0017\u0010:\u001a\u00020\u00122\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0012H\u0016¢\u0006\u0004\b<\u0010)J\u000f\u0010=\u001a\u00020\u0012H\u0016¢\u0006\u0004\b=\u0010)J\u000f\u0010>\u001a\u00020\u0012H\u0016¢\u0006\u0004\b>\u0010)J\u000f\u0010?\u001a\u00020\u0012H\u0016¢\u0006\u0004\b?\u0010)J\u000f\u0010@\u001a\u00020\u0012H\u0016¢\u0006\u0004\b@\u0010)J\u0019\u0010@\u001a\u00020\u00122\b\u0010B\u001a\u0004\u0018\u00010AH\u0016¢\u0006\u0004\b@\u0010CJ\u000f\u0010D\u001a\u00020\u0012H\u0016¢\u0006\u0004\bD\u0010)J\u0017\u0010G\u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020EH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\rH\u0016¢\u0006\u0004\bK\u0010\u000fJ\u000f\u0010L\u001a\u00020\rH\u0016¢\u0006\u0004\bL\u0010\u000fJ\u0017\u0010N\u001a\u00020\u00122\u0006\u0010M\u001a\u00020\rH\u0016¢\u0006\u0004\bN\u0010'J\u000f\u0010O\u001a\u00020\rH\u0016¢\u0006\u0004\bO\u0010\u000fJ\u0017\u0010R\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bR\u0010SJ\u0011\u0010T\u001a\u0004\u0018\u00010PH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010W\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\rH\u0016¢\u0006\u0004\bW\u0010'J\u0017\u0010X\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\bX\u0010'J\u001b\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0YH\u0016¢\u0006\u0004\bZ\u0010[J\u0011\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\rH\u0016¢\u0006\u0004\b_\u0010\u000fJ\u0011\u0010a\u001a\u0004\u0018\u00010`H\u0016¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020EH\u0016¢\u0006\u0004\bc\u0010JJ\u0011\u0010e\u001a\u0004\u0018\u00010dH\u0016¢\u0006\u0004\be\u0010fJ\u001f\u0010j\u001a\u00020\u00122\u0006\u0010h\u001a\u00020g2\u0006\u0010i\u001a\u00020\nH\u0016¢\u0006\u0004\bj\u0010kJ\u0017\u0010m\u001a\u00020\u00122\u0006\u0010l\u001a\u00020PH\u0016¢\u0006\u0004\bm\u0010SJ\u0017\u0010p\u001a\u00020\u00122\u0006\u0010o\u001a\u00020nH\u0016¢\u0006\u0004\bp\u0010qJ\u001f\u0010t\u001a\u00020\u00122\u0006\u0010r\u001a\u00020\r2\u0006\u0010s\u001a\u00020\nH\u0016¢\u0006\u0004\bt\u0010uR\u0018\u0010x\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010wR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010{R\u0016\u0010~\u001a\u00020|8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010}R\u0019\u0010\u0082\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001¨\u0006\u0083\u0001"}, d2 = {"Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/player/ui/longvideo/a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Z", "Landroid/view/View;", "gestureView", "", "c", "(Landroid/view/View;)V", "Lbo/a;", XLogUtil.TAG, "Lcom/transsion/player/ui/ORPlayerView;", "playerView", "initLongVodPlayer", "(Lbo/a;Lcom/transsion/player/ui/ORPlayerView;)V", "Lcom/transsion/player/orplayer/g;", "orPlayer", "setExistPlayer", "(Lbo/a;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V", "getOrPlayer", "()Lcom/transsion/player/orplayer/g;", "Lcom/transsion/player/ui/longvideo/a$b;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setGestureListener", "(Lcom/transsion/player/ui/longvideo/a$b;)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "enableGesture", "(Z)V", "onAttachedToWindow", "()V", "Lcom/transsion/player/orplayer/f;", "addPlayerListener", "(Lcom/transsion/player/orplayer/f;)V", "removePlayerListener", "Landroid/view/SurfaceView;", "surfaceView", "setSurfaceView", "(Landroid/view/SurfaceView;)V", "Landroid/view/TextureView;", "textureView", "setTextureView", "(Landroid/view/TextureView;)V", "clearSurfaceOnly", "setPlayerListener", "Lao/e;", "mediaSource", "setDataSource", "(Lao/e;)V", "prepare", MediaItem.MUSIC_FLOAT_STATE_PLAY, "pause", "stop", "release", "", "id", "(Ljava/lang/String;)V", "reset", "", "mills", "seekTo", "(J)V", "getDuration", "()J", "isPlaying", "isComplete", "isLoop", "setLooping", "isMute", "", "volume", "setVolume", "(F)V", "getVolume", "()Ljava/lang/Float;", "isAutoPlay", "setAutoPlay", "enableHardwareDecoder", "Lkotlin/Pair;", "getBitrate", "()Lkotlin/Pair;", "", "getDownloadBitrate", "()Ljava/lang/Object;", "requestForce", "Lmo/c;", "getCurrentTracks", "()Lmo/c;", "getCurrentPosition", "Lmo/b;", "getCurrentVideoFormat", "()Lmo/b;", "Lmo/d;", "mediaTrackGroup", "index", "changeTrackSelection", "(Lmo/d;I)V", "speed", "setSpeed", "Lcom/transsion/player/enum/ScaleMode;", "scaleMode", "setScaleMode", "(Lcom/transsion/player/enum/ScaleMode;)V", "isVipSubscriber", "vipResolution", "setVipResolution", "(ZI)V", "a", "Lcom/transsion/player/ui/longvideo/a$b;", "gestureListener", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/orplayer/g;", "Lbo/a;", "Leo/e;", "Leo/e;", "gestureControl", "Leo/n;", "e", "Leo/n;", "volumeControl", "PlayerView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ORLongVodPlayerView extends FrameLayout implements com.transsion.player.ui.longvideo.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.ui.longvideo.a.b gestureListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private g orPlayer;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private bo.a config;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private e gestureControl;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private n volumeControl;

    public static final class a implements e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f48576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f48577b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f48578c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f48579d;

        a() {
        }

        @Override // eo.e.a
        public void a() {
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // eo.e.a
        public void b(float f11, float f12) {
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.b(f11, f12);
            }
        }

        @Override // eo.e.a
        public void c(float f11, float f12) {
            n nVar = null;
            if (!this.f48577b) {
                n nVar2 = ORLongVodPlayerView.this.volumeControl;
                if (nVar2 == null) {
                    Intrinsics.z("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                n nVar3 = ORLongVodPlayerView.this.volumeControl;
                if (nVar3 == null) {
                    Intrinsics.z("volumeControl");
                    nVar3 = null;
                }
                this.f48579d = nVar3.b();
                this.f48577b = true;
            }
            float height = ((f11 - f12) * 2) / ORLongVodPlayerView.this.getHeight();
            n nVar4 = ORLongVodPlayerView.this.volumeControl;
            if (nVar4 == null) {
                Intrinsics.z("volumeControl");
            } else {
                nVar = nVar4;
            }
            nVar.a(this.f48579d, height);
        }

        @Override // eo.e.a
        public void d(float f11, float f12) {
            n nVar = null;
            if (!this.f48576a) {
                n nVar2 = ORLongVodPlayerView.this.volumeControl;
                if (nVar2 == null) {
                    Intrinsics.z("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                n nVar3 = ORLongVodPlayerView.this.volumeControl;
                if (nVar3 == null) {
                    Intrinsics.z("volumeControl");
                    nVar3 = null;
                }
                this.f48578c = nVar3.c();
                this.f48576a = true;
            }
            n nVar4 = ORLongVodPlayerView.this.volumeControl;
            if (nVar4 == null) {
                Intrinsics.z("volumeControl");
            } else {
                nVar = nVar4;
            }
            nVar.d(f11, f12, ORLongVodPlayerView.this.getHeight());
        }

        @Override // eo.e.a
        public void e() {
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.c();
            }
            this.f48576a = false;
            this.f48577b = false;
        }

        @Override // eo.e.a
        public void onDoubleTap(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.onDoubleTap(e11);
            }
        }

        @Override // eo.e.a
        public void onLongPress(MotionEvent e11) {
            Intrinsics.h(e11, "e");
            com.transsion.player.ui.longvideo.a.b bVar = ORLongVodPlayerView.this.gestureListener;
            if (bVar != null) {
                bVar.onLongPress(e11);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORLongVodPlayerView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ORLongVodPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ORLongVodPlayerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        c(this);
    }

    private final void c(View gestureView) {
        n.a aVar = n.f61970a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        this.volumeControl = aVar.a(context, this);
        e eVar = new e(getContext(), gestureView);
        this.gestureControl = eVar;
        eVar.s(new a());
    }

    private final boolean d() {
        return getChildCount() == 0;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean addDataSource(ao.e eVar) {
        return com.transsion.player.ui.longvideo.a.C0646a.a(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void addPlayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.addPlayerListener(listener);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void changeTrackSelection(d mediaTrackGroup, int index) {
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.changeTrackSelection(mediaTrackGroup, index);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void clearScreen() {
        com.transsion.player.ui.longvideo.a.C0646a.b(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void clearSurfaceOnly() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.clearSurfaceOnly();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public ao.e currentMediaSource() {
        return com.transsion.player.ui.longvideo.a.C0646a.c(this);
    }

    @Override // com.transsion.player.ui.longvideo.a
    public void enableGesture(boolean enable) {
        e eVar = this.gestureControl;
        if (eVar == null) {
            Intrinsics.z("gestureControl");
            eVar = null;
        }
        eVar.l(enable);
    }

    @Override // com.transsion.player.orplayer.g
    public void enableHardwareDecoder(boolean enable) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.enableHardwareDecoder(enable);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public Pair<Integer, Integer> getBitrate() {
        Pair<Integer, Integer> bitrate;
        g gVar = this.orPlayer;
        return (gVar == null || (bitrate = gVar.getBitrate()) == null) ? new Pair<>(0, 0) : bitrate;
    }

    @Override // com.transsion.player.orplayer.g
    public long getCurrentPosition() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.getCurrentPosition();
        }
        return 0L;
    }

    @Override // com.transsion.player.orplayer.g
    public c getCurrentTracks() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.getCurrentTracks();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public b getCurrentVideoFormat() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.getCurrentVideoFormat();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public Object getDownloadBitrate() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.getDownloadBitrate();
        }
        return null;
    }

    @Override // com.transsion.player.orplayer.g
    public long getDuration() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.getDuration();
        }
        return 0L;
    }

    @Override // com.transsion.player.ui.longvideo.a
    public g getOrPlayer() {
        return this.orPlayer;
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoHeight() {
        return com.transsion.player.ui.longvideo.a.C0646a.d(this);
    }

    @Override // com.transsion.player.orplayer.g
    public int getVideoWidth() {
        return com.transsion.player.ui.longvideo.a.C0646a.e(this);
    }

    @Override // com.transsion.player.orplayer.g
    public Float getVolume() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.getVolume();
        }
        return null;
    }

    @Override // com.transsion.player.ui.longvideo.a
    public void initLongVodPlayer(bo.a config, ORPlayerView playerView) {
        Intrinsics.h(config, "config");
        Intrinsics.h(playerView, "playerView");
        this.config = config;
        g gVarS = l0.f66968a.s();
        gVarS.setSpeed(config.b());
        gVarS.setScaleMode(config.a());
        gVarS.setPlayerConfig(config.d());
        gVarS.setVolume(1.0f);
        if (config.c()) {
            gVarS.setSurfaceView(playerView.getSurface());
        } else {
            gVarS.setTextureView(playerView.getTextureView());
        }
        this.orPlayer = gVarS;
        n nVar = this.volumeControl;
        if (nVar == null) {
            Intrinsics.z("volumeControl");
            nVar = null;
        }
        nVar.e(this.orPlayer);
        addView(playerView, 0);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isComplete() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.isComplete();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isLoading() {
        return com.transsion.player.ui.longvideo.a.C0646a.f(this);
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isMute() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.isMute();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPlaying() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.isPlaying();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public boolean isPrepared() {
        return com.transsion.player.ui.longvideo.a.C0646a.g(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setFocusableInTouchMode(true);
        requestFocus();
    }

    @Override // com.transsion.player.orplayer.g
    public void pause() {
        g gVar;
        if (d() || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.pause();
    }

    @Override // com.transsion.player.orplayer.g
    public void play() {
        g gVar;
        if (d() || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.play();
    }

    @Override // com.transsion.player.orplayer.g
    public void prepare() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.prepare();
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void release() {
        g gVar;
        if (!d() && (gVar = this.orPlayer) != null) {
            gVar.release();
        }
        if (getChildAt(0) instanceof ORPlayerView) {
            removeViewAt(0);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void release(String id2) {
        g gVar;
        com.transsion.player.ui.longvideo.a.C0646a.h(this, id2);
        if (!d() && (gVar = this.orPlayer) != null) {
            gVar.release(id2);
        }
        if (getChildAt(0) instanceof ORPlayerView) {
            removeViewAt(0);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public boolean removeDataSource(ao.e eVar) {
        return com.transsion.player.ui.longvideo.a.C0646a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void removePlayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(listener);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public boolean requestForce() {
        g gVar = this.orPlayer;
        if (gVar != null) {
            return gVar.requestForce();
        }
        return false;
    }

    @Override // com.transsion.player.orplayer.g
    public void reset() {
        g gVar;
        if (d() || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.reset();
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(long mills) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.seekTo(mills);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void seekTo(String str, long j11) {
        com.transsion.player.ui.longvideo.a.C0646a.j(this, str, j11);
    }

    public void seekToDefaultPosition() {
        com.transsion.player.ui.longvideo.a.C0646a.k(this);
    }

    @Override // com.transsion.player.orplayer.g
    public void setAutoPlay(boolean isAutoPlay) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setAutoPlay(isAutoPlay);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setDataSource(ao.e mediaSource) {
        Intrinsics.h(mediaSource, "mediaSource");
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setDataSource(mediaSource);
        }
    }

    public void setErrorInterceptor(e0 e0Var) {
        com.transsion.player.ui.longvideo.a.C0646a.l(this, e0Var);
    }

    @Override // com.transsion.player.ui.longvideo.a
    public void setExistPlayer(bo.a config, g orPlayer, ORPlayerView playerView) {
        Intrinsics.h(config, "config");
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(playerView, "playerView");
        this.orPlayer = orPlayer;
        if (config.c()) {
            orPlayer.setSurfaceView(playerView.getSurface());
        } else {
            orPlayer.setTextureView(playerView.getTextureView());
        }
        n nVar = this.volumeControl;
        if (nVar == null) {
            Intrinsics.z("volumeControl");
            nVar = null;
        }
        nVar.e(orPlayer);
        addView(playerView, 0);
    }

    @Override // com.transsion.player.ui.longvideo.a
    public void setGestureListener(com.transsion.player.ui.longvideo.a.b listener) {
        Intrinsics.h(listener, "listener");
        this.gestureListener = listener;
    }

    @Override // com.transsion.player.orplayer.g
    public void setLooping(boolean isLoop) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setLooping(isLoop);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setMute(boolean z10) {
        com.transsion.player.ui.longvideo.a.C0646a.m(this, z10);
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerConfig(bo.d dVar) {
        com.transsion.player.ui.longvideo.a.C0646a.n(this, dVar);
    }

    @Override // com.transsion.player.orplayer.g
    public void setPlayerListener(f listener) {
        Intrinsics.h(listener, "listener");
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setPlayerListener(listener);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setScaleMode(ScaleMode scaleMode) {
        Intrinsics.h(scaleMode, "scaleMode");
        com.transsion.player.ui.longvideo.a.C0646a.o(this, scaleMode);
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setScaleMode(scaleMode);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSpeed(float speed) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setSpeed(speed);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setSurfaceView(SurfaceView surfaceView) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setSurfaceView(surfaceView);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setTextureView(TextureView textureView) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setTextureView(textureView);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setVipResolution(boolean isVipSubscriber, int vipResolution) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setVipResolution(isVipSubscriber, vipResolution);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void setVolume(float volume) {
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.setVolume(volume);
        }
    }

    @Override // com.transsion.player.orplayer.g
    public void stop() {
        g gVar;
        if (d() || (gVar = this.orPlayer) == null) {
            return;
        }
        gVar.stop();
    }
}
