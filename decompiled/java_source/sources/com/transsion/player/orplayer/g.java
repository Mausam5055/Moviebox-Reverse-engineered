package com.transsion.player.orplayer;

import android.content.Context;
import android.view.SurfaceView;
import android.view.TextureView;
import com.transsion.player.p007enum.ScaleMode;
import ko.e0;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface g {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f48437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private bo.d f48438b;

        public a(Context context) {
            Intrinsics.h(context, "context");
            this.f48437a = context;
        }

        public final g a() {
            return new w(this.f48437a, this.f48438b);
        }

        public final a b(bo.d config) {
            Intrinsics.h(config, "config");
            this.f48438b = config;
            return this;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class b {
        public static boolean a(g gVar, ao.e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return false;
        }

        public static void b(g gVar, f listener) {
            Intrinsics.h(listener, "listener");
        }

        public static void c(g gVar, mo.d mediaTrackGroup, int i11) {
            Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        }

        public static void d(g gVar) {
        }

        public static void e(g gVar) {
        }

        public static ao.e f(g gVar) {
            return null;
        }

        public static long g(g gVar) {
            return 0L;
        }

        public static mo.c h(g gVar) {
            return null;
        }

        public static mo.b i(g gVar) {
            return null;
        }

        public static Object j(g gVar) {
            return null;
        }

        public static int k(g gVar) {
            return 0;
        }

        public static int l(g gVar) {
            return 0;
        }

        public static boolean m(g gVar) {
            return false;
        }

        public static boolean n(g gVar) {
            return false;
        }

        public static void o(g gVar, String str) {
        }

        public static boolean p(g gVar, ao.e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return false;
        }

        public static void q(g gVar, f listener) {
            Intrinsics.h(listener, "listener");
        }

        public static boolean r(g gVar) {
            return false;
        }

        public static void s(g gVar, String uuid, long j11) {
            Intrinsics.h(uuid, "uuid");
        }

        public static void t(g gVar) {
        }

        public static void u(g gVar, e0 listener) {
            Intrinsics.h(listener, "listener");
        }

        public static void v(g gVar, boolean z10) {
        }

        public static void w(g gVar, bo.d vodConfig) {
            Intrinsics.h(vodConfig, "vodConfig");
        }

        public static void x(g gVar, ScaleMode scaleMode) {
            Intrinsics.h(scaleMode, "scaleMode");
        }
    }

    boolean addDataSource(ao.e eVar);

    void addPlayerListener(f fVar);

    void changeTrackSelection(mo.d dVar, int i11);

    void clearScreen();

    void clearSurfaceOnly();

    ao.e currentMediaSource();

    void enableHardwareDecoder(boolean z10);

    Pair getBitrate();

    long getCurrentPosition();

    mo.c getCurrentTracks();

    mo.b getCurrentVideoFormat();

    Object getDownloadBitrate();

    long getDuration();

    int getVideoHeight();

    int getVideoWidth();

    Float getVolume();

    boolean isComplete();

    boolean isLoading();

    boolean isMute();

    boolean isPlaying();

    boolean isPrepared();

    void pause();

    void play();

    void prepare();

    void release();

    void release(String str);

    boolean removeDataSource(ao.e eVar);

    void removePlayerListener(f fVar);

    boolean requestForce();

    void reset();

    void seekTo(long j11);

    void seekTo(String str, long j11);

    void setAutoPlay(boolean z10);

    void setDataSource(ao.e eVar);

    void setLooping(boolean z10);

    void setMute(boolean z10);

    void setPlayerConfig(bo.d dVar);

    void setPlayerListener(f fVar);

    void setScaleMode(ScaleMode scaleMode);

    void setSpeed(float f11);

    void setSurfaceView(SurfaceView surfaceView);

    void setTextureView(TextureView textureView);

    void setVipResolution(boolean z10, int i11);

    void setVolume(float f11);

    void stop();
}
