package androidx.compose.runtime;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;

/* JADX INFO: loaded from: classes.dex */
public final class v2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f4055a = new AtomicReference(androidx.compose.runtime.internal.g.a());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f4056b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f4057c;

    public final Object a() {
        long id2 = Thread.currentThread().getId();
        return id2 == ActualAndroid_androidKt.d() ? this.f4057c : ((androidx.compose.runtime.internal.f) this.f4055a.get()).b(id2);
    }

    public final void b(Object obj) {
        long id2 = Thread.currentThread().getId();
        if (id2 == ActualAndroid_androidKt.d()) {
            this.f4057c = obj;
            return;
        }
        synchronized (this.f4056b) {
            androidx.compose.runtime.internal.f fVar = (androidx.compose.runtime.internal.f) this.f4055a.get();
            if (fVar.d(id2, obj)) {
                return;
            }
            this.f4055a.set(fVar.c(id2, obj));
            Unit unit = Unit.f67061a;
        }
    }
}
