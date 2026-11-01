package androidx.profileinstaller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.FileLock;
import java.nio.charset.StandardCharsets;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes2.dex */
abstract class f {
    static int a(int i11) {
        return ((i11 + 7) & (-8)) / 8;
    }

    static byte[] b(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th2) {
                try {
                    deflaterOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            deflater.end();
            throw th4;
        }
    }

    static RuntimeException c(String str) {
        return new IllegalStateException(str);
    }

    static byte[] d(InputStream inputStream, int i11) throws IOException {
        byte[] bArr = new byte[i11];
        int i12 = 0;
        while (i12 < i11) {
            int i13 = inputStream.read(bArr, i12, i11 - i12);
            if (i13 < 0) {
                throw c("Not enough bytes to read: " + i11);
            }
            i12 += i13;
        }
        return bArr;
    }

    static byte[] e(InputStream inputStream, int i11, int i12) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i12];
            byte[] bArr2 = new byte[2048];
            int i13 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i13 < i11) {
                int i14 = inputStream.read(bArr2);
                if (i14 < 0) {
                    throw c("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i11 + " bytes");
                }
                inflater.setInput(bArr2, 0, i14);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i12 - iInflate);
                    i13 += i14;
                } catch (DataFormatException e11) {
                    throw c(e11.getMessage());
                }
            }
            if (i13 == i11) {
                if (!inflater.finished()) {
                    throw c("Inflater did not finish");
                }
                inflater.end();
                return bArr;
            }
            throw c("Didn't read enough bytes during decompression. expected=" + i11 + " actual=" + i13);
        } catch (Throwable th2) {
            inflater.end();
            throw th2;
        }
    }

    static String f(InputStream inputStream, int i11) {
        return new String(d(inputStream, i11), StandardCharsets.UTF_8);
    }

    static long g(InputStream inputStream, int i11) throws IOException {
        byte[] bArrD = d(inputStream, i11);
        long j11 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            j11 += ((long) (bArrD[i12] & 255)) << (i12 * 8);
        }
        return j11;
    }

    static int h(InputStream inputStream) {
        return (int) g(inputStream, 2);
    }

    static long i(InputStream inputStream) {
        return g(inputStream, 4);
    }

    static int j(InputStream inputStream) {
        return (int) g(inputStream, 1);
    }

    static int k(String str) {
        return str.getBytes(StandardCharsets.UTF_8).length;
    }

    static void l(InputStream inputStream, OutputStream outputStream, FileLock fileLock) throws IOException {
        if (fileLock == null || !fileLock.isValid()) {
            throw new IOException("Unable to acquire a lock on the underlying file channel.");
        }
        byte[] bArr = new byte[512];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i11);
            }
        }
    }

    static void m(OutputStream outputStream, byte[] bArr) throws IOException {
        q(outputStream, bArr.length);
        byte[] bArrB = b(bArr);
        q(outputStream, bArrB.length);
        outputStream.write(bArrB);
    }

    static void n(OutputStream outputStream, String str) throws IOException {
        outputStream.write(str.getBytes(StandardCharsets.UTF_8));
    }

    static void o(OutputStream outputStream, long j11, int i11) throws IOException {
        byte[] bArr = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12] = (byte) ((j11 >> (i12 * 8)) & 255);
        }
        outputStream.write(bArr);
    }

    static void p(OutputStream outputStream, int i11) throws IOException {
        o(outputStream, i11, 2);
    }

    static void q(OutputStream outputStream, long j11) throws IOException {
        o(outputStream, j11, 4);
    }

    static void r(OutputStream outputStream, int i11) throws IOException {
        o(outputStream, i11, 1);
    }
}
