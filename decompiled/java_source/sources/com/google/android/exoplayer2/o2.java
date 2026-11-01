package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface o2 {

    public static final class b implements k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f25537b = new a().e();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final k.a f25538c = new k.a() { // from class: com.google.android.exoplayer2.p2
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return o2.b.d(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.m f25539a;

        public static final class a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static final int[] f25540b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final com.google.android.exoplayer2.util.m.b f25541a = new com.google.android.exoplayer2.util.m.b();

            public a a(int i11) {
                this.f25541a.a(i11);
                return this;
            }

            public a b(b bVar) {
                this.f25541a.b(bVar.f25539a);
                return this;
            }

            public a c(int... iArr) {
                this.f25541a.c(iArr);
                return this;
            }

            public a d(int i11, boolean z10) {
                this.f25541a.d(i11, z10);
                return this;
            }

            public b e() {
                return new b(this.f25541a.e());
            }
        }

        private b(com.google.android.exoplayer2.util.m mVar) {
            this.f25539a = mVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b d(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(e(0));
            if (integerArrayList == null) {
                return f25537b;
            }
            a aVar = new a();
            for (int i11 = 0; i11 < integerArrayList.size(); i11++) {
                aVar.a(integerArrayList.get(i11).intValue());
            }
            return aVar.e();
        }

        private static String e(int i11) {
            return Integer.toString(i11, 36);
        }

        public boolean c(int i11) {
            return this.f25539a.a(i11);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f25539a.equals(((b) obj).f25539a);
            }
            return false;
        }

        public int hashCode() {
            return this.f25539a.hashCode();
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i11 = 0; i11 < this.f25539a.d(); i11++) {
                arrayList.add(Integer.valueOf(this.f25539a.c(i11)));
            }
            bundle.putIntegerArrayList(e(0), arrayList);
            return bundle;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.android.exoplayer2.util.m f25542a;

        public c(com.google.android.exoplayer2.util.m mVar) {
            this.f25542a = mVar;
        }

        public boolean a(int i11) {
            return this.f25542a.a(i11);
        }

        public boolean b(int... iArr) {
            return this.f25542a.b(iArr);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                return this.f25542a.equals(((c) obj).f25542a);
            }
            return false;
        }

        public int hashCode() {
            return this.f25542a.hashCode();
        }
    }

    public interface d {
        void onAvailableCommandsChanged(b bVar);

        void onCues(ba.f fVar);

        void onCues(List list);

        void onDeviceInfoChanged(r rVar);

        void onDeviceVolumeChanged(int i11, boolean z10);

        void onEvents(o2 o2Var, c cVar);

        void onIsLoadingChanged(boolean z10);

        void onIsPlayingChanged(boolean z10);

        void onLoadingChanged(boolean z10);

        void onMediaItemTransition(v1 v1Var, int i11);

        void onMediaMetadataChanged(a2 a2Var);

        void onMetadata(Metadata metadata);

        void onPlayWhenReadyChanged(boolean z10, int i11);

        void onPlaybackParametersChanged(n2 n2Var);

        void onPlaybackStateChanged(int i11);

        void onPlaybackSuppressionReasonChanged(int i11);

        void onPlayerError(PlaybackException playbackException);

        void onPlayerErrorChanged(PlaybackException playbackException);

        void onPlayerStateChanged(boolean z10, int i11);

        void onPositionDiscontinuity(int i11);

        void onPositionDiscontinuity(e eVar, e eVar2, int i11);

        void onRenderedFirstFrame();

        void onRepeatModeChanged(int i11);

        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z10);

        void onSkipSilenceEnabledChanged(boolean z10);

        void onSurfaceSizeChanged(int i11, int i12);

        void onTimelineChanged(k3 k3Var, int i11);

        void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters);

        void onTracksChanged(p3 p3Var);

        void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar);

        void onVolumeChanged(float f11);
    }

    public static final class e implements k {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final k.a f25543k = new k.a() { // from class: com.google.android.exoplayer2.r2
            @Override // com.google.android.exoplayer2.k.a
            public final k a(Bundle bundle) {
                return o2.e.b(bundle);
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f25544a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f25545b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25546c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final v1 f25547d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object f25548e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f25549f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final long f25550g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f25551h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f25552i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f25553j;

        public e(Object obj, int i11, v1 v1Var, Object obj2, int i12, long j11, long j12, int i13, int i14) {
            this.f25544a = obj;
            this.f25545b = i11;
            this.f25546c = i11;
            this.f25547d = v1Var;
            this.f25548e = obj2;
            this.f25549f = i12;
            this.f25550g = j11;
            this.f25551h = j12;
            this.f25552i = i13;
            this.f25553j = i14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e b(Bundle bundle) {
            int i11 = bundle.getInt(c(0), -1);
            Bundle bundle2 = bundle.getBundle(c(1));
            return new e(null, i11, bundle2 == null ? null : (v1) v1.f27707j.a(bundle2), null, bundle.getInt(c(2), -1), bundle.getLong(c(3), C.TIME_UNSET), bundle.getLong(c(4), C.TIME_UNSET), bundle.getInt(c(5), -1), bundle.getInt(c(6), -1));
        }

        private static String c(int i11) {
            return Integer.toString(i11, 36);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f25546c == eVar.f25546c && this.f25549f == eVar.f25549f && this.f25550g == eVar.f25550g && this.f25551h == eVar.f25551h && this.f25552i == eVar.f25552i && this.f25553j == eVar.f25553j && com.google.common.base.j.a(this.f25544a, eVar.f25544a) && com.google.common.base.j.a(this.f25548e, eVar.f25548e) && com.google.common.base.j.a(this.f25547d, eVar.f25547d);
        }

        public int hashCode() {
            return com.google.common.base.j.b(this.f25544a, Integer.valueOf(this.f25546c), this.f25547d, this.f25548e, Integer.valueOf(this.f25549f), Long.valueOf(this.f25550g), Long.valueOf(this.f25551h), Integer.valueOf(this.f25552i), Integer.valueOf(this.f25553j));
        }

        @Override // com.google.android.exoplayer2.k
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.f25546c);
            if (this.f25547d != null) {
                bundle.putBundle(c(1), this.f25547d.toBundle());
            }
            bundle.putInt(c(2), this.f25549f);
            bundle.putLong(c(3), this.f25550g);
            bundle.putLong(c(4), this.f25551h);
            bundle.putInt(c(5), this.f25552i);
            bundle.putInt(c(6), this.f25553j);
            return bundle;
        }
    }

    void A(d dVar);

    void B(v1 v1Var);

    void C(d dVar);

    void D(TrackSelectionParameters trackSelectionParameters);

    void b(n2 n2Var);

    PlaybackException c();

    void clearVideoSurface();

    void clearVideoSurfaceView(SurfaceView surfaceView);

    void clearVideoTextureView(TextureView textureView);

    long d();

    void e(List list, boolean z10);

    void f();

    boolean g();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    k3 getCurrentTimeline();

    p3 getCurrentTracks();

    long getDuration();

    boolean getPlayWhenReady();

    n2 getPlaybackParameters();

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

    TrackSelectionParameters l();

    void m();

    b n();

    long o();

    com.google.android.exoplayer2.video.y p();

    void pause();

    void play();

    void prepare();

    boolean q();

    long r();

    void release();

    boolean s();

    void seekTo(int i11, long j11);

    void seekTo(long j11);

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

    a2 x();

    long y();

    boolean z();
}
