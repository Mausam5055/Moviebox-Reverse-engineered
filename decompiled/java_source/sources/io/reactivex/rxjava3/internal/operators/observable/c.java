package io.reactivex.rxjava3.internal.operators.observable;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends io.reactivex.rxjava3.internal.operators.observable.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final lz.f f65423b;

    static final class a extends io.reactivex.rxjava3.internal.observers.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final lz.f f65424f;

        a(io.reactivex.rxjava3.core.o oVar, lz.f fVar) {
            super(oVar);
            this.f65424f = fVar;
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            this.f65334a.onNext(obj);
            if (this.f65338e == 0) {
                try {
                    this.f65424f.accept(obj);
                } catch (Throwable th2) {
                    c(th2);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.g
        public Object poll() {
            Object objPoll = this.f65336c.poll();
            if (objPoll != null) {
                this.f65424f.accept(objPoll);
            }
            return objPoll;
        }

        @Override // io.reactivex.rxjava3.operators.c
        public int requestFusion(int i11) {
            return d(i11);
        }
    }

    public c(io.reactivex.rxjava3.core.m mVar, lz.f fVar) {
        super(mVar);
        this.f65423b = fVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(io.reactivex.rxjava3.core.o oVar) {
        this.f65422a.subscribe(new a(oVar, this.f65423b));
    }
}
