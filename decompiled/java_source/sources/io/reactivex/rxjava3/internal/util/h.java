package io.reactivex.rxjava3.internal.util;

/* JADX INFO: loaded from: classes7.dex */
public interface h {
    boolean accept(u10.c cVar, Object obj);

    boolean cancelled();

    boolean done();

    Throwable error();

    int leave(int i11);

    long produced(long j11);

    long requested();
}
