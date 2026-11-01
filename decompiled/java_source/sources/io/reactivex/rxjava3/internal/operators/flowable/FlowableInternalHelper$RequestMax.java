package io.reactivex.rxjava3.internal.operators.flowable;

/* JADX INFO: loaded from: classes7.dex */
public enum FlowableInternalHelper$RequestMax implements lz.f {
    INSTANCE;

    @Override // lz.f
    public void accept(u10.d dVar) {
        dVar.request(Long.MAX_VALUE);
    }
}
