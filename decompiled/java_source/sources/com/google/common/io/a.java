package com.google.common.io;

import com.google.common.base.m;
import com.google.common.math.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final OutputStream f30881a = new C0413a();

    /* JADX INFO: renamed from: com.google.common.io.a$a, reason: collision with other inner class name */
    class C0413a extends OutputStream {
        C0413a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i11) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            m.o(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i11, int i12) {
            m.o(bArr);
            m.t(i11, i12 + i11, bArr.length);
        }
    }

    private static byte[] a(Queue queue, int i11) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) queue.remove();
        if (bArr.length == i11) {
            return bArr;
        }
        int length = i11 - bArr.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i11);
        while (length > 0) {
            byte[] bArr2 = (byte[]) queue.remove();
            int iMin = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, bArrCopyOf, i11 - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    public static byte[] b(InputStream inputStream) {
        m.o(inputStream);
        return c(inputStream, new ArrayDeque(20), 0);
    }

    private static byte[] c(InputStream inputStream, Queue queue, int i11) throws IOException {
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(i11) * 2));
        while (i11 < 2147483639) {
            int iMin2 = Math.min(iMin, 2147483639 - i11);
            byte[] bArr = new byte[iMin2];
            queue.add(bArr);
            int i12 = 0;
            while (i12 < iMin2) {
                int i13 = inputStream.read(bArr, i12, iMin2 - i12);
                if (i13 == -1) {
                    return a(queue, i11);
                }
                i12 += i13;
                i11 += i13;
            }
            iMin = d.i(iMin, iMin < 4096 ? 4 : 2);
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
