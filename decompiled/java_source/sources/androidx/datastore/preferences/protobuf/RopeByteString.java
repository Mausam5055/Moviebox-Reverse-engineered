package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class RopeByteString extends ByteString {
    static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    class a extends ByteString.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c f8713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ByteString.e f8714b = b();

        a() {
            this.f8713a = new c(RopeByteString.this, null);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [androidx.datastore.preferences.protobuf.ByteString$e] */
        private ByteString.e b() {
            if (this.f8713a.hasNext()) {
                return this.f8713a.next().iterator2();
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f8714b != null;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.e
        public byte nextByte() {
            ByteString.e eVar = this.f8714b;
            if (eVar == null) {
                throw new NoSuchElementException();
            }
            byte bNextByte = eVar.nextByte();
            if (!this.f8714b.hasNext()) {
                this.f8714b = b();
            }
            return bNextByte;
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ArrayDeque f8716a;

        private b() {
            this.f8716a = new ArrayDeque();
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ByteString b(ByteString byteString, ByteString byteString2) {
            c(byteString);
            c(byteString2);
            ByteString ropeByteString = (ByteString) this.f8716a.pop();
            while (!this.f8716a.isEmpty()) {
                ropeByteString = new RopeByteString((ByteString) this.f8716a.pop(), ropeByteString, null);
            }
            return ropeByteString;
        }

        private void c(ByteString byteString) {
            if (byteString.isBalanced()) {
                e(byteString);
                return;
            }
            if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                c(ropeByteString.left);
                c(ropeByteString.right);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        private int d(int i11) {
            int iBinarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i11);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        private void e(ByteString byteString) {
            a aVar;
            int iD = d(byteString.size());
            int iMinLength = RopeByteString.minLength(iD + 1);
            if (this.f8716a.isEmpty() || ((ByteString) this.f8716a.peek()).size() >= iMinLength) {
                this.f8716a.push(byteString);
                return;
            }
            int iMinLength2 = RopeByteString.minLength(iD);
            ByteString ropeByteString = (ByteString) this.f8716a.pop();
            while (true) {
                aVar = null;
                if (this.f8716a.isEmpty() || ((ByteString) this.f8716a.peek()).size() >= iMinLength2) {
                    break;
                } else {
                    ropeByteString = new RopeByteString((ByteString) this.f8716a.pop(), ropeByteString, aVar);
                }
            }
            RopeByteString ropeByteString2 = new RopeByteString(ropeByteString, byteString, aVar);
            while (!this.f8716a.isEmpty()) {
                if (((ByteString) this.f8716a.peek()).size() >= RopeByteString.minLength(d(ropeByteString2.size()) + 1)) {
                    break;
                } else {
                    ropeByteString2 = new RopeByteString((ByteString) this.f8716a.pop(), ropeByteString2, aVar);
                }
            }
            this.f8716a.push(ropeByteString2);
        }
    }

    private static final class c implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ArrayDeque f8717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ByteString.LeafByteString f8718b;

        private c(ByteString byteString) {
            if (!(byteString instanceof RopeByteString)) {
                this.f8717a = null;
                this.f8718b = (ByteString.LeafByteString) byteString;
                return;
            }
            RopeByteString ropeByteString = (RopeByteString) byteString;
            ArrayDeque arrayDeque = new ArrayDeque(ropeByteString.getTreeDepth());
            this.f8717a = arrayDeque;
            arrayDeque.push(ropeByteString);
            this.f8718b = a(ropeByteString.left);
        }

        /* synthetic */ c(ByteString byteString, a aVar) {
            this(byteString);
        }

        private ByteString.LeafByteString a(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.f8717a.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (ByteString.LeafByteString) byteString;
        }

        private ByteString.LeafByteString b() {
            ByteString.LeafByteString leafByteStringA;
            do {
                ArrayDeque arrayDeque = this.f8717a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                leafByteStringA = a(((RopeByteString) this.f8717a.pop()).right);
            } while (leafByteStringA.isEmpty());
            return leafByteStringA;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.f8718b;
            if (leafByteString == null) {
                throw new NoSuchElementException();
            }
            this.f8718b = b();
            return leafByteString;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f8718b != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private class d extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f8719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ByteString.LeafByteString f8720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f8721c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f8722d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f8723e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f8724f;

        public d() {
            k();
        }

        private void d() {
            if (this.f8720b != null) {
                int i11 = this.f8722d;
                int i12 = this.f8721c;
                if (i11 == i12) {
                    this.f8723e += i12;
                    this.f8722d = 0;
                    if (!this.f8719a.hasNext()) {
                        this.f8720b = null;
                        this.f8721c = 0;
                    } else {
                        ByteString.LeafByteString next = this.f8719a.next();
                        this.f8720b = next;
                        this.f8721c = next.size();
                    }
                }
            }
        }

        private int h() {
            return RopeByteString.this.size() - (this.f8723e + this.f8722d);
        }

        private void k() {
            c cVar = new c(RopeByteString.this, null);
            this.f8719a = cVar;
            ByteString.LeafByteString next = cVar.next();
            this.f8720b = next;
            this.f8721c = next.size();
            this.f8722d = 0;
            this.f8723e = 0;
        }

        private int l(byte[] bArr, int i11, int i12) {
            int i13 = i12;
            while (i13 > 0) {
                d();
                if (this.f8720b == null) {
                    break;
                }
                int iMin = Math.min(this.f8721c - this.f8722d, i13);
                if (bArr != null) {
                    this.f8720b.copyTo(bArr, this.f8722d, i11, iMin);
                    i11 += iMin;
                }
                this.f8722d += iMin;
                i13 -= iMin;
            }
            return i12 - i13;
        }

        @Override // java.io.InputStream
        public int available() {
            return h();
        }

        @Override // java.io.InputStream
        public void mark(int i11) {
            this.f8724f = this.f8723e + this.f8722d;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            d();
            ByteString.LeafByteString leafByteString = this.f8720b;
            if (leafByteString == null) {
                return -1;
            }
            int i11 = this.f8722d;
            this.f8722d = i11 + 1;
            return leafByteString.byteAt(i11) & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i11, int i12) {
            bArr.getClass();
            if (i11 < 0 || i12 < 0 || i12 > bArr.length - i11) {
                throw new IndexOutOfBoundsException();
            }
            int iL = l(bArr, i11, i12);
            if (iL != 0) {
                return iL;
            }
            if (i12 > 0 || h() == 0) {
                return -1;
            }
            return iL;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            k();
            l(null, 0, this.f8724f);
        }

        @Override // java.io.InputStream
        public long skip(long j11) {
            if (j11 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j11 > 2147483647L) {
                j11 = 2147483647L;
            }
            return l(null, 0, (int) j11);
        }
    }

    private RopeByteString(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    /* synthetic */ RopeByteString(ByteString byteString, ByteString byteString2, a aVar) {
        this(byteString, byteString2);
    }

    private static ByteString a(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean b(ByteString byteString) {
        ByteString.LeafByteString leafByteString;
        a aVar = null;
        c cVar = new c(this, aVar);
        ByteString.LeafByteString leafByteString2 = (ByteString.LeafByteString) cVar.next();
        c cVar2 = new c(byteString, aVar);
        ByteString.LeafByteString leafByteString3 = (ByteString.LeafByteString) cVar2.next();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int size = leafByteString2.size() - i11;
            int size2 = leafByteString3.size() - i12;
            int iMin = Math.min(size, size2);
            if (!(i11 == 0 ? leafByteString2.equalsRange(leafByteString3, i12, iMin) : leafByteString3.equalsRange(leafByteString2, i11, iMin))) {
                return false;
            }
            i13 += iMin;
            int i14 = this.totalLength;
            if (i13 >= i14) {
                if (i13 == i14) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                leafByteString = (ByteString.LeafByteString) cVar.next();
                i11 = 0;
            } else {
                i11 += iMin;
            }
            if (iMin == size2) {
                leafByteString2 = leafByteString2;
                leafByteString2 = leafByteString;
                leafByteString3 = (ByteString.LeafByteString) cVar2.next();
                i12 = 0;
            } else {
                leafByteString2 = leafByteString2;
                leafByteString2 = leafByteString;
                i12 += iMin;
            }
        }
    }

    static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return a(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.right.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.left, a(ropeByteString.right, byteString2));
            }
            if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            }
        }
        return size >= minLength(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1) ? new RopeByteString(byteString, byteString2) : new b(null).b(byteString, byteString2);
    }

    static int minLength(int i11) {
        int[] iArr = minLengthByDepth;
        if (i11 >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i11];
    }

    static RopeByteString newInstanceForTest(ByteString byteString, ByteString byteString2) {
        return new RopeByteString(byteString, byteString2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public byte byteAt(int i11) {
        ByteString.checkIndex(i11, this.totalLength);
        return internalByteAt(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        this.left.copyTo(byteBuffer);
        this.right.copyTo(byteBuffer);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected void copyToInternal(byte[] bArr, int i11, int i12, int i13) {
        int i14 = i11 + i13;
        int i15 = this.leftLength;
        if (i14 <= i15) {
            this.left.copyToInternal(bArr, i11, i12, i13);
        } else {
            if (i11 >= i15) {
                this.right.copyToInternal(bArr, i11 - i15, i12, i13);
                return;
            }
            int i16 = i15 - i11;
            this.left.copyToInternal(bArr, i11, i12, i16);
            this.right.copyToInternal(bArr, 0, i12 + i16, i13 - i16);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int iPeekCachedHashCode = peekCachedHashCode();
        int iPeekCachedHashCode2 = byteString.peekCachedHashCode();
        if (iPeekCachedHashCode == 0 || iPeekCachedHashCode2 == 0 || iPeekCachedHashCode == iPeekCachedHashCode2) {
            return b(byteString);
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int getTreeDepth() {
        return this.treeDepth;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    byte internalByteAt(int i11) {
        int i12 = this.leftLength;
        return i11 < i12 ? this.left.internalByteAt(i11) : this.right.internalByteAt(i11 - i12);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected boolean isBalanced() {
        return this.totalLength >= minLength(this.treeDepth);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public boolean isValidUtf8() {
        int iPartialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(iPartialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString, java.lang.Iterable
    /* JADX INFO: renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new a();
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public i newCodedInput() {
        return i.i(asReadOnlyByteBufferList(), true);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public InputStream newInput() {
        return new d();
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int partialHash(int i11, int i12, int i13) {
        int i14 = i12 + i13;
        int i15 = this.leftLength;
        if (i14 <= i15) {
            return this.left.partialHash(i11, i12, i13);
        }
        if (i12 >= i15) {
            return this.right.partialHash(i11, i12 - i15, i13);
        }
        int i16 = i15 - i12;
        return this.right.partialHash(this.left.partialHash(i11, i12, i16), 0, i13 - i16);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int partialIsValidUtf8(int i11, int i12, int i13) {
        int i14 = i12 + i13;
        int i15 = this.leftLength;
        if (i14 <= i15) {
            return this.left.partialIsValidUtf8(i11, i12, i13);
        }
        if (i12 >= i15) {
            return this.right.partialIsValidUtf8(i11, i12 - i15, i13);
        }
        int i16 = i15 - i12;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(i11, i12, i16), 0, i13 - i16);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public ByteString substring(int i11, int i12) {
        int iCheckRange = ByteString.checkRange(i11, i12, this.totalLength);
        if (iCheckRange == 0) {
            return ByteString.EMPTY;
        }
        if (iCheckRange == this.totalLength) {
            return this;
        }
        int i13 = this.leftLength;
        if (i12 <= i13) {
            return this.left.substring(i11, i12);
        }
        return i11 >= i13 ? this.right.substring(i11 - i13, i12 - i13) : new RopeByteString(this.left.substring(i11), this.right.substring(0, i12 - this.leftLength));
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    void writeTo(h hVar) throws IOException {
        this.left.writeTo(hVar);
        this.right.writeTo(hVar);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    void writeToInternal(OutputStream outputStream, int i11, int i12) throws IOException {
        int i13 = i11 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            this.left.writeToInternal(outputStream, i11, i12);
        } else {
            if (i11 >= i14) {
                this.right.writeToInternal(outputStream, i11 - i14, i12);
                return;
            }
            int i15 = i14 - i11;
            this.left.writeToInternal(outputStream, i11, i15);
            this.right.writeToInternal(outputStream, 0, i12 - i15);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    void writeToReverse(h hVar) throws IOException {
        this.right.writeToReverse(hVar);
        this.left.writeToReverse(hVar);
    }
}
