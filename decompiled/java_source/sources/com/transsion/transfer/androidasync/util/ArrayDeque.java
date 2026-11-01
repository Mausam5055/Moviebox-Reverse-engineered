package com.transsion.transfer.androidasync.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: loaded from: classes6.dex */
public class ArrayDeque<E> extends AbstractCollection<E> implements Queue, Cloneable, Serializable {
    private static final int MIN_INITIAL_CAPACITY = 8;
    private static final long serialVersionUID = 2340985798034038923L;
    private transient Object[] elements;
    private transient int head;
    private transient int tail;

    private class a implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f55554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f55555b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f55556c;

        private a() {
            this.f55554a = ArrayDeque.this.head;
            this.f55555b = ArrayDeque.this.tail;
            this.f55556c = -1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55554a != this.f55555b;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f55554a == this.f55555b) {
                throw new NoSuchElementException();
            }
            Object obj = ArrayDeque.this.elements[this.f55554a];
            if (ArrayDeque.this.tail != this.f55555b || obj == null) {
                throw new ConcurrentModificationException();
            }
            int i11 = this.f55554a;
            this.f55556c = i11;
            this.f55554a = (i11 + 1) & (ArrayDeque.this.elements.length - 1);
            return obj;
        }

        @Override // java.util.Iterator
        public void remove() {
            int i11 = this.f55556c;
            if (i11 < 0) {
                throw new IllegalStateException();
            }
            if (ArrayDeque.this.delete(i11)) {
                this.f55554a = (this.f55554a - 1) & (ArrayDeque.this.elements.length - 1);
                this.f55555b = ArrayDeque.this.tail;
            }
            this.f55556c = -1;
        }
    }

    private class b implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f55558a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f55559b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f55560c;

        private b() {
            this.f55558a = ArrayDeque.this.tail;
            this.f55559b = ArrayDeque.this.head;
            this.f55560c = -1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f55558a != this.f55559b;
        }

        @Override // java.util.Iterator
        public Object next() {
            int i11 = this.f55558a;
            if (i11 == this.f55559b) {
                throw new NoSuchElementException();
            }
            this.f55558a = (i11 - 1) & (ArrayDeque.this.elements.length - 1);
            Object obj = ArrayDeque.this.elements[this.f55558a];
            if (ArrayDeque.this.head != this.f55559b || obj == null) {
                throw new ConcurrentModificationException();
            }
            this.f55560c = this.f55558a;
            return obj;
        }

        @Override // java.util.Iterator
        public void remove() {
            int i11 = this.f55560c;
            if (i11 < 0) {
                throw new IllegalStateException();
            }
            if (!ArrayDeque.this.delete(i11)) {
                this.f55558a = (this.f55558a + 1) & (ArrayDeque.this.elements.length - 1);
                this.f55559b = ArrayDeque.this.head;
            }
            this.f55560c = -1;
        }
    }

    public ArrayDeque() {
        this.elements = new Object[16];
    }

    public ArrayDeque(int i11) {
        allocateElements(i11);
    }

    public ArrayDeque(Collection<? extends E> collection) {
        allocateElements(collection.size());
        addAll(collection);
    }

    private void allocateElements(int i11) {
        int i12 = 8;
        if (i11 >= 8) {
            int i13 = i11 | (i11 >>> 1);
            int i14 = i13 | (i13 >>> 2);
            int i15 = i14 | (i14 >>> 4);
            int i16 = i15 | (i15 >>> 8);
            i12 = (i16 | (i16 >>> 16)) + 1;
            if (i12 < 0) {
                i12 >>>= 1;
            }
        }
        this.elements = new Object[i12];
    }

    private void checkInvariants() {
    }

    private <T> T[] copyElements(T[] tArr) {
        int i11 = this.head;
        int i12 = this.tail;
        if (i11 < i12) {
            System.arraycopy(this.elements, i11, tArr, 0, size());
        } else if (i11 > i12) {
            Object[] objArr = this.elements;
            int length = objArr.length - i11;
            System.arraycopy(objArr, i11, tArr, 0, length);
            System.arraycopy(this.elements, 0, tArr, length, this.tail);
        }
        return tArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean delete(int i11) {
        checkInvariants();
        Object[] objArr = this.elements;
        int length = objArr.length - 1;
        int i12 = this.head;
        int i13 = this.tail;
        int i14 = (i11 - i12) & length;
        int i15 = (i13 - i11) & length;
        if (i14 >= ((i13 - i12) & length)) {
            throw new ConcurrentModificationException();
        }
        if (i14 < i15) {
            if (i12 <= i11) {
                System.arraycopy(objArr, i12, objArr, i12 + 1, i14);
            } else {
                System.arraycopy(objArr, 0, objArr, 1, i11);
                objArr[0] = objArr[length];
                System.arraycopy(objArr, i12, objArr, i12 + 1, length - i12);
            }
            objArr[i12] = null;
            this.head = (i12 + 1) & length;
            return false;
        }
        if (i11 < i13) {
            System.arraycopy(objArr, i11 + 1, objArr, i11, i15);
            this.tail = i13 - 1;
        } else {
            System.arraycopy(objArr, i11 + 1, objArr, i11, length - i11);
            objArr[length] = objArr[0];
            System.arraycopy(objArr, 1, objArr, 0, i13);
            this.tail = (i13 - 1) & length;
        }
        return true;
    }

    private void doubleCapacity() {
        int i11 = this.head;
        Object[] objArr = this.elements;
        int length = objArr.length;
        int i12 = length - i11;
        int i13 = length << 1;
        if (i13 < 0) {
            throw new IllegalStateException("Sorry, deque too big");
        }
        Object[] objArr2 = new Object[i13];
        System.arraycopy(objArr, i11, objArr2, 0, i12);
        System.arraycopy(this.elements, 0, objArr2, i12, i11);
        this.elements = objArr2;
        this.head = 0;
        this.tail = length;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i11 = objectInputStream.readInt();
        allocateElements(i11);
        this.head = 0;
        this.tail = i11;
        for (int i12 = 0; i12 < i11; i12++) {
            this.elements[i12] = objectInputStream.readObject();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        int length = this.elements.length - 1;
        for (int i11 = this.head; i11 != this.tail; i11 = (i11 + 1) & length) {
            objectOutputStream.writeObject(this.elements[i11]);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e11) {
        addLast(e11);
        return true;
    }

    public void addFirst(E e11) {
        if (e11 == null) {
            throw new NullPointerException("e == null");
        }
        Object[] objArr = this.elements;
        int length = (this.head - 1) & (objArr.length - 1);
        this.head = length;
        objArr[length] = e11;
        if (length == this.tail) {
            doubleCapacity();
        }
    }

    public void addLast(E e11) {
        if (e11 == null) {
            throw new NullPointerException("e == null");
        }
        Object[] objArr = this.elements;
        int i11 = this.tail;
        objArr[i11] = e11;
        int length = (objArr.length - 1) & (i11 + 1);
        this.tail = length;
        if (length == this.head) {
            doubleCapacity();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        int i11 = this.head;
        int i12 = this.tail;
        if (i11 != i12) {
            this.tail = 0;
            this.head = 0;
            int length = this.elements.length - 1;
            do {
                this.elements[i11] = null;
                i11 = (i11 + 1) & length;
            } while (i11 != i12);
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ArrayDeque<E> m322clone() {
        try {
            ArrayDeque<E> arrayDeque = (ArrayDeque) super.clone();
            Object[] objArr = this.elements;
            System.arraycopy(objArr, 0, arrayDeque.elements, 0, objArr.length);
            return arrayDeque;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.elements.length - 1;
        int i11 = this.head;
        while (true) {
            Object obj2 = this.elements[i11];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                return true;
            }
            i11 = (i11 + 1) & length;
        }
    }

    public Iterator<E> descendingIterator() {
        return new b();
    }

    @Override // java.util.Queue
    public E element() {
        return getFirst();
    }

    public E getFirst() {
        E e11 = (E) this.elements[this.head];
        if (e11 != null) {
            return e11;
        }
        throw new NoSuchElementException();
    }

    public E getLast() {
        Object[] objArr = this.elements;
        E e11 = (E) objArr[(this.tail - 1) & (objArr.length - 1)];
        if (e11 != null) {
            return e11;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.head == this.tail;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.Queue
    public boolean offer(E e11) {
        return offerLast(e11);
    }

    public boolean offerFirst(E e11) {
        addFirst(e11);
        return true;
    }

    public boolean offerLast(E e11) {
        addLast(e11);
        return true;
    }

    @Override // java.util.Queue
    public E peek() {
        return peekFirst();
    }

    public E peekFirst() {
        return (E) this.elements[this.head];
    }

    public E peekLast() {
        Object[] objArr = this.elements;
        return (E) objArr[(this.tail - 1) & (objArr.length - 1)];
    }

    @Override // java.util.Queue
    public E poll() {
        return pollFirst();
    }

    public E pollFirst() {
        int i11 = this.head;
        Object[] objArr = this.elements;
        E e11 = (E) objArr[i11];
        if (e11 == null) {
            return null;
        }
        objArr[i11] = null;
        this.head = (i11 + 1) & (objArr.length - 1);
        return e11;
    }

    public E pollLast() {
        int i11 = this.tail - 1;
        Object[] objArr = this.elements;
        int length = i11 & (objArr.length - 1);
        E e11 = (E) objArr[length];
        if (e11 == null) {
            return null;
        }
        objArr[length] = null;
        this.tail = length;
        return e11;
    }

    public E pop() {
        return removeFirst();
    }

    public void push(E e11) {
        addFirst(e11);
    }

    @Override // java.util.Queue
    public E remove() {
        return removeFirst();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return removeFirstOccurrence(obj);
    }

    public E removeFirst() {
        E ePollFirst = pollFirst();
        if (ePollFirst != null) {
            return ePollFirst;
        }
        throw new NoSuchElementException();
    }

    public boolean removeFirstOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.elements.length - 1;
        int i11 = this.head;
        while (true) {
            Object obj2 = this.elements[i11];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                delete(i11);
                return true;
            }
            i11 = (i11 + 1) & length;
        }
    }

    public E removeLast() {
        E ePollLast = pollLast();
        if (ePollLast != null) {
            return ePollLast;
        }
        throw new NoSuchElementException();
    }

    public boolean removeLastOccurrence(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.elements.length - 1;
        int i11 = this.tail - 1;
        while (true) {
            int i12 = i11 & length;
            Object obj2 = this.elements[i12];
            if (obj2 == null) {
                return false;
            }
            if (obj.equals(obj2)) {
                delete(i12);
                return true;
            }
            i11 = i12 - 1;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return (this.tail - this.head) & (this.elements.length - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return copyElements(new Object[size()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        copyElements(tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }
}
