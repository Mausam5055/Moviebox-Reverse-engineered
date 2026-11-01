package io.reactivex.rxjava3.internal.operators.flowable;

/* JADX INFO: loaded from: classes7.dex */
abstract class FlowableDelay$DelaySubscriber implements io.reactivex.rxjava3.core.f, u10.d {

    final class OnComplete implements Runnable {
        final /* synthetic */ FlowableDelay$DelaySubscriber this$0;

        OnComplete(FlowableDelay$DelaySubscriber flowableDelay$DelaySubscriber) {
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

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final Throwable f65355t;
        final /* synthetic */ FlowableDelay$DelaySubscriber this$0;

        OnError(FlowableDelay$DelaySubscriber flowableDelay$DelaySubscriber, Throwable th2) {
            this.f65355t = th2;
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
        private final Object f65356t;
        final /* synthetic */ FlowableDelay$DelaySubscriber this$0;

        OnNext(FlowableDelay$DelaySubscriber flowableDelay$DelaySubscriber, Object obj) {
            this.f65356t = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw null;
        }
    }
}
