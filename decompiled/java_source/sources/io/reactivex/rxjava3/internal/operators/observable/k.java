package io.reactivex.rxjava3.internal.operators.observable;

/* JADX INFO: loaded from: classes7.dex */
public final class k extends io.reactivex.rxjava3.core.j implements io.reactivex.rxjava3.operators.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f65444a;

    public k(Object obj) {
        this.f65444a = obj;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(oVar, this.f65444a);
        oVar.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    @Override // io.reactivex.rxjava3.operators.e, lz.k
    public Object get() {
        return this.f65444a;
    }
}
