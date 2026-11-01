package io.reactivex.rxjava3.internal.disposables;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.exceptions.ProtocolViolationException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import pz.a;

/* JADX INFO: loaded from: classes.dex */
public enum DisposableHelper implements c {
    DISPOSED;

    public static boolean dispose(AtomicReference<c> atomicReference) {
        c andSet;
        c cVar = atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (cVar == disposableHelper || (andSet = atomicReference.getAndSet(disposableHelper)) == disposableHelper) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.dispose();
        return true;
    }

    public static boolean isDisposed(c cVar) {
        return cVar == DISPOSED;
    }

    public static boolean replace(AtomicReference<c> atomicReference, c cVar) {
        c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar == null) {
                    return false;
                }
                cVar.dispose();
                return false;
            }
        } while (!j0.a(atomicReference, cVar2, cVar));
        return true;
    }

    public static void reportDisposableSet() {
        a.r(new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean set(AtomicReference<c> atomicReference, c cVar) {
        c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar == null) {
                    return false;
                }
                cVar.dispose();
                return false;
            }
        } while (!j0.a(atomicReference, cVar2, cVar));
        if (cVar2 == null) {
            return true;
        }
        cVar2.dispose();
        return true;
    }

    public static boolean setOnce(AtomicReference<c> atomicReference, c cVar) {
        Objects.requireNonNull(cVar, "d is null");
        if (j0.a(atomicReference, null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        reportDisposableSet();
        return false;
    }

    public static boolean trySet(AtomicReference<c> atomicReference, c cVar) {
        if (j0.a(atomicReference, null, cVar)) {
            return true;
        }
        if (atomicReference.get() != DISPOSED) {
            return false;
        }
        cVar.dispose();
        return false;
    }

    public static boolean validate(c cVar, c cVar2) {
        if (cVar2 == null) {
            a.r(new NullPointerException("next is null"));
            return false;
        }
        if (cVar == null) {
            return true;
        }
        cVar2.dispose();
        reportDisposableSet();
        return false;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return true;
    }
}
