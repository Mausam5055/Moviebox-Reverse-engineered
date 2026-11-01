package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes7.dex */
public class b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67640b = AtomicIntegerFieldUpdater.newUpdater(b0.class, "_handled$volatile");
    private volatile /* synthetic */ int _handled$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f67641a;

    public b0(Throwable th2, boolean z10) {
        this.f67641a = th2;
        this._handled$volatile = z10 ? 1 : 0;
    }

    public /* synthetic */ b0(Throwable th2, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(th2, (i11 & 2) != 0 ? false : z10);
    }

    public final boolean a() {
        return f67640b.get(this) != 0;
    }

    public final boolean c() {
        return f67640b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return p0.a(this) + '[' + this.f67641a + ']';
    }
}
