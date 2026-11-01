package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.atomic.AtomicReference;
import lz.e;

/* JADX INFO: loaded from: classes7.dex */
public final class CancellableDisposable extends AtomicReference<e> implements c {
    private static final long serialVersionUID = 5718521705281392066L;

    public CancellableDisposable(e eVar) {
        super(eVar);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (get() != null) {
            android.support.v4.media.session.c.a(getAndSet(null));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get() == null;
    }
}
