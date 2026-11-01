package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.os.SystemClock;
import android.util.Log;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes2.dex */
class Jcg extends Sj {
    private final Socket Fmk;
    private final EjP Zq;
    private volatile boolean dNu;
    private final c sef;
    private volatile sP uvD;

    class a implements sP.b {
        a() {
        }

        @Override // com.bykv.vk.openvk.Sj.Sj.sP.sP.sP.b
        public void a(sP sPVar) {
            Jcg.this.TKC.addAndGet(sPVar.TKC.get());
            Jcg.this.EjP.addAndGet(sPVar.EjP.get());
            synchronized (sPVar.Fmk) {
                sPVar.Fmk.notifyAll();
            }
            if (sPVar.EjP()) {
                Jcg.this.Zq.f(Jcg.this.Jcg(), null);
            }
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a f20218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        sP.e f20219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Socket f20220c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c f20221d;

        b() {
        }

        b a(c cVar) {
            this.f20221d = cVar;
            return this;
        }

        b b(sP.e eVar) {
            throw new IllegalArgumentException("db == null");
        }

        b c(Socket socket) {
            if (socket == null) {
                throw new IllegalArgumentException("socket == null");
            }
            this.f20220c = socket;
            return this;
        }

        Jcg d() {
            throw new IllegalArgumentException();
        }
    }

    public interface c {
        void a(Jcg jcg);

        void b(Jcg jcg);
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final OutputStream f20222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f20223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f20224c;

        d(OutputStream outputStream, int i11) {
            this.f20222a = outputStream;
            this.f20223b = i11;
        }

        void a(byte[] bArr, int i11, int i12) throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP {
            if (this.f20224c) {
                return;
            }
            try {
                this.f20222a.write(bArr, i11, i12);
                this.f20224c = true;
            } catch (IOException e11) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP(e11);
            }
        }

        boolean b() {
            return this.f20224c;
        }

        int c() {
            return this.f20223b;
        }

