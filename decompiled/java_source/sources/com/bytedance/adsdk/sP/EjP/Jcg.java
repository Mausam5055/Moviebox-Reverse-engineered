package com.bytedance.adsdk.sP.EjP;

import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg {
    private final HiB Sj;

    public Jcg(HiB hiB) {
        this.Sj = hiB;
    }

    private File Sj() {
        File fileSj = this.Sj.Sj();
        if (fileSj.isFile()) {
            fileSj.delete();
        }
        if (!fileSj.exists()) {
            fileSj.mkdirs();
        }
        return fileSj;
    }

    private static String Sj(String str, TKC tkc, boolean z10) {
        StringBuilder sb2 = new StringBuilder("lottie_cache_");
        sb2.append(str.replaceAll("\\W+", ""));
        sb2.append(z10 ? tkc.Sj() : tkc.TKC);
        return sb2.toString();
    }

    private File sP(String str) throws FileNotFoundException {
        File file = new File(Sj(), Sj(str, TKC.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(Sj(), Sj(str, TKC.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    Pair<TKC, InputStream> Sj(String str) {
        try {
            File fileSP = sP(str);
            if (fileSP == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(fileSP);
            TKC tkc = fileSP.getAbsolutePath().endsWith(".zip") ? TKC.ZIP : TKC.JSON;
            fileSP.getAbsolutePath();
            return new Pair<>(tkc, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    File Sj(String str, InputStream inputStream, TKC tkc) throws IOException {
        File file = new File(Sj(), Sj(str, tkc, true));
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

    void Sj(String str, TKC tkc) {
        File file = new File(Sj(), Sj(str, tkc, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean zRenameTo = file.renameTo(file2);
        file2.toString();
        if (zRenameTo) {
            return;
        }
        file.getAbsolutePath();
        file2.getAbsolutePath();
    }
}
