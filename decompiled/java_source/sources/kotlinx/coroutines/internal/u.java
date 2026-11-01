package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public final class u {
    private volatile AtomicReferenceArray<Object> array;

    public u(int i11) {
        this.array = new AtomicReferenceArray<>(i11);
    }

    public final int a() {
        return this.array.length();
    }

    public final Object b(int i11) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i11 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i11);
        }
        return null;
    }

    public final void c(int i11, Object obj) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i11 < length) {
            atomicReferenceArray.set(i11, obj);
            return;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(RangesKt.f(i11 + 1, length * 2));
        for (int i12 = 0; i12 < length; i12++) {
            atomicReferenceArray2.set(i12, atomicReferenceArray.get(i12));
        }
        atomicReferenceArray2.set(i11, obj);
        this.array = atomicReferenceArray2;
    }
}
