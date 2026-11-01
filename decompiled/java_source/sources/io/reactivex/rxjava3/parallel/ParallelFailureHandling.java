package io.reactivex.rxjava3.parallel;

import lz.c;

/* JADX INFO: loaded from: classes7.dex */
public enum ParallelFailureHandling implements c {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override // lz.c
    public ParallelFailureHandling apply(Long l11, Throwable th2) {
        return this;
    }
}
