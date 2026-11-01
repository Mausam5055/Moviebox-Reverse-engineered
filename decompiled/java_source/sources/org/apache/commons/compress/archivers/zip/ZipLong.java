package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;

/* JADX INFO: loaded from: classes7.dex */
public final class ZipLong implements Cloneable, Serializable {
    private static final long serialVersionUID = 1;
    private final long value;
    public static final ZipLong CFH_SIG = new ZipLong(33639248L);
    public static final ZipLong LFH_SIG = new ZipLong(67324752L);
    public static final ZipLong DD_SIG = new ZipLong(134695760L);
    static final ZipLong ZIP64_MAGIC = new ZipLong(4294967295L);
    public static final ZipLong SINGLE_SEGMENT_SPLIT_MARKER = new ZipLong(808471376L);
    public static final ZipLong AED_SIG = new ZipLong(134630224L);

    public ZipLong(int i11) {
        this.value = i11;
    }

    public ZipLong(long j11) {
        this.value = j11;
    }

    public ZipLong(byte[] bArr) {
        this(bArr, 0);
    }

    public ZipLong(byte[] bArr, int i11) {
        this.value = getValue(bArr, i11);
    }

    public static byte[] getBytes(long j11) {
        byte[] bArr = new byte[4];
        putLong(j11, bArr, 0);
        return bArr;
    }

    public static long getValue(byte[] bArr) {
        return getValue(bArr, 0);
    }

    public static long getValue(byte[] bArr, int i11) {
        return q00.b.b(bArr, i11, 4);
    }

    public static void putLong(long j11, byte[] bArr, int i11) {
        q00.b.c(bArr, j11, i11, 4);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e11) {
            throw new RuntimeException(e11);
        }
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ZipLong) && this.value == ((ZipLong) obj).getValue();
    }

    public byte[] getBytes() {
        return getBytes(this.value);
    }

    public int getIntValue() {
        return (int) this.value;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        return (int) this.value;
    }

    public void putLong(byte[] bArr, int i11) {
        putLong(this.value, bArr, i11);
    }

    public String toString() {
        return "ZipLong value: " + this.value;
    }
}
