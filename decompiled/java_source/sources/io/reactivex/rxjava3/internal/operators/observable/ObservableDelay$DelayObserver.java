package io.reactivex.rxjava3.internal.operators.observable;

/* JADX INFO: loaded from: classes7.dex */
abstract class ObservableDelay$DelayObserver implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

    final class OnComplete implements Runnable {
        final /* synthetic */ ObservableDelay$DelayObserver this$0;

        OnComplete(ObservableDelay$DelayObserver observableDelay$DelayObserver) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:?, code lost:
        
            throw null;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                throw null;
            } catch (Throwable unused) {
                throw null;
            }
        }
    }

    final class OnError implements Runnable {
        final /* synthetic */ ObservableDelay$DelayObserver this$0;
        private final Throwable throwable;

        OnError(ObservableDelay$DelayObserver observableDelay$DelayObserver, Throwable th2) {
            this.throwable = th2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:?, code lost:
        
            throw null;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                throw null;
            } catch (Throwable unused) {
                throw null;
            }
        }
    }

    final class OnNext implements Runnable {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final Object f65394t;
        final /* synthetic */ ObservableDelay$DelayObserver this$0;

        OnNext(ObservableDelay$DelayObserver observableDelay$DelayObserver, Object obj) {
            this.f65394t = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
