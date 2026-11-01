package v10;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.j0;

/* JADX INFO: loaded from: classes7.dex */
final class e extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f77002a;

    private static class a implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o f77003a;

        a(o oVar) {
            this.f77003a = oVar;
        }

        @Override // io.reactivex.rxjava3.core.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(j0 j0Var) {
            this.f77003a.onNext(d.b(j0Var));
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onComplete() {
            this.f77003a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onError(Throwable th2) {
            try {
                this.f77003a.onNext(d.a(th2));
                this.f77003a.onComplete();
            } catch (Throwable th3) {
                try {
                    this.f77003a.onError(th3);
                } catch (Throwable th4) {
                    io.reactivex.rxjava3.exceptions.a.b(th4);
                    pz.a.r(new CompositeException(th3, th4));
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f77003a.onSubscribe(cVar);
        }
    }

    e(j jVar) {
        this.f77002a = jVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(o oVar) {
        this.f77002a.subscribe(new a(oVar));
    }
}
