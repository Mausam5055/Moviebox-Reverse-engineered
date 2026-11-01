package v10;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
final class c extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final retrofit2.d f76997a;

    private static final class a implements io.reactivex.rxjava3.disposables.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final retrofit2.d f76998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile boolean f76999b;

        a(retrofit2.d dVar) {
            this.f76998a = dVar;
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f76999b = true;
            this.f76998a.cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f76999b;
        }
    }

    c(retrofit2.d dVar) {
        this.f76997a = dVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(o oVar) {
        boolean z10;
        retrofit2.d dVarClone = this.f76997a.clone();
        a aVar = new a(dVarClone);
        oVar.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        try {
            j0 j0VarExecute = dVarClone.execute();
            if (!aVar.isDisposed()) {
                oVar.onNext(j0VarExecute);
            }
            if (aVar.isDisposed()) {
                return;
            }
            try {
                oVar.onComplete();
            } catch (Throwable th2) {
                th = th2;
                z10 = true;
                io.reactivex.rxjava3.exceptions.a.b(th);
                if (z10) {
                    pz.a.r(th);
                    return;
                }
                if (aVar.isDisposed()) {
                    return;
                }
                try {
                    oVar.onError(th);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    pz.a.r(new CompositeException(th, th3));
                }
            }
        } catch (Throwable th4) {
            th = th4;
            z10 = false;
        }
    }
}
