package c6;

import java.io.File;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static long a(String str, String str2) {
        File fileC = c(str, str2);
        if (fileC.exists()) {
            return fileC.length();
        }
        File fileD = d(str, str2);
        if (fileD.exists()) {
            return fileD.length();
        }
        return 0L;
    }

    public static void b(RandomAccessFile randomAccessFile, byte[] bArr, int i11, int i12, String str) {
        try {
            randomAccessFile.seek(i11);
            randomAccessFile.write(bArr, 0, i12);
        } catch (Throwable unused) {
        }
    }

    public static File c(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }

    public static File d(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2 + ".temp");
    }
}
