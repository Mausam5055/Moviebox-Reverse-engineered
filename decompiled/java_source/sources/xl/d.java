package xl;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f78320a = Charset.forName(C.ASCII_NAME);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f78321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f78322c;

    static {
        Charset.forName("UTF-8");
        f78321b = "0123456789abcdef".toCharArray();
        f78322c = new char[64];
    }

    public static String a(byte[] bArr) {
        String str;
        char[] cArr = f78322c;
        synchronized (cArr) {
            for (int i11 = 0; i11 < bArr.length; i11++) {
                try {
                    byte b11 = bArr[i11];
                    int i12 = i11 * 2;
                    char[] cArr2 = f78321b;
                    cArr[i12] = cArr2[(b11 & 255) >>> 4];
                    cArr[i12 + 1] = cArr2[b11 & 15];
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            str = new String(cArr);
        }
        return str;
    }

    static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e11) {
                throw e11;
            } catch (Exception unused) {
            }
        }
    }

    public static void c(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                c(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
