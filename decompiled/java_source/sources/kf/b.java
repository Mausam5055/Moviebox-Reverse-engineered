package kf;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i11 = inputStream.read(bArr, 0, 8192);
            if (i11 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    public static final boolean b(InputStream inputStream, byte[] bArr, int i11, int i12) throws IOException {
        int i13 = 0;
        while (i13 < i12) {
            int i14 = inputStream.read(bArr, i11 + i13, i12 - i13);
            if (i14 < 0) {
                return false;
            }
            i13 += i14;
        }
        return true;
    }
}
