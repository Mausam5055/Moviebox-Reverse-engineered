package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.collections.FloatIterator;

/* JADX INFO: loaded from: classes7.dex */
final class e extends FloatIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float[] f67309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67310b;

    public e(float[] array) {
        Intrinsics.h(array, "array");
        this.f67309a = array;
    }

    @Override // kotlin.collections.FloatIterator
    public float a() {
        try {
            float[] fArr = this.f67309a;
            int i11 = this.f67310b;
            this.f67310b = i11 + 1;
            return fArr[i11];
        } catch (ArrayIndexOutOfBoundsException e11) {
            this.f67310b--;
            throw new NoSuchElementException(e11.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f67310b < this.f67309a.length;
    }
}
