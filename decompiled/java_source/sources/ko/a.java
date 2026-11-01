package ko;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.transsion.player.mediasession.MediaBrowserCompatHelper;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f66913b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CopyOnWriteArrayList f66912a = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f66914c = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;

    private final String b() {
        String simpleName = a.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final String c(long j11) {
        SimpleDateFormat simpleDateFormat = j11 >= 3600000 ? new SimpleDateFormat("H:mm:ss") : new SimpleDateFormat("mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        String str = simpleDateFormat.format(Long.valueOf(j11));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final void a(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        if (this.f66912a.contains(listener)) {
            return;
        }
        this.f66912a.add(listener);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dashVideoTracksGroup) {
        Intrinsics.h(dashVideoTracksGroup, "dashVideoTracksGroup");
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dashVideoTracksGroup);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).canNonSubscriberPlay(z10, i11, i12, dashVideoTracksGroup);
        }
    }

    public final void d(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        this.f66912a.remove(listener);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).initPlayer();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onAliyunDecodeErrorChangeSoftwareDecoder(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onBufferedPosition(j11, eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e eVar) {
        com.transsion.player.orplayer.f.a.e(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onCompletion(eVar);
        }
        com.transsion.player.mediasession.i.f48408a.a(b() + " --> onCompletion() --> 刷新通知栏");
        MediaBrowserCompatHelper.f48381h.a().r(eVar != null ? eVar.i() : null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.f.a.g(this, z10);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onFocusChange(z10);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.f.a.h(this, z10);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onIsPlayingChanged(z10);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(ao.e eVar) {
        com.transsion.player.orplayer.f.a.i(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoadingBegin(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.player.orplayer.f.a.k(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoadingEnd(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoadingProgress(i11, f11, eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        com.transsion.player.orplayer.f.a.o(this);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onLoopingStart();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.f.a.p(this, str);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onMediaItemTransition(str);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayError(errorInfo, eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayerRelease(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f.a.v(this);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPlayerReset();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        com.transsion.player.orplayer.f.a.w(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onPrepare(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        MediaItem mediaItemI;
        MediaItem mediaItemI2;
        com.transsion.player.orplayer.f.a.y(this, j11, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onProgress(j11, eVar);
        }
        if (System.currentTimeMillis() - this.f66913b > this.f66914c) {
            this.f66913b = System.currentTimeMillis();
            if (eVar != null && (mediaItemI2 = eVar.i()) != null) {
                com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
                mediaItemI2.setDuration(gVarH != null ? Long.valueOf(gVarH.getDuration()) : null);
            }
            if (eVar != null && (mediaItemI = eVar.i()) != null) {
                mediaItemI.setPosition(Long.valueOf(j11));
            }
            MediaBrowserCompatHelper.f48381h.a().t(eVar != null ? eVar.i() : null);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onRenderFirstFrame();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onSetDataSource();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.C(this, i11);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onTracksAudioBitrateChange(i11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c tracks) {
        Intrinsics.h(tracks, "tracks");
        com.transsion.player.orplayer.f.a.D(this, tracks);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onTracksChange(tracks);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        com.transsion.player.orplayer.f.a.E(this, i11);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onTracksVideoBitrateChange(i11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(ao.e eVar) {
        MediaItem mediaItemI;
        MediaItem mediaItemI2;
        MediaItem mediaItemI3;
        MediaItem mediaItemI4;
        Long position;
        com.transsion.player.orplayer.f.a.F(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoPause(eVar);
        }
        com.transsion.player.mediasession.i.f48408a.a(b() + " --> onVideoPause() --> 刷新通知栏 --> position = " + c((eVar == null || (mediaItemI4 = eVar.i()) == null || (position = mediaItemI4.getPosition()) == null) ? 0L : position.longValue()) + " --> position = " + ((eVar == null || (mediaItemI3 = eVar.i()) == null) ? null : mediaItemI3.getPosition()));
        if (eVar != null && (mediaItemI2 = eVar.i()) != null) {
            com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
            mediaItemI2.setDuration(gVarH != null ? Long.valueOf(gVarH.getDuration()) : null);
        }
        if (eVar != null && (mediaItemI = eVar.i()) != null) {
            com.transsion.player.orplayer.g gVarH2 = l0.f66968a.h();
            mediaItemI.setPosition(gVarH2 != null ? Long.valueOf(gVarH2.getCurrentPosition()) : null);
        }
        MediaBrowserCompatHelper.f48381h.a().r(eVar != null ? eVar.i() : null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoSizeChanged(i11, i12);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        MediaItem mediaItemI;
        MediaItem mediaItemI2;
        MediaItem mediaItemI3;
        MediaItem mediaItemI4;
        Long position;
        com.transsion.player.orplayer.f.a.I(this, eVar);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoStart(eVar);
        }
        com.transsion.player.mediasession.i.f48408a.a(b() + " --> onVideoStart() --> 刷新通知栏 --> position = " + c((eVar == null || (mediaItemI4 = eVar.i()) == null || (position = mediaItemI4.getPosition()) == null) ? 0L : position.longValue()) + " --> position = " + ((eVar == null || (mediaItemI3 = eVar.i()) == null) ? null : mediaItemI3.getPosition()));
        if (eVar != null && (mediaItemI2 = eVar.i()) != null) {
            com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
            mediaItemI2.setDuration(gVarH != null ? Long.valueOf(gVarH.getDuration()) : null);
        }
        if (eVar != null && (mediaItemI = eVar.i()) != null) {
            com.transsion.player.orplayer.g gVarH2 = l0.f66968a.h();
            mediaItemI.setPosition(gVarH2 != null ? Long.valueOf(gVarH2.getCurrentPosition()) : null);
        }
        MediaBrowserCompatHelper.f48381h.a().t(eVar != null ? eVar.i() : null);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        Long position;
        ao.e eVarCurrentMediaSource;
        com.transsion.player.orplayer.f.a.K(this);
        Iterator it = this.f66912a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).setOnSeekCompleteListener();
        }
        l0 l0Var = l0.f66968a;
        com.transsion.player.orplayer.g gVarH = l0Var.h();
        MediaItem mediaItemI = (gVarH == null || (eVarCurrentMediaSource = gVarH.currentMediaSource()) == null) ? null : eVarCurrentMediaSource.i();
        if (mediaItemI != null) {
            com.transsion.player.orplayer.g gVarH2 = l0Var.h();
            mediaItemI.setDuration(gVarH2 != null ? Long.valueOf(gVarH2.getDuration()) : null);
        }
        if (mediaItemI != null) {
            com.transsion.player.orplayer.g gVarH3 = l0Var.h();
            mediaItemI.setPosition(gVarH3 != null ? Long.valueOf(gVarH3.getCurrentPosition()) : null);
        }
        com.transsion.player.mediasession.i.f48408a.a(b() + " --> setOnSeekCompleteListener() --> 刷新通知栏 --> position = " + c((mediaItemI == null || (position = mediaItemI.getPosition()) == null) ? 0L : position.longValue()) + " --> position = " + (mediaItemI != null ? mediaItemI.getPosition() : null));
        MediaBrowserCompatHelper.f48381h.a().t(mediaItemI);
    }
}
