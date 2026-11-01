package com.bytedance.sdk.component.Jcg.sP;

import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.vS;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends TKC {
    public File Sj;
    private volatile boolean TEQ;
    public File sP;

    public Sj(Ym ym2) {
        super(ym2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HiB() {
        try {
            this.Sj.delete();
        } catch (Throwable unused) {
        }
        try {
            this.sP.delete();
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean HiB(Map<String, String> map) {
        if (TextUtils.equals(map.get("Accept-Ranges"), "bytes") || TextUtils.equals(map.get("accept-ranges"), "bytes")) {
            return true;
        }
        String str = map.get("Content-Range");
        if (TextUtils.isEmpty(str)) {
            str = map.get("content-range");
        }
        return str != null && str.startsWith("bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean Jcg(Map<String, String> map) {
        return TextUtils.equals(map.get(HttpHeaders.CONTENT_ENCODING), "gzip");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long vS(Map<String, String> map) {
        String str;
        if (map.containsKey(BufferQueue.CONTENT_LENGTH)) {
            str = map.get(BufferQueue.CONTENT_LENGTH);
        } else {
            str = map.containsKey(HttpHeaders.CONTENT_LENGTH) ? map.get(HttpHeaders.CONTENT_LENGTH) : null;
        }
        if (TextUtils.isEmpty(str) || str == null) {
            return 0L;
        }
        try {
            return Long.valueOf(str).longValue();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public com.bytedance.sdk.component.Jcg.sP Sj() {
        Zq zqSP;
        RandomAccessFile randomAccessFile;
        long j11;
        InputStream inputStream;
        InputStream inputStreamTKC;
        byte[] bArr;
        int i11;
        long j12;
        File file = this.Sj;
        if (file != null && this.sP != null) {
            long j13 = 0;
            if (file.exists() && this.Sj.length() != 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                com.bytedance.sdk.component.Jcg.sP sPVar = new com.bytedance.sdk.component.Jcg.sP(true, 200, "Success", null, null, jCurrentTimeMillis, jCurrentTimeMillis);
                sPVar.Sj(this.Sj);
                return sPVar;
            }
            long length = this.sP.length();
            if (length < 0) {
                length = 0;
            }
            Fmk.Sj sj2 = new Fmk.Sj();
            sj2.Sj((Object) TKC());
            sP("Range", "bytes=" + length + "-");
            if (TextUtils.isEmpty(this.Dq)) {
                Log.e("DownloadExecutor", "execute: Url is Empty");
                return null;
            }
            try {
                sj2.sP(this.Dq);
                Sj(sj2);
                try {
                    com.bytedance.sdk.component.sP.Sj.sP sPVarSj = this.TKC.Sj(sj2.Sj().sP());
                    if (sPVarSj == null || (zqSP = sPVarSj.sP()) == null || !zqSP.EjP()) {
                        return null;
                    }
                    HashMap map = new HashMap();
                    vS vSVarJcg = zqSP.Jcg();
                    if (vSVarJcg != null) {
                        for (int i12 = 0; i12 < vSVarJcg.Sj(); i12++) {
                            map.put(vSVarJcg.Sj(i12), vSVarJcg.sP(i12));
                        }
                    }
                    com.bytedance.sdk.component.Jcg.sP sPVar2 = new com.bytedance.sdk.component.Jcg.sP(zqSP.EjP(), zqSP.TKC(), zqSP.HiB(), map, null, zqSP.sP(), zqSP.Sj());
                    long jSj = zqSP.vS().Sj();
                    if (jSj <= 0) {
                        jSj = vS(map);
                    }
                    long length2 = this.sP.length();
                    boolean zHiB = HiB(map);
                    int i13 = -1;
                    if (zHiB) {
                        jSj += length2;
                        String str = (String) map.get("Content-Range");
                        if (!TextUtils.isEmpty(str)) {
                            if (TextUtils.indexOf(str, "bytes " + length2 + "-" + (jSj - 1)) == -1) {
                                Objects.toString(this.sP);
                                HiB();
                                return null;
                            }
                        }
                        j13 = 0;
                    }
                    if (jSj > j13 && this.sP.exists() && this.sP.length() == jSj) {
                        if (!this.sP.renameTo(this.Sj)) {
                            return null;
                        }
                        sPVar2.Sj(this.Sj);
                        return sPVar2;
                    }
                    com.bytedance.sdk.component.Jcg.sP sPVar3 = sPVar2;
                    try {
                        try {
                            try {
                                randomAccessFile = new RandomAccessFile(this.sP, "rw");
                                try {
                                    if (zHiB) {
                                        randomAccessFile.seek(length);
                                        j11 = length;
                                    } else {
                                        randomAccessFile.setLength(0L);
                                        j11 = 0;
                                    }
                                    while (true) {
                                        int i14 = inputStreamTKC.read(bArr, i11, 16384 - i11);
                                        if (i14 == i13) {
                                            com.bytedance.sdk.component.Jcg.sP sPVar4 = sPVar3;
                                            if (i14 != 0) {
                                                randomAccessFile.seek(j11);
                                                randomAccessFile.write(bArr, 0, i11);
                                            }
                                            if (!zHiB || length == 0) {
                                                jSj = this.sP.length();
                                            }
                                            if (jSj <= 0 || !this.sP.exists() || this.sP.length() != jSj) {
                                                this.sP.length();
                                                try {
                                                    inputStreamTKC.close();
                                                } catch (Throwable unused) {
                                                }
                                                try {
                                                    randomAccessFile.close();
                                                    return null;
                                                } catch (Throwable unused2) {
                                                    return null;
                                                }
                                            }
                                            if (this.sP.renameTo(this.Sj)) {
                                                sPVar4.Sj(this.Sj);
                                                try {
                                                    inputStreamTKC.close();
                                                } catch (Throwable unused3) {
                                                }
                                                try {
                                                    randomAccessFile.close();
                                                } catch (Throwable unused4) {
                                                }
                                                return sPVar4;
                                            }
                                            try {
                                                inputStreamTKC.close();
                                            } catch (Throwable unused5) {
                                            }
                                            try {
                                                randomAccessFile.close();
                                                return null;
                                            } catch (Throwable unused6) {
                                                return null;
                                            }
                                        }
                                        i11 += i14;
                                        com.bytedance.sdk.component.Jcg.sP sPVar5 = sPVar3;
                                        j12 += (long) i14;
                                        if (j12 % 16384 == 0 || j12 == jSj - length) {
                                            randomAccessFile.seek(j11);
                                            randomAccessFile.write(bArr, 0, i11);
                                            j11 += (long) i11;
                                            i11 = 0;
                                        }
                                        if (this.TEQ) {
                                            throw new IOException("net is cancel");
                                        }
                                        sPVar3 = sPVar5;
                                        i13 = -1;
                                    }
                                } catch (Throwable unused7) {
                                }
                            } catch (Throwable unused8) {
                                randomAccessFile = null;
                            }
                            if (Jcg(map) && !(inputStreamTKC instanceof GZIPInputStream)) {
                                inputStreamTKC = new GZIPInputStream(inputStreamTKC);
                            }
                            bArr = new byte[16384];
                            i11 = 0;
                            j12 = 0;
                        } catch (Throwable unused9) {
                            inputStream = inputStreamTKC;
                            if (!zHiB) {
                                try {
                                    HiB();
                                } finally {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable unused10) {
                                        }
                                    }
                                    try {
                                        randomAccessFile.close();
                                    } catch (Throwable unused11) {
                                    }
                                }
                            }
                            try {
                                return null;
                            } catch (Throwable unused12) {
                                return null;
                            }
                        }
                        inputStreamTKC = zqSP.vS().TKC();
                    } catch (Throwable unused13) {
                        inputStream = null;
                    }
                } catch (IOException unused14) {
                    HiB();
                    return null;
                }
            } catch (IllegalArgumentException unused15) {
                Log.e("DownloadExecutor", "execute: Url is not a valid HTTP or HTTPS URL");
            }
        }
        return null;
    }

    public void Sj(final com.bytedance.sdk.component.Jcg.Sj.Sj sj2) {
        File file = this.Sj;
        if (file == null || this.sP == null) {
            if (sj2 != null) {
                sj2.Sj(this, new IOException("File info is null, please exec setFileInfo(String dir, String fileName)"));
                return;
            }
            return;
        }
        if (file.exists() && this.Sj.length() != 0 && sj2 != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.bytedance.sdk.component.Jcg.sP sPVar = new com.bytedance.sdk.component.Jcg.sP(true, 200, "Success", null, null, jCurrentTimeMillis, jCurrentTimeMillis);
            sPVar.Sj(this.Sj);
            sj2.Sj(this, sPVar);
            return;
        }
        long length = this.sP.length();
        final long j11 = length >= 0 ? length : 0L;
        Fmk.Sj sj3 = new Fmk.Sj();
        sj3.Sj((Object) TKC());
        sP("Range", "bytes=" + j11 + "-");
        if (TextUtils.isEmpty(this.Dq)) {
            sj2.Sj(this, new IOException("Url is Empty"));
            return;
        }
        try {
            sj3.sP(this.Dq);
            if (!TextUtils.isEmpty(this.HiB)) {
                sj3.Sj(this.HiB);
            }
            int i11 = this.vS;
            if (i11 > 0) {
                sj3.Sj(i11);
            }
            Sj(sj3);
            com.bytedance.sdk.component.sP.Sj.sP sPVarSj = this.TKC.Sj(sj3.Sj().sP());
            if (sPVarSj == null) {
                sj2.Sj(this, new IOException("new call error"));
            } else {
                sPVarSj.Sj(new com.bytedance.sdk.component.sP.Sj.TKC() { // from class: com.bytedance.sdk.component.Jcg.sP.Sj.1
                    @Override // com.bytedance.sdk.component.sP.Sj.TKC
                    public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar2, Zq zq2) throws IOException {
                        RandomAccessFile randomAccessFile;
                        long j12;
                        byte[] bArr;
                        long j13;
                        int i12;
                        boolean z10;
                        if (sj2 == null) {
                            return;
                        }
                        HashMap map = new HashMap();
                        if (zq2 == null) {
                            return;
                        }
                        vS vSVarJcg = zq2.Jcg();
                        if (vSVarJcg != null) {
                            for (int i13 = 0; i13 < vSVarJcg.Sj(); i13++) {
                                map.put(vSVarJcg.Sj(i13), vSVarJcg.sP(i13));
                            }
                        }
                        com.bytedance.sdk.component.Jcg.sP sPVar3 = new com.bytedance.sdk.component.Jcg.sP(zq2.EjP(), zq2.TKC(), zq2.HiB(), map, null, zq2.sP(), zq2.Sj());
                        if (!zq2.EjP()) {
                            sj2.Sj(Sj.this, sPVar3);
                            return;
                        }
                        long jSj = zq2.vS().Sj();
                        if (jSj <= 0) {
                            jSj = Sj.vS(map);
                        }
                        boolean zHiB = Sj.HiB(map);
                        int i14 = -1;
                        if (zHiB) {
                            jSj += j11;
                            String str = (String) map.get("Content-Range");
                            if (!TextUtils.isEmpty(str)) {
                                String str2 = "bytes " + j11 + "-" + (jSj - 1);
                                if (TextUtils.indexOf(str, str2) == -1) {
                                    Sj.this.HiB();
                                    sj2.Sj(Sj.this, new IOException("The Content-Range Header is invalid Assume[" + str2 + "] vs Real[" + str + "], please remove the temporary file [" + Sj.this.sP + "]."));
                                    return;
                                }
                            }
                        }
                        if (jSj > 0 && Sj.this.sP.exists() && Sj.this.sP.length() == jSj) {
                            Sj sj4 = Sj.this;
                            if (!sj4.sP.renameTo(sj4.Sj)) {
                                sj2.Sj(Sj.this, new IOException("Rename fail"));
                                return;
                            } else {
                                sPVar3.Sj(Sj.this.Sj);
                                sj2.Sj(Sj.this, sPVar3);
                                return;
                            }
                        }
                        InputStream inputStreamTKC = null;
                        try {
                            try {
                                try {
                                    randomAccessFile = new RandomAccessFile(Sj.this.sP, "rw");
                                    try {
                                        if (zHiB) {
                                            randomAccessFile.seek(j11);
                                            j12 = j11;
                                        } else {
                                            randomAccessFile.setLength(0L);
                                            j12 = 0;
                                        }
                                        while (true) {
                                            int i15 = inputStreamTKC.read(bArr, i12, 16384 - i12);
                                            if (i15 == i14) {
                                                InputStream inputStream = inputStreamTKC;
                                                if (i12 != 0) {
                                                    randomAccessFile.seek(j12);
                                                    z10 = false;
                                                    randomAccessFile.write(bArr, 0, i12);
                                                } else {
                                                    z10 = false;
                                                }
                                                if (!zHiB) {
                                                    jSj = Sj.this.sP.length();
                                                }
                                                if (jSj > 0 && Sj.this.sP.exists() && Sj.this.sP.length() == jSj) {
                                                    Sj sj5 = Sj.this;
                                                    if (sj5.sP.renameTo(sj5.Sj)) {
                                                        sPVar3.Sj(Sj.this.Sj);
                                                        sj2.Sj(Sj.this, sPVar3);
                                                    } else {
                                                        sj2.Sj(Sj.this, new IOException("Rename fail"));
                                                    }
                                                } else {
                                                    com.bytedance.sdk.component.Jcg.Sj.Sj sj6 = sj2;
                                                    Sj sj7 = Sj.this;
                                                    StringBuilder sb2 = new StringBuilder(" tempFile.length() == fileSize is");
                                                    sb2.append(Sj.this.sP.length() == jSj ? true : z10);
                                                    sj6.Sj(sj7, new IOException(sb2.toString()));
                                                }
                                                try {
                                                    inputStream.close();
                                                } catch (Throwable unused) {
                                                }
                                                try {
                                                    randomAccessFile.close();
                                                    return;
                                                } catch (Throwable unused2) {
                                                    return;
                                                }
                                            }
                                            i12 += i15;
                                            InputStream inputStream2 = inputStreamTKC;
                                            j13 += (long) i15;
                                            try {
                                                if (j13 % 16384 == 0 || j13 == jSj - j11) {
                                                    randomAccessFile.seek(j12);
                                                    randomAccessFile.write(bArr, 0, i12);
                                                    j12 += (long) i12;
                                                    i12 = 0;
                                                }
                                                if (Sj.this.TEQ) {
                                                    throw new IOException("net is cancel");
                                                }
                                                inputStreamTKC = inputStream2;
                                                i14 = -1;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                inputStreamTKC = inputStream2;
                                                try {
                                                    sj2.Sj(Sj.this, new IOException(th.getMessage()));
                                                    if (!zHiB) {
                                                        Sj.this.HiB();
                                                    }
                                                    try {
                                                        return;
                                                    } catch (Throwable unused3) {
                                                        return;
                                                    }
                                                } finally {
                                                    if (inputStreamTKC != null) {
                                                        try {
                                                            inputStreamTKC.close();
                                                        } catch (Throwable unused4) {
                                                        }
                                                    }
                                                    try {
                                                        randomAccessFile.close();
                                                    } catch (Throwable unused5) {
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Throwable unused6) {
                                    }
                                } catch (Throwable unused7) {
                                    randomAccessFile = null;
                                }
                                bArr = new byte[16384];
                                j13 = 0;
                                i12 = 0;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                            inputStreamTKC = zq2.vS().TKC();
                            if (Sj.Jcg(map) && !(inputStreamTKC instanceof GZIPInputStream)) {
                                inputStreamTKC = new GZIPInputStream(inputStreamTKC);
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }

                    @Override // com.bytedance.sdk.component.sP.Sj.TKC
                    public void Sj(com.bytedance.sdk.component.sP.Sj.sP sPVar2, IOException iOException) {
                        com.bytedance.sdk.component.Jcg.Sj.Sj sj4 = sj2;
                        if (sj4 != null) {
                            sj4.Sj(Sj.this, iOException);
                        }
                        Sj.this.HiB();
                    }
                });
            }
        } catch (IllegalArgumentException unused) {
            sj2.Sj(this, new IOException("Url is not a valid HTTP or HTTPS URL"));
        }
    }

    public void Sj(String str, String str2) {
        File file = new File(str);
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        this.Sj = new File(str, str2);
        this.sP = new File(str, str2 + ".temp");
    }

    @Override // com.bytedance.sdk.component.Jcg.sP.TKC
    public void sP() {
        this.TEQ = true;
        super.sP();
    }
}
