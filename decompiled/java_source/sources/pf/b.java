package pf;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static void a(Object obj) {
        if (obj == null) {
            return;
        }
        try {
            if (obj instanceof Closeable) {
                ((Closeable) obj).close();
            } else if (obj instanceof AutoCloseable) {
                ((AutoCloseable) obj).close();
            } else if (obj instanceof ZipFile) {
                ((ZipFile) obj).close();
            }
        } catch (Throwable unused) {
        }
    }

    public static void b(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 <= 0) {
                outputStream.flush();
                return;
            }
            outputStream.write(bArr, 0, i11);
        }
    }
}
