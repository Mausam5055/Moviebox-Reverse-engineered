package com.google.common.hash;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
final class LongAdder extends Striped64 implements Serializable, h {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    @Override // com.google.common.hash.h
    public void add(long j11) {
        int length;
        Striped64.b bVar;
        Striped64.b[] bVarArr = this.cells;
        if (bVarArr == null) {
            long j12 = this.base;
            if (casBase(j12, j12 + j11)) {
                return;
            }
        }
        int[] iArr = Striped64.threadHashCode.get();
        boolean zA = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j13 = bVar.f30876a;
            zA = bVar.a(j13, j13 + j11);
            if (zA) {
                return;
            }
        }
        retryUpdate(j11, iArr, zA);
    }

    public void decrement() {
        add(-1L);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return sum();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return sum();
    }

    @Override // com.google.common.hash.Striped64
    final long fn(long j11, long j12) {
        return j11 + j12;
    }

    @Override // com.google.common.hash.h
    public void increment() {
        add(1L);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) sum();
    }

    @Override // java.lang.Number
    public long longValue() {
        return sum();
    }

    public void reset() {
        internalReset(0L);
    }

    @Override // com.google.common.hash.h
    public long sum() {
        long j11 = this.base;
        Striped64.b[] bVarArr = this.cells;
        if (bVarArr != null) {
            for (Striped64.b bVar : bVarArr) {
                if (bVar != null) {
                    j11 += bVar.f30876a;
                }
            }
        }
        return j11;
    }

    public long sumThenReset() {
        long j11 = this.base;
        Striped64.b[] bVarArr = this.cells;
        this.base = 0L;
        if (bVarArr != null) {
            for (Striped64.b bVar : bVarArr) {
                if (bVar != null) {
                    j11 += bVar.f30876a;
                    bVar.f30876a = 0L;
                }
            }
        }
        return j11;
    }

    public String toString() {
        return Long.toString(sum());
    }
}
