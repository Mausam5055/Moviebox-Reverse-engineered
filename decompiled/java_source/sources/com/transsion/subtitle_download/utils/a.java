package com.transsion.subtitle_download.utils;

import android.util.Log;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.GZIPInputStream;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f55043a = new a();

    private a() {
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0083 A[Catch: all -> 0x007f, FINALLY_INSNS, TryCatch #7 {all -> 0x007f, blocks: (B:37:0x007b, B:41:0x0083, B:43:0x0088), top: B:61:0x007b }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0088 A[Catch: all -> 0x007f, FINALLY_INSNS, TRY_LEAVE, TryCatch #7 {all -> 0x007f, blocks: (B:37:0x007b, B:41:0x0083, B:43:0x0088), top: B:61:0x007b }] */
    public final boolean a(String zipFilePath, String destFilePath) {
        GZIPInputStream gZIPInputStream;
        FileInputStream fileInputStream;
        Intrinsics.h(zipFilePath, "zipFilePath");
        Intrinsics.h(destFilePath, "destFilePath");
        byte[] bArr = new byte[1024];
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(destFilePath);
            try {
                fileInputStream = new FileInputStream(zipFilePath);
                try {
                    gZIPInputStream = new GZIPInputStream(fileInputStream);
                    while (true) {
                        try {
                            int i11 = gZIPInputStream.read(bArr);
                            if (i11 != -1) {
                                fileOutputStream2.write(bArr, 0, i11);
                            } else {
                                try {
                                    break;
                                } catch (Throwable th2) {
                                    th2.printStackTrace();
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileOutputStream = fileOutputStream2;
                            try {
                                b.f55044a.b("GzipUti --> unGzip() --> " + Log.getStackTraceString(th));
                                if (gZIPInputStream != null) {
                                    try {
                                    } catch (Throwable th4) {
                                        return false;
                                    }
                                }
                            } finally {
                                if (gZIPInputStream != null) {
                                    try {
                                        gZIPInputStream.close();
                                        if (fileOutputStream != null) {
                                            fileOutputStream.close();
                                        }
                                        if (fileInputStream != null) {
                                            fileInputStream.close();
                                        }
                                    } catch (Throwable th5) {
                                        th5.printStackTrace();
                                    }
                                } else {
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                }
                            }
                        }
                    }
                    gZIPInputStream.close();
                    fileOutputStream2.close();
                    fileInputStream.close();
                    return true;
                } catch (Throwable th6) {
                    th = th6;
                    gZIPInputStream = null;
                }
            } catch (Throwable th7) {
                th = th7;
                gZIPInputStream = null;
                fileInputStream = null;
            }
        } catch (Throwable th8) {
            th = th8;
            gZIPInputStream = null;
            fileInputStream = null;
        }
    }
}
