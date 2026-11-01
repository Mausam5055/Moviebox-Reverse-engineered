package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.ShortIterator;

/* JADX INFO: loaded from: classes7.dex */
final class i extends ShortIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final short[] f67317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67318b;

    public i(short[] array) {
        Intrinsics.h(array, "array");
        this.f67317a = array;
    }

    @Override // kotlin.collections.ShortIterator
    public short a() {
        try {
            short[] sArr = this.f67317a;
            int i11 = this.f67318b;
            this.f67318b = i11 + 1;
            return sArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67318b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67318b < this.f67317a.length;
    }
}
