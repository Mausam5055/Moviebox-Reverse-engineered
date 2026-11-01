package hb;

import android.content.Context;
import com.google.firebase.abt.AbtException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.b f64420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f64421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f64422c = null;

    public b(Context context, ic.b bVar, String str) {
        this.f64420a = bVar;
        this.f64421b = str;
    }

    private void a(kb.a.c cVar) {
        ((kb.a) this.f64420a.get()).d(cVar);
    }

    private void b(List list) {
        ArrayDeque arrayDeque = new ArrayDeque(f());
        int i11 = i();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            while (arrayDeque.size() >= i11) {
                k(((kb.a.c) arrayDeque.pollFirst()).f66739b);
            }
            kb.a.c cVarF = aVar.f(this.f64421b);
            a(cVarF);
            arrayDeque.offer(cVarF);
        }
    }

    private static List c(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a.b((Map) it.next()));
        }
        return arrayList;
    }

    private boolean d(List list, a aVar) {
        String strC = aVar.c();
        String strE = aVar.e();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar2 = (a) it.next();
            if (aVar2.c().equals(strC) && aVar2.e().equals(strE)) {
                return true;
            }
        }
        return false;
    }

    private List f() {
        return ((kb.a) this.f64420a.get()).g(this.f64421b, "");
    }

    private ArrayList g(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!d(list2, aVar)) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private ArrayList h(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!d(list2, aVar)) {
                arrayList.add(aVar.f(this.f64421b));
            }
        }
        return arrayList;
    }

    private int i() {
        if (this.f64422c == null) {
            this.f64422c = Integer.valueOf(((kb.a) this.f64420a.get()).f(this.f64421b));
        }
        return this.f64422c.intValue();
    }

    private void k(String str) {
        ((kb.a) this.f64420a.get()).clearConditionalUserProperty(str, null, null);
    }

    private void l(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            k(((kb.a.c) it.next()).f66739b);
        }
    }

    private void n(List list) throws AbtException {
        if (list.isEmpty()) {
            j();
            return;
        }
        List listE = e();
        l(h(listE, list));
        b(g(list, listE));
    }

    private void o() throws AbtException {
        if (this.f64420a.get() == null) {
            throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }

    public List e() throws AbtException {
        o();
        List listF = f();
        ArrayList arrayList = new ArrayList();
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(a.a((kb.a.c) it.next()));
        }
        return arrayList;
    }

    public void j() throws AbtException {
        o();
        l(f());
    }

    public void m(List list) throws AbtException {
        o();
        if (list == null) {
            throw new IllegalArgumentException("The replacementExperiments list is null.");
        }
        n(c(list));
    }
}
