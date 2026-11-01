package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.IntIterator;

/* JADX INFO: loaded from: classes7.dex */
final class f extends IntIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f67311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67312b;

    public f(int[] array) {
        Intrinsics.h(array, "array");
        this.f67311a = array;
    }

    @Override // kotlin.collections.IntIterator
    public int a() {
        try {
            int[] iArr = this.f67311a;
            int i11 = this.f67312b;
            this.f67312b = i11 + 1;
            return iArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67312b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67312b < this.f67311a.length;
    }
}
