package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements o, io.reactivex.rxjava3.operators.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final o f65334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected io.reactivex.rxjava3.disposables.c f65335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected io.reactivex.rxjava3.operators.b f65336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f65337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f65338e;

    public a(o oVar) {
        this.f65334a = oVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    protected final void c(Throwable th2) {
        io.reactivex.rxjava3.exceptions.a.b(th2);
        this.f65335b.dispose();
        onError(th2);
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
        this.f65336c.clear();
    }

    protected final int d(int i11) {
        io.reactivex.rxjava3.operators.b bVar = this.f65336c;
        if (bVar == null || (i11 & 4) != 0) {
            return 0;
        }
        int iRequestFusion = bVar.requestFusion(i11);
        if (iRequestFusion != 0) {
            this.f65338e = iRequestFusion;
        }
        return iRequestFusion;
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        this.f65335b.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.f65335b.isDisposed();
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        return this.f65336c.isEmpty();
    }

    @Override // io.reactivex.rxjava3.operators.g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        if (this.f65337d) {
            return;
        }
        this.f65337d = true;
        this.f65334a.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        if (this.f65337d) {
            pz.a.r(th2);
        } else {
            this.f65337d = true;
            this.f65334a.onError(th2);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public final void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.f65335b, cVar)) {
            this.f65335b = cVar;
            if (cVar instanceof io.reactivex.rxjava3.operators.b) {
                this.f65336c = (io.reactivex.rxjava3.operators.b) cVar;
            }
            if (b()) {
                this.f65334a.onSubscribe(this);
                a();
            }
        }
    }
}
