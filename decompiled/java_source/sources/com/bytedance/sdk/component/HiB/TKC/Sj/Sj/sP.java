package com.bytedance.sdk.component.HiB.TKC.Sj.Sj;

import android.util.Log;
import com.bytedance.sdk.component.utils.TEQ;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements com.bytedance.sdk.component.HiB.TKC {
    private long Sj;
    private Sj sP;

    public sP(File file, long j11, ExecutorService executorService) {
        this.Sj = j11;
        try {
            this.sP = Sj.Sj(file, 20210302, 1, j11, executorService);
        } catch (IOException e11) {
            Log.w("LruCountDiskCache", e11.toString());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.component.HiB.TKC
    public InputStream Sj(String str) {
        Sj sj2 = this.sP;
        if (sj2 == null) {
            return null;
        }
        try {
            Sj.TKC tkcSj = sj2.Sj(str);
            if (tkcSj != null) {
                return tkcSj.Sj(0);
            }
        } catch (IOException e11) {
            Log.w("LruCountDiskCache", e11.getMessage());
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    public boolean Sj(String str, byte[] bArr) throws Throwable {
        Sj sj2 = this.sP;
        if (sj2 == null || bArr == null || str == null) {
            return false;
        }
        Closeable closeable = null;
        Sj.C0212Sj c0212Sj = null;
        try {
            try {
                Sj.C0212Sj c0212SjSP = sj2.sP(str);
                try {
                    if (c0212SjSP == null) {
                        Log.w("LruCountDiskCache", "save " + str + " failed for edit null");
                        TEQ.Sj(null);
                        return false;
                    }
                    OutputStream outputStreamSj = c0212SjSP.Sj(0);
                    if (outputStreamSj != Sj.TKC) {
                        outputStreamSj.write(bArr);
                        c0212SjSP.Sj();
                        this.sP.Sj();
                        TEQ.Sj(outputStreamSj);
                        return true;
                    }
                    Log.w("LruCountDiskCache", "save " + str + " failed for null OutputStream");
                    TEQ.Sj(outputStreamSj);
                    return false;
                } catch (IOException e11) {
                    e = e11;
                    c0212Sj = c0212SjSP;
                    try {
                        Log.w("LruCountDiskCache", e.toString());
                        if (c0212Sj != null) {
                            try {
                                c0212Sj.sP();
                            } catch (IOException unused) {
                            }
                        }
                        TEQ.Sj(0);
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = closeable;
                        TEQ.Sj(closeable);
                        throw th;
                    }
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
            TEQ.Sj(closeable);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.HiB.Sj
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public boolean sP(String str) {
        try {
            try {
                Sj.TKC tkcSj = this.sP.Sj(str);
                boolean z10 = tkcSj != null;
                TEQ.Sj(tkcSj);
                return z10;
            } catch (IOException e11) {
                Log.w("LruCountDiskCache", e11.getMessage());
                TEQ.Sj(null);
                return false;
            }
        } catch (Throwable th2) {
            TEQ.Sj(null);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    @Override // com.bytedance.sdk.component.HiB.Sj
    /* JADX INFO: renamed from: sP, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public byte[] Sj(String str) throws Throwable {
        ?? r11;
        ByteArrayOutputStream byteArrayOutputStream;
        Sj sj2 = this.sP;
        ?? r12 = 0;
        if (sj2 != null) {
            try {
                if (str != 0) {
                    try {
                        Sj.TKC tkcSj = sj2.Sj((String) str);
                        if (tkcSj == null) {
                            TEQ.Sj(null);
                            TEQ.Sj(null);
                            return null;
                        }
                        str = tkcSj.Sj(0);
                        if (str != 0) {
                            try {
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i11 = str.read(bArr);
                                        if (i11 == -1) {
                                            break;
                                        }
                                        byteArrayOutputStream.write(bArr, 0, i11);
                                    }
                                } catch (IOException e11) {
                                    e = e11;
                                    r11 = str;
                                }
                            } catch (IOException e12) {
                                e = e12;
                                byteArrayOutputStream = null;
                                r11 = str;
                            } catch (Throwable th2) {
                                th = th2;
                                r12 = str;
                                TEQ.Sj(r12);
                                TEQ.Sj(0);
                                throw th;
                            }
                        } else {
                            byteArrayOutputStream = null;
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        TEQ.Sj(str);
                        TEQ.Sj(byteArrayOutputStream);
                        return byteArray;
                    } catch (IOException e13) {
                        e = e13;
                        r11 = 0;
                        byteArrayOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        TEQ.Sj(r12);
                        TEQ.Sj(0);
                        throw th;
                    }
                    Log.w("LruCountDiskCache", e.toString());
                    TEQ.Sj(r11);
                    TEQ.Sj(byteArrayOutputStream);
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        return null;
    }
}
