package io.reactivex.rxjava3.internal.operators.flowable;

/* JADX INFO: loaded from: classes7.dex */
final class d extends kz.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final FlowableGroupBy$State f65374c;

    protected d(Object obj, FlowableGroupBy$State flowableGroupBy$State) {
        super(obj);
        this.f65374c = flowableGroupBy$State;
    }

    public static d h(Object obj, int i11, FlowableGroupBy$GroupBySubscriber flowableGroupBy$GroupBySubscriber, boolean z10) {
        return new d(obj, new FlowableGroupBy$State(i11, flowableGroupBy$GroupBySubscriber, obj, z10));
    }

    @Override // io.reactivex.rxjava3.core.e
    protected void g(u10.c cVar) {
        this.f65374c.subscribe(cVar);
    }

    public void onComplete() {
        this.f65374c.onComplete();
    }

    public void onError(Throwable th2) {
        this.f65374c.onError(th2);
    }

    public void onNext(Object obj) {
        this.f65374c.onNext(obj);
    }
}
