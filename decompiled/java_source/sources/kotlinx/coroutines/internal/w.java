package kotlinx.coroutines.internal;

import com.tn.lib.view.FlowLayout;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.e2;

/* JADX INFO: loaded from: classes7.dex */
public abstract class w extends b implements e2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67886d = AtomicIntegerFieldUpdater.newUpdater(w.class, "cleanedAndPointers$volatile");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f67887c;
    private volatile /* synthetic */ int cleanedAndPointers$volatile;

    public w(long j11, w wVar, int i11) {
        super(wVar);
        this.f67887c = j11;
        this.cleanedAndPointers$volatile = i11 << 16;
    }

    @Override // kotlinx.coroutines.internal.b
    public boolean k() {
        return f67886d.get(this) == r() && !l();
    }

    public final boolean p() {
        return f67886d.addAndGet(this, FlowLayout.SPACING_AUTO) == r() && !l();
    }

    public abstract int r();

    public abstract void s(int i11, Throwable th2, CoroutineContext coroutineContext);

    public final void t() {
        if (f67886d.incrementAndGet(this) == r()) {
            n();
        }
    }

    public final boolean u() {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f67886d;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if (i11 == r() && !l()) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, 65536 + i11));
        return true;
    }
}
