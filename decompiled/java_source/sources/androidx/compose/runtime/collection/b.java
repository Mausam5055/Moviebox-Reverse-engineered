package androidx.compose.runtime.collection;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class b implements RandomAccess {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f3680d = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f3681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f3682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3683c;

    private static final class a implements List, KMutableList {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f3684a;

        public a(b bVar) {
            this.f3684a = bVar;
        }

        public int a() {
            return this.f3684a.n();
        }

        @Override // java.util.List
        public void add(int i11, Object obj) {
            this.f3684a.a(i11, obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(Object obj) {
            return this.f3684a.b(obj);
        }

        @Override // java.util.List
        public boolean addAll(int i11, Collection collection) {
            return this.f3684a.d(i11, collection);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(Collection collection) {
            return this.f3684a.f(collection);
        }

        public Object c(int i11) {
            androidx.compose.runtime.collection.c.c(this, i11);
            return this.f3684a.v(i11);
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            this.f3684a.h();
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            return this.f3684a.i(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(Collection collection) {
            return this.f3684a.j(collection);
        }

        @Override // java.util.List
        public Object get(int i11) {
            androidx.compose.runtime.collection.c.c(this, i11);
            return this.f3684a.m()[i11];
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            return this.f3684a.o(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.f3684a.p();
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new c(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            return this.f3684a.s(obj);
        }

        @Override // java.util.List
        public ListIterator listIterator() {
            return new c(this, 0);
        }

        @Override // java.util.List
        public ListIterator listIterator(int i11) {
            return new c(this, i11);
        }

        @Override // java.util.List
        public final /* bridge */ Object remove(int i11) {
            return c(i11);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            return this.f3684a.t(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(Collection collection) {
            return this.f3684a.u(collection);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(Collection collection) {
            return this.f3684a.x(collection);
        }

        @Override // java.util.List
        public Object set(int i11, Object obj) {
            androidx.compose.runtime.collection.c.c(this, i11);
            return this.f3684a.y(i11, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return a();
        }

        @Override // java.util.List
        public List subList(int i11, int i12) {
            androidx.compose.runtime.collection.c.d(this, i11, i12);
            return new C0040b(this, i11, i12);
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

    /* JADX INFO: renamed from: androidx.compose.runtime.collection.b$b, reason: collision with other inner class name */
    private static final class C0040b implements List, KMutableList {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f3685a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3686b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f3687c;

        public C0040b(List list, int i11, int i12) {
            this.f3685a = list;
            this.f3686b = i11;
            this.f3687c = i12;
        }

        public int a() {
            return this.f3687c - this.f3686b;
        }

        @Override // java.util.List
        public void add(int i11, Object obj) {
            this.f3685a.add(i11 + this.f3686b, obj);
            this.f3687c++;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(Object obj) {
            List list = this.f3685a;
            int i11 = this.f3687c;
            this.f3687c = i11 + 1;
            list.add(i11, obj);
            return true;
        }

        @Override // java.util.List
        public boolean addAll(int i11, Collection collection) {
            this.f3685a.addAll(i11 + this.f3686b, collection);
            this.f3687c += collection.size();
            return collection.size() > 0;
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(Collection collection) {
            this.f3685a.addAll(this.f3687c, collection);
            this.f3687c += collection.size();
            return collection.size() > 0;
        }

        public Object c(int i11) {
            androidx.compose.runtime.collection.c.c(this, i11);
            Object objRemove = this.f3685a.remove(i11 + this.f3686b);
            this.f3687c--;
            return objRemove;
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            int i11 = this.f3687c - 1;
            int i12 = this.f3686b;
            if (i12 <= i11) {
                while (true) {
                    this.f3685a.remove(i11);
                    if (i11 == i12) {
                        break;
                    } else {
                        i11--;
                    }
                }
            }
            this.f3687c = this.f3686b;
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            int i11 = this.f3687c;
            for (int i12 = this.f3686b; i12 < i11; i12++) {
                if (Intrinsics.c(this.f3685a.get(i12), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public Object get(int i11) {
            androidx.compose.runtime.collection.c.c(this, i11);
            return this.f3685a.get(i11 + this.f3686b);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int i11 = this.f3687c;
            for (int i12 = this.f3686b; i12 < i11; i12++) {
                if (Intrinsics.c(this.f3685a.get(i12), obj)) {
                    return i12 - this.f3686b;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.f3687c == this.f3686b;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new c(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int i11 = this.f3687c - 1;
            int i12 = this.f3686b;
            if (i12 > i11) {
                return -1;
            }
            while (!Intrinsics.c(this.f3685a.get(i11), obj)) {
                if (i11 == i12) {
                    return -1;
                }
                i11--;
            }
            return i11 - this.f3686b;
        }

        @Override // java.util.List
        public ListIterator listIterator() {
            return new c(this, 0);
        }

        @Override // java.util.List
        public ListIterator listIterator(int i11) {
            return new c(this, i11);
        }

        @Override // java.util.List
        public final /* bridge */ Object remove(int i11) {
            return c(i11);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            int i11 = this.f3687c;
            for (int i12 = this.f3686b; i12 < i11; i12++) {
                if (Intrinsics.c(this.f3685a.get(i12), obj)) {
                    this.f3685a.remove(i12);
                    this.f3687c--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(Collection collection) {
            int i11 = this.f3687c;
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i11 != this.f3687c;
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(Collection collection) {
            int i11 = this.f3687c;
            int i12 = i11 - 1;
            int i13 = this.f3686b;
            if (i13 <= i12) {
                while (true) {
                    if (!collection.contains(this.f3685a.get(i12))) {
                        this.f3685a.remove(i12);
                        this.f3687c--;
                    }
                    if (i12 == i13) {
                        break;
                    }
                    i12--;
                }
            }
            return i11 != this.f3687c;
        }

        @Override // java.util.List
        public Object set(int i11, Object obj) {
            androidx.compose.runtime.collection.c.c(this, i11);
            return this.f3685a.set(i11 + this.f3686b, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return a();
        }

        @Override // java.util.List
        public List subList(int i11, int i12) {
            androidx.compose.runtime.collection.c.d(this, i11, i12);
            return new C0040b(this, i11, i12);
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

    private static final class c implements ListIterator, KMutableListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f3688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3689b;

        public c(List list, int i11) {
            this.f3688a = list;
            this.f3689b = i11;
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            this.f3688a.add(this.f3689b, obj);
            this.f3689b++;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f3689b < this.f3688a.size();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f3689b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            List list = this.f3688a;
            int i11 = this.f3689b;
            this.f3689b = i11 + 1;
            return list.get(i11);
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f3689b;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            int i11 = this.f3689b - 1;
            this.f3689b = i11;
            return this.f3688a.get(i11);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f3689b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i11 = this.f3689b - 1;
            this.f3689b = i11;
            this.f3688a.remove(i11);
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            this.f3688a.set(this.f3689b, obj);
        }
    }

    public b(Object[] objArr, int i11) {
        this.f3681a = objArr;
        this.f3683c = i11;
    }

    public final void A(Comparator comparator) {
        ArraysKt.H(this.f3681a, comparator, 0, this.f3683c);
    }

    public final void a(int i11, Object obj) {
        k(this.f3683c + 1);
        Object[] objArr = this.f3681a;
        int i12 = this.f3683c;
        if (i11 != i12) {
            ArraysKt.n(objArr, objArr, i11 + 1, i11, i12);
        }
        objArr[i11] = obj;
        this.f3683c++;
    }

    public final boolean b(Object obj) {
        k(this.f3683c + 1);
        Object[] objArr = this.f3681a;
        int i11 = this.f3683c;
        objArr[i11] = obj;
        this.f3683c = i11 + 1;
        return true;
    }

    public final boolean c(int i11, b bVar) {
        if (bVar.p()) {
            return false;
        }
        k(this.f3683c + bVar.f3683c);
        Object[] objArr = this.f3681a;
        int i12 = this.f3683c;
        if (i11 != i12) {
            ArraysKt.n(objArr, objArr, bVar.f3683c + i11, i11, i12);
        }
        ArraysKt.n(bVar.f3681a, objArr, i11, 0, bVar.f3683c);
        this.f3683c += bVar.f3683c;
        return true;
    }

    public final boolean d(int i11, Collection collection) {
        int i12 = 0;
        if (collection.isEmpty()) {
            return false;
        }
        k(this.f3683c + collection.size());
        Object[] objArr = this.f3681a;
        if (i11 != this.f3683c) {
            ArraysKt.n(objArr, objArr, collection.size() + i11, i11, this.f3683c);
        }
        for (Object obj : collection) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            objArr[i12 + i11] = obj;
            i12 = i13;
        }
        this.f3683c += collection.size();
        return true;
    }

    public final boolean e(int i11, List list) {
        if (list.isEmpty()) {
            return false;
        }
        k(this.f3683c + list.size());
        Object[] objArr = this.f3681a;
        if (i11 != this.f3683c) {
            ArraysKt.n(objArr, objArr, list.size() + i11, i11, this.f3683c);
        }
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            objArr[i11 + i12] = list.get(i12);
        }
        this.f3683c += list.size();
        return true;
    }

    public final boolean f(Collection collection) {
        return d(this.f3683c, collection);
    }

    public final List g() {
        List list = this.f3682b;
        if (list != null) {
            return list;
        }
        a aVar = new a(this);
        this.f3682b = aVar;
        return aVar;
    }

    public final void h() {
        Object[] objArr = this.f3681a;
        int iN = n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                this.f3683c = 0;
                return;
            }
            objArr[iN] = null;
        }
    }

    public final boolean i(Object obj) {
        int iN = n() - 1;
        if (iN >= 0) {
            for (int i11 = 0; !Intrinsics.c(m()[i11], obj); i11++) {
                if (i11 != iN) {
                }
            }
            return true;
        }
        return false;
    }

    public final boolean j(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!i(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void k(int i11) {
        Object[] objArr = this.f3681a;
        if (objArr.length < i11) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, Math.max(i11, objArr.length * 2));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f3681a = objArrCopyOf;
        }
    }

    public final Object l() {
        if (p()) {
            throw new NoSuchElementException("MutableVector is empty.");
        }
        return m()[0];
    }

    public final Object[] m() {
        return this.f3681a;
    }

    public final int n() {
        return this.f3683c;
    }

    public final int o(Object obj) {
        int i11 = this.f3683c;
        if (i11 <= 0) {
            return -1;
        }
        Object[] objArr = this.f3681a;
        int i12 = 0;
        while (!Intrinsics.c(obj, objArr[i12])) {
            i12++;
            if (i12 >= i11) {
                return -1;
            }
        }
        return i12;
    }

    public final boolean p() {
        return this.f3683c == 0;
    }

    public final boolean q() {
        return this.f3683c != 0;
    }

    public final Object r() {
        if (p()) {
            throw new NoSuchElementException("MutableVector is empty.");
        }
        return m()[n() - 1];
    }

    public final int s(Object obj) {
        int i11 = this.f3683c;
        if (i11 <= 0) {
            return -1;
        }
        int i12 = i11 - 1;
        Object[] objArr = this.f3681a;
        while (!Intrinsics.c(obj, objArr[i12])) {
            i12--;
            if (i12 < 0) {
                return -1;
            }
        }
        return i12;
    }

    public final boolean t(Object obj) {
        int iO = o(obj);
        if (iO < 0) {
            return false;
        }
        v(iO);
        return true;
    }

    public final boolean u(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int i11 = this.f3683c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            t(it.next());
        }
        return i11 != this.f3683c;
    }

    public final Object v(int i11) {
        Object[] objArr = this.f3681a;
        Object obj = objArr[i11];
        if (i11 != n() - 1) {
            ArraysKt.n(objArr, objArr, i11, i11 + 1, this.f3683c);
        }
        int i12 = this.f3683c - 1;
        this.f3683c = i12;
        objArr[i12] = null;
        return obj;
    }

    public final void w(int i11, int i12) {
        if (i12 > i11) {
            int i13 = this.f3683c;
            if (i12 < i13) {
                Object[] objArr = this.f3681a;
                ArraysKt.n(objArr, objArr, i11, i12, i13);
            }
            int i14 = this.f3683c - (i12 - i11);
            int iN = n() - 1;
            if (i14 <= iN) {
                int i15 = i14;
                while (true) {
                    this.f3681a[i15] = null;
                    if (i15 == iN) {
                        break;
                    } else {
                        i15++;
                    }
                }
            }
            this.f3683c = i14;
        }
    }

    public final boolean x(Collection collection) {
        int i11 = this.f3683c;
        for (int iN = n() - 1; -1 < iN; iN--) {
            if (!collection.contains(m()[iN])) {
                v(iN);
            }
        }
        return i11 != this.f3683c;
    }

    public final Object y(int i11, Object obj) {
        Object[] objArr = this.f3681a;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    public final void z(int i11) {
        this.f3683c = i11;
    }
}
