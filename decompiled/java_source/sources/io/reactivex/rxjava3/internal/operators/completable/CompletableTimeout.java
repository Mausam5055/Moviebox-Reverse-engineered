package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.a;
import io.reactivex.rxjava3.core.b;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CompletableTimeout extends a {

    final class DisposeTask implements Runnable {
        final b downstream;
        private final AtomicBoolean once;
        final io.reactivex.rxjava3.disposables.a set;
        final /* synthetic */ CompletableTimeout this$0;

        DisposeTask(CompletableTimeout completableTimeout, AtomicBoolean atomicBoolean, io.reactivex.rxjava3.disposables.a aVar, b bVar) {
            this.once = atomicBoolean;
            this.set = aVar;
            this.downstream = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.once.compareAndSet(false, true)) {
                this.set.d();
                throw null;
            }
        }
    }
}
