package lo;

import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.ScaleMode;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public interface f extends g {

    public static final class a {
        public static void a(f fVar, com.transsion.player.orplayer.f listener) {
            Intrinsics.h(listener, "listener");
            g.b.b(fVar, listener);
        }

        public static void b(f fVar, mo.d mediaTrackGroup, int i11) {
            Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
            g.b.c(fVar, mediaTrackGroup, i11);
        }

        public static void c(f fVar) {
            g.b.d(fVar);
        }

        public static mo.c d(f fVar) {
            return g.b.h(fVar);
        }

        public static mo.b e(f fVar) {
            return g.b.i(fVar);
        }

        public static Object f(f fVar) {
            return g.b.j(fVar);
        }

        public static int g(f fVar) {
            return g.b.k(fVar);
        }

        public static int h(f fVar) {
            return g.b.l(fVar);
        }

        public static boolean i(f fVar) {
            return g.b.m(fVar);
        }

        public static void j(f fVar, String str) {
            g.b.o(fVar, str);
        }

        public static void k(f fVar, com.transsion.player.orplayer.f listener) {
            Intrinsics.h(listener, "listener");
            g.b.q(fVar, listener);
        }

        public static boolean l(f fVar) {
            return g.b.r(fVar);
        }

        public static void m(f fVar, String uuid, long j11) {
            Intrinsics.h(uuid, "uuid");
            g.b.s(fVar, uuid, j11);
        }

        public static void n(f fVar, bo.d vodConfig) {
            Intrinsics.h(vodConfig, "vodConfig");
            g.b.w(fVar, vodConfig);
        }

        public static void o(f fVar, ScaleMode scaleMode) {
            Intrinsics.h(scaleMode, "scaleMode");
            g.b.x(fVar, scaleMode);
        }
    }

    Map a();

    boolean b(ao.e eVar);
}
