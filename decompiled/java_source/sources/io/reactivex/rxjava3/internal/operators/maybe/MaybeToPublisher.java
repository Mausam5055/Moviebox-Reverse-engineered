package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.i;
import lz.h;
import u10.b;

/* JADX INFO: loaded from: classes7.dex */
public enum MaybeToPublisher implements h {
    INSTANCE;

    public static <T> h instance() {
        return INSTANCE;
    }

    @Override // lz.h
    public b apply(i iVar) {
        return new MaybeToFlowable(iVar);
    }
}
