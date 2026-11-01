package com.bykv.vk.openvk.Sj.Sj.sP.EjP;

import android.graphics.SurfaceTexture;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.Dq.uA;
import com.bytedance.sdk.component.utils.LqL;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.logging.type.LogSeverity;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements t5.a, b.a, b.InterfaceC0188b, b.c, b.d, b.e, b.f, b.g, LqL.Sj {
    private int EjP;
    private volatile boolean FPG;
    private LqL Fmk;
    private SurfaceTexture Sj;
    private boolean TEQ;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private ArrayList<Runnable> f20160dx;
    private SurfaceHolder sP;
    private boolean sU;
    private boolean uA;
    private boolean uP;
    private static final SparseIntArray kF = new SparseIntArray();

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private static boolean f20158jb = false;
    private int TKC = 0;
    private boolean HiB = false;
    private volatile b vS = null;
    private final boolean Jcg = false;
    private boolean Dq = false;
    private volatile int Ym = 201;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private long f20159aa = -1;
    private boolean sef = false;
    private long Zq = 0;
    private long uvD = Long.MIN_VALUE;
    private long dNu = 0;
    private long TzV = 0;
    private long RiZ = 0;
    private int zR = 0;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private String f20161ib = "0";
    private final List<WeakReference<t5.a.InterfaceC0921a>> wE = new CopyOnWriteArrayList();
    private TKC ley = null;
    private boolean LqL = false;
    private CountDownLatch Yf = new CountDownLatch(1);
    private volatile int LD = 200;
    private AtomicBoolean fF = new AtomicBoolean(false);
    private Surface JcM = null;
    private final Runnable WMZ = new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.1
        @Override // java.lang.Runnable
        public void run() {
            if (EjP.this.vS == null) {
                return;
            }
            long jDNu = EjP.this.dNu();
            if (jDNu > 0 && EjP.this.vS() && EjP.this.uvD != Long.MIN_VALUE) {
                try {
                    if (EjP.this.uvD == jDNu) {
                        if (!EjP.this.sef && EjP.this.dNu >= 400) {
                            EjP.this.l(701, LogSeverity.EMERGENCY_VALUE);
                            EjP.this.sef = true;
                        }
                        EjP.this.dNu += (long) EjP.this.LD;
                    } else {
                        if (EjP.this.sef) {
                            EjP.this.Zq += EjP.this.dNu;
                            EjP.this.l(702, LogSeverity.EMERGENCY_VALUE);
                            long unused = EjP.this.Zq;
                            int unused2 = EjP.this.TKC;
                        }
                        EjP.this.dNu = 0L;
                        EjP.this.sef = false;
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
            if (EjP.this.uvD() > 0) {
                if (EjP.this.uvD != jDNu) {
                    if (t5.b.b()) {
                        long unused3 = EjP.this.uvD;
                    }
                    EjP ejP = EjP.this;
                    ejP.c(jDNu, ejP.uvD());
                }
                EjP.this.uvD = jDNu;
            }
            if (EjP.this.sP()) {
                EjP ejP2 = EjP.this;
                ejP2.c(ejP2.uvD(), EjP.this.uvD());
            } else if (EjP.this.Fmk != null) {
                EjP.this.Fmk.postDelayed(this, EjP.this.LD);
            }
        }
    };
    private final Sj Mts = new Sj();
    private long Wjd = 0;
    private long xD = 0;
    private boolean Fm = false;

    class Sj implements Runnable {
        private boolean TKC;
        private long sP;

        Sj() {
        }

        public void Sj(long j11) {
            this.sP = j11;
        }

        public void Sj(boolean z10) {
            this.TKC = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (EjP.this.vS != null) {
                try {
                    if (!this.TKC) {
                        long jUA = EjP.this.vS.uA();
                        EjP.this.f20159aa = Math.max(this.sP, jUA);
                    }
                    long unused = EjP.this.f20159aa;
                } catch (Throwable th2) {
                    th2.toString();
                }
            }
            if (EjP.this.Fmk != null) {
                EjP.this.Fmk.sendEmptyMessageDelayed(100, 0L);
            }
        }
    }

    public EjP() {
        e("SSMediaPlayerWrapper");
    }

    public static void TKC(boolean z10) {
        f20158jb = z10;
    }

    private void a() {
        ArrayList<Runnable> arrayList = this.f20160dx;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.f20160dx.clear();
    }

    private void b() {
        if (this.uA) {
            return;
        }
        this.uA = true;
        Iterator it = new ArrayList(this.f20160dx).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f20160dx.clear();
        this.uA = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j11, long j12) {
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this, j11, j12);
            }
        }
    }

    private void d(Runnable runnable) {
        try {
            if (this.f20160dx == null) {
                this.f20160dx = new ArrayList<>();
            }
            this.f20160dx.add(runnable);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    private void e(String str) {
        this.zR = 0;
        this.Fmk = com.bytedance.sdk.component.Dq.Sj.Sj.Sj().Sj(this, uA.THREAD_NAME_PRE.concat(String.valueOf(str)));
        this.Fm = true;
        h();
    }

    private boolean f(int i11, int i12) {
        boolean z10 = i11 == -1010 || i11 == -1007 || i11 == -1004 || i11 == -110 || i11 == 100 || i11 == 200;
        if (i12 == 1 || i12 == 700 || i12 == 800) {
            return true;
        }
        return z10;
    }

    private void g() {
        ArrayList<Runnable> arrayList = this.f20160dx;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.post(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.10
                @Override // java.lang.Runnable
                public void run() {
                    if (EjP.this.vS == null) {
                        try {
                            EjP.this.vS = new c();
                        } catch (Throwable th2) {
                            th2.getMessage();
                        }
                        if (EjP.this.vS == null) {
                            return;
                        }
                        b unused = EjP.this.vS;
                        EjP.this.f20161ib = "0";
                        EjP.this.vS.j(EjP.this);
                        EjP.this.vS.e(EjP.this);
                        EjP.this.vS.f(EjP.this);
                        EjP.this.vS.b(EjP.this);
                        EjP.this.vS.a(EjP.this);
                        EjP.this.vS.c(EjP.this);
                        EjP.this.vS.i(EjP.this);
                        try {
                            EjP.this.vS.TKC(false);
                        } catch (Throwable unused2) {
                        }
                        EjP.this.Dq = false;
                    }
                }
            });
        }
    }

    private void i() {
        if (this.vS == null) {
            return;
        }
        try {
            this.vS.aa();
        } catch (Throwable unused) {
        }
        this.vS.e(null);
        this.vS.i(null);
        this.vS.b(null);
        this.vS.c(null);
        this.vS.f(null);
        this.vS.j(null);
        this.vS.a(null);
        try {
            this.vS.Ym();
        } catch (Throwable unused2) {
        }
    }

    private void j() {
        LqL lqL = this.Fmk;
        if (lqL == null || lqL.getLooper() == null) {
            return;
        }
        try {
            this.Fmk.post(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.6
                @Override // java.lang.Runnable
                public void run() {
                    if (EjP.this.Fmk == null || EjP.this.Fmk.getLooper() == null) {
                        return;
                    }
                    try {
                        com.bytedance.sdk.component.Dq.Sj.Sj.Sj().Sj(EjP.this.Fmk);
                        EjP.this.Fmk = null;
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void k() {
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.post(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        EjP.this.vS.Jcg();
                        EjP.this.Ym = Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE;
                        EjP.this.FPG = false;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i11, int i12) {
        if (i11 == 701) {
            this.Wjd = SystemClock.elapsedRealtime();
            this.TKC++;
            for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Sj(this, Integer.MAX_VALUE, 0, 0);
                }
            }
            return;
        }
        if (i11 != 702) {
            if (this.Fm && i11 == 3) {
                g();
                s();
                sP(this.LqL);
                return;
            }
            return;
        }
        if (this.Wjd > 0) {
            this.xD += SystemClock.elapsedRealtime() - this.Wjd;
            this.Wjd = 0L;
        }
        for (WeakReference<t5.a.InterfaceC0921a> weakReference2 : this.wE) {
            if (weakReference2 != null && weakReference2.get() != null) {
                weakReference2.get().Sj((t5.a) this, Integer.MAX_VALUE);
            }
        }
    }

    private void m(long j11) {
        this.Mts.Sj(j11);
        if (this.uP) {
            n(this.Mts);
        } else if (p(this.ley)) {
            n(this.Mts);
        } else {
            d(this.Mts);
        }
    }

    private void n(Runnable runnable) {
        if (runnable == null || Dq()) {
            return;
        }
        if (this.TEQ) {
            d(runnable);
        } else {
            runnable.run();
        }
    }

    private void o(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.vS.g(fileInputStream.getFD());
        fileInputStream.close();
    }

    private boolean p(TKC tkc) {
        return tkc != null && tkc.EjP();
    }

    private void q() {
        this.Zq = 0L;
        this.TKC = 0;
        this.dNu = 0L;
        this.sef = false;
        this.uvD = Long.MIN_VALUE;
    }

    private void r() {
        SparseIntArray sparseIntArray = kF;
        sparseIntArray.put(this.zR, sparseIntArray.get(this.zR) + 1);
    }

    private void s() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.RiZ;
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this, jElapsedRealtime);
            }
        }
        this.HiB = true;
    }

    private void t() {
        n(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.14
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.sendEmptyMessage(104);
                }
            }
        });
    }

    @Override // t5.a
    public boolean Dq() {
        return this.TEQ;
    }

    @Override // t5.a
    public int EjP() {
        if (this.vS == null || Dq()) {
            return 0;
        }
        return this.vS.Fmk();
    }

    public boolean Fmk() {
        return this.Ym == 205;
    }

    @Override // t5.a
    public int HiB() {
        if (this.vS == null || Dq()) {
            return 0;
        }
        return this.vS.sef();
    }

    @Override // t5.a
    public boolean Jcg() {
        LqL lqL;
        return ((this.Ym != 207 && !this.FPG) || (lqL = this.Fmk) == null || lqL.hasMessages(100)) ? false : true;
    }

    public SurfaceTexture RiZ() {
        return this.Sj;
    }

    public void Sj(int i11) {
        if (Dq()) {
            return;
        }
        this.LD = i11;
    }

    public void Sj(final long j11) {
        if (Dq()) {
            return;
        }
        if (this.Ym == 207 || this.Ym == 206 || this.Ym == 209) {
            n(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.2
                @Override // java.lang.Runnable
                public void run() {
                    if (EjP.this.Fmk != null) {
                        EjP.this.Fmk.obtainMessage(106, Long.valueOf(j11)).sendToTarget();
                    }
                }
            });
        }
    }

    public void Sj(final SurfaceTexture surfaceTexture) {
        if (Dq()) {
            return;
        }
        this.Sj = surfaceTexture;
        Sj(true);
        n(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.3
            @Override // java.lang.Runnable
            public void run() {
                EjP.this.h();
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
        int i11 = this.Ym;
        int i12 = message.what;
        if (this.vS != null) {
            try {
                switch (message.what) {
                    case 100:
                        if (this.Ym == 205 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.HiB();
                            this.RiZ = SystemClock.elapsedRealtime();
                            this.Ym = Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE;
                            if (this.f20159aa > 0) {
                                this.vS.Sj(this.f20159aa, this.EjP);
                                this.f20159aa = -1L;
                            }
                            if (this.ley != null) {
                                sP(this.LqL);
                                return;
                            }
                            return;
                        }
                        break;
                    case 101:
                        if (this.sef) {
                            this.Zq += this.dNu;
                        }
                        this.sef = false;
                        this.dNu = 0L;
                        this.uvD = Long.MIN_VALUE;
                        if (this.Ym == 206 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.Jcg();
                            this.Ym = Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE;
                            this.FPG = false;
                            for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
                                if (weakReference != null && weakReference.get() != null) {
                                    weakReference.get().EjP(this);
                                }
                            }
                            return;
                        }
                        break;
                    case 102:
                        this.vS.aa();
                        this.Ym = 201;
                        return;
                    case 103:
                        try {
                            i();
                            break;
                        } catch (Throwable unused) {
                        }
                        for (WeakReference<t5.a.InterfaceC0921a> weakReference2 : this.wE) {
                            if (weakReference2 != null && weakReference2.get() != null) {
                                weakReference2.get().TKC(this);
                            }
                        }
                        this.Ym = Sdk$SDKError.Reason.AD_IS_LOADING_VALUE;
                        return;
                    case 104:
                        if (this.Ym == 202 || this.Ym == 208) {
                            this.vS.Dq();
                            return;
                        }
                        break;
                    case 105:
                        if (this.Ym == 205 || this.Ym == 206 || this.Ym == 208 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.vS();
                            this.Ym = Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE;
                            return;
                        }
                        break;
                    case 106:
                        if (this.Ym == 206 || this.Ym == 207 || this.Ym == 209) {
                            this.vS.Sj(((Long) message.obj).longValue(), this.EjP);
                            return;
                        }
                        break;
                    case 107:
                        q();
                        if (this.Ym == 201 || this.Ym == 203) {
                            TKC tkc = (TKC) message.obj;
                            if (TextUtils.isEmpty(tkc.sP())) {
                                tkc.Sj(t5.b.i());
                            }
                            File file = new File(tkc.sP(), tkc.sef());
                            if (file.exists()) {
                                file.getAbsolutePath();
                                if (t5.b.h()) {
                                    o(file.getAbsolutePath());
                                } else {
                                    this.vS.Sj(file.getAbsolutePath());
                                }
                            } else {
                                tkc.Fmk();
                                if (!f20158jb) {
                                    int i13 = tkc.sP;
                                }
                                this.vS.Sj(tkc);
                                tkc.Fmk();
                            }
                            this.Ym = Sdk$SDKError.Reason.AD_CONSUMED_VALUE;
                            return;
                        }
                        break;
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                    case 109:
                    default:
                        return;
                    case 110:
                        this.vS.Sj((SurfaceHolder) message.obj);
                        this.vS.sP(true);
                        this.Yf.await(1L, TimeUnit.SECONDS);
                        g();
                        return;
                    case 111:
                        this.JcM = new Surface((SurfaceTexture) message.obj);
                        this.vS.h(this.JcM);
                        this.vS.sP(true);
                        this.Yf.await(1L, TimeUnit.SECONDS);
                        g();
                        return;
                }
                this.Ym = 200;
                if (this.Dq) {
                    return;
                }
                y5.a aVar = new y5.a(308, i12);
                aVar.b(i11 + "," + i12);
                for (WeakReference<t5.a.InterfaceC0921a> weakReference3 : this.wE) {
                    if (weakReference3 != null && weakReference3.get() != null) {
                        weakReference3.get().Sj(this, aVar);
                    }
                }
                this.Dq = true;
            } catch (Throwable unused2) {
            }
        }
    }

    public void Sj(final SurfaceHolder surfaceHolder) {
        if (Dq()) {
            return;
        }
        this.sP = surfaceHolder;
        Sj(true);
        n(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.4
            @Override // java.lang.Runnable
            public void run() {
                EjP.this.h();
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    public void Sj(final TKC tkc) {
        if (Dq()) {
            return;
        }
        this.ley = tkc;
        if (tkc != null) {
            this.Fm = this.Fm && !tkc.EjP();
        }
        n(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.5
            @Override // java.lang.Runnable
            public void run() {
                EjP.this.h();
                if (EjP.this.Fmk != null) {
                    EjP.this.Fmk.obtainMessage(107, tkc).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.f
    public void Sj(b bVar) {
        this.Ym = Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE;
        kF.delete(this.zR);
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.removeCallbacks(this.WMZ);
        }
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this);
            }
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.d
    public void Sj(b bVar, int i11) {
        if (this.vS != bVar) {
            return;
        }
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().sP(this, i11);
            }
        }
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.c
    public void Sj(b bVar, int i11, int i12, int i13, int i14) {
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj((t5.a) this, i11, i12);
            }
        }
    }

    public void Sj(t5.a.InterfaceC0921a interfaceC0921a) {
        if (interfaceC0921a == null) {
            return;
        }
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() == interfaceC0921a) {
                return;
            }
        }
        this.wE.add(new WeakReference<>(interfaceC0921a));
    }

    public void Sj(final boolean z10) {
        if (Dq()) {
            return;
        }
        this.uP = z10;
        if (this.vS != null) {
            this.vS.Sj(z10);
            return;
        }
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.post(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.9
                @Override // java.lang.Runnable
                public void run() {
                    if (EjP.this.vS != null) {
                        EjP.this.vS.Sj(z10);
                    }
                }
            });
        }
    }

    public void Sj(boolean z10, long j11, boolean z11) {
        if (Dq()) {
            return;
        }
        h();
        this.LqL = z11;
        this.fF.set(true);
        this.FPG = false;
        sP(z11);
        if (z10) {
            this.f20159aa = j11;
            t();
        } else {
            m(j11);
        }
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.removeCallbacks(this.WMZ);
            this.Fmk.postDelayed(this.WMZ, this.LD);
        }
        this.Yf.countDown();
    }

    @Override // t5.a
    public boolean Sj() {
        return this.HiB;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.e
    public boolean Sj(b bVar, int i11, int i12) {
        r();
        this.Ym = 200;
        LqL lqL = this.Fmk;
        if (lqL != null) {
            lqL.removeCallbacks(this.WMZ);
        }
        if (f(i11, i12)) {
            j();
        }
        if (!this.fF.get()) {
            return true;
        }
        this.fF.set(false);
        y5.a aVar = new y5.a(i11, i12);
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj(this, aVar);
            }
        }
        return true;
    }

    public void TEQ() {
        if (Dq() || this.Fmk == null) {
            return;
        }
        this.fF.set(true);
        this.Fmk.post(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.11
            @Override // java.lang.Runnable
            public void run() {
                if (!EjP.this.Jcg() || EjP.this.vS == null) {
                    return;
                }
                try {
                    EjP.this.vS.HiB();
                    for (WeakReference weakReference : EjP.this.wE) {
                        if (weakReference != null && weakReference.get() != null) {
                            ((t5.a.InterfaceC0921a) weakReference.get()).HiB(EjP.this);
                        }
                    }
                    EjP.this.Ym = Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE;
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.g
    public void TKC(b bVar) {
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().Sj((t5.a) this, true);
            }
        }
    }

    @Override // t5.a
    public boolean TKC() {
        return Fmk() || vS() || Jcg();
    }

    public SurfaceHolder TzV() {
        return this.sP;
    }

    public void Ym() {
        LqL lqL;
        if (Dq() || (lqL = this.Fmk) == null) {
            return;
        }
        lqL.removeMessages(100);
        this.FPG = true;
        if (this.Fm) {
            if (!this.HiB && !p(this.ley)) {
                d(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (EjP.this.Fmk != null) {
                            EjP.this.Fmk.sendEmptyMessage(101);
                        }
                    }
                });
                return;
            }
            LqL lqL2 = this.Fmk;
            if (lqL2 != null) {
                lqL2.sendEmptyMessage(101);
                return;
            }
            return;
        }
        if (!this.sU && !p(this.ley)) {
            d(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.12
                @Override // java.lang.Runnable
                public void run() {
                    if (EjP.this.Fmk != null) {
                        EjP.this.Fmk.sendEmptyMessage(101);
                    }
                }
            });
            return;
        }
        LqL lqL3 = this.Fmk;
        if (lqL3 != null) {
            lqL3.sendEmptyMessage(101);
        }
    }

    public int Zq() {
        return this.TKC;
    }

    public void aa() {
        if (Dq()) {
            return;
        }
        this.TEQ = true;
        a();
        LqL lqL = this.Fmk;
        if (lqL != null) {
            try {
                lqL.removeCallbacksAndMessages(null);
                if (this.vS != null) {
                    this.Fmk.sendEmptyMessage(103);
                }
                j();
            } catch (Throwable unused) {
                j();
            }
        }
    }

    public long dNu() {
        if (Dq()) {
            return 0L;
        }
        if (this.Ym == 206 || this.Ym == 207) {
            try {
                return this.vS.uA();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public void sP(int i11) {
        this.EjP = i11;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.InterfaceC0188b
    public void sP(b bVar) {
        if (Dq()) {
            return;
        }
        this.Ym = Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE;
        try {
            TKC tkc = this.ley;
            if (tkc != null) {
                float fAa = tkc.aa();
                if (fAa > 0.0f) {
                    t5.c cVar = new t5.c();
                    cVar.b(fAa);
                    this.vS.d(cVar);
                }
            }
        } catch (Throwable unused) {
        }
        if (this.Fmk != null) {
            if (this.FPG) {
                k();
            } else {
                LqL lqL = this.Fmk;
                lqL.sendMessage(lqL.obtainMessage(100, -1, -1));
            }
        }
        kF.delete(this.zR);
        boolean z10 = this.Fm;
        boolean z11 = this.sU;
        if (!z10 && !z11) {
            s();
            this.sU = true;
        }
        for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().sP(this);
            }
        }
    }

    public void sP(final boolean z10) {
        LqL lqL;
        if (Dq() || (lqL = this.Fmk) == null) {
            return;
        }
        lqL.post(new Runnable() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP.8
            @Override // java.lang.Runnable
            public void run() {
                if (EjP.this.Dq() || EjP.this.vS == null) {
                    return;
                }
                try {
                    EjP.this.LqL = z10;
                    EjP.this.vS.EjP(z10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // t5.a
    public boolean sP() {
        return this.Ym == 209;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.b.a
    public boolean sP(b bVar, int i11, int i12) {
        if (this.vS != bVar) {
            return false;
        }
        if (i12 == -1004) {
            y5.a aVar = new y5.a(i11, i12);
            for (WeakReference<t5.a.InterfaceC0921a> weakReference : this.wE) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().Sj(this, aVar);
                }
            }
        }
        l(i11, i12);
        return false;
    }

    public long sef() {
        if (this.sef) {
            long j11 = this.dNu;
            if (j11 > 0) {
                return this.Zq + j11;
            }
        }
        return this.Zq;
    }

    public void uA() {
        if (Dq() || this.vS == null) {
            return;
        }
        this.fF.set(true);
        if (this.Ym != 206) {
            q();
            this.FPG = false;
            this.Mts.Sj(true);
            m(0L);
            LqL lqL = this.Fmk;
            if (lqL != null) {
                lqL.removeCallbacks(this.WMZ);
                this.Fmk.postDelayed(this.WMZ, this.LD);
            }
        }
        this.Yf.countDown();
    }

    public long uvD() {
        long j11 = this.TzV;
        if (j11 != 0) {
            return j11;
        }
        if (this.Ym == 206 || this.Ym == 207) {
            try {
                this.TzV = this.vS.TEQ();
            } catch (Throwable unused) {
            }
        }
        return this.TzV;
    }

    @Override // t5.a
    public boolean vS() {
        LqL lqL;
        return (this.Ym == 206 || ((lqL = this.Fmk) != null && lqL.hasMessages(100))) && !this.FPG;
    }
}
