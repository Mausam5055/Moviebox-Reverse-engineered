package q1;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f73047a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f73048b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f73049c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f73050d;

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (Exception e11) {
                throw new RuntimeException(e11);
            }
        }
    }

    public final void d(AutoCloseable closeable) {
        Intrinsics.h(closeable, "closeable");
        if (this.f73050d) {
            g(closeable);
            return;
        }
        synchronized (this.f73047a) {
            this.f73049c.add(closeable);
            Unit unit = Unit.f67061a;
        }
    }

    public final void e(String key, AutoCloseable closeable) {
        AutoCloseable autoCloseable;
        Intrinsics.h(key, "key");
        Intrinsics.h(closeable, "closeable");
        if (this.f73050d) {
            g(closeable);
            return;
        }
        synchronized (this.f73047a) {
            autoCloseable = (AutoCloseable) this.f73048b.put(key, closeable);
        }
        g(autoCloseable);
    }

    public final void f() {
        if (this.f73050d) {
            return;
        }
        this.f73050d = true;
        synchronized (this.f73047a) {
            try {
                Iterator it = this.f73048b.values().iterator();
                while (it.hasNext()) {
                    g((AutoCloseable) it.next());
                }
                Iterator it2 = this.f73049c.iterator();
                while (it2.hasNext()) {
                    g((AutoCloseable) it2.next());
                }
                this.f73049c.clear();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final AutoCloseable h(String key) {
        AutoCloseable autoCloseable;
        Intrinsics.h(key, "key");
        synchronized (this.f73047a) {
            autoCloseable = (AutoCloseable) this.f73048b.get(key);
        }
        return autoCloseable;
    }
}
