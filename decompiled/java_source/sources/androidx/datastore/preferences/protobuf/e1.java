package androidx.datastore.preferences.protobuf;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class e1 extends AbstractMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f8752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f8753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f8754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile f f8755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map f8756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile c f8757f;

    class a extends e1 {
        a() {
            super(null);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.t((Comparable) obj, obj2);
        }

        @Override // androidx.datastore.preferences.protobuf.e1
        public void r() {
            if (!q()) {
                if (m() > 0) {
                    android.support.v4.media.session.c.a(l(0).getKey());
                    throw null;
                }
                Iterator it = o().iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(((Map.Entry) it.next()).getKey());
                    throw null;
                }
            }
            super.r();
        }
    }

    private class b implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Iterator f8759b;

        private b() {
            this.f8758a = e1.this.f8752a.size();
        }

        /* synthetic */ b(e1 e1Var, a aVar) {
            this();
        }

        private Iterator a() {
            if (this.f8759b == null) {
                this.f8759b = e1.this.f8756e.entrySet().iterator();
            }
            return this.f8759b;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (a().hasNext()) {
                return (Map.Entry) a().next();
            }
            List list = e1.this.f8752a;
            int i11 = this.f8758a - 1;
            this.f8758a = i11;
            return (Map.Entry) list.get(i11);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i11 = this.f8758a;
            return (i11 > 0 && i11 <= e1.this.f8752a.size()) || a().hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private class c extends f {
        private c() {
            super(e1.this, null);
        }

        /* synthetic */ c(e1 e1Var, a aVar) {
            this();
        }

        @Override // androidx.datastore.preferences.protobuf.e1.f, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new b(e1.this, null);
        }
    }

    private class d implements Map.Entry, Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Comparable f8762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Object f8763b;

        d(Comparable comparable, Object obj) {
            this.f8762a = comparable;
            this.f8763b = obj;
        }

        d(e1 e1Var, Map.Entry entry) {
            this((Comparable) entry.getKey(), entry.getValue());
        }

        private boolean b(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            return getKey().compareTo(dVar.getKey());
        }

        @Override // java.util.Map.Entry
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Comparable getKey() {
            return this.f8762a;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return b(this.f8762a, entry.getKey()) && b(this.f8763b, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f8763b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Comparable comparable = this.f8762a;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.f8763b;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            e1.this.i();
            Object obj2 = this.f8763b;
            this.f8763b = obj;
            return obj2;
        }

        public String toString() {
            return this.f8762a + UrlUtils.EQUAL_MARK + this.f8763b;
        }
    }

    private class e implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f8765a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f8766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Iterator f8767c;

        private e() {
            this.f8765a = -1;
        }

        /* synthetic */ e(e1 e1Var, a aVar) {
            this();
        }

        private Iterator a() {
            if (this.f8767c == null) {
                this.f8767c = e1.this.f8753b.entrySet().iterator();
            }
            return this.f8767c;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            this.f8766b = true;
            int i11 = this.f8765a + 1;
            this.f8765a = i11;
            return i11 < e1.this.f8752a.size() ? (Map.Entry) e1.this.f8752a.get(this.f8765a) : (Map.Entry) a().next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f8765a + 1 >= e1.this.f8752a.size()) {
                return !e1.this.f8753b.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f8766b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f8766b = false;
            e1.this.i();
            if (this.f8765a >= e1.this.f8752a.size()) {
                a().remove();
                return;
            }
            e1 e1Var = e1.this;
            int i11 = this.f8765a;
            this.f8765a = i11 - 1;
            e1Var.u(i11);
        }
    }

    private class f extends AbstractSet {
        private f() {
        }

        /* synthetic */ f(e1 e1Var, a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry entry) {
            if (contains(entry)) {
                return false;
            }
            e1.this.t((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = e1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new e(e1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            e1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e1.this.size();
        }
    }

    private e1() {
        this.f8752a = Collections.emptyList();
        this.f8753b = Collections.emptyMap();
        this.f8756e = Collections.emptyMap();
    }

    /* synthetic */ e1(a aVar) {
        this();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[SYNTHETIC] */
    private int h(Comparable comparable) {
        int i11;
        int i12;
        int i13;
        int iCompareTo;
        int size = this.f8752a.size();
        int i14 = size - 1;
        if (i14 < 0) {
            i11 = 0;
            while (i11 <= i14) {
                i13 = (i11 + i14) / 2;
                iCompareTo = comparable.compareTo(((d) this.f8752a.get(i13)).getKey());
                if (iCompareTo < 0) {
                    i14 = i13 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i13;
                    }
                    i11 = i13 + 1;
                }
            }
            i12 = i11 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((d) this.f8752a.get(i14)).getKey());
            if (iCompareTo2 > 0) {
                i12 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i14;
                }
                i11 = 0;
                while (i11 <= i14) {
                    i13 = (i11 + i14) / 2;
                    iCompareTo = comparable.compareTo(((d) this.f8752a.get(i13)).getKey());
                    if (iCompareTo < 0) {
                        i14 = i13 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i13;
                        }
                        i11 = i13 + 1;
                    }
                }
                i12 = i11 + 1;
            }
        }
        return -i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.f8754c) {
            throw new UnsupportedOperationException();
        }
    }

    private void k() {
        i();
        if (!this.f8752a.isEmpty() || (this.f8752a instanceof ArrayList)) {
            return;
        }
        this.f8752a = new ArrayList(16);
    }

    private SortedMap p() {
        i();
        if (this.f8753b.isEmpty() && !(this.f8753b instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8753b = treeMap;
            this.f8756e = treeMap.descendingMap();
        }
        return (SortedMap) this.f8753b;
    }

    static e1 s() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object u(int i11) {
        i();
        Object value = ((d) this.f8752a.remove(i11)).getValue();
        if (!this.f8753b.isEmpty()) {
            Iterator it = p().entrySet().iterator();
            this.f8752a.add(new d(this, (Map.Entry) it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        i();
        if (!this.f8752a.isEmpty()) {
            this.f8752a.clear();
        }
        if (this.f8753b.isEmpty()) {
            return;
        }
        this.f8753b.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return h(comparable) >= 0 || this.f8753b.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        if (this.f8755d == null) {
            this.f8755d = new f(this, null);
        }
        return this.f8755d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e1)) {
            return super.equals(obj);
        }
        e1 e1Var = (e1) obj;
        int size = size();
        if (size != e1Var.size()) {
            return false;
        }
        int iM = m();
        if (iM != e1Var.m()) {
            return entrySet().equals(e1Var.entrySet());
        }
        for (int i11 = 0; i11 < iM; i11++) {
            if (!l(i11).equals(e1Var.l(i11))) {
                return false;
            }
        }
        if (iM != size) {
            return this.f8753b.equals(e1Var.f8753b);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iH = h(comparable);
        return iH >= 0 ? ((d) this.f8752a.get(iH)).getValue() : this.f8753b.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int iM = m();
        int iHashCode = 0;
        for (int i11 = 0; i11 < iM; i11++) {
            iHashCode += ((d) this.f8752a.get(i11)).hashCode();
        }
        return n() > 0 ? iHashCode + this.f8753b.hashCode() : iHashCode;
    }

    Set j() {
        if (this.f8757f == null) {
            this.f8757f = new c(this, null);
        }
        return this.f8757f;
    }

    public Map.Entry l(int i11) {
        return (Map.Entry) this.f8752a.get(i11);
    }

    public int m() {
        return this.f8752a.size();
    }

    public int n() {
        return this.f8753b.size();
    }

    public Iterable o() {
        return this.f8753b.isEmpty() ? Collections.emptySet() : this.f8753b.entrySet();
    }

    public boolean q() {
        return this.f8754c;
    }

    public void r() {
        if (this.f8754c) {
            return;
        }
        this.f8753b = this.f8753b.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8753b);
        this.f8756e = this.f8756e.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8756e);
        this.f8754c = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        i();
        Comparable comparable = (Comparable) obj;
        int iH = h(comparable);
        if (iH >= 0) {
            return u(iH);
        }
        if (this.f8753b.isEmpty()) {
            return null;
        }
        return this.f8753b.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f8752a.size() + this.f8753b.size();
    }

    public Object t(Comparable comparable, Object obj) {
        i();
        int iH = h(comparable);
        if (iH >= 0) {
            return ((d) this.f8752a.get(iH)).setValue(obj);
        }
        k();
        int i11 = -(iH + 1);
        if (i11 >= 16) {
            return p().put(comparable, obj);
        }
        if (this.f8752a.size() == 16) {
            d dVar = (d) this.f8752a.remove(15);
            p().put(dVar.getKey(), dVar.getValue());
        }
        this.f8752a.add(i11, new d(comparable, obj));
        return null;
    }
}
