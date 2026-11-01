package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c {
    public static final Object a(AtomicReference atomicReference) {
        return atomicReference.get();
    }

    public static final void b(AtomicReference atomicReference, Object obj) {
        atomicReference.set(obj);
    }
}
