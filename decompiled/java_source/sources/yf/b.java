package yf;

import a.TheRouterServiceProvideInjecter;
import android.content.Context;
import com.therouter.TheRouterKt;
import com.therouter.TheRouterThreadPool;
import com.therouter.inject.DebugOnlyKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f79000e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f78996a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap f78997b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CopyOnWriteArrayList f78998c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArrayList f78999d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f79001f = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(b this$0) {
        Intrinsics.h(this$0, "this$0");
        TheRouterKt.f("init", "TheRouter.init() method do @FlowTask init", null, 4, null);
        this$0.j();
        TheRouterKt.f("init", "TheRouter.init() method do @FlowTask schedule", null, 4, null);
        f.a();
    }

    private final void f(d dVar) {
        if (dVar.e()) {
            return;
        }
        Set setG = g(dVar);
        if (!c.d(setG)) {
            if (this.f78998c.contains(dVar)) {
                return;
            }
            this.f78998c.add(dVar);
        } else {
            if (this.f79001f.contains(dVar)) {
                throw new IllegalArgumentException("TheRouter::Digraph::Cyclic dependency " + c.c(this.f79001f, dVar));
            }
            this.f79001f.add(dVar);
            Iterator it = setG.iterator();
            while (it.hasNext()) {
                f((d) it.next());
            }
            this.f79001f.remove(dVar);
            if (this.f78998c.contains(dVar)) {
                return;
            }
            this.f78998c.add(dVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final e k(String str) {
        e eVar;
        int iHashCode = str.hashCode();
        if (iHashCode == -570693157) {
            if (str.equals("TheRouter_Before_Initialization")) {
                eVar = new e(str, null, 2, 0 == true ? 1 : 0);
            }
            return eVar;
        }
        if (iHashCode != -136502702) {
            if (iHashCode == 1312134309 && str.equals("TheRouter_Initialization")) {
                return new e("TheRouter_Initialization", "TheRouter_Before_Initialization");
            }
        } else if (str.equals("TheRouter_activity_splash")) {
            return new e("TheRouter_activity_splash", "TheRouter_Initialization");
        }
        eVar = new e(str, "TheRouter_Initialization");
        return eVar;
    }

    public final boolean b(Runnable r11) {
        Intrinsics.h(r11, "r");
        return this.f78999d.add(r11);
    }

    public final void c(Context context) {
        TheRouterServiceProvideInjecter.a(context, this);
        TheRouterKt.f("init", "TheRouter.init() method do @FlowTask before task", null, 4, null);
        if (!TheRouterServiceProvideInjecter.asm) {
            DebugOnlyKt.a(context);
            if (context != null) {
                Iterator it = DebugOnlyKt.d().iterator();
                while (it.hasNext()) {
                    ((com.therouter.inject.b) it.next()).initFlowTask(context, this);
                }
            }
        }
        e();
        TheRouterThreadPool.f(new Runnable() { // from class: yf.a
            @Override // java.lang.Runnable
            public final void run() {
                b.d(this.f78995a);
            }
        });
    }

    public final void e() {
        e eVarI = i("TheRouter_Before_Initialization");
        this.f78997b.put("TheRouter_Before_Initialization", eVarI);
        eVarI.g();
        Collection<d> collectionValues = this.f78996a.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (d dVar : collectionValues) {
            if (!dVar.a() && dVar.b().size() == 1 && dVar.b().contains("TheRouter_Before_Initialization")) {
                dVar.g();
            }
        }
    }

    public final Set g(d root) {
        Intrinsics.h(root, "root");
        HashSet hashSet = new HashSet();
        for (String str : root.b()) {
            d dVar = (d) this.f78996a.get(str);
            if (dVar == null) {
                HashMap map = this.f78997b;
                Intrinsics.e(str);
                map.put(str, k(str));
            } else {
                hashSet.add(dVar);
            }
        }
        return hashSet;
    }

    public final boolean h() {
        return this.f79000e;
    }

    public final e i(String name) {
        Intrinsics.h(name, "name");
        e eVarK = (e) this.f78997b.get(name);
        if (eVarK == null) {
            eVarK = k(name);
            this.f78997b.put(name, eVarK);
        }
        Intrinsics.e(eVarK);
        return eVarK;
    }

    public final void j() {
        for (d dVar : this.f78996a.values()) {
            Intrinsics.e(dVar);
            f(dVar);
        }
        this.f79000e = true;
        Iterator it = this.f78999d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final void l(String name) {
        Intrinsics.h(name, "name");
        Collection<e> collectionValues = this.f78997b.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        for (e eVar : collectionValues) {
            if (eVar.b().contains(name)) {
                eVar.j();
            }
        }
    }

    public final void m() {
        for (d dVar : this.f78998c) {
            if (dVar.f()) {
                boolean z10 = true;
                for (String str : dVar.b()) {
                    d dVar2 = (d) this.f78996a.get(str);
                    if (dVar2 == null) {
                        dVar2 = (d) this.f78997b.get(str);
                    }
                    if (dVar2 != null && !dVar2.e()) {
                        z10 = false;
                    }
                }
                if (z10) {
                    dVar.g();
                }
            }
        }
    }
}
