package gf;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {
    public static byte[] a(InputStream inputStream) {
        return b(inputStream, 32768);
    }

    public static byte[] b(InputStream inputStream, int i11) throws IOException {
        if (i11 <= 0) {
            i11 = 32768;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i11);
        byte[] bArr = new byte[8192];
        while (true) {
            int i12 = inputStream.read(bArr);
            if (i12 <= 0) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i12);
        }
    }
}
