package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a extends x0 implements Map {

    @Nullable
    androidx.collection.a.a mEntrySet;

    @Nullable
    androidx.collection.a.c mKeySet;

    @Nullable
    androidx.collection.a.e mValues;

    /* JADX INFO: renamed from: androidx.collection.a$a, reason: collision with other inner class name */
    final class C0027a extends AbstractSet {
        C0027a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return a.this.new d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a.this.size();
        }
    }

    final class b extends k {
        b() {
            super(a.this.size());
        }

        @Override // androidx.collection.k
        protected Object a(int i11) {
            return a.this.keyAt(i11);
        }

        @Override // androidx.collection.k
        protected void c(int i11) {
            a.this.removeAt(i11);
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
            a.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return a.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection collection) {
            return a.this.containsAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return a.equalsSetHelper(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int size = a.this.size() - 1; size >= 0; size--) {
                Object objKeyAt = a.this.keyAt(size);
                iHashCode += objKeyAt == null ? 0 : objKeyAt.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return a.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return a.this.new b();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iIndexOfKey = a.this.indexOfKey(obj);
            if (iIndexOfKey < 0) {
                return false;
            }
            a.this.removeAt(iIndexOfKey);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection collection) {
            return a.this.removeAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection collection) {
            return a.this.retainAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return a.this.size();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i11 = 0; i11 < size; i11++) {
                objArr[i11] = a.this.keyAt(i11);
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i11 = 0; i11 < size; i11++) {
                objArr[i11] = a.this.keyAt(i11);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    final class d implements Iterator, Map.Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2254a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f2255b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f2256c;

        d() {
            this.f2254a = a.this.size() - 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f2255b++;
            this.f2256c = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f2256c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return n.a.c(entry.getKey(), a.this.keyAt(this.f2255b)) && n.a.c(entry.getValue(), a.this.valueAt(this.f2255b));
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            if (this.f2256c) {
                return a.this.keyAt(this.f2255b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            if (this.f2256c) {
                return a.this.valueAt(this.f2255b);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2255b < this.f2254a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f2256c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objKeyAt = a.this.keyAt(this.f2255b);
            Object objValueAt = a.this.valueAt(this.f2255b);
            return (objKeyAt == null ? 0 : objKeyAt.hashCode()) ^ (objValueAt != null ? objValueAt.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f2256c) {
                throw new IllegalStateException();
            }
            a.this.removeAt(this.f2255b);
            this.f2255b--;
            this.f2254a--;
            this.f2256c = false;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (this.f2256c) {
                return a.this.setValueAt(this.f2255b, obj);
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
            a.this.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return a.this.__restricted$indexOfValue(obj) >= 0;
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
            return a.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return a.this.new f();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int i__restricted$indexOfValue = a.this.__restricted$indexOfValue(obj);
            if (i__restricted$indexOfValue < 0) {
                return false;
            }
            a.this.removeAt(i__restricted$indexOfValue);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection collection) {
            int size = a.this.size();
            int i11 = 0;
            boolean z10 = false;
            while (i11 < size) {
                if (collection.contains(a.this.valueAt(i11))) {
                    a.this.removeAt(i11);
                    i11--;
                    size--;
                    z10 = true;
                }
                i11++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection collection) {
            int size = a.this.size();
            int i11 = 0;
            boolean z10 = false;
            while (i11 < size) {
                if (!collection.contains(a.this.valueAt(i11))) {
                    a.this.removeAt(i11);
                    i11--;
                    size--;
                    z10 = true;
                }
                i11++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public int size() {
            return a.this.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            int size = a.this.size();
            Object[] objArr = new Object[size];
            for (int i11 = 0; i11 < size; i11++) {
                objArr[i11] = a.this.valueAt(i11);
            }
            return objArr;
        }

        @Override // java.util.Collection
        public Object[] toArray(Object[] objArr) {
            int size = size();
            if (objArr.length < size) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
            }
            for (int i11 = 0; i11 < size; i11++) {
                objArr[i11] = a.this.valueAt(i11);
            }
            if (objArr.length > size) {
                objArr[size] = null;
            }
            return objArr;
        }
    }

    final class f extends k {
        f() {
            super(a.this.size());
        }

        @Override // androidx.collection.k
        protected Object a(int i11) {
            return a.this.valueAt(i11);
        }

        @Override // androidx.collection.k
        protected void c(int i11) {
            a.this.removeAt(i11);
        }
    }

    public a() {
    }

    public a(int i11) {
        super(i11);
    }

    public a(x0 x0Var) {
        super(x0Var);
    }

    static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
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

    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.collection.x0, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return super.containsKey(obj);
    }

    @Override // androidx.collection.x0, java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override // java.util.Map
    @NonNull
    public Set<Map.Entry<Object, Object>> entrySet() {
        androidx.collection.a.a aVar = this.mEntrySet;
        if (aVar != null) {
            return aVar;
        }
        C0027a c0027a = new C0027a();
        this.mEntrySet = c0027a;
        return c0027a;
    }

    @Override // androidx.collection.x0, java.util.Map
    public Object get(@Nullable Object obj) {
        return super.get(obj);
    }

    @Override // java.util.Map
    @NonNull
    public Set<Object> keySet() {
        androidx.collection.a.c cVar = this.mKeySet;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.mKeySet = cVar2;
        return cVar2;
    }

    @Override // java.util.Map
    public void putAll(@NonNull Map<Object, Object> map) {
        ensureCapacity(size() + map.size());
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.collection.x0, java.util.Map
    public Object remove(@Nullable Object obj) {
        return super.remove(obj);
    }

    public boolean removeAll(@NonNull Collection<?> collection) {
        int size = size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return size != size();
    }

    public boolean retainAll(@NonNull Collection<?> collection) {
        int size = size();
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (!collection.contains(keyAt(size2))) {
                removeAt(size2);
            }
        }
        return size != size();
    }

    @Override // java.util.Map
    @NonNull
    public Collection<Object> values() {
        androidx.collection.a.e eVar = this.mValues;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        this.mValues = eVar2;
        return eVar2;
    }
}
