package com.cloud.tmc.kernel.api.bytedata;

import java.util.ArrayDeque;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Pool<T> {
    protected final ArrayDeque<T> freeObjects;
    public final int max;
    public int peak;

    public interface Poolable {
        void reset();
    }

    public Pool() {
        this(16, Integer.MAX_VALUE);
    }

    public Pool(int i11) {
        this(i11, Integer.MAX_VALUE);
    }

    public Pool(int i11, int i12) {
        this.freeObjects = new ArrayDeque<>(i11);
        this.max = i12;
    }

    public void clear() {
        this.freeObjects.clear();
    }

    public void free(T t11) {
        if (t11 == null) {
            throw new IllegalArgumentException("object cannot be null.");
        }
        if (this.freeObjects.size() < this.max) {
            this.freeObjects.add(t11);
            this.peak = Math.max(this.peak, this.freeObjects.size());
        }
        if (t11 instanceof Poolable) {
            ((Poolable) t11).reset();
        }
    }

    public void freeAll(List<T> list) {
        if (list == null) {
            throw new IllegalArgumentException("object cannot be null.");
        }
        ArrayDeque<T> arrayDeque = this.freeObjects;
        int i11 = this.max;
        for (int i12 = 0; i12 < list.size(); i12++) {
            T t11 = list.get(i12);
            if (t11 != null) {
                if (arrayDeque.size() < i11) {
                    arrayDeque.add(t11);
                }
                if (t11 instanceof Poolable) {
                    ((Poolable) t11).reset();
                }
            }
        }
        this.peak = Math.max(this.peak, arrayDeque.size());
    }

    public int getFree() {
        return this.freeObjects.size();
    }

    protected abstract T newObject();

    public T obtain() {
        return this.freeObjects.size() == 0 ? newObject() : this.freeObjects.pop();
    }
}
