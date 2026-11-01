package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public abstract class FlowableRefCount extends io.reactivex.rxjava3.core.e {

    static final class RefConnection extends AtomicReference<io.reactivex.rxjava3.disposables.c> implements Runnable, lz.f {
        private static final long serialVersionUID = -4552101107598366241L;
        boolean connected;
        boolean disconnectedEarly;
        final FlowableRefCount parent;
        long subscriberCount;
        io.reactivex.rxjava3.disposables.c timer;

        RefConnection(FlowableRefCount flowableRefCount) {
        }

        @Override // lz.f
        public void accept(io.reactivex.rxjava3.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
            throw null;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
