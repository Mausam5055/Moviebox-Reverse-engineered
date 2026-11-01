package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes3.dex */
abstract class zaav implements Runnable {
    final /* synthetic */ zaaw zab;

    @Override // java.lang.Runnable
    public final void run() {
        this.zab.zab.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    zaa();
                }
            } catch (RuntimeException e11) {
                this.zab.zaa.zam(e11);
            }
        } finally {
            this.zab.zab.unlock();
        }
    }

    protected abstract void zaa();
}
