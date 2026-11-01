package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public final class ObservableGroupBy$GroupByObserver<T, K, V> extends AtomicInteger implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {
    static final Object NULL_KEY = new Object();
    private static final long serialVersionUID = -3688291656102519502L;
    final int bufferSize;
    final boolean delayError;
    final io.reactivex.rxjava3.core.o downstream;
    final lz.h keySelector;
    io.reactivex.rxjava3.disposables.c upstream;
    final lz.h valueSelector;
    final AtomicBoolean cancelled = new AtomicBoolean();
    final Map<Object, i> groups = new ConcurrentHashMap();

    public ObservableGroupBy$GroupByObserver(io.reactivex.rxjava3.core.o oVar, lz.h hVar, lz.h hVar2, int i11, boolean z10) {
        this.downstream = oVar;
        this.keySelector = hVar;
        this.valueSelector = hVar2;
        this.bufferSize = i11;
        this.delayError = z10;
        lazySet(1);
    }

    public void cancel(K k11) {
        if (k11 == null) {
            k11 = (K) NULL_KEY;
        }
        this.groups.remove(k11);
        if (decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public void dispose() {
        if (this.cancelled.compareAndSet(false, true) && decrementAndGet() == 0) {
            this.upstream.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.c
    public boolean isDisposed() {
        return this.cancelled.get();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onComplete() {
        ArrayList arrayList = new ArrayList(this.groups.values());
        this.groups.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((i) it.next()).onComplete();
        }
        this.downstream.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onError(Throwable th2) {
        ArrayList arrayList = new ArrayList(this.groups.values());
        this.groups.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((i) it.next()).onError(th2);
        }
        this.downstream.onError(th2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.o
    public void onNext(T t11) {
        boolean z10;
        try {
            Object objApply = this.keySelector.apply(t11);
            Object obj = objApply != null ? objApply : NULL_KEY;
            i iVarJ = this.groups.get(obj);
            if (iVarJ != null) {
                z10 = false;
            } else {
                if (this.cancelled.get()) {
                    return;
                }
                iVarJ = i.J(objApply, this.bufferSize, this, this.delayError);
                this.groups.put(obj, iVarJ);
                getAndIncrement();
                z10 = true;
            }
            try {
                Object objApply2 = this.valueSelector.apply(t11);
                Objects.requireNonNull(objApply2, "The value supplied is null");
                iVarJ.onNext(objApply2);
                if (z10) {
                    this.downstream.onNext(iVarJ);
                    if (iVarJ.f65440b.tryAbandon()) {
                        cancel(objApply);
                        iVarJ.onComplete();
                    }
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.upstream.dispose();
                if (z10) {
                    this.downstream.onNext(iVarJ);
                }
                onError(th2);
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            this.upstream.dispose();
            onError(th3);
        }
    }

    @Override // io.reactivex.rxjava3.core.o
    public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
        if (DisposableHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }
}
