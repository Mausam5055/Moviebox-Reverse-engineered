package com.google.common.util.concurrent;

import com.google.common.collect.q2;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k extends q2 implements Future {
    protected k() {
    }

    public boolean cancel(boolean z10) {
        return l().cancel(z10);
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        return l().get();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j11, TimeUnit timeUnit) {
        return l().get(j11, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return l().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return l().isDone();
    }

    protected abstract Future l();
}
