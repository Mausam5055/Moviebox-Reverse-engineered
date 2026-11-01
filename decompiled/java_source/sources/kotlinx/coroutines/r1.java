package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
final class r1 extends w1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67913f = AtomicIntegerFieldUpdater.newUpdater(r1.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f67914e;

    public r1(Function1 function1) {
        this.f67914e = function1;
    }

    @Override // kotlinx.coroutines.w1
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.w1
    public void v(Throwable th2) {
        if (f67913f.compareAndSet(this, 0, 1)) {
            this.f67914e.invoke(th2);
        }
    }
}
