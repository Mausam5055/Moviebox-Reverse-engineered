package com.transsion.audio.player;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.PlayError;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class AudioPlayer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f42889i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Lazy f42890j = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() { // from class: com.transsion.audio.player.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return AudioPlayer.x();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.player.orplayer.g f42892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.transsion.audio.player.a f42893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f42894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioBean f42895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AudioBean f42896f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f42891a = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f42897g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f42898h = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AudioPlayer a() {
            return (AudioPlayer) AudioPlayer.f42890j.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(boolean z10) {
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onIsPlayingChanged(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(ao.e eVar) {
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onLoadingBegin(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(ao.e eVar) {
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onLoadingEnd(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(int i11, float f11, ao.e eVar) {
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onLoadingProgress(i11, f11, eVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(ao.e eVar) {
        AudioBean audioBean = this.f42895e;
        if (audioBean == null || audioBean.getStatus() != 6) {
            com.transsion.audio.view.d.k().q(4);
            n(4);
            for (com.transsion.player.orplayer.f fVar : this.f42897g) {
                if (fVar != null) {
                    fVar.onVideoPause(eVar);
                }
            }
            com.transsion.audio.player.a aVar = this.f42893c;
            if (aVar != null) {
                aVar.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(ao.e eVar) {
        com.transsion.audio.view.d.k().q(3);
        n(3);
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onVideoStart(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(PlayError playError, ao.e eVar) {
        n(7);
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onPlayError(playError, eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.e(playError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(ao.e eVar) {
        n(0);
        com.transsion.audio.view.d.k().q(0);
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onPlayerRelease(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.b();
        }
        this.f42893c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(long j11, ao.e eVar) {
        com.transsion.audio.view.d.k().p(Long.valueOf(j11), Long.valueOf(this.f42891a));
        AudioBean audioBean = this.f42895e;
        if (audioBean != null) {
            audioBean.setReadProcess(Long.valueOf(j11));
        }
        if (System.currentTimeMillis() - this.f42894d > 1000) {
            for (com.transsion.player.orplayer.f fVar : this.f42897g) {
                if (fVar != null) {
                    fVar.onProgress(j11, eVar);
                }
            }
            AudioBean audioBean2 = this.f42895e;
            if (audioBean2 != null) {
                HistoryListManager.f42961e.b().w(audioBean2);
            }
            this.f42894d = System.currentTimeMillis();
            String str = this.f42898h;
            AudioBean audioBean3 = this.f42895e;
            if (!TextUtils.equals(str, audioBean3 != null ? audioBean3.getAudioUrl() : null)) {
                AudioBean audioBean4 = this.f42895e;
                this.f42898h = audioBean4 != null ? audioBean4.getAudioUrl() : null;
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.f(j11);
        }
    }

    private final void n(int i11) {
        AudioBean audioBean = this.f42895e;
        int status = audioBean != null ? audioBean.getStatus() : 1;
        switch (i11) {
            case 2:
            case 3:
                status = 3;
                break;
            case 4:
            case 5:
                status = 4;
                break;
            case 6:
                status = 6;
                break;
            case 7:
                status = 7;
                break;
        }
        AudioBean audioBean2 = this.f42895e;
        if (audioBean2 == null || audioBean2.getStatus() != 6 || status < 4) {
            AudioBean audioBean3 = this.f42895e;
            if (audioBean3 != null) {
                audioBean3.setStatus(status);
            }
            AudioBean audioBean4 = this.f42895e;
            if (audioBean4 != null) {
                HistoryListManager.f42961e.b().k(audioBean4);
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            AudioBean audioBean5 = this.f42895e;
            Integer numValueOf = audioBean5 != null ? Integer.valueOf(audioBean5.getStatus()) : null;
            AudioBean audioBean6 = this.f42895e;
            lg.a.C0828a.f(c0828a, "audio_log", "onStateChanged " + numValueOf + " ..title.. " + (audioBean6 != null ? audioBean6.getTitle() : null), false, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(ao.e eVar) {
        n(6);
        com.transsion.audio.view.d.k().q(6);
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onCompletion(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.b();
        }
        this.f42893c = null;
    }

    private final void w() {
        l lVar = new l(Utils.a());
        this.f42892b = lVar;
        lVar.setPlayerListener(new com.transsion.player.orplayer.f() { // from class: com.transsion.audio.player.AudioPlayer$initPlayer$1
            @Override // com.transsion.player.orplayer.f
            public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
                com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void initPlayer() {
                com.transsion.player.orplayer.f.a.b(this);
                lg.a.C0828a.f(lg.a.f68839a, "audio_log", "AudioPlayer --> initPlayer --> initPlayer ...", false, 4, null);
            }

            @Override // com.transsion.player.orplayer.f
            public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
                com.transsion.player.orplayer.f.a.c(this, eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onBufferedPosition(long j11, ao.e eVar) {
                com.transsion.player.orplayer.f.a.d(this, j11, eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onCompletion(ao.e eVar) {
                com.transsion.player.orplayer.f.a.e(this, eVar);
                this.f42899a.o(eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onFocusChange(boolean z10) {
                com.transsion.player.orplayer.f.a.g(this, z10);
            }

            @Override // com.transsion.player.orplayer.f
            public void onIsPlayingChanged(boolean z10) {
                this.f42899a.A(z10);
            }

            @Override // com.transsion.player.orplayer.f
            public void onLoadingBegin(ao.e eVar) {
                com.transsion.player.orplayer.f.a.i(this, eVar);
                this.f42899a.B(eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onLoadingEnd(ao.e eVar) {
                com.transsion.player.orplayer.f.a.k(this, eVar);
                this.f42899a.C(eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onLoadingProgress(int i11, float f11, ao.e eVar) {
                com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
                this.f42899a.D(i11, f11, eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onLoopingStart() {
                com.transsion.player.orplayer.f.a.o(this);
            }

            @Override // com.transsion.player.orplayer.f
            public void onMediaItemTransition(String str) {
                com.transsion.player.orplayer.f.a.p(this, str);
            }

            @Override // com.transsion.player.orplayer.f
            public void onPlayError(PlayError errorInfo, ao.e eVar) {
                Intrinsics.h(errorInfo, "errorInfo");
                com.transsion.player.orplayer.f.a.q(this, errorInfo, eVar);
                this.f42899a.H(errorInfo, eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onPlayerRelease(ao.e eVar) {
                com.transsion.player.orplayer.f.a.t(this, eVar);
                this.f42899a.I(eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onPlayerReset() {
                com.transsion.player.orplayer.f.a.v(this);
            }

            @Override // com.transsion.player.orplayer.f
            public void onPrepare(ao.e eVar) {
                com.transsion.player.orplayer.f.a.w(this, eVar);
                lg.a.C0828a.f(lg.a.f68839a, "audio_log", "AudioPlayer --> initPlayer -->onPrepare ...", false, 4, null);
                AudioPlayer audioPlayer = this.f42899a;
                com.transsion.player.orplayer.g gVarV = audioPlayer.v();
                audioPlayer.Q(gVarV != null ? gVarV.getDuration() : 1L);
                AudioBean audioBeanU = this.f42899a.u();
                if (audioBeanU != null) {
                    audioBeanU.setDuration(Long.valueOf(this.f42899a.s()));
                }
                AudioPlayer audioPlayer2 = this.f42899a;
                audioPlayer2.R(audioPlayer2.u());
                if (this.f42899a.t() == null) {
                    com.transsion.player.orplayer.g gVarV2 = this.f42899a.v();
                    if (gVarV2 != null) {
                        gVarV2.play();
                        return;
                    }
                    return;
                }
                kotlinx.coroutines.k.d(o0.a(y0.a()), null, null, new AudioPlayer$initPlayer$1$onPrepare$1(this.f42899a, null), 3, null);
                com.transsion.player.orplayer.g gVarV3 = this.f42899a.v();
                if (gVarV3 != null) {
                    gVarV3.play();
                }
            }

            @Override // com.transsion.player.orplayer.f
            public void onProgress(long j11, ao.e eVar) {
                com.transsion.player.orplayer.f.a.y(this, j11, eVar);
                this.f42899a.M(j11, eVar);
            }

            @Override // com.transsion.player.orplayer.f
            public void onRenderFirstFrame() {
                com.transsion.player.orplayer.f.a.A(this);
                a aVarR = this.f42899a.r();
                if (aVarR != null) {
                    aVarR.g();
                }
            }

            @Override // com.transsion.player.orplayer.f
            public void onSetDataSource() {
                com.transsion.player.orplayer.f.a.B(this);
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
                this.f42899a.E(eVar);
                lg.a.C0828a.f(lg.a.f68839a, "player", "AudioPlayer --> initPlayer --> onStateChanged 4 ...", false, 4, null);
            }

            @Override // com.transsion.player.orplayer.f
            public void onVideoSizeChanged(int i11, int i12) {
                com.transsion.player.orplayer.f.a.H(this, i11, i12);
                lg.a.C0828a.f(lg.a.f68839a, "audio_log", "AudioPlayer --> initPlayer --> onVideoSizeChanged ...", false, 4, null);
            }

            @Override // com.transsion.player.orplayer.f
            public void onVideoStart(ao.e eVar) {
                com.transsion.player.orplayer.f.a.I(this, eVar);
                this.f42899a.F(eVar);
                lg.a.C0828a.f(lg.a.f68839a, "player", "onStateChanged 3 ...", false, 4, null);
            }

            @Override // com.transsion.player.orplayer.f
            public void setOnSeekCompleteListener() {
                com.transsion.player.orplayer.f.a.K(this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AudioPlayer x() {
        return new AudioPlayer();
    }

    public final void G() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.pause();
        }
    }

    public final boolean J() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            return gVar.isPlaying();
        }
        return false;
    }

    public final void K() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.prepare();
        }
    }

    public final void L(AudioBean audio) {
        Intrinsics.h(audio, "audio");
        if (this.f42892b == null) {
            w();
        }
        lg.a.C0828a.f(lg.a.f68839a, "audio_log", "AudioPlayer --> prepare --> " + audio, false, 4, null);
        this.f42896f = audio;
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            if (aVar != null) {
                aVar.b();
            }
            this.f42893c = null;
        }
        this.f42893c = new com.transsion.audio.player.a(audio);
        String url = audio.getUrl();
        if (url != null) {
            com.transsion.player.orplayer.g gVar = this.f42892b;
            if (gVar != null) {
                gVar.stop();
            }
            com.transsion.player.orplayer.g gVar2 = this.f42892b;
            if (gVar2 != null) {
                gVar2.setDataSource(new ao.e(url, url, 0, null, null, 28, null));
            }
            com.transsion.player.orplayer.g gVar3 = this.f42892b;
            if (gVar3 != null) {
                gVar3.prepare();
            }
        }
        for (com.transsion.player.orplayer.f fVar : this.f42897g) {
            if (fVar != null) {
                fVar.onPrepare(new ao.e(audio.getAudioUrl(), audio.getAudioUrl(), 0, null, null, 28, null));
            }
        }
    }

    public final void N() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.release();
        }
        this.f42892b = null;
        this.f42895e = null;
        com.transsion.audio.player.a aVar = this.f42893c;
        if (aVar != null) {
            aVar.b();
        }
        this.f42893c = null;
    }

    public final void O(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f42897g.remove(listener);
    }

    public final void P(long j11) {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.seekTo(j11);
        }
    }

    public final void Q(long j11) {
        this.f42891a = j11;
    }

    public final void R(AudioBean audioBean) {
        this.f42895e = audioBean;
    }

    public final void S() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.play();
        }
    }

    public final void T() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.stop();
        }
    }

    public final void m(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f42897g.add(listener);
    }

    public final boolean p() {
        return this.f42892b == null;
    }

    public final void q() {
        com.transsion.player.orplayer.g gVar = this.f42892b;
        if (gVar != null) {
            gVar.stop();
        }
        N();
    }

    public final com.transsion.audio.player.a r() {
        return this.f42893c;
    }

    public final long s() {
        return this.f42891a;
    }

    public final AudioBean t() {
        return this.f42895e;
    }

    public final AudioBean u() {
        return this.f42896f;
    }

    public final com.transsion.player.orplayer.g v() {
        return this.f42892b;
    }

    public final boolean y(AudioBean audio) {
        Intrinsics.h(audio, "audio");
        String audioUrl = audio.getAudioUrl();
        AudioBean audioBean = this.f42895e;
        return TextUtils.equals(audioUrl, audioBean != null ? audioBean.getAudioUrl() : null);
    }

    public final boolean z(String audioUrl) {
        Intrinsics.h(audioUrl, "audioUrl");
        AudioBean audioBean = this.f42895e;
        return TextUtils.equals(audioUrl, audioBean != null ? audioBean.getAudioUrl() : null);
    }
}
