package mb;

import android.util.Log;
import androidx.compose.animation.core.j0;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public class o implements e, ac.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final ic.b f69471i = new ic.b() { // from class: mb.k
        @Override // ic.b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f69472a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f69473b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f69474c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f69475d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set f69476e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t f69477f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference f69478g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f69479h;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Executor f69480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f69481b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f69482c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private j f69483d = j.f69464a;

        b(Executor executor) {
            this.f69480a = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(c cVar) {
            this.f69482c.add(cVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.f69481b.add(new ic.b() { // from class: mb.p
                @Override // ic.b
                public final Object get() {
                    return o.b.f(componentRegistrar);
                }
            });
            return this;
        }

        public b d(Collection collection) {
            this.f69481b.addAll(collection);
            return this;
        }

        public o e() {
            return new o(this.f69480a, this.f69481b, this.f69482c, this.f69483d);
        }

        public b g(j jVar) {
            this.f69483d = jVar;
            return this;
        }
    }

    private o(Executor executor, Iterable iterable, Collection collection, j jVar) {
        this.f69472a = new HashMap();
        this.f69473b = new HashMap();
        this.f69474c = new HashMap();
        this.f69476e = new HashSet();
        this.f69478g = new AtomicReference();
        t tVar = new t(executor);
        this.f69477f = tVar;
        this.f69479h = jVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.s(tVar, t.class, fc.d.class, fc.c.class));
        arrayList.add(c.s(this, ac.a.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        this.f69475d = q(iterable);
        n(arrayList);
    }

    public static b m(Executor executor) {
        return new b(executor);
    }

    private void n(List list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.f69475d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((ic.b) it.next()).get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f69479h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e11) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e11);
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                for (Object obj : ((c) it2.next()).j().toArray()) {
                    if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                        if (this.f69476e.contains(obj.toString())) {
                            it2.remove();
                            break;
                        }
                        this.f69476e.add(obj.toString());
                    }
                }
            }
            if (this.f69472a.isEmpty()) {
                q.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f69472a.keySet());
                arrayList2.addAll(list);
                q.a(arrayList2);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                final c cVar = (c) it3.next();
                this.f69472a.put(cVar, new u(new ic.b() { // from class: mb.l
                    @Override // ic.b
                    public final Object get() {
                        return this.f69465a.r(cVar);
                    }
                }));
            }
            arrayList.addAll(w(list));
            arrayList.addAll(x());
            v();
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((Runnable) it4.next()).run();
        }
        u();
    }

    private void o(Map map, boolean z10) {
        for (Map.Entry entry : map.entrySet()) {
            c cVar = (c) entry.getKey();
            ic.b bVar = (ic.b) entry.getValue();
            if (cVar.n() || (cVar.o() && z10)) {
                bVar.get();
            }
        }
        this.f69477f.d();
    }

    private static List q(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(c cVar) {
        return cVar.h().a(new c0(cVar, this));
    }

    private void u() {
        Boolean bool = (Boolean) this.f69478g.get();
        if (bool != null) {
            o(this.f69472a, bool.booleanValue());
        }
    }

    private void v() {
        for (c cVar : this.f69472a.keySet()) {
            for (r rVar : cVar.g()) {
                if (rVar.g() && !this.f69474c.containsKey(rVar.c())) {
                    this.f69474c.put(rVar.c(), v.b(Collections.emptySet()));
                } else if (this.f69473b.containsKey(rVar.c())) {
                    continue;
                } else {
                    if (rVar.f()) {
                        throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", cVar, rVar.c()));
                    }
                    if (!rVar.g()) {
                        this.f69473b.put(rVar.c(), z.e());
                    }
                }
            }
        }
    }

    private List w(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.p()) {
                final ic.b bVar = (ic.b) this.f69472a.get(cVar);
                for (b0 b0Var : cVar.j()) {
                    if (this.f69473b.containsKey(b0Var)) {
                        final z zVar = (z) ((ic.b) this.f69473b.get(b0Var));
                        arrayList.add(new Runnable() { // from class: mb.m
                            @Override // java.lang.Runnable
                            public final void run() {
                                zVar.j(bVar);
                            }
                        });
                    } else {
                        this.f69473b.put(b0Var, bVar);
                    }
                }
            }
        }
        return arrayList;
    }

    private List x() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f69472a.entrySet()) {
            c cVar = (c) entry.getKey();
            if (!cVar.p()) {
                ic.b bVar = (ic.b) entry.getValue();
                for (b0 b0Var : cVar.j()) {
                    if (!map.containsKey(b0Var)) {
                        map.put(b0Var, new HashSet());
                    }
                    ((Set) map.get(b0Var)).add(bVar);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            if (this.f69474c.containsKey(entry2.getKey())) {
                final v vVar = (v) this.f69474c.get(entry2.getKey());
                for (final ic.b bVar2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: mb.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            vVar.a(bVar2);
                        }
                    });
                }
            } else {
                this.f69474c.put((b0) entry2.getKey(), v.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    @Override // mb.e
    public /* synthetic */ Object a(Class cls) {
        return d.a(this, cls);
    }

    @Override // mb.e
    public synchronized ic.b b(b0 b0Var) {
        v vVar = (v) this.f69474c.get(b0Var);
        if (vVar != null) {
            return vVar;
        }
        return f69471i;
    }

    @Override // mb.e
    public /* synthetic */ Object c(b0 b0Var) {
        return d.b(this, b0Var);
    }

    @Override // mb.e
    public /* synthetic */ Set d(Class cls) {
        return d.e(this, cls);
    }

    @Override // mb.e
    public /* synthetic */ Set e(b0 b0Var) {
        return d.f(this, b0Var);
    }

    @Override // mb.e
    public /* synthetic */ ic.b f(Class cls) {
        return d.d(this, cls);
    }

    @Override // mb.e
    public synchronized ic.b g(b0 b0Var) {
        a0.c(b0Var, "Null interface requested.");
        return (ic.b) this.f69473b.get(b0Var);
    }

    @Override // mb.e
    public ic.a h(b0 b0Var) {
        ic.b bVarG = g(b0Var);
        if (bVarG == null) {
            return z.e();
        }
        return bVarG instanceof z ? (z) bVarG : z.i(bVarG);
    }

    @Override // mb.e
    public /* synthetic */ ic.a i(Class cls) {
        return d.c(this, cls);
    }

    public void p(boolean z10) {
        HashMap map;
        if (j0.a(this.f69478g, null, Boolean.valueOf(z10))) {
            synchronized (this) {
                map = new HashMap(this.f69472a);
            }
            o(map, z10);
        }
    }
}
