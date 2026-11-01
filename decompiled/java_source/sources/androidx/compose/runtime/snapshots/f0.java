package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.o1;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.KotlinNothingValueException;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class f0 implements List, KMutableList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SnapshotStateList f3981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3984d;

    public static final class a implements ListIterator, KMutableListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f3985a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f0 f3986b;

        a(Ref.IntRef intRef, f0 f0Var) {
            this.f3985a = intRef;
            this.f3986b = f0Var;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void add(Object obj) {
            s.f();
            throw new KotlinNothingValueException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Void remove() {
            s.f();
            throw new KotlinNothingValueException();
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Void set(Object obj) {
            s.f();
            throw new KotlinNothingValueException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f3985a.element < this.f3986b.size() - 1;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f3985a.element >= 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            int i11 = this.f3985a.element + 1;
            s.g(i11, this.f3986b.size());
            this.f3985a.element = i11;
            return this.f3986b.get(i11);
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f3985a.element + 1;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            int i11 = this.f3985a.element;
            s.g(i11, this.f3986b.size());
            this.f3985a.element = i11 - 1;
            return this.f3986b.get(i11);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f3985a.element;
        }
    }

    public f0(SnapshotStateList snapshotStateList, int i11, int i12) {
        this.f3981a = snapshotStateList;
        this.f3982b = i11;
        this.f3983c = snapshotStateList.e();
        this.f3984d = i12 - i11;
    }

    private final void e() {
        if (this.f3981a.e() != this.f3983c) {
            throw new ConcurrentModificationException();
        }
    }

    public int a() {
        return this.f3984d;
    }

    @Override // java.util.List
    public void add(int i11, Object obj) {
        e();
        this.f3981a.add(this.f3982b + i11, obj);
        this.f3984d = size() + 1;
        this.f3983c = this.f3981a.e();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        e();
        this.f3981a.add(this.f3982b + size(), obj);
        this.f3984d = size() + 1;
        this.f3983c = this.f3981a.e();
        return true;
    }

    @Override // java.util.List
    public boolean addAll(int i11, Collection collection) {
        e();
        boolean zAddAll = this.f3981a.addAll(i11 + this.f3982b, collection);
        if (zAddAll) {
            this.f3984d = size() + collection.size();
            this.f3983c = this.f3981a.e();
        }
        return zAddAll;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    public Object c(int i11) {
        e();
        Object objRemove = this.f3981a.remove(this.f3982b + i11);
        this.f3984d = size() - 1;
        this.f3983c = this.f3981a.e();
        return objRemove;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        if (size() > 0) {
            e();
            SnapshotStateList snapshotStateList = this.f3981a;
            int i11 = this.f3982b;
            snapshotStateList.j(i11, size() + i11);
            this.f3984d = 0;
            this.f3983c = this.f3981a.e();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public Object get(int i11) {
        e();
        s.g(i11, size());
        return this.f3981a.get(this.f3982b + i11);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        e();
        int i11 = this.f3982b;
        Iterator<Integer> it = RangesKt.t(i11, size() + i11).iterator();
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            if (Intrinsics.c(obj, this.f3981a.get(iA))) {
                return iA - this.f3982b;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        e();
        int size = this.f3982b + size();
        do {
            size--;
            if (size < this.f3982b) {
                return -1;
            }
        } while (!Intrinsics.c(obj, this.f3981a.get(size)));
        return size - this.f3982b;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public ListIterator listIterator(int i11) {
        e();
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i11 - 1;
        return new a(intRef, this);
    }

    @Override // java.util.List
    public final /* bridge */ Object remove(int i11) {
        return c(i11);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        e();
        SnapshotStateList snapshotStateList = this.f3981a;
        int i11 = this.f3982b;
        int iL = snapshotStateList.l(collection, i11, size() + i11);
        if (iL > 0) {
            this.f3983c = this.f3981a.e();
            this.f3984d = size() - iL;
        }
        return iL > 0;
    }

    @Override // java.util.List
    public Object set(int i11, Object obj) {
        s.g(i11, size());
        e();
        Object obj2 = this.f3981a.set(i11 + this.f3982b, obj);
        this.f3983c = this.f3981a.e();
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.List
    public List subList(int i11, int i12) {
        if (!(i11 >= 0 && i11 <= i12 && i12 <= size())) {
            o1.a("fromIndex or toIndex are out of bounds");
        }
        e();
        SnapshotStateList snapshotStateList = this.f3981a;
        int i13 = this.f3982b;
        return new f0(snapshotStateList, i11 + i13, i12 + i13);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }
}
