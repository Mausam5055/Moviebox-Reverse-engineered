package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes7.dex */
public final class r extends b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67912c = AtomicIntegerFieldUpdater.newUpdater(r.class, "_resumed$volatile");
    private volatile /* synthetic */ int _resumed$volatile;

    public r(Continuation continuation, Throwable th2, boolean z10) {
        if (th2 == null) {
            th2 = new CancellationException("Continuation " + continuation + " was cancelled normally");
        }
        super(th2, z10);
        this._resumed$volatile = 0;
    }

    public final boolean e() {
        return f67912c.compareAndSet(this, 0, 1);
    }
}
