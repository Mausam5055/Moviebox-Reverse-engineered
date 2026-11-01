package io.reactivex.rxjava3.core;

import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public abstract class p implements r {
    @Override // io.reactivex.rxjava3.core.r
    public final void a(q qVar) {
        Objects.requireNonNull(qVar, "observer is null");
        q qVarY = pz.a.y(this, qVar);
        Objects.requireNonNull(qVarY, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            b(qVarY);
        } catch (NullPointerException e11) {
            throw e11;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    protected abstract void b(q qVar);
}
