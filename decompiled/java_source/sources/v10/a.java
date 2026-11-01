package v10;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.adapter.rxjava3.HttpException;
import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
final class a extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f76989a;

    /* JADX INFO: renamed from: v10.a$a, reason: collision with other inner class name */
    private static class C0943a implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o f76990a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f76991b;

        C0943a(o oVar) {
            this.f76990a = oVar;
        }

        @Override // io.reactivex.rxjava3.core.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(j0 j0Var) {
            if (j0Var.e()) {
                this.f76990a.onNext(j0Var.a());
                return;
            }
            this.f76991b = true;
            HttpException httpException = new HttpException(j0Var);
            try {
                this.f76990a.onError(httpException);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                pz.a.r(new CompositeException(httpException, th2));
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            if (this.f76991b) {
                return;
            }
            this.f76990a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            if (!this.f76991b) {
                this.f76990a.onError(th2);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th2);
            pz.a.r(assertionError);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f76990a.onSubscribe(cVar);
        }
    }

    a(j jVar) {
        this.f76989a = jVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(o oVar) {
        this.f76989a.subscribe(new C0943a(oVar));
    }
}
