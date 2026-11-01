package com.google.common.util.concurrent;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public class AtomicDouble extends Number implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLong value;

    public AtomicDouble() {
        this(0.0d);
    }

    public AtomicDouble(double d11) {
        this.value = new AtomicLong(Double.doubleToRawLongBits(d11));
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.value = new AtomicLong();
        set(objectInputStream.readDouble());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    public final double addAndGet(double d11) {
        long j11;
        double dLongBitsToDouble;
        do {
            j11 = this.value.get();
            dLongBitsToDouble = Double.longBitsToDouble(j11) + d11;
        } while (!this.value.compareAndSet(j11, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public final boolean compareAndSet(double d11, double d12) {
        return this.value.compareAndSet(Double.doubleToRawLongBits(d11), Double.doubleToRawLongBits(d12));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    public final double get() {
        return Double.longBitsToDouble(this.value.get());
    }

    public final double getAndAdd(double d11) {
        long j11;
        double dLongBitsToDouble;
        do {
            j11 = this.value.get();
            dLongBitsToDouble = Double.longBitsToDouble(j11);
        } while (!this.value.compareAndSet(j11, Double.doubleToRawLongBits(dLongBitsToDouble + d11)));
        return dLongBitsToDouble;
    }

    public final double getAndSet(double d11) {
        return Double.longBitsToDouble(this.value.getAndSet(Double.doubleToRawLongBits(d11)));
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    public final void lazySet(double d11) {
        this.value.lazySet(Double.doubleToRawLongBits(d11));
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    public final void set(double d11) {
        this.value.set(Double.doubleToRawLongBits(d11));
    }

    public String toString() {
        return Double.toString(get());
    }

    public final boolean weakCompareAndSet(double d11, double d12) {
        return this.value.weakCompareAndSet(Double.doubleToRawLongBits(d11), Double.doubleToRawLongBits(d12));
    }
}
