package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public final class l extends io.reactivex.rxjava3.internal.operators.observable.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final lz.h f65445b;

    static final class a extends io.reactivex.rxjava3.internal.observers.a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final lz.h f65446f;

        a(io.reactivex.rxjava3.core.o oVar, lz.h hVar) {
            super(oVar);
            this.f65446f = hVar;
        }

        @Override // io.reactivex.rxjava3.core.o
        public void onNext(Object obj) {
            if (this.f65337d) {
                return;
            }
            if (this.f65338e != 0) {
                this.f65334a.onNext(null);
                return;
            }
            try {
                Object objApply = this.f65446f.apply(obj);
                Objects.requireNonNull(objApply, "The mapper function returned a null value.");
                this.f65334a.onNext(objApply);
            } catch (Throwable th2) {
                c(th2);
            }
        }

        @Override // io.reactivex.rxjava3.operators.g
        public Object poll() {
            Object objPoll = this.f65336c.poll();
            if (objPoll == null) {
                return null;
            }
            Object objApply = this.f65446f.apply(objPoll);
            Objects.requireNonNull(objApply, "The mapper function returned a null value.");
            return objApply;
        }

        @Override // io.reactivex.rxjava3.operators.c
        public int requestFusion(int i11) {
            return d(i11);
        }
    }

    public l(io.reactivex.rxjava3.core.m mVar, lz.h hVar) {
        super(mVar);
        this.f65445b = hVar;
    }

    @Override // io.reactivex.rxjava3.core.j
    public void D(io.reactivex.rxjava3.core.o oVar) {
        this.f65422a.subscribe(new a(oVar, this.f65445b));
    }
}
