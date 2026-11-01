package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.internal.util.i;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e extends g implements o, io.reactivex.rxjava3.internal.util.e {
    protected volatile boolean cancelled;
    protected volatile boolean done;
    protected final o downstream;
    protected Throwable error;
    protected final io.reactivex.rxjava3.operators.f queue;

    public e(o oVar, io.reactivex.rxjava3.operators.f fVar) {
        this.downstream = oVar;
        this.queue = fVar;
    }

    @Override // io.reactivex.rxjava3.internal.util.e
    public abstract void accept(o oVar, Object obj);

    @Override // io.reactivex.rxjava3.internal.util.e
    public final boolean cancelled() {
        return this.cancelled;
    }

    @Override // io.reactivex.rxjava3.internal.util.e
    public final boolean done() {
        return this.done;
    }

    public final boolean enter() {
        return this.wip.getAndIncrement() == 0;
    }

    @Override // io.reactivex.rxjava3.internal.util.e
    public final Throwable error() {
        return this.error;
    }

    protected final void fastPathEmit(Object obj, boolean z10, io.reactivex.rxjava3.disposables.c cVar) {
        o oVar = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        if (this.wip.get() == 0 && this.wip.compareAndSet(0, 1)) {
            accept(oVar, obj);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            fVar.offer(obj);
            if (!enter()) {
                return;
            }
        }
        i.d(fVar, oVar, z10, cVar, this);
    }

    protected final void fastPathOrderedEmit(Object obj, boolean z10, io.reactivex.rxjava3.disposables.c cVar) {
        o oVar = this.downstream;
        io.reactivex.rxjava3.operators.f fVar = this.queue;
        if (this.wip.get() != 0 || !this.wip.compareAndSet(0, 1)) {
            fVar.offer(obj);
            if (!enter()) {
                return;
            }
        } else if (fVar.isEmpty()) {
            accept(oVar, obj);
            if (leave(-1) == 0) {
                return;
            }
        } else {
            fVar.offer(obj);
        }
        i.d(fVar, oVar, z10, cVar, this);
    }

    @Override // io.reactivex.rxjava3.internal.util.e
    public final int leave(int i11) {
        return this.wip.addAndGet(i11);
    }
}
