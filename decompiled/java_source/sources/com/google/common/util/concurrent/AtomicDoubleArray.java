package com.google.common.util.concurrent;

import com.google.common.primitives.ImmutableLongArray;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes4.dex */
public class AtomicDoubleArray implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLongArray longs;

    public AtomicDoubleArray(int i11) {
        this.longs = new AtomicLongArray(i11);
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i11 = 0; i11 < length; i11++) {
            jArr[i11] = Double.doubleToRawLongBits(dArr[i11]);
        }
        this.longs = new AtomicLongArray(jArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i11 = objectInputStream.readInt();
        ImmutableLongArray.b bVarBuilder = ImmutableLongArray.builder();
        for (int i12 = 0; i12 < i11; i12++) {
            bVarBuilder.a(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.longs = new AtomicLongArray(bVarBuilder.d().toArray());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i11 = 0; i11 < length; i11++) {
            objectOutputStream.writeDouble(get(i11));
        }
    }

    public double addAndGet(int i11, double d11) {
        long j11;
        double dLongBitsToDouble;
        do {
            j11 = this.longs.get(i11);
            dLongBitsToDouble = Double.longBitsToDouble(j11) + d11;
        } while (!this.longs.compareAndSet(i11, j11, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public final boolean compareAndSet(int i11, double d11, double d12) {
        return this.longs.compareAndSet(i11, Double.doubleToRawLongBits(d11), Double.doubleToRawLongBits(d12));
    }

    public final double get(int i11) {
        return Double.longBitsToDouble(this.longs.get(i11));
    }

    public final double getAndAdd(int i11, double d11) {
        long j11;
        double dLongBitsToDouble;
        do {
            j11 = this.longs.get(i11);
            dLongBitsToDouble = Double.longBitsToDouble(j11);
        } while (!this.longs.compareAndSet(i11, j11, Double.doubleToRawLongBits(dLongBitsToDouble + d11)));
        return dLongBitsToDouble;
    }

    public final double getAndSet(int i11, double d11) {
        return Double.longBitsToDouble(this.longs.getAndSet(i11, Double.doubleToRawLongBits(d11)));
    }

    public final void lazySet(int i11, double d11) {
        this.longs.lazySet(i11, Double.doubleToRawLongBits(d11));
    }

    public final int length() {
        return this.longs.length();
    }

    public final void set(int i11, double d11) {
        this.longs.set(i11, Double.doubleToRawLongBits(d11));
    }

    public String toString() {
        int length = length();
        int i11 = length - 1;
        if (i11 == -1) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder(length * 19);
        sb2.append('[');
        int i12 = 0;
        while (true) {
            sb2.append(Double.longBitsToDouble(this.longs.get(i12)));
            if (i12 == i11) {
                sb2.append(']');
                return sb2.toString();
            }
            sb2.append(',');
            sb2.append(' ');
            i12++;
        }
    }

    public final boolean weakCompareAndSet(int i11, double d11, double d12) {
        return this.longs.weakCompareAndSet(i11, Double.doubleToRawLongBits(d11), Double.doubleToRawLongBits(d12));
    }
}
