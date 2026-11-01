package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public class h0 extends c implements i0, RandomAccess {

    @Deprecated
    public static final i0 EMPTY;
    private static final h0 EMPTY_LIST;
    private final List<Object> list;

    private static class a extends AbstractList implements RandomAccess {
        private final h0 list;

        a(h0 h0Var) {
            this.list = h0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i11, byte[] bArr) {
            this.list.add(i11, bArr);
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractList, java.util.List
        public byte[] get(int i11) {
            return this.list.getByteArray(i11);
        }

        @Override // java.util.AbstractList, java.util.List
        public byte[] remove(int i11) {
            String strRemove = this.list.remove(i11);
            ((AbstractList) this).modCount++;
            return h0.asByteArray(strRemove);
        }

        @Override // java.util.AbstractList, java.util.List
        public byte[] set(int i11, byte[] bArr) {
            Object andReturn = this.list.setAndReturn(i11, bArr);
            ((AbstractList) this).modCount++;
            return h0.asByteArray(andReturn);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.list.size();
        }
    }

    private static class b extends AbstractList implements RandomAccess {
        private final h0 list;

        b(h0 h0Var) {
            this.list = h0Var;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i11, ByteString byteString) {
            this.list.add(i11, byteString);
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractList, java.util.List
        public ByteString get(int i11) {
            return this.list.getByteString(i11);
        }

        @Override // java.util.AbstractList, java.util.List
        public ByteString remove(int i11) {
            String strRemove = this.list.remove(i11);
            ((AbstractList) this).modCount++;
            return h0.asByteString(strRemove);
        }

        @Override // java.util.AbstractList, java.util.List
        public ByteString set(int i11, ByteString byteString) {
            Object andReturn = this.list.setAndReturn(i11, byteString);
            ((AbstractList) this).modCount++;
            return h0.asByteString(andReturn);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.list.size();
        }
    }

    static {
        h0 h0Var = new h0(false);
        EMPTY_LIST = h0Var;
        EMPTY = h0Var;
    }

    public h0() {
        this(10);
    }

    public h0(int i11) {
        this((ArrayList<Object>) new ArrayList(i11));
    }

    public h0(i0 i0Var) {
        this.list = new ArrayList(i0Var.size());
        addAll(i0Var);
    }

    private h0(ArrayList<Object> arrayList) {
        this.list = arrayList;
    }

    public h0(List<String> list) {
        this((ArrayList<Object>) new ArrayList(list));
    }

    private h0(boolean z10) {
        super(z10);
        this.list = Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void add(int i11, ByteString byteString) {
        ensureIsMutable();
        this.list.add(i11, byteString);
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void add(int i11, byte[] bArr) {
        ensureIsMutable();
        this.list.add(i11, bArr);
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] asByteArray(Object obj) {
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        return obj instanceof String ? y.toByteArray((String) obj) : ((ByteString) obj).toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteString asByteString(Object obj) {
        if (obj instanceof ByteString) {
            return (ByteString) obj;
        }
        return obj instanceof String ? ByteString.copyFromUtf8((String) obj) : ByteString.copyFrom((byte[]) obj);
    }

    private static String asString(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof ByteString ? ((ByteString) obj).toStringUtf8() : y.toStringUtf8((byte[]) obj);
    }

    public static h0 emptyList() {
        return EMPTY_LIST;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object setAndReturn(int i11, ByteString byteString) {
        ensureIsMutable();
        return this.list.set(i11, byteString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object setAndReturn(int i11, byte[] bArr) {
        ensureIsMutable();
        return this.list.set(i11, bArr);
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public void add(int i11, String str) {
        ensureIsMutable();
        this.list.add(i11, str);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.i0
    public void add(ByteString byteString) {
        ensureIsMutable();
        this.list.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.i0
    public void add(byte[] bArr) {
        ensureIsMutable();
        this.list.add(bArr);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public boolean addAll(int i11, Collection<? extends String> collection) {
        ensureIsMutable();
        if (collection instanceof i0) {
            collection = ((i0) collection).getUnderlyingElements();
        }
        boolean zAddAll = this.list.addAll(i11, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.i0
    public boolean addAllByteArray(Collection<byte[]> collection) {
        ensureIsMutable();
        boolean zAddAll = this.list.addAll(collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.i0
    public boolean addAllByteString(Collection<? extends ByteString> collection) {
        ensureIsMutable();
        boolean zAddAll = this.list.addAll(collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.i0
    public List<byte[]> asByteArrayList() {
        return new a(this);
    }

    @Override // com.google.protobuf.i0, com.google.protobuf.f1
    public List<ByteString> asByteStringList() {
        return new b(this);
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        ensureIsMutable();
        this.list.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i11) {
        Object obj = this.list.get(i11);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.list.set(i11, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String stringUtf9 = y.toStringUtf8(bArr);
        if (y.isValidUtf8(bArr)) {
            this.list.set(i11, stringUtf9);
        }
        return stringUtf9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.i0
    public byte[] getByteArray(int i11) {
        Object obj = this.list.get(i11);
        byte[] bArrAsByteArray = asByteArray(obj);
        if (bArrAsByteArray != obj) {
            this.list.set(i11, bArrAsByteArray);
        }
        return bArrAsByteArray;
    }

    @Override // com.google.protobuf.i0
    public ByteString getByteString(int i11) {
        Object obj = this.list.get(i11);
        ByteString byteStringAsByteString = asByteString(obj);
        if (byteStringAsByteString != obj) {
            this.list.set(i11, byteStringAsByteString);
        }
        return byteStringAsByteString;
    }

    @Override // com.google.protobuf.i0
    public Object getRaw(int i11) {
        return this.list.get(i11);
    }

    @Override // com.google.protobuf.i0
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.list);
    }

    @Override // com.google.protobuf.i0
    public i0 getUnmodifiableView() {
        return isModifiable() ? new r1(this) : this;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public /* bridge */ /* synthetic */ boolean isModifiable() {
        return super.isModifiable();
    }

    @Override // com.google.protobuf.i0
    public void mergeFrom(i0 i0Var) {
        ensureIsMutable();
        for (Object obj : i0Var.getUnderlyingElements()) {
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                this.list.add(Arrays.copyOf(bArr, bArr.length));
            } else {
                this.list.add(obj);
            }
        }
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public h0 mutableCopyWithCapacity(int i11) {
        if (i11 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i11);
        arrayList.addAll(this.list);
        return new h0((ArrayList<Object>) arrayList);
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public String remove(int i11) {
        ensureIsMutable();
        Object objRemove = this.list.remove(i11);
        ((AbstractList) this).modCount++;
        return asString(objRemove);
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public String set(int i11, String str) {
        ensureIsMutable();
        return asString(this.list.set(i11, str));
    }

    @Override // com.google.protobuf.i0
    public void set(int i11, ByteString byteString) {
        setAndReturn(i11, byteString);
    }

    @Override // com.google.protobuf.i0
    public void set(int i11, byte[] bArr) {
        setAndReturn(i11, bArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }
}
