package io.reactivex.rxjava3.internal.observers;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends b {
    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        if (this.f65339a == null) {
            this.f65340b = th2;
        }
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(Object obj) {
        if (this.f65339a == null) {
            this.f65339a = obj;
            this.f65341c.dispose();
            countDown();
        }
    }
}
