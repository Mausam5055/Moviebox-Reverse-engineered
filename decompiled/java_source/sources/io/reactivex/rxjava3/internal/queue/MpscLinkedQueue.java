package io.reactivex.rxjava3.internal.queue;

import io.reactivex.rxjava3.operators.f;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
public final class MpscLinkedQueue implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference f65471a = new AtomicReference();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference f65472b = new AtomicReference();

    static final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
        private static final long serialVersionUID = 2404266111789071508L;
        private E value;

        LinkedQueueNode() {
        }

        LinkedQueueNode(E e11) {
            spValue(e11);
        }

        public E getAndNullValue() {
            E eLpValue = lpValue();
            spValue(null);
            return eLpValue;
        }

        public E lpValue() {
            return this.value;
        }

        public LinkedQueueNode<E> lvNext() {
            return get();
        }

        public void soNext(LinkedQueueNode<E> linkedQueueNode) {
            lazySet(linkedQueueNode);
        }

        public void spValue(E e11) {
            this.value = e11;
        }
    }

    public MpscLinkedQueue() {
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        d(linkedQueueNode);
        e(linkedQueueNode);
    }

    LinkedQueueNode a() {
        return (LinkedQueueNode) this.f65472b.get();
    }

    LinkedQueueNode b() {
        return (LinkedQueueNode) this.f65472b.get();
    }

    LinkedQueueNode c() {
        return (LinkedQueueNode) this.f65471a.get();
    }

    @Override // io.reactivex.rxjava3.operators.g
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    void d(LinkedQueueNode linkedQueueNode) {
        this.f65472b.lazySet(linkedQueueNode);
    }

    LinkedQueueNode e(LinkedQueueNode linkedQueueNode) {
        return (LinkedQueueNode) this.f65471a.getAndSet(linkedQueueNode);
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean isEmpty() {
        return b() == c();
    }

    @Override // io.reactivex.rxjava3.operators.g
    public boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(obj);
        e(linkedQueueNode).soNext(linkedQueueNode);
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.f, io.reactivex.rxjava3.operators.g
    public Object poll() {
        LinkedQueueNode linkedQueueNodeLvNext;
        LinkedQueueNode linkedQueueNodeA = a();
        LinkedQueueNode linkedQueueNodeLvNext2 = linkedQueueNodeA.lvNext();
        if (linkedQueueNodeLvNext2 != null) {
            Object andNullValue = linkedQueueNodeLvNext2.getAndNullValue();
            d(linkedQueueNodeLvNext2);
            return andNullValue;
        }
        if (linkedQueueNodeA == c()) {
            return null;
        }
        do {
            linkedQueueNodeLvNext = linkedQueueNodeA.lvNext();
        } while (linkedQueueNodeLvNext == null);
        Object andNullValue2 = linkedQueueNodeLvNext.getAndNullValue();
        d(linkedQueueNodeLvNext);
        return andNullValue2;
    }
}
