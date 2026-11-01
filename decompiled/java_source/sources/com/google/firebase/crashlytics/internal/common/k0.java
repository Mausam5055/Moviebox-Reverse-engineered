package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
abstract class k0 {
    private static void a(InputStream inputStream, File file) throws Throwable {
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int i11 = inputStream.read(bArr);
                    if (i11 <= 0) {
                        gZIPOutputStream2.finish();
                        CommonUtils.g(gZIPOutputStream2);
                        return;
                    }
                    gZIPOutputStream2.write(bArr, 0, i11);
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = gZIPOutputStream2;
                    CommonUtils.g(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    static void b(File file, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            j0 j0Var = (j0) it.next();
            InputStream stream = null;
            try {
                stream = j0Var.getStream();
                if (stream != null) {
                    a(stream, new File(file, j0Var.b()));
                }
            } catch (IOException unused) {
            } finally {
                CommonUtils.g(null);
            }
        }
    }
}
