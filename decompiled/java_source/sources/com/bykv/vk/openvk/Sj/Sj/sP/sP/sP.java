package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.os.SystemClock;
import android.provider.BaseColumns;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public class sP extends Sj {
    final Object Fmk;
    private volatile com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP TzV;
    private final int Zq;
    private volatile Dq.Sj dNu;
    final Object sef;
    private final b uvD;

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f20257a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f20258b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.bykv.vk.openvk.Sj.Sj.sP.sP.d f20259c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a f20260d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        e f20261e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        List f20262f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f20263g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        uA f20264h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        b f20265i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        Object f20266j;

        a() {
        }

        a a(int i11) {
            this.f20263g = i11;
            return this;
        }

        a b(com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("cache == null");
            }
            this.f20260d = aVar;
            return this;
        }

        a c(com.bykv.vk.openvk.Sj.Sj.sP.sP.d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("urls is empty");
            }
            this.f20259c = dVar;
            return this;
        }

        a d(b bVar) {
            this.f20265i = bVar;
            return this;
        }

        a e(e eVar) {
            throw new IllegalArgumentException("db == null");
        }

        a f(uA uAVar) {
            this.f20264h = uAVar;
            return this;
        }

        a g(Object obj) {
            this.f20266j = obj;
            return this;
        }

        a h(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.f20257a = str;
            return this;
        }

        a i(List list) {
            this.f20262f = list;
            return this;
        }

        sP j() {
            com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a aVar = this.f20260d;
            throw new IllegalArgumentException();
        }

        a k(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.f20258b = str;
            return this;
        }
    }

    public interface b {
        void a(sP sPVar);
    }

    public abstract class c extends SQLiteOpenHelper {
    }

    public class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f20267a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f20268b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f20269c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f20270d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f20271e;

        public d(String str, String str2, int i11, int i12, String str3) {
            this.f20267a = str;
            this.f20268b = str2;
            this.f20269c = i11;
            this.f20270d = i12;
            this.f20271e = str3;
        }
    }

    public abstract class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f20272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile SQLiteStatement f20273b;

        public abstract d c(String str, int i11);

        public abstract void d(d dVar);
    }

    public abstract class f implements BaseColumns {
        public static int a(boolean z10) {
            return z10 ? 1 : 0;
        }
    }

    sP(a aVar) {
        super(aVar.f20260d, aVar.f20261e);
        this.Zq = aVar.f20263g;
        this.uvD = aVar.f20265i;
        this.Fmk = this;
        this.Jcg = aVar.f20257a;
        this.Dq = aVar.f20258b;
        this.vS = aVar.f20262f;
        this.TEQ = aVar.f20259c;
        this.uA = aVar.f20264h;
        this.sef = aVar.f20266j;
    }

    /* JADX WARN: Code duplicated, block: B:92:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ed  */
    private void Sj(com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        File fileC = this.Sj.c(this.Dq);
        long length = fileC.length();
        int i11 = this.Zq;
        if (i11 > 0 && length >= i11) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                StringBuilder sb2 = new StringBuilder("no necessary to download for ");
                sb2.append(this.Dq);
                sb2.append(", cache file size: ");
                sb2.append(length);
                sb2.append(", max: ");
                sb2.append(this.Zq);
                return;
            }
            return;
        }
        int iVS = vS();
        d dVarC = this.sP.c(this.Dq, iVS);
        if (dVarC != null && length >= dVarC.f20269c) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                new StringBuilder("file download complete, key: ").append(this.Dq);
                return;
            }
            return;
        }
        HiB();
        int i12 = (int) length;
        h6.c cVarSj = Sj(aVar, i12, this.Zq, "GET");
        if (cVarSj == null) {
            return;
        }
        boolean z10 = true;
        Dq dq2 = null;
        try {
            HiB();
            String strH = f6.a.h(cVarSj, this.uA == null && com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20238d, true);
            if (strH != null) {
                throw new TKC(strH + ", rawKey: " + this.Jcg + ", url: " + aVar);
            }
            int iB = f6.a.b(cVarSj);
            if (dVarC != null && dVarC.f20269c != iB) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.e("TAG_PROXY_DownloadTask", "Content-Length not match, old: " + dVarC.f20269c + ", " + iB + ", key: " + this.Dq);
                }
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP("Content-Length not match, old length: " + dVarC.f20269c + ", new length: " + iB + ", rawKey: " + this.Jcg + ", currentUrl: " + aVar + ", previousInfo: " + dVarC.f20271e);
            }
            f6.a.d(cVarSj, this.sP, this.Dq, iVS);
            d dVarC2 = this.sP.c(this.Dq, iVS);
            int i13 = dVarC2 == null ? 0 : dVarC2.f20269c;
            InputStream inputStreamA = cVarSj.a();
            Dq dq3 = new Dq(fileC, com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20237c ? "rwd" : "rw");
            try {
                dq3.c(length);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    "preload start from: ".concat(String.valueOf(length));
                }
                byte[] bArr = new byte[8192];
                while (true) {
                    int i14 = inputStreamA.read(bArr);
                    if (i14 < 0) {
                        try {
                            TKC();
                            boolean z11 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
                            f6.a.m(cVarSj.a());
                            dq3.b();
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            dq2 = dq3;
                            z10 = false;
                            f6.a.m(cVarSj.a());
                            if (dq2 != null) {
                                dq2.b();
                            }
                            if (z10) {
                                Sj();
                                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                                    Log.w("TAG_PROXY_DownloadTask", "cancel call");
                                }
                            }
                            throw th;
                        }
                    }
                    HiB();
                    if (i14 > 0) {
                        dq3.d(bArr, 0, i14);
                        i12 += i14;
                        if (this.uA != null) {
                            synchronized (this.Fmk) {
                                this.Fmk.notifyAll();
                            }
                        }
                        this.TKC.addAndGet(i14);
                        Sj(i13, i12);
                    }
                    int i15 = this.Zq;
                    if (i15 > 0 && i12 >= i15) {
                        boolean z12 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
                        if (z12) {
                            Log.w("TAG_PROXY_DownloadTask", "download, more data received, currentCacheFileSize: " + i12 + ", max: " + this.Zq);
                        }
                        f6.a.m(cVarSj.a());
                        dq3.b();
                        Sj();
                        if (z12) {
                            Log.w("TAG_PROXY_DownloadTask", "cancel call");
                            return;
                        }
                        return;
                    }
                    HiB();
                }
            } catch (Throwable th3) {
                th = th3;
                dq2 = dq3;
                f6.a.m(cVarSj.a());
                if (dq2 != null) {
                    dq2.b();
                }
                if (z10) {
                    Sj();
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                        Log.w("TAG_PROXY_DownloadTask", "cancel call");
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private boolean TEQ() throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj {
        while (this.TEQ.b()) {
            HiB();
            com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVarD = this.TEQ.d();
            try {
                Sj(aVarD);
                return true;
            } catch (Dq.Sj e11) {
                this.dNu = e11;
                Jcg();
                return false;
            } catch (TKC unused) {
                aVarD.a();
                Jcg();
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP e12) {
                this.TzV = e12;
                return false;
            } catch (IOException e13) {
                if (e13 instanceof SocketTimeoutException) {
                    aVarD.b();
                }
                if (!sP()) {
                    Jcg();
                }
            } catch (Throwable unused2) {
                return false;
            }
        }
        return false;
    }

    Dq.Sj Dq() {
        return this.dNu;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.Sj.b(this.Dq);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            TEQ();
        } catch (Throwable unused) {
        }
        this.EjP.set(SystemClock.elapsedRealtime() - jElapsedRealtime);
        this.Sj.d(this.Dq);
        b bVar = this.uvD;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP uA() {
        return this.TzV;
    }
}
