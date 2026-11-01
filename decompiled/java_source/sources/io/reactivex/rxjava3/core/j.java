package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBuffer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCreate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRetryBiPredicate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableZip;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class j<T> implements m {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f65315a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f65315a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f65315a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f65315a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f65315a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static j G(m mVar) {
        Objects.requireNonNull(mVar, "source is null");
        return mVar instanceof j ? pz.a.o((j) mVar) : pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.h(mVar));
    }

    public static j H(m mVar, m mVar2, m mVar3, lz.g gVar) {
        Objects.requireNonNull(mVar, "source1 is null");
        Objects.requireNonNull(mVar2, "source2 is null");
        Objects.requireNonNull(mVar3, "source3 is null");
        Objects.requireNonNull(gVar, "zipper is null");
        return I(Functions.c(gVar), false, e(), mVar, mVar2, mVar3);
    }

    public static j I(lz.h hVar, boolean z10, int i11, m... mVarArr) {
        Objects.requireNonNull(mVarArr, "sources is null");
        if (mVarArr.length == 0) {
            return k();
        }
        Objects.requireNonNull(hVar, "zipper is null");
        io.reactivex.rxjava3.internal.functions.a.a(i11, "bufferSize");
        return pz.a.o(new ObservableZip(mVarArr, null, hVar, i11, z10));
    }

    public static int e() {
        return e.a();
    }

    public static j g(l lVar) {
        Objects.requireNonNull(lVar, "source is null");
        return pz.a.o(new ObservableCreate(lVar));
    }

    private j i(lz.f fVar, lz.f fVar2, lz.a aVar, lz.a aVar2) {
        Objects.requireNonNull(fVar, "onNext is null");
        Objects.requireNonNull(fVar2, "onError is null");
        Objects.requireNonNull(aVar, "onComplete is null");
        Objects.requireNonNull(aVar2, "onAfterTerminate is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.d(this, fVar, fVar2, aVar, aVar2));
    }

    public static j k() {
        return pz.a.o(io.reactivex.rxjava3.internal.operators.observable.e.f65436a);
    }

    public static j l(Throwable th2) {
        Objects.requireNonNull(th2, "throwable is null");
        return m(Functions.b(th2));
    }

    public static j m(lz.k kVar) {
        Objects.requireNonNull(kVar, "supplier is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.f(kVar));
    }

    public static j r(Callable callable) {
        Objects.requireNonNull(callable, "callable is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.g(callable));
    }

    public static j t(Object obj) {
        Objects.requireNonNull(obj, "item is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.k(obj));
    }

    public final p A() {
        return pz.a.p(new io.reactivex.rxjava3.internal.operators.observable.o(this, null));
    }

    public final io.reactivex.rxjava3.disposables.c B(lz.f fVar, lz.f fVar2) {
        return C(fVar, fVar2, Functions.f65322c);
    }

    public final io.reactivex.rxjava3.disposables.c C(lz.f fVar, lz.f fVar2, lz.a aVar) {
        Objects.requireNonNull(fVar, "onNext is null");
        Objects.requireNonNull(fVar2, "onError is null");
        Objects.requireNonNull(aVar, "onComplete is null");
        LambdaObserver lambdaObserver = new LambdaObserver(fVar, fVar2, aVar, Functions.a());
        subscribe(lambdaObserver);
        return lambdaObserver;
    }

    protected abstract void D(o oVar);

    public final j E(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return pz.a.o(new ObservableSubscribeOn(this, scheduler));
    }

    public final e F(BackpressureStrategy backpressureStrategy) {
        Objects.requireNonNull(backpressureStrategy, "strategy is null");
        io.reactivex.rxjava3.internal.operators.flowable.c cVar = new io.reactivex.rxjava3.internal.operators.flowable.c(this);
        int i11 = a.f65315a[backpressureStrategy.ordinal()];
        if (i11 == 1) {
            return cVar.d();
        }
        if (i11 == 2) {
            return cVar.e();
        }
        if (i11 != 3) {
            return i11 != 4 ? cVar.b() : pz.a.m(new FlowableOnBackpressureError(cVar));
        }
        return cVar;
    }

    public final Object a() {
        io.reactivex.rxjava3.internal.observers.c cVar = new io.reactivex.rxjava3.internal.observers.c();
        subscribe(cVar);
        Object objA = cVar.a();
        if (objA != null) {
            return objA;
        }
        throw new NoSuchElementException();
    }

    public final j b(int i11) {
        return c(i11, i11);
    }

    public final j c(int i11, int i12) {
        return d(i11, i12, ArrayListSupplier.asSupplier());
    }

    public final j d(int i11, int i12, lz.k kVar) {
        io.reactivex.rxjava3.internal.functions.a.a(i11, "count");
        io.reactivex.rxjava3.internal.functions.a.a(i12, "skip");
        Objects.requireNonNull(kVar, "bufferSupplier is null");
        return pz.a.o(new ObservableBuffer(this, i11, i12, kVar));
    }

    public final j f(n nVar) {
        Objects.requireNonNull(nVar, "composer is null");
        return G(nVar.a(this));
    }

    public final j h(lz.f fVar) {
        Objects.requireNonNull(fVar, "onAfterNext is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.c(this, fVar));
    }

    public final j j(lz.f fVar) {
        lz.f fVarA = Functions.a();
        lz.a aVar = Functions.f65322c;
        return i(fVarA, fVar, aVar, aVar);
    }

    public final j n(lz.h hVar) {
        return o(hVar, false);
    }

    public final j o(lz.h hVar, boolean z10) {
        return p(hVar, z10, Integer.MAX_VALUE);
    }

    public final j p(lz.h hVar, boolean z10, int i11) {
        return q(hVar, z10, i11, e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j q(lz.h hVar, boolean z10, int i11, int i12) {
        Objects.requireNonNull(hVar, "mapper is null");
        io.reactivex.rxjava3.internal.functions.a.a(i11, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.a.a(i12, "bufferSize");
        if (!(this instanceof io.reactivex.rxjava3.operators.e)) {
            return pz.a.o(new ObservableFlatMap(this, hVar, z10, i11, i12));
        }
        Object obj = ((io.reactivex.rxjava3.operators.e) this).get();
        return obj == null ? k() : ObservableScalarXMap.a(obj, hVar);
    }

    public final io.reactivex.rxjava3.core.a s() {
        return pz.a.l(new io.reactivex.rxjava3.internal.operators.observable.j(this));
    }

    @Override // io.reactivex.rxjava3.core.m
    public final void subscribe(o oVar) {
        Objects.requireNonNull(oVar, "observer is null");
        try {
            o oVarX = pz.a.x(this, oVar);
            Objects.requireNonNull(oVarX, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            D(oVarX);
        } catch (NullPointerException e11) {
            throw e11;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            pz.a.r(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    public final j u(lz.h hVar) {
        Objects.requireNonNull(hVar, "mapper is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.l(this, hVar));
    }

    public final j v(Scheduler scheduler) {
        return w(scheduler, false, e());
    }

    public final j w(Scheduler scheduler, boolean z10, int i11) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.a.a(i11, "bufferSize");
        return pz.a.o(new ObservableObserveOn(this, scheduler, z10, i11));
    }

    public final j x(lz.h hVar) {
        Objects.requireNonNull(hVar, "fallbackSupplier is null");
        return pz.a.o(new io.reactivex.rxjava3.internal.operators.observable.m(this, hVar));
    }

    public final j y(lz.d dVar) {
        Objects.requireNonNull(dVar, "predicate is null");
        return pz.a.o(new ObservableRetryBiPredicate(this, dVar));
    }

    public final g z() {
        return pz.a.n(new io.reactivex.rxjava3.internal.operators.observable.n(this));
    }
}
