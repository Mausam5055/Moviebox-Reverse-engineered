package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m0 implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SavedStateHandlesProvider f9622a;

    public m0(SavedStateHandlesProvider provider) {
        Intrinsics.h(provider, "provider");
        this.f9622a = provider;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            source.getLifecycle().d(this);
            this.f9622a.c();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + event).toString());
        }
    }
}
