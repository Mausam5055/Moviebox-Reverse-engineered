package com.mbridge.msdk.foundation.download.utils;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class UnzipUtility {
    private static final int BUFFER_SIZE = 4096;
    private static final String TAG = "UnzipUtility";

    private void extractFile(ZipInputStream zipInputStream, String str) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        File file = new File(str);
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i11 = zipInputStream.read(bArr);
                        if (i11 == -1) {
                            bufferedOutputStream.close();
                            return;
                        }
                        bufferedOutputStream.write(bArr, 0, i11);
                    }
                } catch (IOException e11) {
                    e = e11;
                    throw new IOException(e);
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedOutputStream != null) {
                        bufferedOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedOutputStream = null;
            }
        } catch (IOException e12) {
            e = e12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:140:0x0192 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x017b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:? A[RETURN, SYNTHETIC] */
    public int unzip(String str, String str2) throws Throwable {
        Throwable th2;
        InputStream inputStream;
        IOException iOException;
        InputStream inputStream2;
        FileOutputStream fileOutputStream;
        IOException e11;
        Throwable th3;
        String canonicalPath;
        if (str == null || str2 == null) {
            return -1;
        }
        if (!str2.endsWith("/")) {
            str2 = str2 + "/";
        }
        File file = new File(str);
        if (!file.exists()) {
            return 1;
        }
        FileOutputStream fileOutputStream2 = null;
        InputStream inputStream3 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            ZipFile zipFile = new ZipFile(file);
            Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
            FileOutputStream fileOutputStream4 = null;
            while (enumerationEntries.hasMoreElements()) {
                try {
                    try {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        if (zipEntryNextElement == null) {
                            if (inputStream3 != null) {
                                try {
                                    inputStream3.close();
                                } catch (IOException e12) {
                                    o0.b(TAG, e12.getMessage());
                                }
                            }
                            if (fileOutputStream4 != null) {
                                try {
                                    fileOutputStream4.close();
                                } catch (IOException e13) {
                                    o0.b(TAG, e13.getMessage());
                                }
                            }
                            return 2;
                        }
                        String name = zipEntryNextElement.getName();
                        if (!TextUtils.isEmpty(name) && !name.startsWith("..") && !name.startsWith("../")) {
                            File file2 = new File(str2 + name);
                            try {
                                canonicalPath = file2.getCanonicalPath();
                            } catch (IOException unused) {
                                canonicalPath = "";
                            }
                            if (!TextUtils.isEmpty(canonicalPath) && canonicalPath.startsWith(str2) && !canonicalPath.startsWith("..") && !canonicalPath.startsWith("../")) {
                                if (zipEntryNextElement.isDirectory()) {
                                    file2.mkdirs();
                                } else {
                                    if (!file2.getParentFile().exists()) {
                                        file2.getParentFile().mkdirs();
                                    }
                                    fileOutputStream = new FileOutputStream(file2);
                                    try {
                                        inputStream3 = zipFile.getInputStream(zipEntryNextElement);
                                        byte[] bArr = new byte[1024];
                                        while (true) {
                                            int i11 = inputStream3.read(bArr, 0, 1024);
                                            if (i11 == -1) {
                                                break;
                                            }
                                            fileOutputStream.write(bArr, 0, i11);
                                            fileOutputStream.flush();
                                        }
                                        fileOutputStream4 = fileOutputStream;
                                    } catch (IOException e14) {
                                        e11 = e14;
                                        try {
                                            o0.b(TAG, e11.getMessage());
                                            if (inputStream3 != null) {
                                                try {
                                                    inputStream3.close();
                                                } catch (IOException e15) {
                                                    o0.b(TAG, e15.getMessage());
                                                }
                                            }
                                            if (fileOutputStream != null) {
                                                return 3;
                                            }
                                            try {
                                                fileOutputStream.close();
                                                return 3;
                                            } catch (IOException e16) {
                                                o0.b(TAG, e16.getMessage());
                                                return 3;
                                            }
                                        } catch (Throwable th4) {
                                            th2 = th4;
                                            inputStream = inputStream3;
                                            fileOutputStream2 = fileOutputStream;
                                            fileOutputStream = fileOutputStream2;
                                            inputStream3 = inputStream;
                                            th3 = th2;
                                            if (inputStream3 != null) {
                                                try {
                                                    inputStream3.close();
                                                } catch (IOException e17) {
                                                    o0.b(TAG, e17.getMessage());
                                                }
                                            }
                                            if (fileOutputStream == null) {
                                                throw th3;
                                            }
                                            try {
                                                fileOutputStream.close();
                                                throw th3;
                                            } catch (IOException e18) {
                                                o0.b(TAG, e18.getMessage());
                                                throw th3;
                                            }
                                        }
                                    } catch (Throwable th5) {
                                        th3 = th5;
                                        if (inputStream3 != null) {
                                            inputStream3.close();
                                        }
                                        if (fileOutputStream == null) {
                                            throw th3;
                                        }
                                        fileOutputStream.close();
                                        throw th3;
                                    }
                                }
                            }
                            if (inputStream3 != null) {
                                try {
                                    inputStream3.close();
                                } catch (IOException e19) {
                                    o0.b(TAG, e19.getMessage());
                                }
                            }
                            if (fileOutputStream4 != null) {
                                try {
                                    fileOutputStream4.close();
                                } catch (IOException e20) {
                                    o0.b(TAG, e20.getMessage());
                                }
                            }
                            return 2;
                        }
                        if (inputStream3 != null) {
                            try {
                                inputStream3.close();
                            } catch (IOException e21) {
                                o0.b(TAG, e21.getMessage());
                            }
                        }
                        if (fileOutputStream4 != null) {
                            try {
                                fileOutputStream4.close();
                            } catch (IOException e22) {
                                o0.b(TAG, e22.getMessage());
                            }
                        }
                        return 2;
                    } catch (IOException e23) {
                        iOException = e23;
                        inputStream2 = inputStream3;
                        fileOutputStream3 = fileOutputStream4;
                        fileOutputStream = fileOutputStream3;
                        inputStream3 = inputStream2;
                        e11 = iOException;
                        o0.b(TAG, e11.getMessage());
                        if (inputStream3 != null) {
                            inputStream3.close();
                        }
                        if (fileOutputStream != null) {
                            return 3;
                        }
                        fileOutputStream.close();
                        return 3;
                    }
                } catch (Throwable th6) {
                    th2 = th6;
                    inputStream = inputStream3;
                    fileOutputStream2 = fileOutputStream4;
                    fileOutputStream = fileOutputStream2;
                    inputStream3 = inputStream;
                    th3 = th2;
                    if (inputStream3 != null) {
                        inputStream3.close();
                    }
                    if (fileOutputStream == null) {
                        throw th3;
                    }
                    fileOutputStream.close();
                    throw th3;
                }
            }
            zipFile.close();
            if (inputStream3 != null) {
                try {
                    inputStream3.close();
                } catch (IOException e24) {
                    o0.b(TAG, e24.getMessage());
                }
            }
            if (fileOutputStream4 != null) {
                try {
                    fileOutputStream4.close();
                } catch (IOException e25) {
                    o0.b(TAG, e25.getMessage());
                }
            }
            return 0;
        } catch (IOException e26) {
            iOException = e26;
            inputStream2 = null;
        } catch (Throwable th7) {
            th2 = th7;
            inputStream = null;
        }
    }
}
