package uu;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    private static String a(String str, String str2, String str3) {
        return new SimpleDateFormat("HH:mm:ss.SSS", Locale.getDefault()).format(new Date()) + " [" + str + "] " + str2 + ": " + str3 + "\n";
    }

    private static File b(Context context) {
        return new File(context.getFilesDir(), c());
    }

    private static String c() {
        return ou.a.s().C();
    }

    private static long d() {
        return ou.a.s().B();
    }

    public static void e(Context context, String str, String str2, String str3) {
        if (context == null) {
            return;
        }
        g(context.getApplicationContext(), a(str, str2, str3));
    }

    private static void f(File file) throws IOException {
        if (!file.exists() || file.length() < d()) {
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            long j11 = length / 2;
            fileInputStream.skip(j11);
            byte[] bArr = new byte[(int) (length - j11)];
            int i11 = fileInputStream.read(bArr);
            if (i11 <= 0) {
                fileInputStream.close();
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, false);
            try {
                fileOutputStream.write(bArr, 0, i11);
                fileOutputStream.close();
                fileInputStream.close();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                fileInputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    private static synchronized void g(Context context, String str) {
        File fileB = b(context);
        try {
            f(fileB);
            FileOutputStream fileOutputStream = new FileOutputStream(fileB, true);
            try {
                fileOutputStream.write(str.getBytes("UTF-8"));
                fileOutputStream.close();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException unused) {
        }
    }
}
