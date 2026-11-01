package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import androidx.p009lifecycle.d0;
import androidx.p009lifecycle.t;
import androidx.p009lifecycle.u;
import com.bumptech.glide.util.Util;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class LifecycleLifecycle implements Lifecycle, t {

    @NonNull
    private final androidx.p009lifecycle.Lifecycle lifecycle;

    @NonNull
    private final Set<LifecycleListener> lifecycleListeners = new HashSet();

    LifecycleLifecycle(androidx.p009lifecycle.Lifecycle lifecycle) {
        this.lifecycle = lifecycle;
        lifecycle.a(this);
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void addListener(@NonNull LifecycleListener lifecycleListener) {
        this.lifecycleListeners.add(lifecycleListener);
        if (this.lifecycle.b() == androidx.lifecycle.Lifecycle.State.DESTROYED) {
            lifecycleListener.onDestroy();
        } else if (this.lifecycle.b().isAtLeast(androidx.lifecycle.Lifecycle.State.STARTED)) {
            lifecycleListener.onStart();
        } else {
            lifecycleListener.onStop();
        }
    }

    @d0(androidx.lifecycle.Lifecycle.Event.ON_DESTROY)
    public void onDestroy(@NonNull u uVar) {
        Iterator it = Util.getSnapshot(this.lifecycleListeners).iterator();
        while (it.hasNext()) {
            ((LifecycleListener) it.next()).onDestroy();
        }
        uVar.getLifecycle().d(this);
    }

    @d0(androidx.lifecycle.Lifecycle.Event.ON_START)
    public void onStart(@NonNull u uVar) {
        Iterator it = Util.getSnapshot(this.lifecycleListeners).iterator();
        while (it.hasNext()) {
            ((LifecycleListener) it.next()).onStart();
        }
    }

    @d0(androidx.lifecycle.Lifecycle.Event.ON_STOP)
    public void onStop(@NonNull u uVar) {
        Iterator it = Util.getSnapshot(this.lifecycleListeners).iterator();
        while (it.hasNext()) {
            ((LifecycleListener) it.next()).onStop();
        }
    }

    @Override // com.bumptech.glide.manager.Lifecycle
    public void removeListener(@NonNull LifecycleListener lifecycleListener) {
        this.lifecycleListeners.remove(lifecycleListener);
    }
}
