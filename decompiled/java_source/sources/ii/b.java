package ii;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f65250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f65251d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f65252e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f65248a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Map f65249b = MapsKt.h();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set f65253f = new LinkedHashSet();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f65254a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Function0 f65255b;

        public a(String sceneId, Function0 function0) {
            Intrinsics.h(sceneId, "sceneId");
            this.f65254a = sceneId;
            this.f65255b = function0;
        }

        public final Function0 a() {
            return this.f65255b;
        }

        public final String b() {
            return this.f65254a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f65254a, aVar.f65254a) && Intrinsics.c(this.f65255b, aVar.f65255b);
        }

        public int hashCode() {
            int iHashCode = this.f65254a.hashCode() * 31;
            Function0 function0 = this.f65255b;
            return iHashCode + (function0 == null ? 0 : function0.hashCode());
        }

        public String toString() {
            return "ShowingScene(sceneId=" + this.f65254a + ", handle=" + this.f65255b + ")";
        }
    }

    private b() {
    }

    private final void b(String str) {
        oi.a.f71022a.f("AdSceneCoordinator", str, 3, false);
    }

    public static /* synthetic */ void d(b bVar, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        bVar.c(str, z10);
    }

    public static /* synthetic */ void g(b bVar, String str, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        bVar.f(str, function0);
    }

    public final boolean a(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        ii.a aVar = (ii.a) f65249b.get(sceneId);
        a aVar2 = f65250c;
        ii.a aVar3 = aVar2 != null ? (ii.a) f65249b.get(aVar2.b()) : null;
        if (aVar3 != null && aVar != null) {
            if (aVar.a() < aVar3.a()) {
                b("Scene " + sceneId + " preempting " + aVar2.b() + ".");
            } else {
                if (aVar.a() != aVar3.a()) {
                    b("Scene " + sceneId + " blocked by " + aVar2.b() + " (new=" + aVar.a() + ", current=" + aVar3.a() + ").");
                    return false;
                }
                b("Scene " + sceneId + " same priority as " + aVar2.b() + ", allow show.");
            }
            return true;
        }
        if (aVar2 != null && aVar == null) {
            b("Scene " + sceneId + " not registered, allow show.");
            return true;
        }
        if (aVar != null) {
            int iA = aVar.a();
            Collection<ii.a> collectionValues = f65249b.values();
            if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
                for (ii.a aVar4 : collectionValues) {
                    if (aVar4.a() < iA && !f65253f.contains(Integer.valueOf(aVar4.a()))) {
                        b("Scene " + sceneId + " blocked: higher priority scenes not yet attempted.");
                        return false;
                    }
                }
            }
            if (aVar.b() != 0 && System.currentTimeMillis() - f65251d < aVar.b()) {
                b("Scene " + sceneId + " blocked by interval limit.");
                return false;
            }
            b("Scene " + sceneId + " allow show.");
        }
        return true;
    }

    public final void c(String sceneId, boolean z10) {
        Intrinsics.h(sceneId, "sceneId");
        if (z10) {
            b("Scene " + sceneId + " attempted.");
        }
        ii.a aVar = (ii.a) f65249b.get(sceneId);
        if (aVar != null) {
            f65253f.add(Integer.valueOf(aVar.a()));
        }
    }

    public final void e(String sceneId, boolean z10) {
        Intrinsics.h(sceneId, "sceneId");
        a aVar = f65250c;
        if (Intrinsics.c(aVar != null ? aVar.b() : null, sceneId)) {
            f65250c = null;
        }
        c(sceneId, false);
        if (!z10) {
            b("Dismiss scene: " + sceneId + " (wasShown=false)");
            return;
        }
        ii.a aVar2 = (ii.a) f65249b.get(sceneId);
        if (aVar2 == null || aVar2.b() != 0) {
            f65251d = System.currentTimeMillis();
        }
        f65252e = sceneId;
        b("Dismiss scene: " + sceneId + " (wasShown=true)");
    }

    public final void f(String sceneId, Function0 function0) {
        Function0 function0A;
        Intrinsics.h(sceneId, "sceneId");
        a aVar = f65250c;
        if (Intrinsics.c(aVar != null ? aVar.b() : null, sceneId)) {
            b("Scene " + sceneId + " already showing.");
            return;
        }
        a aVar2 = f65250c;
        if (aVar2 != null && (function0A = aVar2.a()) != null) {
            function0A.invoke();
        }
        f65250c = new a(sceneId, function0);
        b("Showing scene: " + sceneId);
    }

    public final void h(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        ii.a aVar = (ii.a) f65249b.get(sceneId);
        if (aVar != null) {
            int iA = aVar.a();
            f65253f.remove(Integer.valueOf(iA));
            b("Session reset for scene " + sceneId + " (priority=" + iA + ").");
        }
    }

    public final void i(Map sceneMap) {
        Intrinsics.h(sceneMap, "sceneMap");
        f65249b = sceneMap;
    }
}
