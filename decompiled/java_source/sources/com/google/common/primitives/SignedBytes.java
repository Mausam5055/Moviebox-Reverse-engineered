package com.google.common.primitives;

import com.google.common.base.m;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SignedBytes {

    private enum LexicographicalComparator implements Comparator<byte[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int iMin = Math.min(bArr.length, bArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int iCompare = Byte.compare(bArr[i11], bArr2[i11]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return bArr.length - bArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }
    }

    public static byte a(long j11) {
        byte b11 = (byte) j11;
        m.h(((long) b11) == j11, "Out of range: %s", j11);
        return b11;
    }
}
