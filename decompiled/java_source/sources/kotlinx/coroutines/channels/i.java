package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class i {
    public static /* synthetic */ boolean a(AtomicReferenceArray atomicReferenceArray, int i11, Object obj, Object obj2) {
        while (!atomicReferenceArray.compareAndSet(i11, obj, obj2)) {
            if (atomicReferenceArray.get(i11) != obj) {
                return false;
            }
        }
        return true;
    }
}
