package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import h6.e;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
abstract class Sj implements Ym {
    private static final AtomicLong Fmk = new AtomicLong();
    protected volatile String Dq;
    protected g6.a HiB;
    protected volatile String Jcg;
    protected volatile com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a Sj;
    protected volatile d TEQ;
    protected final sP.e sP;
    protected volatile uA uA;
    protected volatile List<uA.c> vS;
    protected final AtomicInteger TKC = new AtomicInteger();
    protected final AtomicLong EjP = new AtomicLong();
    protected volatile boolean Ym = false;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    public final long f20225aa = Fmk.incrementAndGet();
    private final AtomicInteger sef = new AtomicInteger(0);
    private int Zq = -1;

    public Sj(com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a aVar, sP.e eVar) {
        this.Sj = aVar;
    }

    public boolean EjP() {
        return this.sef.get() == 2;
    }

    protected void HiB() throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj {
        if (sP()) {
            throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj();
        }
    }

    protected boolean Jcg() {
        return vS() == 1;
    }

    protected h6.c Sj(d.a aVar, int i11, int i12, String str) throws IOException {
        e eVarB = h6.d.a().b();
        h6.b bVar = new h6.b();
        HashMap map = new HashMap();
        bVar.f64373b = aVar.f20254a;
        bVar.f64372a = 0;
        if ("HEAD".equalsIgnoreCase(str)) {
            bVar.f64372a = 4;
        }
        List<uA.c> list = this.vS;
        if (list != null && !list.isEmpty()) {
            for (uA.c cVar : list) {
                if (!"Range".equalsIgnoreCase(cVar.f20287a) && !"Connection".equalsIgnoreCase(cVar.f20287a) && !"Proxy-Connection".equalsIgnoreCase(cVar.f20287a) && !HttpHeaders.HOST.equalsIgnoreCase(cVar.f20287a)) {
                    map.put(cVar.f20287a, cVar.f20288b);
                }
            }
        }
        String strE = f6.a.e(i11, i12);
        if (strE != null) {
            map.put("Range", strE);
        }
        if (a.f20239e) {
            map.put(HttpHeaders.CACHE_CONTROL, "no-cache");
        }
        EjP ejPJ = EjP.j();
        vS vSVarJ = vS.j();
        boolean z10 = this.uA == null;
        if (z10) {
            ejPJ.c();
        } else {
            vSVarJ.p();
        }
        if (z10) {
            ejPJ.l();
        } else {
            vSVarJ.n();
        }
        bVar.f64376e = map;
        if (!this.Ym) {
            return eVarB.a(bVar);
        }
        this.Ym = false;
        return null;
    }

    public void Sj() {
        this.sef.compareAndSet(0, 1);
    }

    protected void Sj(int i11, int i12) {
        if (i11 <= 0 || i12 < 0) {
            return;
        }
        int i13 = a.f20240f;
        int iVS = vS();
        if (i13 == 1 || (i13 == 2 && iVS == 1)) {
            int i14 = (int) ((i12 / i11) * 100.0f);
            if (i14 > 100) {
                i14 = 100;
            }
            synchronized (this) {
                try {
                    if (i14 <= this.Zq) {
                        return;
                    }
                    this.Zq = i14;
                    f6.a.o(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Sj.this.getClass();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    protected void TKC() {
        this.sef.compareAndSet(0, 2);
    }

    public boolean sP() {
        return this.sef.get() == 1;
    }

    protected int vS() {
        if (this.uA != null) {
            return this.uA.f20276c.f20277a;
        }
        return 0;
    }
}
