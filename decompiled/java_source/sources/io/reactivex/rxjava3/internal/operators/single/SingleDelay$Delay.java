package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.q;

/* JADX INFO: loaded from: classes7.dex */
abstract class SingleDelay$Delay implements q {

    final class OnError implements Runnable {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Throwable f65469e;
        final /* synthetic */ SingleDelay$Delay this$1;

        OnError(SingleDelay$Delay singleDelay$Delay, Throwable th2) {
            this.f65469e = th2;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }

    final class OnSuccess implements Runnable {
        final /* synthetic */ SingleDelay$Delay this$1;
        private final Object value;

        OnSuccess(SingleDelay$Delay singleDelay$Delay, Object obj) {
            this.value = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
