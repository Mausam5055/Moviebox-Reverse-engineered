package androidx.media3.common;

import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.util.a1;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface a0 {

    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f9792b = new a().e();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f9793c = a1.C0(0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final p f9794a;

        public static final class a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static final int[] f9795b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 33, 26, 34, 35, 27, 28, 29, 30, 32};

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final p.b f9796a = new p.b();

            public a a(int i11) {
                this.f9796a.a(i11);
                return this;
            }

            public a b(b bVar) {
                this.f9796a.b(bVar.f9794a);
                return this;
            }

            public a c(int... iArr) {
                this.f9796a.c(iArr);
                return this;
            }

            public a d(int i11, boolean z10) {
                this.f9796a.d(i11, z10);
                return this;
            }

            public b e() {
                return new b(this.f9796a.e());
            }
        }

        private b(p pVar) {
            this.f9794a = pVar;
        }

        public boolean b(int i11) {
            return this.f9794a.a(i11);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f9794a.equals(((b) obj).f9794a);
            }
            return false;
        }

        public int hashCode() {
            return this.f9794a.hashCode();
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final p f9797a;

        public c(p pVar) {
            this.f9797a = pVar;
        }

        public boolean a(int i11) {
            return this.f9797a.a(i11);
        }

        public boolean b(int... iArr) {
            return this.f9797a.b(iArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f9797a.equals(((c) obj).f9797a);
            }
            return false;
        }

        public int hashCode() {
            return this.f9797a.hashCode();
        }
    }

    public interface d {
        void onAudioSessionIdChanged(int i11);

        void onAvailableCommandsChanged(b bVar);

        void onCues(List list);

        void onCues(u1.b bVar);

        void onDeviceInfoChanged(m mVar);

        void onDeviceVolumeChanged(int i11, boolean z10);

        void onEvents(a0 a0Var, c cVar);

        void onIsLoadingChanged(boolean z10);

        void onIsPlayingChanged(boolean z10);

        void onLoadingChanged(boolean z10);

        void onMediaItemTransition(t tVar, int i11);

        void onMediaMetadataChanged(v vVar);

        void onMetadata(x xVar);

        void onPlayWhenReadyChanged(boolean z10, int i11);

        void onPlaybackParametersChanged(z zVar);

        void onPlaybackStateChanged(int i11);

        void onPlaybackSuppressionReasonChanged(int i11);

        void onPlayerError(PlaybackException playbackException);

        void onPlayerErrorChanged(PlaybackException playbackException);

        void onPlayerStateChanged(boolean z10, int i11);

        void onPositionDiscontinuity(int i11);

        void onPositionDiscontinuity(e eVar, e eVar2, int i11);

        void onRenderedFirstFrame();

        void onRepeatModeChanged(int i11);

        void onShuffleModeEnabledChanged(boolean z10);

        void onSkipSilenceEnabledChanged(boolean z10);

        void onSurfaceSizeChanged(int i11, int i12);

        void onTimelineChanged(e0 e0Var, int i11);

        void onTrackSelectionParametersChanged(h0 h0Var);

        void onTracksChanged(i0 i0Var);

        void onVideoSizeChanged(m0 m0Var);

        void onVolumeChanged(float f11);
    }

    public static final class e {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        static final String f9798k = a1.C0(0);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final String f9799l = a1.C0(1);

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        static final String f9800m = a1.C0(2);

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        static final String f9801n = a1.C0(3);

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        static final String f9802o = a1.C0(4);

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static final String f9803p = a1.C0(5);

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static final String f9804q = a1.C0(6);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f9805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9807c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final t f9808d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object f9809e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f9810f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f9811g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f9812h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f9813i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f9814j;

        public e(Object obj, int i11, t tVar, Object obj2, int i12, long j11, long j12, int i13, int i14) {
            this.f9805a = obj;
            this.f9806b = i11;
            this.f9807c = i11;
            this.f9808d = tVar;
            this.f9809e = obj2;
            this.f9810f = i12;
            this.f9811g = j11;
            this.f9812h = j12;
            this.f9813i = i13;
            this.f9814j = i14;
        }

        public boolean a(e eVar) {
            return this.f9807c == eVar.f9807c && this.f9810f == eVar.f9810f && this.f9811g == eVar.f9811g && this.f9812h == eVar.f9812h && this.f9813i == eVar.f9813i && this.f9814j == eVar.f9814j && Objects.equals(this.f9808d, eVar.f9808d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return a(eVar) && Objects.equals(this.f9805a, eVar.f9805a) && Objects.equals(this.f9809e, eVar.f9809e);
        }

        public int hashCode() {
            return Objects.hash(this.f9805a, Integer.valueOf(this.f9807c), this.f9808d, this.f9809e, Integer.valueOf(this.f9810f), Long.valueOf(this.f9811g), Long.valueOf(this.f9812h), Integer.valueOf(this.f9813i), Integer.valueOf(this.f9814j));
        }
    }

    void A(boolean z10, int i11);

    void B();

    void C(int i11, int i12, List list);

    void E(int i11);

    int F();

    void G(int i11, int i12);

    void H(t tVar);

    void J(t tVar);

    u1.b K();

    void L(d dVar);

    void M(d dVar);

    void N(int i11, t tVar);

    t O(int i11);

    long Q();

    void S(int i11, List list);

    void V(h0 h0Var);

    boolean W();

    void a(float f11);

    void b(z zVar);

    PlaybackException c();

    void clearVideoSurface();

    void clearVideoSurfaceView(SurfaceView surfaceView);

    void clearVideoTextureView(TextureView textureView);

    long d();

    void e(List list, boolean z10);

    void f();

    boolean g();

    long getBufferedPosition();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    e0 getCurrentTimeline();

    i0 getCurrentTracks();

    long getDuration();

    boolean getPlayWhenReady();

    z getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    float getVolume();

    boolean h(int i11);

    boolean i();

    boolean isPlaying();

    boolean isPlayingAd();

    int j();

    Looper k();

    h0 l();

    void m();

    b n();

    long o();

    m0 p();

    void pause();

    void play();

    void prepare();

    boolean q();

    long r();

    boolean s();

    void seekTo(int i11, long j11);

    void seekTo(long j11);

    void seekToDefaultPosition();

    void setPlayWhenReady(boolean z10);

    void setRepeatMode(int i11);

    void setShuffleModeEnabled(boolean z10);

    void setVideoSurfaceView(SurfaceView surfaceView);

    void setVideoTextureView(TextureView textureView);

    void setVolume(float f11);

    void stop();

    int t();

    long u();

    void v();

    void w();

    v x();

    long y();

    boolean z();
}
