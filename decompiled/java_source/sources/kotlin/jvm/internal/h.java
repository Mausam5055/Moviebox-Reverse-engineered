package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.LongIterator;

/* JADX INFO: loaded from: classes7.dex */
final class h extends LongIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f67315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67316b;

    public h(long[] array) {
        Intrinsics.h(array, "array");
        this.f67315a = array;
    }

    @Override // kotlin.collections.LongIterator
    public long a() {
        try {
            long[] jArr = this.f67315a;
            int i11 = this.f67316b;
            this.f67316b = i11 + 1;
            return jArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67316b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67316b < this.f67315a.length;
    }
}
