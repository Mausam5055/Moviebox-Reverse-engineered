package androidx.p009lifecycle;

import androidx.p010savedstate.c;
import java.io.Closeable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n0 implements r, Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l0 f9627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9628c;

    public n0(String key, l0 handle) {
        Intrinsics.h(key, "key");
        Intrinsics.h(handle, "handle");
        this.f9626a = key;
        this.f9627b = handle;
    }

    public final void b(c registry, Lifecycle lifecycle) {
        Intrinsics.h(registry, "registry");
        Intrinsics.h(lifecycle, "lifecycle");
        if (this.f9628c) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f9628c = true;
        lifecycle.a(this);
        registry.h(this.f9626a, this.f9627b.c());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final l0 d() {
        return this.f9627b;
    }

    public final boolean h() {
        return this.f9628c;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f9628c = false;
            source.getLifecycle().d(this);
        }
    }
}
