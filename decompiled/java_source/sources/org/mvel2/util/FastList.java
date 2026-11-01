package org.mvel2.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.mvel2.ImmutableElementException;

/* JADX INFO: loaded from: classes7.dex */
public class FastList<E> extends AbstractList<E> implements Externalizable {
    private E[] elements;
    private int size;
    private boolean updated;

    class a implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f72028a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f72029b;

        a(int i11) {
            this.f72029b = i11;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f72028a < this.f72029b;
        }

        @Override // java.util.Iterator
        public Object next() {
            Object[] objArr = FastList.this.elements;
            int i11 = this.f72028a;
            this.f72028a = i11 + 1;
            return objArr[i11];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new ImmutableElementException("cannot change elements in immutable list");
        }
    }

    class b implements ListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f72031a = -1;

        b() {
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f72031a < FastList.this.size - 1;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f72031a > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            Object[] objArr = FastList.this.elements;
            int i11 = this.f72031a + 1;
            this.f72031a = i11;
            return objArr[i11];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            int i11 = this.f72031a;
            this.f72031a = i11 + 1;
            return i11;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            Object[] objArr = FastList.this.elements;
            int i11 = this.f72031a - 1;
            this.f72031a = i11;
            return objArr[i11];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            int i11 = this.f72031a;
            this.f72031a = i11 - 1;
            return i11;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            FastList.this.elements[this.f72031a] = obj;
        }
    }

    public FastList() {
        this(10);
    }

    public FastList(int i11) {
        this.size = 0;
        this.updated = false;
        this.elements = (E[]) new Object[i11 == 0 ? 1 : i11];
    }

    public FastList(E[] eArr) {
        this.size = 0;
        this.updated = false;
        this.elements = eArr;
        this.size = eArr.length;
    }

    private void copyArray() {
        increaseSize(this.elements.length);
    }

    private void ensureCapacity(int i11) {
        int i12 = this.size;
        if (i12 + i11 > this.elements.length) {
            increaseSize((i12 + i11) * 2);
        }
    }

    private void increaseSize(int i11) {
        E[] eArr = (E[]) new Object[i11];
        int i12 = 0;
        while (true) {
            E[] eArr2 = this.elements;
            if (i12 >= eArr2.length) {
                this.elements = eArr;
                this.updated = true;
                return;
            } else {
                eArr[i12] = eArr2[i12];
                i12++;
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i11, E e11) {
        int i12 = this.size;
        E[] eArr = this.elements;
        if (i12 == eArr.length) {
            increaseSize(eArr.length * 2);
        }
        for (int i13 = this.size; i13 != i11; i13--) {
            E[] eArr2 = this.elements;
            eArr2[i13] = eArr2[i13 - 1];
        }
        this.elements[i11] = e11;
        this.size++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e11) {
        int i11 = this.size;
        E[] eArr = this.elements;
        if (i11 == eArr.length) {
            increaseSize(eArr.length * 2);
        }
        E[] eArr2 = this.elements;
        int i12 = this.size;
        this.size = i12 + 1;
        eArr2[i12] = e11;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i11, Collection<? extends E> collection) {
        int size = collection.size();
        ensureCapacity(this.size + size);
        if (i11 != 0) {
            for (int i12 = i11; i12 != i11 + size; i12++) {
                E[] eArr = this.elements;
                eArr[i12 + size + 1] = eArr[i12];
            }
        }
        int i13 = this.size == 0 ? -1 : 0;
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            this.elements[i13 + size] = it.next();
            i13++;
        }
        this.size += size;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        return addAll(this.size, collection);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.elements = (E[]) new Object[1];
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean containsAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        ListIterator<E> listIterator = listIterator();
        ListIterator<E> listIterator2 = ((List) obj).listIterator();
        while (listIterator.hasNext() && listIterator2.hasNext()) {
            E next = listIterator.next();
            E next2 = listIterator2.next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
            } else if (!next.equals(next2)) {
                return false;
            }
        }
        return (listIterator.hasNext() || listIterator2.hasNext()) ? false : true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i11) {
        return this.elements[i11];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int i11 = 0;
        while (true) {
            E[] eArr = this.elements;
            if (i11 >= eArr.length) {
                return -1;
            }
            if (obj.equals(eArr[i11])) {
                return i11;
            }
            i11++;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new a(this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int length = this.elements.length - 1; length != -1; length--) {
            if (obj.equals(this.elements[length])) {
                return length;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return new b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i11) {
        return super.listIterator(i11);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i11 = objectInput.readInt();
        this.size = i11;
        this.elements = (E[]) new Object[i11];
        for (int i12 = 0; i12 < this.size; i12++) {
            ((E[]) this.elements)[i12] = objectInput.readObject();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i11) {
        E e11 = this.elements[i11];
        while (true) {
            i11++;
            int i12 = this.size;
            if (i11 >= i12) {
                this.size = i12 - 1;
                return e11;
            }
            E[] eArr = this.elements;
            eArr[i11 - 1] = eArr[i11];
            eArr[i11] = null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection collection) {
        throw new RuntimeException("not implemented");
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i11, E e11) {
        if (!this.updated) {
            copyArray();
        }
        E[] eArr = this.elements;
        E e12 = eArr[i11];
        eArr[i11] = e11;
        return e12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public List subList(int i11, int i12) {
        return super.subList(i11, i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[this.size]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int i11 = this.size;
        if (length < i11) {
            objArr = new Object[i11];
        }
        for (int i12 = 0; i12 < this.size; i12++) {
            objArr[i12] = this.elements[i12];
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return super.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.size);
        for (int i11 = 0; i11 < this.size; i11++) {
            objectOutput.writeObject(this.elements[i11]);
        }
    }
}
