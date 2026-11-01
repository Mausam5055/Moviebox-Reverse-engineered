package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.BooleanIterator;

/* JADX INFO: loaded from: classes7.dex */
final class a extends BooleanIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean[] f67301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67302b;

    public a(boolean[] array) {
        Intrinsics.h(array, "array");
        this.f67301a = array;
    }

    @Override // kotlin.collections.BooleanIterator
    public boolean a() {
        try {
            boolean[] zArr = this.f67301a;
            int i11 = this.f67302b;
            this.f67302b = i11 + 1;
            return zArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67302b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67302b < this.f67301a.length;
    }
}
