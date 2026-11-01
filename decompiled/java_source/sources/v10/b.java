package v10;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
final class b extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final retrofit2.d f76992a;

    private static final class a implements io.reactivex.rxjava3.disposables.c, retrofit2.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final retrofit2.d f76993a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final o f76994b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private volatile boolean f76995c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f76996d = false;

        a(retrofit2.d dVar, o oVar) {
            this.f76993a = dVar;
            this.f76994b = oVar;
        }

        @Override // retrofit2.f
        public void a(retrofit2.d dVar, Throwable th2) {
            if (dVar.isCanceled()) {
                return;
            }
            try {
                this.f76994b.onError(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                pz.a.r(new CompositeException(th2, th3));
            }
        }

        @Override // retrofit2.f
        public void b(retrofit2.d dVar, j0 j0Var) {
            if (this.f76995c) {
                return;
            }
            try {
                this.f76994b.onNext(j0Var);
                if (this.f76995c) {
                    return;
                }
                this.f76996d = true;
                this.f76994b.onComplete();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                if (this.f76996d) {
                    pz.a.r(th2);
                    return;
                }
                if (this.f76995c) {
                    return;
                }
                try {
                    this.f76994b.onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    pz.a.r(new CompositeException(th2, th3));
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public void dispose() {
            this.f76995c = true;
            this.f76993a.cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return this.f76995c;
        }
    }

    b(retrofit2.d dVar) {
        this.f76992a = dVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(o oVar) {
        retrofit2.d dVarClone = this.f76992a.clone();
        a aVar = new a(dVarClone, oVar);
        oVar.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        dVarClone.h(aVar);
    }
}
