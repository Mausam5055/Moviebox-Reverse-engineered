package com.transsion.postdetail.ui.fragment;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.fragment.app.FragmentActivity;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.orplayer.PlayError;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.util.LocalVideoAdHelper;
import com.transsion.room.api.IAudioApi;
import com.transsion.subtitle.VideoSubtitleControl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class LocalVideoDetailFragment$playerListener$1 implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalVideoDetailFragment f49538a;

    LocalVideoDetailFragment$playerListener$1(LocalVideoDetailFragment localVideoDetailFragment) {
        this.f49538a = localVideoDetailFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(LocalVideoDetailFragment localVideoDetailFragment) {
        com.transsion.player.orplayer.g gVar = localVideoDetailFragment.orPlayer;
        if (gVar != null) {
            gVar.play();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.j2().h(LayerFlag.PLAYER_FOREGROUND, Boolean.FALSE);
        com.transsion.player.orplayer.g gVar = localVideoDetailFragment.orPlayer;
        if (gVar != null) {
            gVar.play();
        }
        return Unit.f67061a;
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
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
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
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.i();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onCompletion", false, 4, null);
        this.f49538a.e3();
        this.f49538a.localVideoAdHelper.o2();
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onIsPlayingChanged：" + z10, false, 4, null);
        VideoSubtitleControl videoSubtitleControl = this.f49538a.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.d0(z10);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.j();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onLoadingBegin", false, 4, null);
        this.f49538a.j2().g(LayerFlag.LOADING_BEGIN, Boolean.FALSE);
        if (this.f49538a.isDownloadingPlay) {
            this.f49538a.a2();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.k();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onLoadingEnd", false, 4, null);
        this.f49538a.getHandler().removeCallbacksAndMessages(null);
        this.f49538a.j2().g(LayerFlag.LOADING_END, Boolean.FALSE);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onLoopingStart", false, 4, null);
        this.f49538a.j2().g(LayerFlag.LOOPING_START, new Object[0]);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f49538a.u3();
        this.f49538a.errorInfo = errorInfo;
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.m(errorInfo);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.i("long_video_play", "onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + "  playProgress = " + this.f49538a.playProgress + " url:" + (eVar != null ? eVar.k() : null) + " --> 长播放失败了", true);
        this.f49538a.j2().g(LayerFlag.PLAY_ERROR, errorInfo);
        LocalVideoDetailFragment localVideoDetailFragment = this.f49538a;
        Integer errorCode = errorInfo.getErrorCode();
        localVideoDetailFragment.isPlayerNetTimeout = errorCode != null && errorCode.intValue() == 537067524;
        if (this.f49538a.playProgress > 0) {
            LocalVideoDetailFragment localVideoDetailFragment2 = this.f49538a;
            LocalVideoDetailFragment.w3(localVideoDetailFragment2, localVideoDetailFragment2.downloadBean, this.f49538a.playProgress, false, 4, null);
        }
        if (nh.m.f70474a.e()) {
            if (this.f49538a.isPlayerNetTimeout) {
                return;
            }
            c0828a.x("long_video_play", "video error，reload~~ from onPlayError", true);
            LocalVideoDetailFragment.s3(this.f49538a, false, 1, null);
            return;
        }
        lg.a.C0828a.f(c0828a, this.f49538a.TAG, "onPlayError， not net----", false, 4, null);
        DownloadBean downloadBean = this.f49538a.downloadBean;
        if ((downloadBean != null ? downloadBean.getProgress() : 0L) > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            this.f49538a.j2().g(LayerFlag.LOADING_END, new Object[0]);
            this.f49538a.j2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onPlayerReset", false, 4, null);
        this.f49538a.j2().g(LayerFlag.PLAYER_RESET, new Object[0]);
        this.f49538a.localVideoAdHelper.q2();
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        this.f49538a.u3();
        this.f49538a.isPlayerNetTimeout = false;
        this.f49538a.isPrepare = true;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.f49538a.TAG;
        DownloadBean downloadBean = this.f49538a.downloadBean;
        lg.a.C0828a.f(c0828a, str, "onPrepare, epse = " + (downloadBean != null ? Integer.valueOf(downloadBean.getEpse()) : null), false, 4, null);
        if (this.f49538a.downloadBean == null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f49538a), kotlinx.coroutines.y0.b(), null, new LocalVideoDetailFragment$playerListener$1$onPrepare$1(this.f49538a, null), 2, null);
        } else {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f49538a), kotlinx.coroutines.y0.c(), null, new LocalVideoDetailFragment$playerListener$1$onPrepare$2(this.f49538a, null), 2, null);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.n(j11);
        }
        this.f49538a.playProgress = j11;
        this.f49538a.j2().g(LayerFlag.PROGRESS, Long.valueOf(j11));
        LocalVideoAdHelper localVideoAdHelper = this.f49538a.localVideoAdHelper;
        final LocalVideoDetailFragment localVideoDetailFragment = this.f49538a;
        localVideoAdHelper.N(j11, new Function0() { // from class: com.transsion.postdetail.ui.fragment.s0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment$playerListener$1.c(localVideoDetailFragment);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.o();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onRenderFirstFrame", false, 4, null);
        this.f49538a.j2().g(LayerFlag.RENDER_FIRST_FRAME, new Object[0]);
        com.transsion.player.orplayer.g gVar = this.f49538a.orPlayer;
        if (gVar != null) {
            gVar.pause();
        }
        LocalVideoAdHelper localVideoAdHelper = this.f49538a.localVideoAdHelper;
        final LocalVideoDetailFragment localVideoDetailFragment = this.f49538a;
        localVideoAdHelper.S1(new Function0() { // from class: com.transsion.postdetail.ui.fragment.t0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LocalVideoDetailFragment$playerListener$1.d(localVideoDetailFragment);
            }
        });
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.C(this, i11);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.u(i11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        com.transsion.player.orplayer.f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.E(this, i11);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.v(i11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e eVar) {
        this.f49538a.D3(true);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.w();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onVideoPause", false, 4, null);
        FragmentActivity activity = this.f49538a.getActivity();
        if (activity != null) {
            com.transsion.postdetail.util.t.f50179a.b(activity, false);
        }
        this.f49538a.j2().g(LayerFlag.VIDEO_PAUSE, new Object[0]);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        this.f49538a.videoWidth = i11;
        this.f49538a.videoHeight = i12;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f49538a.TAG, "onVideoSizeChanged", false, 4, null);
        lg.a.C0828a.f(c0828a, this.f49538a.TAG, "onVideoSizeChanged width:" + i11 + ",height:" + i12, false, 4, null);
        this.f49538a.j2().g(LayerFlag.VIDEO_SIZE_CHANGED, Integer.valueOf(i11), Integer.valueOf(i12));
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        this.f49538a.u3();
        this.f49538a.D3(false);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f49538a.localVideoDot;
        if (c0Var != null) {
            c0Var.x();
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f49538a.TAG, "onVideoStart", false, 4, null);
        this.f49538a.playingDownloadHandler.removeCallbacks(this.f49538a.notNetRunnable);
        this.f49538a.j2().g(LayerFlag.VIDEO_START, new Object[0]);
        this.f49538a.j2().g(LayerFlag.LOADING_END, new Object[0]);
        IAudioApi iAudioApiE2 = this.f49538a.e2();
        if (iAudioApiE2 != null) {
            iAudioApiE2.pause();
        }
        this.f49538a.I3();
        this.f49538a.localVideoAdHelper.s2();
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }
}
