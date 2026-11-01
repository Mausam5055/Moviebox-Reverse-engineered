package com.cloud.tmc.integration.utils.compress;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes3.dex */
public class CompressUtils {
    private static final int BUFF_SIZE = 1024;

    public static void untarGZip(File file, String str) throws IOException {
        byte[] bArr = new byte[1024];
        p00.b bVar = new p00.b(new BufferedInputStream(new FileInputStream(file)));
        while (true) {
            try {
                p00.a aVarQ = bVar.q();
                if (aVarQ == null) {
                    bVar.close();
                    return;
                }
                File file2 = new File(str + File.separator + aVarQ.f());
                if (aVarQ.h()) {
                    file2.mkdirs();
                } else {
                    File parentFile = file2.getParentFile();
                    if (parentFile != null && !parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                    while (true) {
                        try {
                            int i11 = bVar.read(bArr);
                            if (i11 == -1) {
                                break;
                            } else {
                                bufferedOutputStream.write(bArr, 0, i11);
                            }
                        } catch (Throwable th2) {
                            try {
                                bufferedOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                }
            } catch (Throwable th4) {
                try {
                    bVar.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        }
    }

    public static void unzip(File file, String str) throws IOException {
        File file2 = new File(str);
        if (!file2.exists() || !file2.isDirectory()) {
            file2.mkdirs();
        }
        String canonicalPath = file2.getCanonicalPath();
        ZipFile zipFile = new ZipFile(file);
        try {
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            while (enumerationEntries.hasMoreElements()) {
                ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                String name = zipEntryNextElement.getName();
                if (!name.contains("../")) {
                    File file3 = new File(str + File.separator + name);
                    if (file3.getCanonicalPath().startsWith(canonicalPath)) {
                        File parentFile = file3.getParentFile();
                        if (parentFile != null && !parentFile.exists()) {
                            parentFile.mkdirs();
                        }
                        if (!zipEntryNextElement.isDirectory()) {
                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                            try {
                                InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i11 = inputStream.read(bArr);
                                        if (i11 == -1) {
                                            break;
                                        } else {
                                            fileOutputStream.write(bArr, 0, i11);
                                        }
                                    }
                                    fileOutputStream.flush();
                                    inputStream.close();
                                    fileOutputStream.close();
                                } catch (Throwable th2) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th3) {
                                            th2.addSuppressed(th3);
                                        }
                                    }
                                    throw th2;
                                }
                            } catch (Throwable th4) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                }
                                throw th4;
                            }
                        } else if (!file3.exists()) {
                            file3.mkdirs();
                        }
                    }
                }
            }
            zipFile.close();
        } catch (Throwable th6) {
            try {
                zipFile.close();
            } catch (Throwable th7) {
                th6.addSuppressed(th7);
            }
            throw th6;
        }
    }
}
