package com.transsion.shorttv.ad.playeroverlayad;

import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.transsion.shorttv.ad.AdLoadState;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvPlayerOverlayAdManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static WeakReference f52717b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static t1 f52719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f52720e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f52722g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ShortTvPlayerOverlayAdManager f52716a = new ShortTvPlayerOverlayAdManager();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ConcurrentHashMap f52718c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f52721f = 3;

    private ShortTvPlayerOverlayAdManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        j();
    }

    private final boolean g() {
        if (f52720e < 0 || f52721f < 0) {
            return false;
        }
        int size = f52718c.size() + 1;
        if (f52722g) {
            int i11 = f52721f;
            return i11 == 0 || (size - f52720e) % (i11 + 1) == 0;
        }
        int i12 = f52720e;
        if (i12 == 0) {
            f52722g = true;
            return f52721f == 0;
        }
        if (i12 != size) {
            return false;
        }
        f52722g = true;
        return true;
    }

    private final void h() {
        WeakReference weakReference;
        LifecycleCoroutineScope lifecycleCoroutineScope;
        t1 t1Var = f52719d;
        if ((t1Var != null && t1Var.isActive()) || (weakReference = f52717b) == null || (lifecycleCoroutineScope = (LifecycleCoroutineScope) weakReference.get()) == null) {
            return;
        }
        f52719d = k.d(lifecycleCoroutineScope, null, null, new ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1(null), 3, null);
    }

    private final void i() {
        t1 t1Var = f52719d;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        f52719d = null;
    }

    private final void j() {
        e eVarB;
        Collection collectionValues = f52718c.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (a aVar : CollectionsKt.R0(collectionValues)) {
            if (aVar.c() == AdLoadState.SUCCEED && !aVar.e() && (eVarB = aVar.b()) != null) {
                Long lValueOf = Long.valueOf(eVarB.h());
                if (lValueOf.longValue() <= 0) {
                    lValueOf = null;
                }
                if (lValueOf != null) {
                    if (System.currentTimeMillis() - lValueOf.longValue() >= 10000) {
                        aVar.a();
                    }
                }
            }
        }
    }

    public final void b() {
        ur.a.g(ur.a.f76889a, "overlay", "overlay ad manager clear", null, 4, null);
        Collection collectionValues = f52718c.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (a aVar : CollectionsKt.R0(collectionValues)) {
            e eVarB = aVar.b();
            if (eVarB != null) {
                eVarB.f();
            }
            aVar.f(null);
        }
        f52718c.clear();
        WeakReference weakReference = f52717b;
        if (weakReference != null) {
            weakReference.clear();
        }
        f52717b = null;
        i();
        f52722g = false;
    }

    public final a c(String key) {
        LifecycleCoroutineScope lifecycleCoroutineScope;
        Intrinsics.h(key, "key");
        WeakReference weakReference = f52717b;
        if (weakReference == null || (lifecycleCoroutineScope = (LifecycleCoroutineScope) weakReference.get()) == null) {
            return null;
        }
        ur.a.g(ur.a.f76889a, "overlay", "getAdData, key=" + key + ", currentVideoCount=" + f52718c.size(), null, 4, null);
        a aVar = (a) f52718c.get(key);
        if (aVar == null) {
            aVar = new a();
            aVar.h(false);
            if (f52716a.g()) {
                aVar.f(new e("ShortTvPlayerOverlayScene", lifecycleCoroutineScope));
                aVar.h(true);
            }
            f52718c.put(key, aVar);
        }
        return aVar;
    }

    public final void d(LifecycleCoroutineScope scope) {
        Intrinsics.h(scope, "scope");
        f52717b = new WeakReference(scope);
        h();
        com.transsion.ad.scene.a aVar = com.transsion.ad.scene.a.f42201a;
        f52720e = aVar.o("ShortTvPlayerOverlayScene", 0);
        f52721f = aVar.q("ShortTvPlayerOverlayScene", 3);
    }

    public final void e(String key) {
        e eVarB;
        Intrinsics.h(key, "key");
        a aVar = (a) f52718c.get(key);
        if (aVar != null && (eVarB = aVar.b()) != null) {
            eVarB.j();
        }
        a aVar2 = (a) f52718c.get(key);
        if (aVar2 != null) {
            aVar2.i(false);
        }
    }
}
