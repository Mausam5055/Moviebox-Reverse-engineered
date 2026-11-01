package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.ByteIterator;

/* JADX INFO: loaded from: classes7.dex */
final class b extends ByteIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f67303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67304b;

    public b(byte[] array) {
        Intrinsics.h(array, "array");
        this.f67303a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67304b < this.f67303a.length;
    }

    @Override // kotlin.collections.ByteIterator
    public byte nextByte() {
        try {
            byte[] bArr = this.f67303a;
            int i11 = this.f67304b;
            this.f67304b = i11 + 1;
            return bArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67304b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }
}
