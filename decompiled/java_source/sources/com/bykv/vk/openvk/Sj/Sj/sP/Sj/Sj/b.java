package com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sP;
import com.bytedance.sdk.component.sP.Sj.uvD;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private File f20188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f20189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f20190e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RandomAccessFile f20194i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final TKC f20195j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile long f20186a = -2147483648L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f20187b = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile long f20191f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f20192g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f20193h = false;

    class a implements com.bytedance.sdk.component.sP.Sj.TKC {
        a() {
        }

        /* JADX WARN: Code duplicated, block: B:76:0x0190 A[Catch: all -> 0x01b7, TryCatch #0 {all -> 0x01b7, blocks: (B:74:0x018b, B:76:0x0190, B:77:0x0193, B:79:0x019e, B:81:0x01b2), top: B:90:0x018b }] */
        @Override // com.bytedance.sdk.component.sP.Sj.TKC
        public void Sj(sP sPVar, Zq zq2) {
            uvD uvdVS;
            InputStream inputStream;
            long length;
            long j11;
            if (zq2 == null) {
                b.this.f20193h = false;
                b bVar = b.this;
                bVar.f20186a = bVar.f20191f;
                return;
            }
            InputStream inputStreamTKC = null;
            try {
                b.this.f20193h = zq2.EjP();
                if (b.this.f20193h) {
                    uvdVS = zq2.vS();
                    try {
                        if (b.this.f20193h && uvdVS != null) {
                            b.this.f20186a = uvdVS.Sj() + b.this.f20190e;
                            inputStreamTKC = uvdVS.TKC();
                        }
                        inputStream = inputStreamTKC;
                        if (inputStream == null) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable unused) {
                                    return;
                                }
                            }
                            if (uvdVS != null) {
                                uvdVS.close();
                            }
                            zq2.close();
                            if (b.this.f20193h && b.this.f20188c.length() == b.this.f20186a) {
                                b.this.p();
                                return;
                            }
                            return;
                        }
                        try {
                            byte[] bArr = new byte[8192];
                            long j12 = b.this.f20190e;
                            int i11 = 0;
                            long j13 = 0;
                            while (true) {
                                int i12 = inputStream.read(bArr, i11, 8192 - i11);
                                if (i12 == -1) {
                                    break;
                                }
                                i11 += i12;
                                j13 += (long) i12;
                                boolean z10 = j13 % PlaybackStateCompat.ACTION_PLAY_FROM_URI == 0 || j13 == b.this.f20186a - b.this.f20190e;
                                long unused2 = b.this.f20186a;
                                long unused3 = b.this.f20190e;
                                b.this.f20195j.sef();
                                b.this.f20195j.Fmk();
                                if (z10) {
                                    synchronized (b.this.f20187b) {
                                        c6.b.b(b.this.f20194i, bArr, Long.valueOf(j12).intValue(), i11, b.this.f20195j.sef());
                                    }
                                    j12 += (long) i11;
                                    i11 = 0;
                                }
                            }
                            long unused4 = b.this.f20190e;
                            long unused5 = b.this.f20186a;
                            long unused6 = b.this.f20186a;
                            long unused7 = b.this.f20190e;
                            b.this.f20195j.Fmk();
                            inputStreamTKC = inputStream;
                        } catch (Throwable unused8) {
                            try {
                                b.this.f20193h = false;
                                b bVar2 = b.this;
                                bVar2.f20186a = bVar2.f20191f;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Throwable unused9) {
                                        return;
                                    }
                                }
                                if (uvdVS != null) {
                                    uvdVS.close();
                                }
                                zq2.close();
                                if (b.this.f20193h) {
                                    if (length == j11) {
                                        return;
                                    } else {
                                        return;
                                    }
                                }
                                return;
                            } finally {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                        if (uvdVS != null) {
                                            uvdVS.close();
                                        }
                                        zq2.close();
                                        if (b.this.f20193h && b.this.f20188c.length() == b.this.f20186a) {
                                            b.this.p();
                                        }
                                    } catch (Throwable unused10) {
                                    }
                                } else {
                                    if (uvdVS != null) {
                                        uvdVS.close();
                                    }
                                    zq2.close();
                                    if (b.this.f20193h) {
                                        b.this.p();
                                    }
                                }
                            }
                        }
                    } catch (Throwable unused11) {
                        inputStream = null;
                    }
                } else {
                    b.this.f20193h = false;
                    b bVar3 = b.this;
                    bVar3.f20186a = bVar3.f20191f;
                    uvdVS = null;
                }
                if (inputStreamTKC != null) {
                    try {
                        inputStreamTKC.close();
                    } catch (Throwable unused12) {
                        return;
                    }
                }
                if (uvdVS != null) {
                    uvdVS.close();
                }
                zq2.close();
                if (b.this.f20193h && b.this.f20188c.length() == b.this.f20186a) {
                    b.this.p();
                }
            } catch (Throwable unused13) {
                uvdVS = null;
                inputStream = null;
            }
        }

        @Override // com.bytedance.sdk.component.sP.Sj.TKC
        public void Sj(sP sPVar, IOException iOException) {
            b.this.f20193h = false;
            b.this.f20186a = -1L;
        }
    }

    public b(Context context, TKC tkc) {
        this.f20190e = 0L;
        this.f20194i = null;
        this.f20195j = tkc;
        try {
            this.f20188c = c6.b.d(tkc.sP(), tkc.sef());
            this.f20189d = c6.b.c(tkc.sP(), tkc.sef());
            if (d()) {
                this.f20194i = new RandomAccessFile(this.f20189d, CampaignEx.JSON_KEY_AD_R);
            } else {
                this.f20194i = new RandomAccessFile(this.f20188c, "rw");
            }
            if (d()) {
                return;
            }
            this.f20190e = this.f20188c.length();
            i();
        } catch (Throwable unused) {
            tkc.Fmk();
        }
    }

    private boolean d() {
        return this.f20189d.exists();
    }

    private long e() {
        return d() ? this.f20189d.length() : this.f20188c.length();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        synchronized (this.f20187b) {
            if (d()) {
                this.f20195j.Fmk();
                this.f20195j.sef();
                return;
            }
            try {
                if (!this.f20188c.renameTo(this.f20189d)) {
                    throw new IOException("Error renaming file " + this.f20188c + " to " + this.f20189d + " for completion!");
                }
                RandomAccessFile randomAccessFile = this.f20194i;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f20194i = new RandomAccessFile(this.f20189d, "rw");
                this.f20195j.sef();
                this.f20195j.Fmk();
            } catch (Throwable th2) {
                th2.getMessage();
            }
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a
    public long TKC() {
        if (d()) {
            this.f20186a = this.f20189d.length();
        } else {
            synchronized (this.f20187b) {
                int i11 = 0;
                while (this.f20186a == -2147483648L) {
                    try {
                        i11 += 15;
                        try {
                            this.f20187b.wait(5L);
                            if (i11 > 20000) {
                                return -1L;
                            }
                        } catch (InterruptedException unused) {
                            throw new IOException("total length InterruptException");
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
        return this.f20186a;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a
    public int a(long j11, byte[] bArr, int i11, int i12) throws IOException {
        try {
            if (j11 == this.f20186a) {
                return -1;
            }
            int i13 = 0;
            int i14 = 0;
            while (!this.f20192g) {
                synchronized (this.f20187b) {
                    try {
                        if (j11 < e()) {
                            this.f20194i.seek(j11);
                            i14 = this.f20194i.read(bArr, i11, i12);
                        } else {
                            i13 += 33;
                            this.f20187b.wait(33L);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (i14 > 0) {
                    return i14;
                }
                if (i13 >= 20000) {
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th3) {
            if (th3 instanceof IOException) {
                throw th3;
            }
            throw new IOException();
        }
    }

    public void i() {
        Ym.Sj sjSP = t5.b.a() != null ? t5.b.a().sP() : new Ym.Sj("v_cache");
        long jUvD = this.f20195j.uvD();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        sjSP.Sj(jUvD, timeUnit).sP(this.f20195j.dNu(), timeUnit).TKC(this.f20195j.TzV(), timeUnit);
        Ym ymSj = sjSP.Sj();
        this.f20195j.sef();
        ymSj.Sj(new Fmk.Sj().Sj("RANGE", "bytes=" + this.f20190e + "-").sP(this.f20195j.Fmk()).Sj().Sj("videoLoadWhenPlaying").Sj(9).sP()).Sj(new a());
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a
    public void sP() {
        try {
            if (!this.f20192g) {
                this.f20194i.close();
            }
            File file = this.f20188c;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.f20189d;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable unused) {
        }
        this.f20192g = true;
    }
}
