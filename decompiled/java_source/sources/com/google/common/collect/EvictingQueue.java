package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public final class EvictingQueue<E> extends r2 implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;
    final int maxSize;

    private EvictingQueue(int i11) {
        com.google.common.base.m.f(i11 >= 0, "maxSize (%s) must >= 0", i11);
        this.delegate = new ArrayDeque(i11);
        this.maxSize = i11;
    }

    public static <E> EvictingQueue<E> create(int i11) {
        return new EvictingQueue<>(i11);
    }

    @Override // com.google.common.collect.k2, java.util.Collection, java.util.Queue
    public boolean add(E e11) {
        com.google.common.base.m.o(e11);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e11);
        return true;
    }

    @Override // com.google.common.collect.k2, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size < this.maxSize) {
            return standardAddAll(collection);
        }
        clear();
        return g3.a(this, g3.n(collection, size - this.maxSize));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.k2, com.google.common.collect.q2
    /* JADX INFO: renamed from: delegate */
    public Queue<E> l() {
        return this.delegate;
    }

    @Override // java.util.Queue
    public boolean offer(E e11) {
        return add(e11);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    @Override // com.google.common.collect.k2, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return super.toArray();
    }
}
