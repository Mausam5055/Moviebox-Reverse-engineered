package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
final class g implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f67313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67314b;

    public g(Object[] array) {
        Intrinsics.h(array, "array");
        this.f67313a = array;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67314b < this.f67313a.length;
    }

    @Override // java.util.Iterator
    public Object next() {
        try {
            Object[] objArr = this.f67313a;
            int i11 = this.f67314b;
            this.f67314b = i11 + 1;
            return objArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67314b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
