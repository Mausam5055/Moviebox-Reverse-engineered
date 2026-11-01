package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class EnumMultiset<E extends Enum<E>> extends d implements Serializable {
    private static final long serialVersionUID = 0;
    private transient int[] counts;
    private transient int distinctElements;
    private transient E[] enumConstants;
    private transient long size;
    private transient Class<E> type;

    class a extends c {
        a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Enum a(int i11) {
            return EnumMultiset.this.enumConstants[i11];
        }
    }

    class b extends c {

        class a extends Multisets.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f30385a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ b f30386b;

            a(b bVar, int i11) {
                this.f30385a = i11;
                this.f30386b = bVar;
            }

            @Override // com.google.common.collect.l3.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Enum getElement() {
                return EnumMultiset.this.enumConstants[this.f30385a];
            }

            @Override // com.google.common.collect.l3.a
            public int getCount() {
                return EnumMultiset.this.counts[this.f30385a];
            }
        }

        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.EnumMultiset.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l3.a a(int i11) {
            return new a(this, i11);
        }
    }

    abstract class c implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30387a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30388b = -1;

        c() {
        }

        abstract Object a(int i11);

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f30387a < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i11 = this.f30387a;
                if (iArr[i11] > 0) {
                    return true;
                }
                this.f30387a = i11 + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object objA = a(this.f30387a);
            int i11 = this.f30387a;
            this.f30388b = i11;
            this.f30387a = i11 + 1;
            return objA;
        }

        @Override // java.util.Iterator
        public void remove() {
            e2.e(this.f30388b >= 0);
            if (EnumMultiset.this.counts[this.f30388b] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset enumMultiset = EnumMultiset.this;
                EnumMultiset.access$322(enumMultiset, enumMultiset.counts[this.f30388b]);
                EnumMultiset.this.counts[this.f30388b] = 0;
            }
            this.f30388b = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.type = cls;
        com.google.common.base.m.d(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    static /* synthetic */ int access$210(EnumMultiset enumMultiset) {
        int i11 = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i11 - 1;
        return i11;
    }

    static /* synthetic */ long access$322(EnumMultiset enumMultiset, long j11) {
        long j12 = enumMultiset.size - j11;
        enumMultiset.size = j12;
        return j12;
    }

    private void checkIsE(Object obj) {
        com.google.common.base.m.o(obj);
        if (isActuallyE(obj)) {
            return;
        }
        throw new ClassCastException("Expected an " + this.type + " but got " + obj);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        com.google.common.base.m.e(it.hasNext(), "EnumMultiset constructor passed empty Iterable");
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        g3.a(enumMultiset, iterable);
        return enumMultiset;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> enumMultisetCreate = create(cls);
        g3.a(enumMultisetCreate, iterable);
        return enumMultisetCreate;
    }

    private boolean isActuallyE(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r11 = (Enum) obj;
        int iOrdinal = r11.ordinal();
        E[] eArr = this.enumConstants;
        return iOrdinal < eArr.length && eArr[iOrdinal] == r11;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        Class<E> cls = (Class) object;
        this.type = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
        w3.f(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        w3.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public int add(E e11, int i11) {
        checkIsE(e11);
        e2.b(i11, "occurrences");
        if (i11 == 0) {
            return count(e11);
        }
        int iOrdinal = e11.ordinal();
        int i12 = this.counts[iOrdinal];
        long j11 = i11;
        long j12 = ((long) i12) + j11;
        com.google.common.base.m.h(j12 <= 2147483647L, "too many occurrences: %s", j12);
        this.counts[iOrdinal] = (int) j12;
        if (i12 == 0) {
            this.distinctElements++;
        }
        this.size += j11;
        return i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.counts, 0);
        this.size = 0L;
        this.distinctElements = 0;
    }

    @Override // com.google.common.collect.d, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.l3
    public int count(Object obj) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        return this.counts[((Enum) obj).ordinal()];
    }

    @Override // com.google.common.collect.d
    int distinctElements() {
        return this.distinctElements;
    }

    @Override // com.google.common.collect.d
    Iterator<E> elementIterator() {
        return new a();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.d
    Iterator<l3.a> entryIterator() {
        return new b();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.d, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return Multisets.i(this);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public int remove(Object obj, int i11) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r11 = (Enum) obj;
        e2.b(i11, "occurrences");
        if (i11 == 0) {
            return count(obj);
        }
        int iOrdinal = r11.ordinal();
        int[] iArr = this.counts;
        int i12 = iArr[iOrdinal];
        if (i12 == 0) {
            return 0;
        }
        if (i12 <= i11) {
            iArr[iOrdinal] = 0;
            this.distinctElements--;
            this.size -= (long) i12;
        } else {
            iArr[iOrdinal] = i12 - i11;
            this.size -= (long) i11;
        }
        return i12;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public int setCount(E e11, int i11) {
        checkIsE(e11);
        e2.b(i11, "count");
        int iOrdinal = e11.ordinal();
        int[] iArr = this.counts;
        int i12 = iArr[iOrdinal];
        iArr[iOrdinal] = i11;
        this.size += (long) (i11 - i12);
        if (i12 == 0 && i11 > 0) {
            this.distinctElements++;
        } else if (i12 > 0 && i11 == 0) {
            this.distinctElements--;
        }
        return i12;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean setCount(Object obj, int i11, int i12) {
        return super.setCount(obj, i11, i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public int size() {
        return Ints.n(this.size);
    }
}
