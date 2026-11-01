package x3;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0 f78039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f78040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f78041c;

    public a(Function0 closeAction) {
        Intrinsics.h(closeAction, "closeAction");
        this.f78039a = closeAction;
        this.f78040b = new AtomicInteger(0);
        this.f78041c = new AtomicBoolean(false);
    }

    private final boolean b() {
        return this.f78041c.get();
    }

    public final boolean a() {
        synchronized (this) {
            if (b()) {
                return false;
            }
            this.f78040b.incrementAndGet();
            return true;
        }
    }

    public final void c() {
        synchronized (this) {
            this.f78040b.decrementAndGet();
            if (this.f78040b.get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
            Unit unit = Unit.f67061a;
        }
    }
}
