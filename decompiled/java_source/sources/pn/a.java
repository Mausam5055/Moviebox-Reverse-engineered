package pn;

import ao.e;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0886a f72478c = new C0886a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private qn.a f72479a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f72480b;

    /* JADX INFO: renamed from: pn.a$a, reason: collision with other inner class name */
    public static final class C0886a {
        private C0886a() {
        }

        public /* synthetic */ C0886a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final int a() {
        return this.f72480b;
    }

    public final void b(qn.a aVar) {
        this.f72479a = aVar;
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
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
    public void onCompletion(e eVar) {
        f.a.e(this, eVar);
        lg.a.C0828a.f(lg.a.f68839a, "GifPlayerListener", "onCompletion", false, 4, null);
        qn.a aVar = this.f72479a;
        if (aVar != null) {
            aVar.q();
        }
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
    public void onLoadingBegin(e eVar) {
        f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e eVar) {
        f.a.k(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, e eVar) {
        f.a.m(this, i11, f11, eVar);
        lg.a.C0828a.f(lg.a.f68839a, "GifPlayerListener", "percent=" + i11, false, 4, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        f.a.q(this, errorInfo, eVar);
        lg.a.C0828a.f(lg.a.f68839a, "GifPlayerListener", "errorInfo code=" + errorInfo.getErrorCode() + " message=" + errorInfo.getErrorMessage(), false, 4, null);
        Integer errorCode = errorInfo.getErrorCode();
        this.f72480b = errorCode != null ? errorCode.intValue() : 0;
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
    public void onProgress(long j11, e eVar) {
        f.a.y(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        lg.a.C0828a.f(lg.a.f68839a, "GifPlayerListener", "onRenderFirstFrame", false, 4, null);
        qn.a aVar = this.f72479a;
        if (aVar != null) {
            aVar.p();
        }
        this.f72480b = 0;
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
    public void onVideoPause(e eVar) {
        f.a.F(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e eVar) {
        f.a.I(this, eVar);
        lg.a.C0828a.f(lg.a.f68839a, "GifPlayerListener", "onVideoStart", false, 4, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }
}
