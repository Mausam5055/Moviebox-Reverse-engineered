package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.q;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class AtomicThrowable extends AtomicReference<Throwable> {
    private static final long serialVersionUID = 3949248817947090603L;

    public boolean isTerminated() {
        return get() == ExceptionHelper.f65550a;
    }

    public Throwable terminate() {
        return ExceptionHelper.e(this);
    }

    public boolean tryAddThrowable(Throwable th2) {
        return ExceptionHelper.a(this, th2);
    }

    public boolean tryAddThrowableOrReport(Throwable th2) {
        if (tryAddThrowable(th2)) {
            return true;
        }
        pz.a.r(th2);
        return false;
    }

    public void tryTerminateAndReport() {
        Throwable thTerminate = terminate();
        if (thTerminate == null || thTerminate == ExceptionHelper.f65550a) {
            return;
        }
        pz.a.r(thTerminate);
    }

    public void tryTerminateConsumer(io.reactivex.rxjava3.core.b bVar) {
        Throwable thTerminate = terminate();
        if (thTerminate == null) {
            bVar.onComplete();
        } else if (thTerminate != ExceptionHelper.f65550a) {
            bVar.onError(thTerminate);
        }
    }

    public void tryTerminateConsumer(io.reactivex.rxjava3.core.d dVar) {
        Throwable thTerminate = terminate();
        if (thTerminate == null) {
            dVar.onComplete();
        } else if (thTerminate != ExceptionHelper.f65550a) {
            dVar.onError(thTerminate);
        }
    }

    public void tryTerminateConsumer(io.reactivex.rxjava3.core.h hVar) {
        Throwable thTerminate = terminate();
        if (thTerminate == null) {
            hVar.onComplete();
        } else if (thTerminate != ExceptionHelper.f65550a) {
            hVar.onError(thTerminate);
        }
    }

    public void tryTerminateConsumer(o oVar) {
        Throwable thTerminate = terminate();
        if (thTerminate == null) {
            oVar.onComplete();
        } else if (thTerminate != ExceptionHelper.f65550a) {
            oVar.onError(thTerminate);
        }
    }

    public void tryTerminateConsumer(q qVar) {
        Throwable thTerminate = terminate();
        if (thTerminate == null || thTerminate == ExceptionHelper.f65550a) {
            return;
        }
        qVar.onError(thTerminate);
    }

    public void tryTerminateConsumer(u10.c cVar) {
        Throwable thTerminate = terminate();
        if (thTerminate == null) {
            cVar.onComplete();
        } else if (thTerminate != ExceptionHelper.f65550a) {
            cVar.onError(thTerminate);
        }
    }
}
