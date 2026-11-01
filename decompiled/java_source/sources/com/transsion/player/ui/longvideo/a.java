package com.transsion.player.ui.longvideo;

import android.view.MotionEvent;
import ao.e;
import bo.d;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import ko.e0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface a extends g {

    /* JADX INFO: renamed from: com.transsion.player.ui.longvideo.a$a, reason: collision with other inner class name */
    public static final class C0646a {
        public static boolean a(a aVar, e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return g.b.a(aVar, mediaSource);
        }

        public static void b(a aVar) {
            g.b.d(aVar);
        }

        public static e c(a aVar) {
            return g.b.f(aVar);
        }

        public static int d(a aVar) {
            return g.b.k(aVar);
        }

        public static int e(a aVar) {
            return g.b.l(aVar);
        }

        public static boolean f(a aVar) {
            return g.b.m(aVar);
        }

        public static boolean g(a aVar) {
            return g.b.n(aVar);
        }

        public static void h(a aVar, String str) {
            g.b.o(aVar, str);
        }

        public static boolean i(a aVar, e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return g.b.p(aVar, mediaSource);
        }

        public static void j(a aVar, String uuid, long j11) {
            Intrinsics.h(uuid, "uuid");
            g.b.s(aVar, uuid, j11);
        }

        public static void k(a aVar) {
            g.b.t(aVar);
        }

        public static void l(a aVar, e0 listener) {
            Intrinsics.h(listener, "listener");
            g.b.u(aVar, listener);
        }

        public static void m(a aVar, boolean z10) {
            g.b.v(aVar, z10);
        }

        public static void n(a aVar, d vodConfig) {
            Intrinsics.h(vodConfig, "vodConfig");
            g.b.w(aVar, vodConfig);
        }

        public static void o(a aVar, ScaleMode scaleMode) {
            Intrinsics.h(scaleMode, "scaleMode");
            g.b.x(aVar, scaleMode);
        }
    }

    public interface b {
        void a();

        void b(float f11, float f12);

        void c();

        void onDoubleTap(MotionEvent motionEvent);

        void onLongPress(MotionEvent motionEvent);
    }

    void enableGesture(boolean z10);

    g getOrPlayer();

    void initLongVodPlayer(bo.a aVar, ORPlayerView oRPlayerView);

    void setExistPlayer(bo.a aVar, g gVar, ORPlayerView oRPlayerView);

    void setGestureListener(b bVar);
}
