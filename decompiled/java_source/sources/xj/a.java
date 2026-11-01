package xj;

import com.therouter.router.RouteItem;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements bg.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bg.b f78307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RouteItem f78308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f78309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f78310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f78311e;

    public a(bg.b delegate, RouteItem postcard) {
        Intrinsics.h(delegate, "delegate");
        Intrinsics.h(postcard, "postcard");
        this.f78307a = delegate;
        this.f78308b = postcard;
        this.f78309c = new AtomicBoolean(false);
        this.f78310d = new AtomicBoolean(false);
        this.f78311e = new AtomicBoolean(false);
    }

    @Override // bg.b
    public void a(RouteItem postcard) {
        Intrinsics.h(postcard, "postcard");
        if (this.f78309c.get()) {
            return;
        }
        this.f78310d.set(true);
    }

    public final boolean b() {
        if (this.f78309c.get() || !this.f78310d.get() || !this.f78311e.compareAndSet(false, true)) {
            return false;
        }
        this.f78307a.a(this.f78308b);
        return true;
    }

    public final void c() {
        this.f78309c.set(true);
    }
}
