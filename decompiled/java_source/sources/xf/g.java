package xf;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicReference f78265a = new AtomicReference();

    public static void a(InputStream inputStream, byte[] bArr, int i11, int i12) throws IOException {
        if (i12 == 0) {
            return;
        }
        if (inputStream == null) {
            throw new NullPointerException("in == null");
        }
        if (bArr == null) {
            throw new NullPointerException("dst == null");
        }
        b.a(bArr.length, i11, i12);
        while (i12 > 0) {
            int i13 = inputStream.read(bArr, i11, i12);
            if (i13 < 0) {
                throw new EOFException();
            }
            i11 += i13;
            i12 -= i13;
        }
    }

    public static int b(InputStream inputStream) {
        byte[] bArr = new byte[1];
        if (inputStream.read(bArr, 0, 1) != -1) {
            return bArr[0] & 255;
        }
        return -1;
    }
}
