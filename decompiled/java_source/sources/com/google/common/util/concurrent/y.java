package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
public final class y extends AbstractFuture.h {
    private y() {
    }

    public static y s() {
        return new y();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public boolean set(Object obj) {
        return super.set(obj);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public boolean setException(Throwable th2) {
        return super.setException(th2);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public boolean setFuture(r rVar) {
        return super.setFuture(rVar);
    }
}
