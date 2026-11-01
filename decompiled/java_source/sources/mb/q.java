package mb;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
abstract class q {

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final mb.c f69485a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set f69486b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set f69487c = new HashSet();

        b(mb.c cVar) {
            this.f69485a = cVar;
        }

        void a(b bVar) {
            this.f69486b.add(bVar);
        }

        void b(b bVar) {
            this.f69487c.add(bVar);
        }

        mb.c c() {
            return this.f69485a;
        }

        Set d() {
            return this.f69486b;
        }

        boolean e() {
            return this.f69486b.isEmpty();
        }

        boolean f() {
            return this.f69487c.isEmpty();
        }

        void g(b bVar) {
            this.f69487c.remove(bVar);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b0 f69488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f69489b;

        private c(b0 b0Var, boolean z10) {
            this.f69488a = b0Var;
            this.f69489b = z10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return cVar.f69488a.equals(this.f69488a) && cVar.f69489b == this.f69489b;
        }

        public int hashCode() {
            return ((this.f69488a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f69489b).hashCode();
        }
    }

    static void a(List list) {
        Set<b> setC = c(list);
        Set setB = b(setC);
        int i11 = 0;
        while (!setB.isEmpty()) {
            b bVar = (b) setB.iterator().next();
            setB.remove(bVar);
            i11++;
            for (b bVar2 : bVar.d()) {
                bVar2.g(bVar);
                if (bVar2.f()) {
                    setB.add(bVar2);
                }
            }
        }
        if (i11 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar3 : setC) {
            if (!bVar3.f() && !bVar3.e()) {
                arrayList.add(bVar3.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set b(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set c(List list) {
        Set<b> set;
        HashMap map = new HashMap(list.size());
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = map.values().iterator();
                while (it2.hasNext()) {
                    for (b bVar : (Set) it2.next()) {
                        for (r rVar : bVar.c().g()) {
                            if (rVar.e() && (set = (Set) map.get(new c(rVar.c(), rVar.g()))) != null) {
                                for (b bVar2 : set) {
                                    bVar.a(bVar2);
                                    bVar2.b(bVar);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                Iterator it3 = map.values().iterator();
                while (it3.hasNext()) {
                    hashSet.addAll((Set) it3.next());
                }
                return hashSet;
            }
            mb.c cVar = (mb.c) it.next();
            b bVar3 = new b(cVar);
            for (b0 b0Var : cVar.j()) {
                c cVar2 = new c(b0Var, !cVar.p());
                if (!map.containsKey(cVar2)) {
                    map.put(cVar2, new HashSet());
                }
                Set set2 = (Set) map.get(cVar2);
                if (!set2.isEmpty() && !cVar2.f69489b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", b0Var));
                }
                set2.add(bVar3);
            }
        }
    }
}
