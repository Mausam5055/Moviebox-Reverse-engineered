package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public class r1 extends AbstractList implements i0, RandomAccess {
    private final i0 list;

    class a implements ListIterator {
        ListIterator<String> iter;
        final /* synthetic */ int val$index;

        a(int i11) {
            this.val$index = i11;
            this.iter = r1.this.list.listIterator(i11);
        }

        @Override // java.util.ListIterator
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.iter.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public String next() {
            return this.iter.next();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.iter.nextIndex();
        }

        @Override // java.util.ListIterator
        public String previous() {
            return this.iter.previous();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.iter.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    class b implements Iterator {
        Iterator<String> iter;

        b() {
            this.iter = r1.this.list.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator
        public String next() {
            return this.iter.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public r1(i0 i0Var) {
        this.list = i0Var;
    }

    @Override // com.google.protobuf.i0
    public void add(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.i0
    public void add(byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.i0
    public boolean addAllByteArray(Collection<byte[]> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.i0
    public boolean addAllByteString(Collection<? extends ByteString> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.i0
    public List<byte[]> asByteArrayList() {
        return Collections.unmodifiableList(this.list.asByteArrayList());
    }

    @Override // com.google.protobuf.i0, com.google.protobuf.f1
    public List<ByteString> asByteStringList() {
        return Collections.unmodifiableList(this.list.asByteStringList());
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i11) {
        return (String) this.list.get(i11);
    }

    @Override // com.google.protobuf.i0
    public byte[] getByteArray(int i11) {
        return this.list.getByteArray(i11);
    }

    @Override // com.google.protobuf.i0
    public ByteString getByteString(int i11) {
        return this.list.getByteString(i11);
    }

    @Override // com.google.protobuf.i0
    public Object getRaw(int i11) {
        return this.list.getRaw(i11);
    }

    @Override // com.google.protobuf.i0
    public List<?> getUnderlyingElements() {
        return this.list.getUnderlyingElements();
    }

    @Override // com.google.protobuf.i0
    public i0 getUnmodifiableView() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i11) {
        return new a(i11);
    }

    @Override // com.google.protobuf.i0
    public void mergeFrom(i0 i0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.i0
    public void set(int i11, ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.i0
    public void set(int i11, byte[] bArr) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }
}
