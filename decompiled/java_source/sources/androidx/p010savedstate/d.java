package androidx.p010savedstate;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f14834d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f14835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f14836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f14837c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a(e owner) {
            Intrinsics.h(owner, "owner");
            return new d(owner, null);
        }
    }

    private d(e eVar) {
        this.f14835a = eVar;
        this.f14836b = new c();
    }

    public /* synthetic */ d(e eVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar);
    }

    public static final d a(e eVar) {
        return f14834d.a(eVar);
    }

    public final c b() {
        return this.f14836b;
    }

    public final void c() {
        Lifecycle lifecycle = this.f14835a.getLifecycle();
        if (lifecycle.b() != Lifecycle.State.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new androidx.p010savedstate.a(this.f14835a));
        this.f14836b.e(lifecycle);
        this.f14837c = true;
    }

    public final void d(Bundle bundle) {
        if (!this.f14837c) {
            c();
        }
        Lifecycle lifecycle = this.f14835a.getLifecycle();
        if (!lifecycle.b().isAtLeast(Lifecycle.State.STARTED)) {
            this.f14836b.f(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.b()).toString());
    }

    public final void e(Bundle outBundle) {
        Intrinsics.h(outBundle, "outBundle");
        this.f14836b.g(outBundle);
    }
}
