package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class u {
    private final CopyOnWriteArrayList<c> cancellables = new CopyOnWriteArrayList<>();
    private Function0<Unit> enabledChangedCallback;
    private boolean isEnabled;

    public u(boolean z10) {
        this.isEnabled = z10;
    }

    @JvmName
    public final void addCancellable(c cancellable) {
        Intrinsics.h(cancellable, "cancellable");
        this.cancellables.add(cancellable);
    }

    public final Function0<Unit> getEnabledChangedCallback$activity_release() {
        return this.enabledChangedCallback;
    }

    public void handleOnBackCancelled() {
    }

    public abstract void handleOnBackPressed();

    public void handleOnBackProgressed(b backEvent) {
        Intrinsics.h(backEvent, "backEvent");
    }

    public void handleOnBackStarted(b backEvent) {
        Intrinsics.h(backEvent, "backEvent");
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void remove() {
        Iterator<T> it = this.cancellables.iterator();
        while (it.hasNext()) {
            ((c) it.next()).cancel();
        }
    }

    @JvmName
    public final void removeCancellable(c cancellable) {
        Intrinsics.h(cancellable, "cancellable");
        this.cancellables.remove(cancellable);
    }

    public final void setEnabled(boolean z10) {
        this.isEnabled = z10;
        Function0<Unit> function0 = this.enabledChangedCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void setEnabledChangedCallback$activity_release(Function0<Unit> function0) {
        this.enabledChangedCallback = function0;
    }
}
