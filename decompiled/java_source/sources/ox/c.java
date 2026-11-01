package ox;

import com.transsion.player.orplayer.g;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f72196a = new c();

    private c() {
    }

    public final void a() {
        b.C0878b.a(b.f72191a.c(), false, 1, null);
        e.b.a(e.f72197a.b(), false, 1, null);
    }

    public final boolean b(String tag) {
        Intrinsics.h(tag, "tag");
        return b.f72191a.c().b(tag) || e.f72197a.b().b(tag);
    }

    public final boolean c(g gVar) {
        return b.f72191a.c().c(gVar) || e.f72197a.b().f(gVar);
    }

    public final boolean d() {
        return b.f72191a.c().isPlaying() || e.f72197a.b().isPlaying();
    }
}
