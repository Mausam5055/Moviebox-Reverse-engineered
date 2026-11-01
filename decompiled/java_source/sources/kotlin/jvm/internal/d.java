package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.DoubleIterator;

/* JADX INFO: loaded from: classes7.dex */
final class d extends DoubleIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[] f67307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67308b;

    public d(double[] array) {
        Intrinsics.h(array, "array");
        this.f67307a = array;
    }

    @Override // kotlin.collections.DoubleIterator
    public double a() {
        try {
            double[] dArr = this.f67307a;
            int i11 = this.f67308b;
            this.f67308b = i11 + 1;
            return dArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67308b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67308b < this.f67307a.length;
    }
}
