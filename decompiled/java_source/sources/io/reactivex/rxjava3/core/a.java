package io.reactivex.rxjava3.core;

import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements c {
    private static NullPointerException c(Throwable th2) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th2);
        return nullPointerException;
    }

    @Override // io.reactivex.rxjava3.core.c
    public final void a(b bVar) {
        Objects.requireNonNull(bVar, "observer is null");
        try {
            b bVarV = pz.a.v(this, bVar);
            Objects.requireNonNull(bVarV, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            b(bVarV);
        } catch (NullPointerException e11) {
            throw e11;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
            throw c(th2);
        }
    }

    protected abstract void b(b bVar);
}
