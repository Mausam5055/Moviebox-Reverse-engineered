package io.reactivex.rxjava3.internal.operators.observable;

/* JADX INFO: loaded from: classes7.dex */
final class i extends nz.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ObservableGroupBy$State f65440b;

    protected i(Object obj, ObservableGroupBy$State observableGroupBy$State) {
        super(obj);
        this.f65440b = observableGroupBy$State;
    }

    public static i J(Object obj, int i11, ObservableGroupBy$GroupByObserver observableGroupBy$GroupByObserver, boolean z10) {
        return new i(obj, new ObservableGroupBy$State(i11, observableGroupBy$GroupByObserver, obj, z10));
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        this.f65440b.subscribe(oVar);
    }

    public void onComplete() {
        this.f65440b.onComplete();
    }

    public void onError(Throwable th2) {
        this.f65440b.onError(th2);
    }

    public void onNext(Object obj) {
        this.f65440b.onNext(obj);
    }
}