        void d(byte[] bArr, int i11, int i12) throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP {
            try {
                this.f20222a.write(bArr, i11, i12);
                this.f20223b += i12;
            } catch (IOException e11) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP(e11);
            }
        }
    }

    Jcg(b bVar) {
        super(bVar.f20218a, bVar.f20219b);
        this.dNu = true;
        this.Fmk = bVar.f20220c;
        this.sef = bVar.f20221d;
        this.Zq = EjP.j();
    }

    private d Dq() {
        try {
            this.uA = uA.a(this.Fmk.getInputStream());
            this.Fmk.getOutputStream();
            if (this.uA.f20276c.f20277a == 1) {
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
            } else {
                TKC tkc = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20235a;
            }
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", "cache is null");
            }
            return null;
        } catch (uA.EjP e11) {
            f6.a.q(this.Fmk);
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e11));
            }
            if (this.Sj != null) {
                Jcg();
            }
            return null;
        } catch (IOException e12) {
            f6.a.q(this.Fmk);
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e12));
            }
            if (this.Sj != null) {
                Jcg();
            }
            return null;
        }
    }

    private void EjP(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        Dq dq2;
        uA();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int iC = dVar.c();
        h6.c cVarSj = Sj(aVar, iC, this.uA.f20276c.f20281e, "GET");
        if (cVarSj == null) {
            return;
        }
        Dq dq3 = null;
        int i11 = 0;
        try {
            String strH = f6.a.h(cVarSj, false, true);
            if (strH != null) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC(strH + ", rawKey: " + this.Jcg + ", url: " + aVar);
            }
            sP.d dVarC = this.sP.c(this.Dq, vS());
            int iB = f6.a.b(cVarSj);
            if (dVarC != null && dVarC.f20269c != iB) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.e("TAG_PROXY_ProxyTask", "Content-Length not match, old: " + dVarC.f20269c + ", " + iB + ", key: " + this.Dq);
                }
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP("Content-Length not match, old length: " + dVarC.f20269c + ", new length: " + iB + ", rawKey: " + this.Jcg + ", currentUrl: " + aVar + ", previousInfo: " + dVarC.f20271e);
            }
            if (!dVar.b()) {
                String strG = f6.a.g(cVarSj, iC);
                HiB();
                byte[] bytes = strG.getBytes(f6.a.f62341b);
                dVar.a(bytes, 0, bytes.length);
            }
            HiB();
            File fileA = this.Sj.a(this.Dq);
            if (!this.dNu || fileA == null || fileA.length() < dVar.c()) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.w("TAG_PROXY_ProxyTask", "can't write to cache file in network task, cache file size: " + fileA.length() + ", from: " + dVar.c());
                }
                dq2 = null;
            } else {
                f6.a.d(cVarSj, this.sP, this.Dq, this.uA.f20276c.f20277a);
                try {
                    dq2 = new Dq(fileA, "rwd");
                    try {
                        dq2.c(dVar.c());
                        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                            StringBuilder sb2 = new StringBuilder("can write to cache file in network task, cache file size: ");
                            sb2.append(fileA.length());
                            sb2.append(", from: ");
                            sb2.append(dVar.c());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dq3 = dq2;
                    }
                } catch (Dq.Sj unused) {
                    dq2 = null;
                }
            }
            sP.d dVarC2 = this.sP.c(this.Dq, vS());
            int i12 = dVarC2 == null ? 0 : dVarC2.f20269c;
            byte[] bArr = new byte[8192];
            InputStream inputStreamA = cVarSj.a();
            int i13 = 0;
            while (true) {
                try {
                    int i14 = inputStreamA.read(bArr);
                    if (i14 < 0) {
                        break;
                    }
                    HiB();
                    if (i14 > 0) {
                        dVar.d(bArr, 0, i14);
                        i13 += i14;
                        if (dq2 != null) {
                            try {
                                dq2.d(bArr, 0, i14);
                            } catch (Throwable th3) {
                                dq2.b();
                                try {
                                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                                        Log.e("TAG_PROXY_ProxyTask", "append to cache file error in network task!!! " + Log.getStackTraceString(th3));
                                    }
                                    dq2 = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            }
                        }
                        Sj(i12, dVar.c());
                    }
                    HiB();
                } catch (Throwable th5) {
                    th = th5;
                    dq3 = dq2;
                }
                th = th5;
                dq3 = dq2;
                i11 = i13;
                f6.a.m(cVarSj.a());
                if (dq3 != null) {
                    dq3.b();
                }
                this.TKC.addAndGet(i11);
                this.EjP.addAndGet(SystemClock.elapsedRealtime() - jElapsedRealtime);
                throw th;
            }
            boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
            TKC();
            f6.a.m(cVarSj.a());
            if (dq2 != null) {
                dq2.b();
            }
            this.TKC.addAndGet(i13);
            this.EjP.addAndGet(SystemClock.elapsedRealtime() - jElapsedRealtime);
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private void Sj(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        if ("HEAD".equalsIgnoreCase(this.uA.f20274a.f20284a)) {
            sP(dVar, aVar);
        } else {
            TKC(dVar, aVar);
        }
    }

    private void Sj(sP.d dVar, File file, d dVar2, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        final com.bytedance.sdk.component.Dq.Jcg jcg;
        sP sPVar;
        if (!dVar2.b()) {
            byte[] bArrSj = Sj(dVar, dVar2, aVar);
            HiB();
            if (bArrSj == null) {
                return;
            } else {
                dVar2.a(bArrSj, 0, bArrSj.length);
            }
        }
        Dq dq2 = null;
        if (dVar == null && (dVar = this.sP.c(this.Dq, this.uA.f20276c.f20277a)) == null) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
            }
            Sj(null, dVar2, aVar);
            dVar = this.sP.c(this.Dq, this.uA.f20276c.f20277a);
            if (dVar == null) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC("failed to get header, rawKey: " + this.Jcg + ", url: " + aVar);
            }
        }
        if (file.length() >= dVar.f20269c || !((sPVar = this.uvD) == null || sPVar.sP() || sPVar.EjP())) {
            jcg = null;
        } else {
            sP sPVarJ = new sP.a().b(this.Sj).e(this.sP).h(this.Jcg).k(this.Dq).c(new com.bykv.vk.openvk.Sj.Sj.sP.sP.d(aVar.f20254a)).i(this.vS).f(this.uA).d(new a()).j();
            this.uvD = sPVarJ;
            jcg = new com.bytedance.sdk.component.Dq.Jcg(sPVarJ, null, 10, 1);
            com.bytedance.sdk.component.Dq.vS.sP(new com.bytedance.sdk.component.Dq.Dq("processCacheNetWorkConcurrent") { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.Jcg.2
                @Override // java.lang.Runnable
                public void run() {
                    jcg.run();
                }
            });
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
            }
        }
        byte[] bArr = new byte[8192];
        try {
            Dq dq3 = new Dq(file, CampaignEx.JSON_KEY_AD_R);
            try {
                dq3.c(dVar2.c());
                int iMin = this.uA.f20276c.f20281e > 0 ? Math.min(dVar.f20269c, this.uA.f20276c.f20281e) : dVar.f20269c;
                while (dVar2.c() < iMin) {
                    HiB();
                    int iA = dq3.a(bArr);
                    if (iA <= 0) {
                        sP sPVar2 = this.uvD;
                        if (sPVar2 != null) {
                            com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP sPVarUA = sPVar2.uA();
                            if (sPVarUA != null) {
                                throw sPVarUA;
                            }
                            Dq.Sj sjDq = sPVar2.Dq();
                            if (sjDq != null) {
                                throw sjDq;
                            }
                        }
                        if (sPVar2 != null && !sPVar2.sP() && !sPVar2.EjP()) {
                            HiB();
                            synchronized (sPVar2.Fmk) {
                                try {
                                    sPVar2.Fmk.wait(1000L);
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                            Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                        }
                        throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC("illegal state download task has finished, rawKey: " + this.Jcg + ", url: " + aVar);
                    }
                    dVar2.d(bArr, 0, iA);
                    HiB();
                }
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    StringBuilder sb2 = new StringBuilder("read cache file complete: ");
                    sb2.append(dVar2.c());
                    sb2.append(", ");
                    sb2.append(iMin);
                }
                TKC();
                dq3.b();
                if (jcg != null) {
                    try {
                        jcg.get();
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                dq2 = dq3;
                if (dq2 != null) {
                    dq2.b();
                }
                if (jcg != null) {
                    try {
                        jcg.get();
                    } catch (Throwable unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean Sj(d dVar) throws Throwable {
        while (this.TEQ.b()) {
            HiB();
            com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVarD = this.TEQ.d();
            try {
                Sj(dVar, aVarD);
                return true;
            } catch (Dq.Sj e11) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e11));
                }
                this.dNu = false;
                Jcg();
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP e12) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e12));
                }
                return true;
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC unused) {
                aVarD.a();
                Jcg();
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP e13) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e13));
                }
                return false;
            } catch (IOException e14) {
                if (e14 instanceof SocketTimeoutException) {
                    aVarD.b();
                }
                if (!sP()) {
                    Jcg();
                } else if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    if ("Canceled".equalsIgnoreCase(e14.getMessage())) {
                        Log.w("TAG_PROXY_ProxyTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e14));
                    }
                }
            } catch (Exception e15) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e15));
                }
            }
        }
        return false;
    }

    private byte[] Sj(sP.d dVar, d dVar2, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws IOException {
        if (dVar != null) {
            boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b;
            return f6.a.f(dVar, dVar2.c()).getBytes(f6.a.f62341b);
        }
        h6.c cVarSj = Sj(aVar, 0, -1, "HEAD");
        if (cVarSj == null) {
            return null;
        }
        try {
            String strH = f6.a.h(cVarSj, false, false);
            if (strH == null) {
                sP.d dVarD = f6.a.d(cVarSj, this.sP, this.Dq, this.uA.f20276c.f20277a);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    Log.w("TAG_PROXY_ProxyTask", "get header from network");
                }
                byte[] bytes = f6.a.f(dVarD, dVar2.c()).getBytes(f6.a.f62341b);
                f6.a.m(cVarSj.a());
                return bytes;
            }
            throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC(strH + ", rawKey: " + this.Jcg + ", url: " + aVar);
        } catch (Throwable th2) {
            f6.a.m(cVarSj.a());
            throw th2;
        }
    }

    private void TKC(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        if (this.dNu) {
            File fileC = this.Sj.c(this.Dq);
            long length = fileC.length();
            sP.d dVarC = this.sP.c(this.Dq, this.uA.f20276c.f20277a);
            int iC = dVar.c();
            if (length > dVar.c()) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                    new StringBuilder("cache hit, remainSize: ").append(length - ((long) iC));
                }
                Sj(dVarC, fileC, dVar, aVar);
                return;
            }
        } else {
            dVar.c();
        }
        EjP(dVar, aVar);
    }

    private void sP(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP, IOException {
        byte[] bArrSj = Sj(this.sP.c(this.Dq, this.uA.f20276c.f20277a), dVar, aVar);
        if (bArrSj == null) {
            return;
        }
        dVar.a(bArrSj, 0, bArrSj.length);
    }

    private void uA() {
        sP sPVar = this.uvD;
        this.uvD = null;
        if (sPVar != null) {
            sPVar.Sj();
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj
    public void Sj() {
        super.Sj();
        uA();
    }

    @Override // java.lang.Runnable
    public void run() {
        sP.d dVarC;
        d dVarDq = Dq();
        if (dVarDq == null) {
            return;
        }
        c cVar = this.sef;
        if (cVar != null) {
            cVar.a(this);
        }
        this.Sj.b(this.Dq);
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20241g != 0 && ((dVarC = this.sP.c(this.Dq, this.uA.f20276c.f20277a)) == null || this.Sj.c(this.Dq).length() < dVarC.f20269c)) {
            this.Zq.f(Jcg(), this.Dq);
        }
        try {
            Sj(dVarDq);
        } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj e11) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e11));
            }
        } catch (Throwable th2) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f20236b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th2));
            }
        }
        this.Sj.d(this.Dq);
        this.Zq.f(Jcg(), null);
        Sj();
        f6.a.q(this.Fmk);
        c cVar2 = this.sef;
        if (cVar2 != null) {
            cVar2.b(this);
        }
    }
}
