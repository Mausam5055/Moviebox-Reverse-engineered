package io.reactivex.rxjava3.subjects;

import androidx.compose.animation.core.j0;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.g;
import io.reactivex.rxjava3.operators.h;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class UnicastSubject extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final h f65578a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final AtomicReference f65580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f65581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    volatile boolean f65582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile boolean f65583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Throwable f65584g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f65587j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicReference f65579b = new AtomicReference();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final AtomicBoolean f65585h = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final BasicIntQueueDisposable f65586i = new UnicastQueueDisposable();

    final class UnicastQueueDisposable extends BasicIntQueueDisposable<Object> {
        private static final long serialVersionUID = 7926949470189395511L;

        UnicastQueueDisposable() {
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
        public void clear() {
            UnicastSubject.this.f65578a.clear();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
        public void dispose() {
            if (UnicastSubject.this.f65582e) {
                return;
            }
            UnicastSubject.this.f65582e = true;
            UnicastSubject.this.K();
            UnicastSubject.this.f65579b.lazySet(null);
            if (UnicastSubject.this.f65586i.getAndIncrement() == 0) {
                UnicastSubject.this.f65579b.lazySet(null);
                UnicastSubject unicastSubject = UnicastSubject.this;
                if (unicastSubject.f65587j) {
                    return;
                }
                unicastSubject.f65578a.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.disposables.c
        public boolean isDisposed() {
            return UnicastSubject.this.f65582e;
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
        public boolean isEmpty() {
            return UnicastSubject.this.f65578a.isEmpty();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.g
        public Object poll() {
            return UnicastSubject.this.f65578a.poll();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable, io.reactivex.rxjava3.operators.c
        public int requestFusion(int i11) {
            if ((i11 & 2) == 0) {
                return 0;
            }
            UnicastSubject.this.f65587j = true;
            return 2;
        }
    }

    UnicastSubject(int i11, Runnable runnable, boolean z10) {
        this.f65578a = new h(i11);
        this.f65580c = new AtomicReference(runnable);
        this.f65581d = z10;
    }

    public static UnicastSubject J(int i11, Runnable runnable) {
        io.reactivex.rxjava3.internal.functions.a.a(i11, "capacityHint");
        Objects.requireNonNull(runnable, "onTerminate");
        return new UnicastSubject(i11, runnable, true);
    }

    @Override // io.reactivex.rxjava3.core.j
    protected void D(o oVar) {
        if (this.f65585h.get() || !this.f65585h.compareAndSet(false, true)) {
            EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), oVar);
            return;
        }
        oVar.onSubscribe(this.f65586i);
        this.f65579b.lazySet(oVar);
        if (this.f65582e) {
            this.f65579b.lazySet(null);
        } else {
            L();
        }
    }

    void K() {
        Runnable runnable = (Runnable) this.f65580c.get();
        if (runnable == null || !j0.a(this.f65580c, runnable, null)) {
            return;
        }
        runnable.run();
    }

    void L() {
        if (this.f65586i.getAndIncrement() != 0) {
            return;
        }
        o oVar = (o) this.f65579b.get();
        int iAddAndGet = 1;
        while (oVar == null) {
            iAddAndGet = this.f65586i.addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            } else {
                oVar = (o) this.f65579b.get();
            }
        }
        if (this.f65587j) {
            M(oVar);
        } else {
            N(oVar);
        }
    }

    void M(o oVar) {
        h hVar = this.f65578a;
        boolean z10 = this.f65581d;
        int iAddAndGet = 1;
        while (!this.f65582e) {
            boolean z11 = this.f65583f;
            if (!z10 && z11 && P(hVar, oVar)) {
                return;
            }
            oVar.onNext(null);
            if (z11) {
                O(oVar);
                return;
            } else {
                iAddAndGet = this.f65586i.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
        this.f65579b.lazySet(null);
    }

    void N(o oVar) {
        h hVar = this.f65578a;
        boolean z10 = this.f65581d;
        boolean z11 = true;
        int iAddAndGet = 1;
        while (!this.f65582e) {
            boolean z12 = this.f65583f;
            Object objPoll = this.f65578a.poll();
            boolean z13 = objPoll == null;
            if (z12) {
                if (!z10 && z11) {
                    if (P(hVar, oVar)) {
                        return;
                    } else {
                        z11 = false;
                    }
                }
                if (z13) {
                    O(oVar);
                    return;
                }
            }
            if (z13) {
                iAddAndGet = this.f65586i.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                oVar.onNext(objPoll);
            }
        }
        this.f65579b.lazySet(null);
        hVar.clear();
    }

    void O(o oVar) {
        this.f65579b.lazySet(null);
        Throwable th2 = this.f65584g;
        if (th2 != null) {
            oVar.onError(th2);
        } else {
            oVar.onComplete();
        }
    }

    boolean P(g gVar, o oVar) {
        Throwable th2 = this.f65584g;
        if (th2 == null) {
            return false;
        }
        this.f65579b.lazySet(null);
        gVar.clear();
        oVar.onError(th2);
        return true;
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        if (this.f65583f || this.f65582e) {
            return;
        }
        this.f65583f = true;
        K();
        L();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        ExceptionHelper.c(th2, "onError called with a null Throwable.");
        if (this.f65583f || this.f65582e) {
            pz.a.r(th2);
            return;
        }
        this.f65584g = th2;
        this.f65583f = true;
        K();
        L();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onNext(Object obj) {
        ExceptionHelper.c(obj, "onNext called with a null value.");
        if (this.f65583f || this.f65582e) {
            return;
        }
        this.f65578a.offer(obj);
        L();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(c cVar) {
        if (this.f65583f || this.f65582e) {
            cVar.dispose();
        }
    }
}
