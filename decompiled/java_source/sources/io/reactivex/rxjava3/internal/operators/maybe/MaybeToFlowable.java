package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.e;
import io.reactivex.rxjava3.core.h;
import io.reactivex.rxjava3.core.i;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;

/* JADX INFO: loaded from: classes7.dex */
public final class MaybeToFlowable extends e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final i f65379b;

    static final class MaybeToFlowableSubscriber<T> extends DeferredScalarSubscription<T> implements h {
        private static final long serialVersionUID = 7603343402964826922L;
        c upstream;

        MaybeToFlowableSubscriber(u10.c cVar) {
            super(cVar);
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription, u10.d
        public void cancel() {
            super.cancel();
            this.upstream.dispose();
        }

        @Override // io.reactivex.rxjava3.core.h
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.h
        public void onError(Throwable th2) {
            this.downstream.onError(th2);
        }

        @Override // io.reactivex.rxjava3.core.h
        public void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.upstream, cVar)) {
                this.upstream = cVar;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.h
        public void onSuccess(T t11) {
            complete(t11);
        }
    }

    public MaybeToFlowable(i iVar) {
        this.f65379b = iVar;
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65379b.a(new MaybeToFlowableSubscriber(cVar));
    }
}
