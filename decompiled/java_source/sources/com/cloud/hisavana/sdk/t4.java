package com.cloud.hisavana.sdk;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
abstract class t4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f22973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c f22974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f22975c;

    final class a implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f22976a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f22977b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f22978c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f22979d = false;

        a(int i11) {
            this.f22976a = i11;
            this.f22977b = t4.this.n();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22978c < this.f22977b;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objB = t4.this.b(this.f22978c, this.f22976a);
            this.f22978c++;
            this.f22979d = true;
            return objB;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f22979d) {
                throw new IllegalStateException();
            }
            int i11 = this.f22978c - 1;
            this.f22978c = i11;
            this.f22977b--;
            this.f22979d = false;
            t4.this.e(i11);
        }
    }

    final class b implements Set {
        b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection collection) {
            int iN = t4.this.n();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                t4.this.f(entry.getKey(), entry.getValue());
            }
            return iN != t4.this.n();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            t4.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iA = t4.this.a(entry.getKey());
            if (iA < 0) {
                return false;
            }
            return Objects.equals(t4.this.b(iA, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return t4.h(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iN = t4.this.n() - 1; iN >= 0; iN--) {
                Object objB = t4.this.b(iN, 0);
                Object objB2 = t4.this.b(iN, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return t4.this.n() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return t4.this.new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return t4.this.n();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            throw new UnsupportedOperationException();
        }
    }

    final class c implements Set {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            t4.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return t4.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection collection) {
            return t4.g(t4.this.k(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return t4.h(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iN = t4.this.n() - 1; iN >= 0; iN--) {
                Object objB = t4.this.b(iN, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return t4.this.n() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return t4.this.new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iA = t4.this.a(obj);
            if (iA < 0) {
                return false;
            }
            t4.this.e(iA);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection collection) {
            return t4.l(t4.this.k(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection collection) {
            return t4.o(t4.this.k(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return t4.this.n();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return t4.this.m(0);
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            return t4.this.i(objArr, 0);
        }
    }

    final class d implements Iterator, Map.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f22983a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f22985c = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f22984b = -1;

        d() {
            this.f22983a = t4.this.n() - 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f22984b++;
            this.f22985c = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f22985c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return Objects.equals(entry.getKey(), t4.this.b(this.f22984b, 0)) && Objects.equals(entry.getValue(), t4.this.b(this.f22984b, 1));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            if (this.f22985c) {
                return t4.this.b(this.f22984b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            if (this.f22985c) {
                return t4.this.b(this.f22984b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f22984b < this.f22983a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f22985c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objB = t4.this.b(this.f22984b, 0);
            Object objB2 = t4.this.b(this.f22984b, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f22985c) {
                throw new IllegalStateException();
            }
            t4.this.e(this.f22984b);
            this.f22984b--;
            this.f22983a--;
            this.f22985c = false;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (this.f22985c) {
                return t4.this.c(this.f22984b, obj);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + UrlUtils.EQUAL_MARK + getValue();
        }
    }

    final class e implements Collection {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            t4.this.d();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return t4.this.j(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return t4.this.n() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return t4.this.new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iJ = t4.this.j(obj);
            if (iJ < 0) {
                return false;
            }
            t4.this.e(iJ);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection collection) {
            int iN = t4.this.n();
            int i11 = 0;
            boolean z10 = false;
            while (i11 < iN) {
                if (collection.contains(t4.this.b(i11, 1))) {
                    t4.this.e(i11);
                    i11--;
                    iN--;
                    z10 = true;
                }
                i11++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection collection) {
            int iN = t4.this.n();
            int i11 = 0;
            boolean z10 = false;
            while (i11 < iN) {
                if (!collection.contains(t4.this.b(i11, 1))) {
                    t4.this.e(i11);
                    i11--;
                    iN--;
                    z10 = true;
                }
                i11++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public int size() {
            return t4.this.n();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return t4.this.m(1);
        }

        @Override // java.util.Collection
        public Object[] toArray(Object[] objArr) {
            return t4.this.i(objArr, 1);
        }
    }

    t4() {
    }

    public static boolean g(Map map, Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean l(Map map, Collection collection) {
        int size = map.size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static boolean o(Map map, Collection collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract int a(Object obj);

    protected abstract Object b(int i11, int i12);

    protected abstract Object c(int i11, Object obj);

    protected abstract void d();

    protected abstract void e(int i11);

    protected abstract void f(Object obj, Object obj2);

    public Object[] i(Object[] objArr, int i11) {
        int iN = n();
        if (objArr.length < iN) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), iN);
        }
        for (int i12 = 0; i12 < iN; i12++) {
            objArr[i12] = b(i12, i11);
        }
        if (objArr.length > iN) {
            objArr[iN] = null;
        }
        return objArr;
    }

    protected abstract int j(Object obj);

    protected abstract Map k();

    public Object[] m(int i11) {
        int iN = n();
        Object[] objArr = new Object[iN];
        for (int i12 = 0; i12 < iN; i12++) {
            objArr[i12] = b(i12, i11);
        }
        return objArr;
    }

    protected abstract int n();

    public Set p() {
        if (this.f22973a == null) {
            this.f22973a = new b();
        }
        return this.f22973a;
    }

    public Set q() {
        if (this.f22974b == null) {
            this.f22974b = new c();
        }
        return this.f22974b;
    }

    public Collection r() {
        if (this.f22975c == null) {
            this.f22975c = new e();
        }
        return this.f22975c;
    }
}
