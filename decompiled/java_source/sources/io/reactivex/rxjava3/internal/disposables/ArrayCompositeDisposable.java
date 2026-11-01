package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.c;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes7.dex */
public final class ArrayCompositeDisposable extends AtomicReferenceArray<c> implements c {
    private static final long serialVersionUID = 2746389416410565408L;

    public ArrayCompositeDisposable(int i11) {
        super(i11);
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        c andSet;
        if (get(0) != DisposableHelper.DISPOSED) {
            int length = length();
            for (int i11 = 0; i11 < length; i11++) {
                c cVar = get(i11);
                DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                if (cVar != disposableHelper && (andSet = getAndSet(i11, disposableHelper)) != disposableHelper && andSet != null) {
                    andSet.dispose();
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return get(0) == DisposableHelper.DISPOSED;
    }

    public c replaceResource(int i11, c cVar) {
        c cVar2;
        do {
            cVar2 = get(i11);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return null;
            }
        } while (!compareAndSet(i11, cVar2, cVar));
        return cVar2;
    }

    public boolean setResource(int i11, c cVar) {
        c cVar2;
        do {
            cVar2 = get(i11);
            if (cVar2 == DisposableHelper.DISPOSED) {
                cVar.dispose();
                return false;
            }
        } while (!compareAndSet(i11, cVar2, cVar));
        if (cVar2 == null) {
            return true;
        }
        cVar2.dispose();
        return true;
    }
}
