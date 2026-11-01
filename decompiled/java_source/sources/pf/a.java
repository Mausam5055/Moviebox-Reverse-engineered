package pf;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {
    public static long a(File file) throws Throwable {
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            try {
                long jB = b(bufferedInputStream2);
                b.a(bufferedInputStream2);
                return jB;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                b.a(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static long b(InputStream inputStream) throws IOException {
        CRC32 crc32 = new CRC32();
        byte[] bArr = new byte[4096];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 <= 0) {
                return crc32.getValue();
            }
            crc32.update(bArr, 0, i11);
        }
    }
}
