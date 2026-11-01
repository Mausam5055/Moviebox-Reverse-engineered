package xf;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class k {
    public static void a(h hVar, File file, long j11, j jVar) throws Throwable {
        h hVar2 = new h(hVar);
        hVar2.l(0);
        hVar2.m(file.length());
        hVar2.j(file.length());
        hVar2.k(j11);
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file));
            try {
                jVar.o(new h(hVar2));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i11 = bufferedInputStream2.read(bArr);
                    if (i11 == -1) {
                        jVar.k();
                        bufferedInputStream2.close();
                        return;
                    }
                    jVar.write(bArr, 0, i11);
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void b(i iVar, h hVar, j jVar) throws Throwable {
        InputStream inputStreamM;
        try {
            inputStreamM = iVar.m(hVar);
            try {
                jVar.o(new h(hVar));
                byte[] bArr = new byte[4096];
                while (true) {
                    int i11 = inputStreamM.read(bArr);
                    if (i11 == -1) {
                        jVar.k();
                        inputStreamM.close();
                        return;
                    }
                    jVar.write(bArr, 0, i11);
                }
            } catch (Throwable th2) {
                th = th2;
                if (inputStreamM != null) {
                    inputStreamM.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamM = null;
        }
    }
}
