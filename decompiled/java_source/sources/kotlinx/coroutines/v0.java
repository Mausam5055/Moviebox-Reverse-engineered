package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class v0 extends kotlinx.coroutines.internal.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f68002a = AtomicIntegerFieldUpdater.newUpdater(v0.class, "_decision$volatile");
    private volatile /* synthetic */ int _decision$volatile;

    public v0(CoroutineContext coroutineContext, Continuation continuation) {
        super(coroutineContext, continuation);
    }

    private final boolean Z() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f68002a;
        do {
            int i11 = atomicIntegerFieldUpdater.get(this);
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!f68002a.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean a0() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f68002a;
        do {
            int i11 = atomicIntegerFieldUpdater.get(this);
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!f68002a.compareAndSet(this, 0, 1));
        return true;
    }

    public final Object X() {
        if (a0()) {
            return IntrinsicsKt.f();
        }
        Object objH = x1.h(getState$kotlinx_coroutines_core());
        if (objH instanceof b0) {
            throw ((b0) objH).f67641a;
        }
        return objH;
    }

    @Override // kotlinx.coroutines.internal.v, kotlinx.coroutines.JobSupport
    protected void afterCompletion(Object obj) {
        afterResume(obj);
    }

    @Override // kotlinx.coroutines.internal.v, kotlinx.coroutines.a
    protected void afterResume(Object obj) {
        if (Z()) {
            return;
        }
        kotlinx.coroutines.internal.g.b(IntrinsicsKt.c(this.uCont), c0.a(obj, this.uCont));
    }
}
