package ko;

import com.transsion.player.mediasession.MediaBrowserCompatHelper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Function0 f66970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Function0 f66971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Function0 f66972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Function0 f66973f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Function0 f66978k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile o0 f66979l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static volatile com.transsion.player.orplayer.g f66980m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l0 f66968a = new l0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f66969b = LazyKt.b(new Function0() { // from class: ko.g0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l0.H();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f66974g = LazyKt.b(new Function0() { // from class: ko.h0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(l0.n());
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Lazy f66975h = LazyKt.b(new Function0() { // from class: ko.i0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(l0.q());
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f66976i = LazyKt.b(new Function0() { // from class: ko.j0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(l0.k());
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Lazy f66977j = LazyKt.b(new Function0() { // from class: ko.k0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(l0.g());
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final CopyOnWriteArrayList f66981n = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final CopyOnWriteArrayList f66982o = new CopyOnWriteArrayList();

    private l0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f0 H() {
        return new f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g() {
        Function0 function0 = f66972e;
        boolean zBooleanValue = function0 != null ? ((Boolean) function0.invoke()).booleanValue() : false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isMultiplePlayer:");
        sb2.append(zBooleanValue);
        return zBooleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int k() {
        Function0 function0 = f66971d;
        int iIntValue = function0 != null ? ((Number) function0.invoke()).intValue() : 5000;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isMultiplePlayer:");
        sb2.append(iIntValue);
        return iIntValue;
    }

    private final f0 l() {
        return (f0) f66969b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n() {
        Function0 function0 = f66973f;
        boolean zBooleanValue = function0 != null ? ((Boolean) function0.invoke()).booleanValue() : false;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isASyncPlayer:");
        sb2.append(zBooleanValue);
        return zBooleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean q() {
        Function0 function0 = f66970c;
        boolean zBooleanValue = function0 != null ? ((Boolean) function0.invoke()).booleanValue() : true;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isMultiplePlayer:");
        sb2.append(zBooleanValue);
        return zBooleanValue;
    }

    private final void t(com.transsion.player.orplayer.g gVar, com.transsion.player.orplayer.g gVar2) {
        Iterator it = f66982o.iterator();
        Intrinsics.g(it, "iterator(...)");
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            throw null;
        }
    }

    private final void w(com.transsion.player.orplayer.g gVar) {
        Iterator it = f66981n.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else if (Intrinsics.c(((WeakReference) it.next()).get(), gVar)) {
                break;
            } else {
                i11++;
            }
        }
        if (i11 >= 0) {
            f66981n.remove(i11);
        }
    }

    public final void A(o0 tnPlayer) {
        Intrinsics.h(tnPlayer, "tnPlayer");
        if (o() || Intrinsics.c(f66979l, tnPlayer)) {
            return;
        }
        synchronized (this) {
            try {
                if (!Intrinsics.c(f66979l, tnPlayer)) {
                    oo.e.f71074a.a("TnPlayer", "换boss啦:" + f66979l + "  to " + tnPlayer, true);
                    o0 o0Var = f66979l;
                    if (o0Var != null) {
                        o0Var.d(true);
                    }
                    tnPlayer.d(false);
                    o0 o0Var2 = f66979l;
                    if (o0Var2 != null) {
                        o0Var2.f(null);
                    }
                    tnPlayer.f(f66968a.l());
                    f66979l = tnPlayer;
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void B(com.transsion.player.orplayer.g orPlayer, ao.e eVar) {
        Intrinsics.h(orPlayer, "orPlayer");
    }

    public final void C(Function0 function0) {
        f66973f = function0;
    }

    public final void D(Function0 function0) {
        f66972e = function0;
    }

    public final void E(Function0 function0) {
        f66971d = function0;
    }

    public final void F(Function0 function0) {
        f66970c = function0;
    }

    public final void G(Function0 function0) {
        f66978k = function0;
    }

    public final com.transsion.player.orplayer.g f(String mediaId) {
        String strE;
        com.transsion.player.orplayer.g gVar;
        ao.e eVarCurrentMediaSource;
        Intrinsics.h(mediaId, "mediaId");
        Iterator it = f66981n.iterator();
        do {
            strE = null;
            if (!it.hasNext()) {
                return null;
            }
            gVar = (com.transsion.player.orplayer.g) ((WeakReference) it.next()).get();
            if (gVar != null && (eVarCurrentMediaSource = gVar.currentMediaSource()) != null) {
                strE = eVarCurrentMediaSource.e();
            }
        } while (!Intrinsics.c(strE, mediaId));
        return gVar;
    }

    public final com.transsion.player.orplayer.g h() {
        return f66980m;
    }

    public final boolean i() {
        return ((Boolean) f66977j.getValue()).booleanValue();
    }

    public final int j() {
        return ((Number) f66976i.getValue()).intValue();
    }

    public final boolean m() {
        return ((Boolean) f66974g.getValue()).booleanValue();
    }

    public final boolean o() {
        return ((Boolean) f66975h.getValue()).booleanValue();
    }

    public final Function0 p() {
        return f66970c;
    }

    public final int r() {
        Function0 function0 = f66978k;
        if (function0 != null) {
            return ((Number) function0.invoke()).intValue();
        }
        return 1;
    }

    public final com.transsion.player.orplayer.g s() {
        com.transsion.player.orplayer.g f0Var = o() ? new f0() : new o0();
        f66981n.add(new WeakReference(f0Var));
        return f0Var;
    }

    public final void u(com.transsion.player.orplayer.g orPlayer, ao.e eVar) {
        Intrinsics.h(orPlayer, "orPlayer");
    }

    public final void v(com.transsion.player.orplayer.g orPlayer, ao.e eVar) {
        Intrinsics.h(orPlayer, "orPlayer");
    }

    public final void x(com.transsion.player.orplayer.g orPlayer) {
        Intrinsics.h(orPlayer, "orPlayer");
        if (Intrinsics.c(f66980m, orPlayer)) {
            f66980m = null;
            t(null, orPlayer);
            oo.e.b(oo.e.f71074a, "TnPlayerManager", "releaseFocus  orPlayer:" + orPlayer, false, 4, null);
        }
        w(orPlayer);
    }

    public final void y(String mediaId) {
        Intrinsics.h(mediaId, "mediaId");
        MediaBrowserCompatHelper.f48381h.a().v(mediaId);
    }

    public final void z(com.transsion.player.orplayer.g orPlayer, String reason) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(reason, "reason");
        if (Intrinsics.c(f66980m, orPlayer)) {
            return;
        }
        com.transsion.player.orplayer.g gVar = f66980m;
        if (gVar != null && gVar.isPlaying()) {
            gVar.pause();
        }
        f66980m = orPlayer;
        t(gVar, orPlayer);
        oo.e.b(oo.e.f71074a, "TnPlayerManager", "requestFocus  orPlayer:" + orPlayer + "  reason:" + reason, false, 4, null);
    }
}
