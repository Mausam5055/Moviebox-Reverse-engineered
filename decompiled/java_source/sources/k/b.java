package k;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b implements Iterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c f66456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f66457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakHashMap f66458c = new WeakHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f66459d = 0;

    static class a extends e {
        a(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override // k.b.e
        c b(c cVar) {
            return cVar.f66463d;
        }

        @Override // k.b.e
        c c(c cVar) {
            return cVar.f66462c;
        }
    }

    /* JADX INFO: renamed from: k.b$b, reason: collision with other inner class name */
    private static class C0805b extends e {
        C0805b(c cVar, c cVar2) {
            super(cVar, cVar2);
        }

        @Override // k.b.e
        c b(c cVar) {
            return cVar.f66462c;
        }

        @Override // k.b.e
        c c(c cVar) {
            return cVar.f66463d;
        }
    }

    static class c implements Map.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f66460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f66461b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c f66462c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c f66463d;

        c(Object obj, Object obj2) {
            this.f66460a = obj;
            this.f66461b = obj2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f66460a.equals(cVar.f66460a) && this.f66461b.equals(cVar.f66461b);
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f66460a;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f66461b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f66460a.hashCode() ^ this.f66461b.hashCode();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f66460a + UrlUtils.EQUAL_MARK + this.f66461b;
        }
    }

    public class d extends f implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f66464a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f66465b = true;

        d() {
        }

        @Override // k.b.f
        void a(c cVar) {
            c cVar2 = this.f66464a;
            if (cVar == cVar2) {
                c cVar3 = cVar2.f66463d;
                this.f66464a = cVar3;
                this.f66465b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (this.f66465b) {
                this.f66465b = false;
                this.f66464a = b.this.f66456a;
            } else {
                c cVar = this.f66464a;
                this.f66464a = cVar != null ? cVar.f66462c : null;
            }
            return this.f66464a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f66465b) {
                return b.this.f66456a != null;
            }
            c cVar = this.f66464a;
            return (cVar == null || cVar.f66462c == null) ? false : true;
        }
    }

    private static abstract class e extends f implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        c f66467a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c f66468b;

        e(c cVar, c cVar2) {
            this.f66467a = cVar2;
            this.f66468b = cVar;
        }

        private c e() {
            c cVar = this.f66468b;
            c cVar2 = this.f66467a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override // k.b.f
        public void a(c cVar) {
            if (this.f66467a == cVar && cVar == this.f66468b) {
                this.f66468b = null;
                this.f66467a = null;
            }
            c cVar2 = this.f66467a;
            if (cVar2 == cVar) {
                this.f66467a = b(cVar2);
            }
            if (this.f66468b == cVar) {
                this.f66468b = e();
            }
        }

        abstract c b(c cVar);

        abstract c c(c cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            c cVar = this.f66468b;
            this.f66468b = e();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f66468b != null;
        }
    }

    public static abstract class f {
        abstract void a(c cVar);
    }

    public Map.Entry a() {
        return this.f66456a;
    }

    protected c b(Object obj) {
        c cVar = this.f66456a;
        while (cVar != null && !cVar.f66460a.equals(obj)) {
            cVar = cVar.f66462c;
        }
        return cVar;
    }

    public d c() {
        d dVar = new d();
        this.f66458c.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public Iterator descendingIterator() {
        C0805b c0805b = new C0805b(this.f66457b, this.f66456a);
        this.f66458c.put(c0805b, Boolean.FALSE);
        return c0805b;
    }

    public Map.Entry e() {
        return this.f66457b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object next = it2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    c f(Object obj, Object obj2) {
        c cVar = new c(obj, obj2);
        this.f66459d++;
        c cVar2 = this.f66457b;
        if (cVar2 == null) {
            this.f66456a = cVar;
            this.f66457b = cVar;
            return cVar;
        }
        cVar2.f66462c = cVar;
        cVar.f66463d = cVar2;
        this.f66457b = cVar;
        return cVar;
    }

    public Object g(Object obj, Object obj2) {
        c cVarB = b(obj);
        if (cVarB != null) {
            return cVarB.f66461b;
        }
        f(obj, obj2);
        return null;
    }

    public Object h(Object obj) {
        c cVarB = b(obj);
        if (cVarB == null) {
            return null;
        }
        this.f66459d--;
        if (!this.f66458c.isEmpty()) {
            Iterator it = this.f66458c.keySet().iterator();
            while (it.hasNext()) {
                ((f) it.next()).a(cVarB);
            }
        }
        c cVar = cVarB.f66463d;
        if (cVar != null) {
            cVar.f66462c = cVarB.f66462c;
        } else {
            this.f66456a = cVarB.f66462c;
        }
        c cVar2 = cVarB.f66462c;
        if (cVar2 != null) {
            cVar2.f66463d = cVar;
        } else {
            this.f66457b = cVar;
        }
        cVarB.f66462c = null;
        cVarB.f66463d = null;
        return cVarB.f66461b;
    }

    public int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += ((Map.Entry) it.next()).hashCode();
        }
        return iHashCode;
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        a aVar = new a(this.f66456a, this.f66457b);
        this.f66458c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.f66459d;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            sb2.append(((Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                sb2.append(", ");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }
}
