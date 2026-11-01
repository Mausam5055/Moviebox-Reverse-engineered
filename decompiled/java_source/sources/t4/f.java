package t4;

import android.util.Pair;
import com.airbnb.lottie.network.FileExtension;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f76060a;

    public f(d dVar) {
        this.f76060a = dVar;
    }

    private static String b(String str, FileExtension fileExtension, boolean z10) {
        String strTempExtension = z10 ? fileExtension.tempExtension() : fileExtension.extension;
        String strReplaceAll = str.replaceAll("\\W+", "");
        int length = 242 - strTempExtension.length();
        if (strReplaceAll.length() > length) {
            strReplaceAll = d(strReplaceAll, length);
        }
        return "lottie_cache_" + strReplaceAll + strTempExtension;
    }

    private File c(String str) {
        File file = new File(e(), b(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(e(), b(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        File file3 = new File(e(), b(str, FileExtension.GZIP, false));
        if (file3.exists()) {
            return file3;
        }
        return null;
    }

    private static String d(String str, int i11) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b11 : bArrDigest) {
                sb2.append(String.format("%02x", Byte.valueOf(b11)));
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException unused) {
            return str.substring(0, i11);
        }
    }

    private File e() {
        File fileA = this.f76060a.a();
        if (fileA.isFile()) {
            fileA.delete();
        }
        if (!fileA.exists()) {
            fileA.mkdirs();
        }
        return fileA;
    }

    Pair a(String str) {
        FileExtension fileExtension;
        try {
            File fileC = c(str);
            if (fileC == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(fileC);
            if (fileC.getAbsolutePath().endsWith(".zip")) {
                fileExtension = FileExtension.ZIP;
            } else {
                fileExtension = fileC.getAbsolutePath().endsWith(".gz") ? FileExtension.GZIP : FileExtension.JSON;
            }
            v4.f.a("Cache hit for " + str + " at " + fileC.getAbsolutePath());
            return new Pair(fileExtension, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    void f(String str, FileExtension fileExtension) {
        File file = new File(e(), b(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean zRenameTo = file.renameTo(file2);
        v4.f.a("Copying temp file to real file (" + file2 + ")");
        if (zRenameTo) {
            return;
        }
        v4.f.c("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
    }

    File g(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(e(), b(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i11 = inputStream.read(bArr);
                    if (i11 == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        inputStream.close();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i11);
                }
            } catch (Throwable th2) {
                fileOutputStream.close();
                throw th2;
            }
        } catch (Throwable th3) {
            inputStream.close();
            throw th3;
        }
    }
}
