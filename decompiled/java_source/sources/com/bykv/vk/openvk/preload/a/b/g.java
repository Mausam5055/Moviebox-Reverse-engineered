package com.bykv.vk.openvk.preload.a.b;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Comparator<Comparable> f20441d = new Comparator<Comparable>() { // from class: com.bykv.vk.openvk.preload.a.b.g.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static /* synthetic */ boolean f20442i = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f20443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f20444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final d<K, V> f20445c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Comparator<? super K> f20446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d<K, V> f20447f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private g<K, V>.a f20448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private g<K, V>.b f20449h;

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new c(this) { // from class: com.bykv.vk.openvk.preload.a.b.g.a.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d<K, V> dVarA;
            if (!(obj instanceof Map.Entry) || (dVarA = g.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            g.this.a((d) dVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.f20443a;
        }
    }

    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new c(this) { // from class: com.bykv.vk.openvk.preload.a.b.g.b.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return a().f20461f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return g.this.a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.f20443a;
        }
    }

    abstract class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private d<K, V> f20452a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private d<K, V> f20453b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f20454c;

        c() {
            this.f20452a = g.this.f20445c.f20459d;
            this.f20454c = g.this.f20444b;
        }

        final d<K, V> a() {
            d<K, V> dVar = this.f20452a;
            g gVar = g.this;
            if (dVar == gVar.f20445c) {
                throw new NoSuchElementException();
            }
            if (gVar.f20444b != this.f20454c) {
                throw new ConcurrentModificationException();
            }
            this.f20452a = dVar.f20459d;
            this.f20453b = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f20452a != g.this.f20445c;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f20453b;
            if (dVar == null) {
                throw new IllegalStateException();
            }
            g.this.a((d) dVar, true);
            this.f20453b = null;
            this.f20454c = g.this.f20444b;
        }
    }

    static final class d<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d<K, V> f20456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d<K, V> f20457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        d<K, V> f20458c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d<K, V> f20459d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d<K, V> f20460e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final K f20461f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        V f20462g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f20463h;

        d() {
            this.f20461f = null;
            this.f20460e = this;
            this.f20459d = this;
        }

        d(d<K, V> dVar, K k11, d<K, V> dVar2, d<K, V> dVar3) {
            this.f20456a = dVar;
            this.f20461f = k11;
            this.f20463h = 1;
            this.f20459d = dVar2;
            this.f20460e = dVar3;
            dVar3.f20459d = this;
            dVar2.f20460e = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k11 = this.f20461f;
                if (k11 != null ? k11.equals(entry.getKey()) : entry.getKey() == null) {
                    V v11 = this.f20462g;
                    if (v11 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v11.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f20461f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f20462g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k11 = this.f20461f;
            int iHashCode = k11 == null ? 0 : k11.hashCode();
            V v11 = this.f20462g;
            return iHashCode ^ (v11 != null ? v11.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v11) {
            V v12 = this.f20462g;
            this.f20462g = v11;
            return v12;
        }

        public final String toString() {
            return this.f20461f + UrlUtils.EQUAL_MARK + this.f20462g;
        }
    }

    public g() {
        this(f20441d);
    }

    private g(Comparator<? super K> comparator) {
        this.f20443a = 0;
        this.f20444b = 0;
        this.f20445c = new d<>();
        this.f20446e = comparator == null ? f20441d : comparator;
    }

    private d<K, V> a(K k11, boolean z10) {
        int iCompareTo;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f20446e;
        d<K, V> dVar2 = this.f20447f;
        if (dVar2 != null) {
            Comparable comparable = comparator == f20441d ? (Comparable) k11 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(dVar2.f20461f) : comparator.compare(k11, dVar2.f20461f);
                if (iCompareTo != 0) {
                    d<K, V> dVar3 = iCompareTo < 0 ? dVar2.f20457b : dVar2.f20458c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            iCompareTo = 0;
        }
        if (!z10) {
            return null;
        }
        d<K, V> dVar4 = this.f20445c;
        if (dVar2 != null) {
            dVar = new d<>(dVar2, k11, dVar4, dVar4.f20460e);
            if (iCompareTo < 0) {
                dVar2.f20457b = dVar;
            } else {
                dVar2.f20458c = dVar;
            }
            b(dVar2, true);
        } else {
            if (comparator == f20441d && !(k11 instanceof Comparable)) {
                throw new ClassCastException(k11.getClass().getName() + " is not Comparable");
            }
            dVar = new d<>(dVar2, k11, dVar4, dVar4.f20460e);
            this.f20447f = dVar;
        }
        this.f20443a++;
        this.f20444b++;
        return dVar;
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f20457b;
        d<K, V> dVar3 = dVar.f20458c;
        d<K, V> dVar4 = dVar3.f20457b;
        d<K, V> dVar5 = dVar3.f20458c;
        dVar.f20458c = dVar4;
        if (dVar4 != null) {
            dVar4.f20456a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f20457b = dVar;
        dVar.f20456a = dVar3;
        int iMax = Math.max(dVar2 != null ? dVar2.f20463h : 0, dVar4 != null ? dVar4.f20463h : 0) + 1;
        dVar.f20463h = iMax;
        dVar3.f20463h = Math.max(iMax, dVar5 != null ? dVar5.f20463h : 0) + 1;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f20456a;
        dVar.f20456a = null;
        if (dVar2 != null) {
            dVar2.f20456a = dVar3;
        }
        if (dVar3 == null) {
            this.f20447f = dVar2;
            return;
        }
        if (dVar3.f20457b == dVar) {
            dVar3.f20457b = dVar2;
        } else {
            if (!f20442i && dVar3.f20458c != dVar) {
                throw new AssertionError();
            }
            dVar3.f20458c = dVar2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        if (obj != 0) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f20457b;
        d<K, V> dVar3 = dVar.f20458c;
        d<K, V> dVar4 = dVar2.f20457b;
        d<K, V> dVar5 = dVar2.f20458c;
        dVar.f20457b = dVar5;
        if (dVar5 != null) {
            dVar5.f20456a = dVar;
        }
        a(dVar, dVar2);
        dVar2.f20458c = dVar;
        dVar.f20456a = dVar2;
        int iMax = Math.max(dVar3 != null ? dVar3.f20463h : 0, dVar5 != null ? dVar5.f20463h : 0) + 1;
        dVar.f20463h = iMax;
        dVar2.f20463h = Math.max(iMax, dVar4 != null ? dVar4.f20463h : 0) + 1;
    }

    private void b(d<K, V> dVar, boolean z10) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f20457b;
            d<K, V> dVar3 = dVar.f20458c;
            int i11 = dVar2 != null ? dVar2.f20463h : 0;
            int i12 = dVar3 != null ? dVar3.f20463h : 0;
            int i13 = i11 - i12;
            if (i13 == -2) {
                d<K, V> dVar4 = dVar3.f20457b;
                d<K, V> dVar5 = dVar3.f20458c;
                int i14 = (dVar4 != null ? dVar4.f20463h : 0) - (dVar5 != null ? dVar5.f20463h : 0);
                if (i14 == -1 || (i14 == 0 && !z10)) {
                    a((d) dVar);
                } else {
                    if (!f20442i && i14 != 1) {
                        throw new AssertionError();
                    }
                    b((d) dVar3);
                    a((d) dVar);
                }
                if (z10) {
                    return;
                }
            } else if (i13 == 2) {
                d<K, V> dVar6 = dVar2.f20457b;
                d<K, V> dVar7 = dVar2.f20458c;
                int i15 = (dVar6 != null ? dVar6.f20463h : 0) - (dVar7 != null ? dVar7.f20463h : 0);
                if (i15 == 1 || (i15 == 0 && !z10)) {
                    b((d) dVar);
                } else {
                    if (!f20442i && i15 != -1) {
                        throw new AssertionError();
                    }
                    a((d) dVar2);
                    b((d) dVar);
                }
                if (z10) {
                    return;
                }
            } else if (i13 == 0) {
                dVar.f20463h = i11 + 1;
                if (z10) {
                    return;
                }
            } else {
                if (!f20442i && i13 != -1 && i13 != 1) {
                    throw new AssertionError();
                }
                dVar.f20463h = Math.max(i11, i12) + 1;
                if (!z10) {
                    return;
                }
            }
            dVar = dVar.f20456a;
        }
    }

    final d<K, V> a(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            a((d) dVarB, true);
        }
        return dVarB;
    }

    final d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> dVarB = b(entry.getKey());
        if (dVarB == null) {
            return null;
        }
        V v11 = dVarB.f20462g;
        Object value = entry.getValue();
        if (v11 == value || (v11 != null && v11.equals(value))) {
            return dVarB;
        }
        return null;
    }

    final void a(d<K, V> dVar, boolean z10) {
        int i11;
        if (z10) {
            d<K, V> dVar2 = dVar.f20460e;
            dVar2.f20459d = dVar.f20459d;
            dVar.f20459d.f20460e = dVar2;
        }
        d<K, V> dVar3 = dVar.f20457b;
        d<K, V> dVar4 = dVar.f20458c;
        d<K, V> dVar5 = dVar.f20456a;
        int i12 = 0;
        if (dVar3 == null || dVar4 == null) {
            if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.f20457b = null;
            } else if (dVar4 != null) {
                a(dVar, dVar4);
                dVar.f20458c = null;
            } else {
                a(dVar, (d) null);
            }
            b(dVar5, false);
            this.f20443a--;
            this.f20444b++;
            return;
        }
        if (dVar3.f20463h > dVar4.f20463h) {
            d<K, V> dVar6 = dVar3.f20458c;
            while (true) {
                d<K, V> dVar7 = dVar6;
                dVar4 = dVar3;
                dVar3 = dVar7;
                if (dVar3 == null) {
                    break;
                } else {
                    dVar6 = dVar3.f20458c;
                }
            }
        } else {
            while (true) {
                d<K, V> dVar8 = dVar4.f20457b;
                if (dVar8 == null) {
                    break;
                } else {
                    dVar4 = dVar8;
                }
            }
        }
        a((d) dVar4, false);
        d<K, V> dVar9 = dVar.f20457b;
        if (dVar9 != null) {
            i11 = dVar9.f20463h;
            dVar4.f20457b = dVar9;
            dVar9.f20456a = dVar4;
            dVar.f20457b = null;
        } else {
            i11 = 0;
        }
        d<K, V> dVar10 = dVar.f20458c;
        if (dVar10 != null) {
            i12 = dVar10.f20463h;
            dVar4.f20458c = dVar10;
            dVar10.f20456a = dVar4;
            dVar.f20458c = null;
        }
        dVar4.f20463h = Math.max(i11, i12) + 1;
        a(dVar, dVar4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f20447f = null;
        this.f20443a = 0;
        this.f20444b++;
        d<K, V> dVar = this.f20445c;
        dVar.f20460e = dVar;
        dVar.f20459d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.f20448g;
        if (aVar != null) {
            return aVar;
        }
        g<K, V>.a aVar2 = new a();
        this.f20448g = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            return dVarB.f20462g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        g<K, V>.b bVar = this.f20449h;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.f20449h = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k11, V v11) {
        if (k11 == null) {
            throw new NullPointerException("key == null");
        }
        d<K, V> dVarA = a((Object) k11, true);
        V v12 = dVarA.f20462g;
        dVarA.f20462g = v11;
        return v12;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            return dVarA.f20462g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f20443a;
    }
}
