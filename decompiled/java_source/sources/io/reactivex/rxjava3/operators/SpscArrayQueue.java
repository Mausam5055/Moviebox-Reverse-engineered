package io.reactivex.rxjava3.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes7.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements f {
    private static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;
    final AtomicLong consumerIndex;
    final int lookAheadStep;
    final int mask;
    final AtomicLong producerIndex;
    long producerLookAhead;

    public SpscArrayQueue(int i11) {
        super(io.reactivex.rxjava3.internal.util.g.a(i11));
        this.mask = length() - 1;
        this.producerIndex = new AtomicLong();
        this.consumerIndex = new AtomicLong();
        this.lookAheadStep = Math.min(i11 / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }

    int calcElementOffset(long j11) {
        return ((int) j11) & this.mask;
    }

    int calcElementOffset(long j11, int i11) {
        return ((int) j11) & i11;
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        return this.producerIndex.get() == this.consumerIndex.get();
    }

    E lvElement(int i11) {
        return get(i11);
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean offer(E e11) {
        if (e11 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        int i11 = this.mask;
        long j11 = this.producerIndex.get();
        int iCalcElementOffset = calcElementOffset(j11, i11);
        if (j11 >= this.producerLookAhead) {
            long j12 = ((long) this.lookAheadStep) + j11;
            if (lvElement(calcElementOffset(j12, i11)) == null) {
                this.producerLookAhead = j12;
            } else if (lvElement(iCalcElementOffset) != null) {
                return false;
            }
        }
        soElement(iCalcElementOffset, e11);
        soProducerIndex(j11 + 1);
        return true;
    }

    public boolean offer(E e11, E e12) {
        return offer(e11) && offer(e12);
    }

    @Override // io.reactivex.rxjava3.operators.f, io.reactivex.rxjava3.operators.g
    public E poll() {
        long j11 = this.consumerIndex.get();
        int iCalcElementOffset = calcElementOffset(j11);
        E eLvElement = lvElement(iCalcElementOffset);
        if (eLvElement == null) {
            return null;
        }
        soConsumerIndex(j11 + 1);
        soElement(iCalcElementOffset, null);
        return eLvElement;
    }

    void soConsumerIndex(long j11) {
        this.consumerIndex.lazySet(j11);
    }

    void soElement(int i11, E e11) {
        lazySet(i11, e11);
    }

    void soProducerIndex(long j11) {
        this.producerIndex.lazySet(j11);
    }
}
