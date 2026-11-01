package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes7.dex */
public abstract class DeferredScalarObserver<T, R> extends DeferredScalarDisposable<R> implements o {
    private static final long serialVersionUID = -266195175408988651L;
    protected io.reactivex.rxjava3.disposables.c upstream;

    public DeferredScalarObserver(o oVar) {
        super(oVar);
    }

    @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
    public void dispose() {
        super.dispose();
        this.upstream.dispose();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        T t11 = this.value;
        if (t11 == null) {
            complete();
        } else {
            this.value = null;
            complete(t11);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        this.value = null;
        error(th2);
    }

    @Override // io.reactivex.rxjava3.core.o
    public abstract /* synthetic */ void onNext(Object obj);

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }
}
