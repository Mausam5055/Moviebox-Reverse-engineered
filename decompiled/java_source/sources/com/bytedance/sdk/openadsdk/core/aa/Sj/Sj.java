package com.bytedance.sdk.openadsdk.core.aa.Sj;

import android.app.Activity;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.Sj.Sj.Sj.vS.EjP;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.openadsdk.EjP.HiB.sP.Zq;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.core.Ym.vS;
import com.bytedance.sdk.openadsdk.core.aa.EjP.TKC;
import com.bytedance.sdk.openadsdk.core.aa.sP.HiB;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.widget.TzV;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import u5.b;
import u5.c;
import y5.a;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj implements b, LqL.Sj, com.bytedance.sdk.openadsdk.core.aa.sP.Sj {

    @NonNull
    protected final sU Dq;
    protected SurfaceHolder EjP;
    protected SurfaceTexture HiB;
    protected HiB Jcg;
    protected vS LqL;
    protected long Yf;

    @NonNull
    protected final Context Ym;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    protected boolean f21045dx;
    private long fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    protected sP f21046ib;
    protected boolean kF;
    protected b.InterfaceC0935b ley;
    protected final ViewGroup uP;
    protected boolean uvD;
    protected TKC vS;
    protected WeakReference<b.d> wE;
    protected String Sj = "TTAD.VideoController";
    protected final int sP = 100;
    protected final LqL TKC = new LqL(Looper.getMainLooper(), this);
    protected long uA = 0;
    protected long TEQ = 0;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    protected final List<Runnable> f21044aa = new ArrayList();
    protected boolean Fmk = false;
    protected boolean sef = false;
    protected boolean Zq = true;
    protected boolean dNu = false;
    protected boolean TzV = false;
    protected boolean RiZ = false;
    protected AtomicBoolean sU = new AtomicBoolean(false);
    protected boolean zR = true;
    protected Runnable LD = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.Sj.Sj.1
        @Override // java.lang.Runnable
        public void run() {
            boolean z10 = Sj.this.Fmk;
            Sj.this.dx();
        }
    };
    private long JcM = 0;
    private boolean WMZ = true;
    private int Mts = 1;
    private final AtomicBoolean FPG = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.aa.Sj.Sj$4, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[TzV.Sj.values().length];
            Sj = iArr;
            try {
                iArr[TzV.Sj.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[TzV.Sj.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[TzV.Sj.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Sj(Context context, @NonNull sU sUVar, ViewGroup viewGroup) {
        this.Dq = sUVar;
        this.Ym = context;
        this.uP = viewGroup;
        this.Sj += hashCode();
    }

    private void JcM() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.EjP(0);
            this.Jcg.Sj(false, false);
            this.Jcg.TKC(false);
            this.Jcg.HiB();
            this.Jcg.Jcg();
        }
    }

    private void Sj(long j11, boolean z10) {
        if (this.vS == null) {
            return;
        }
        if (z10) {
            JcM();
        }
        this.vS.Sj(j11);
    }

    private boolean TKC(int i11) {
        return this.Jcg.sP(i11);
    }

    private boolean TzV() {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            return hiB.Fmk() instanceof EjP;
        }
        return false;
    }

    @Override // u5.b
    public final long Dq() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return 0L;
        }
        return tkc.uvD();
    }

    @Override // u5.b
    public abstract /* synthetic */ void EjP();

    public final void EjP(long j11) {
        this.uA = j11;
        this.TEQ = Math.max(this.TEQ, j11);
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
        }
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(true, this.uA, this.uvD);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void EjP(c cVar, View view) {
        if (!this.RiZ) {
            Sj(true, 3);
            return;
        }
        HiB(false);
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.sP(this.uP);
        }
        Sj(1);
    }

    @Override // u5.b
    public void EjP(boolean z10) {
        this.zR = z10;
    }

    @Override // u5.b
    public long HiB() {
        return this.uA;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj, u5.a
    public final void HiB(c cVar, View view) {
        Sj(cVar, view, false);
    }

    protected void HiB(boolean z10) {
        this.RiZ = z10;
    }

    @Override // u5.b
    public final int Jcg() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return 0;
        }
        return tkc.Zq();
    }

    public int LD() {
        return this.Mts;
    }

    protected final void LqL() {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, sj2);
    }

    protected void RiZ() {
        if (this.vS == null) {
            return;
        }
        if (TzV()) {
            SurfaceTexture surfaceTexture = this.HiB;
            if (surfaceTexture == null || surfaceTexture == this.vS.RiZ()) {
                return;
            }
            this.vS.Sj(this.HiB);
            return;
        }
        SurfaceHolder surfaceHolder = this.EjP;
        if (surfaceHolder == null || surfaceHolder == this.vS.TzV()) {
            return;
        }
        this.vS.Sj(this.EjP);
    }

    @Override // u5.b
    public final void Sj() {
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Ym();
        }
        if (this.f21045dx || !this.sU.get()) {
            return;
        }
        LqL();
    }

    public final void Sj(int i11) {
        Context context = this.Ym;
        if (context == null) {
            return;
        }
        boolean z10 = i11 == 0 || i11 == 8;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            try {
                activity.setRequestedOrientation(i11);
            } catch (Throwable unused) {
            }
            if (z10) {
                activity.getWindow().clearFlags(1024);
            } else {
                activity.getWindow().setFlags(1024, 1024);
            }
        }
    }

    @Override // u5.b
    public void Sj(long j11) {
        this.uA = j11;
        this.TEQ = Math.max(this.TEQ, j11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Sj(long j11, long j12) {
        if (!this.FPG.get() && com.bytedance.sdk.openadsdk.vS.Sj.Sj().TKC() && (j11 * 1.0d) / j12 > 0.3d) {
            this.FPG.set(true);
            if (this.Dq != null) {
                com.bytedance.sdk.openadsdk.vS.sP.Sj().Sj("videoPercent30", this.Dq);
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.LqL.Sj
    public void Sj(Message message) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Sj(Jcg jcg) {
        if (this.sU.compareAndSet(false, true)) {
            vS vSVar = this.LqL;
            if (vSVar != null) {
                vSVar.Sj(Dq(), sef());
            }
            Zq.Sj sj2 = new Zq.Sj();
            sj2.Sj(kF());
            sj2.TKC(Dq());
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(dNu.Sj(), this.Jcg, sj2, jcg);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void Sj(TzV.Sj sj2, String str) {
        int i11 = AnonymousClass4.Sj[sj2.ordinal()];
        if (i11 == 1) {
            Sj();
            return;
        }
        if (i11 == 2) {
            TKC();
        } else {
            if (i11 != 3) {
                return;
            }
            sP();
            this.dNu = false;
            this.TzV = true;
        }
    }

    protected void Sj(Runnable runnable) {
        if (this.Jcg.zR() && this.Fmk) {
            runnable.run();
        } else {
            sP(runnable);
        }
    }

    @Override // u5.b
    public void Sj(b.a aVar) {
    }

    @Override // u5.b
    public final void Sj(b.InterfaceC0935b interfaceC0935b) {
        this.ley = interfaceC0935b;
    }

    @Override // u5.b
    public final void Sj(b.d dVar) {
        this.wE = new WeakReference<>(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void Sj(c cVar, int i11) {
        if (this.vS == null) {
            return;
        }
        Sj(this.fF, TKC(i11));
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void Sj(c cVar, int i11, boolean z10) {
        if (this.Ym == null) {
            return;
        }
        long j11 = this.Yf;
        long j12 = (long) (((((long) i11) * j11) * 1.0f) / 100.0f);
        if (j11 > 0) {
            this.fF = (int) j12;
        } else {
            this.fF = 0L;
        }
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj(this.fF);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public void Sj(c cVar, SurfaceTexture surfaceTexture) {
        this.Fmk = true;
        this.HiB = surfaceTexture;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(surfaceTexture);
            this.vS.Sj(this.Fmk);
        }
        sU();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public void Sj(c cVar, SurfaceHolder surfaceHolder) {
        this.Fmk = true;
        this.EjP = surfaceHolder;
        TKC tkc = this.vS;
        if (tkc == null) {
            return;
        }
        tkc.Sj(surfaceHolder);
        sU();
    }

    public abstract /* synthetic */ void Sj(c cVar, View view);

    public void Sj(c cVar, View view, boolean z10) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void Sj(c cVar, View view, boolean z10, boolean z11) {
        if (this.Zq) {
            Sj();
        }
        if (z10 && !this.Zq && !uP()) {
            this.Jcg.sP(!wE(), false);
            this.Jcg.Sj(z11, true, false);
        }
        TKC tkc = this.vS;
        if (tkc == null || !tkc.vS()) {
            this.Jcg.vS();
        } else {
            this.Jcg.vS();
            this.Jcg.HiB();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Sj(a aVar) {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.sP(vS());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.Sj(HiB());
        sj2.Sj(aVar);
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.TKC(Fmk(), sj2);
    }

    @Override // u5.b
    public void Sj(boolean z10) {
        this.Zq = z10;
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.EjP(z10);
        }
    }

    @Override // u5.b
    public abstract /* synthetic */ void Sj(boolean z10, int i11);

    @Override // u5.b
    public final void Sj(final boolean z10, String str) {
        this.uvD = z10;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.sP(z10);
            com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Jcg, z10, str);
        }
        if (this.LqL != null) {
            if (f6.a.x()) {
                this.LqL.Sj(z10);
            } else {
                this.TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.Sj.Sj.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Sj.this.LqL.Sj(z10);
                    }
                });
            }
        }
    }

    @Override // u5.b
    public abstract /* synthetic */ boolean Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc);

    @Override // u5.b
    public final int TEQ() {
        return c6.a.a(this.TEQ, this.Yf);
    }

    @Override // u5.b
    public abstract /* synthetic */ void TKC();

    @Override // u5.b
    public void TKC(long j11) {
        this.Yf = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void TKC(c cVar, View view) {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.uA();
        }
        Sj(true, 3);
    }

    @Override // u5.b
    public final void TKC(boolean z10) {
        this.WMZ = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Yf() {
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.Sj(this.Dq, this.Jcg, this.f21046ib);
    }

    @Override // u5.b
    public boolean Ym() {
        return this.dNu;
    }

    @Override // u5.b
    public boolean Zq() {
        return this.sef;
    }

    @Override // u5.b
    public t5.a aa() {
        return this.vS;
    }

    @Override // u5.b
    public boolean dNu() {
        return true;
    }

    protected void dx() {
        this.TKC.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.Sj.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                Sj sj2 = Sj.this;
                if (sj2.vS != null) {
                    boolean z10 = sj2.Fmk;
                    Sj.this.vS.TEQ();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void fF() {
        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(this.Dq.Uc(), true, this.Dq), 5, this.Dq.aZ());
    }

    public boolean ib() {
        return this.Zq;
    }

    public boolean kF() {
        return this.WMZ;
    }

    protected final void ley() {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.sP(vS());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(Fmk(), sj2);
    }

    @Override // u5.b
    public abstract /* synthetic */ void sP();

    public void sP(int i11) {
        this.Mts = i11;
    }

    @Override // u5.b
    public void sP(long j11) {
        this.JcM = j11;
    }

    @Override // u5.b
    public void sP(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        sP sPVar = (sP) tkc;
        this.f21046ib = sPVar;
        this.uvD = sPVar.Dq();
        tkc.EjP(String.valueOf(this.Dq.If()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sP(Jcg jcg) {
        Zq.Sj sj2 = new Zq.Sj();
        sj2.Sj(HiB());
        sj2.TKC(Dq() / ((long) LD()));
        sj2.sP(vS());
        sj2.EjP(Jcg());
        com.bytedance.sdk.openadsdk.EjP.HiB.Sj.Sj.sP(this.Jcg, sj2, jcg);
    }

    protected void sP(Runnable runnable) {
        this.f21044aa.add(runnable);
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void sP(c cVar, int i11) {
        HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.vS();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public void sP(c cVar, SurfaceTexture surfaceTexture) {
        this.Fmk = false;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(false);
        }
        this.HiB = null;
        sU();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public void sP(c cVar, SurfaceHolder surfaceHolder) {
        this.Fmk = false;
        this.EjP = null;
        TKC tkc = this.vS;
        if (tkc != null) {
            tkc.Sj(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public final void sP(c cVar, View view) {
        sP(cVar, view, false, false);
    }

    public final void sP(c cVar, View view, boolean z10, boolean z11) {
        HiB(!this.RiZ);
        Context context = this.Ym;
        if (context != null && (context instanceof Activity)) {
            if (this.RiZ) {
                Sj(z10 ? 8 : 0);
                HiB hiB = this.Jcg;
                if (hiB != null) {
                    hiB.Sj(this.uP);
                    this.Jcg.TKC(false);
                }
            } else {
                Sj(1);
                HiB hiB2 = this.Jcg;
                if (hiB2 != null) {
                    hiB2.sP(this.uP);
                    this.Jcg.TKC(false);
                }
            }
            WeakReference<b.d> weakReference = this.wE;
            b.d dVar = weakReference != null ? weakReference.get() : null;
            if (dVar != null) {
                dVar.Sj(this.RiZ);
            }
        }
    }

    @Override // u5.b
    public final void sP(boolean z10) {
        this.sef = z10;
    }

    protected void sU() {
        if (this.f21044aa.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.f21044aa).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.f21044aa.clear();
    }

    @Override // u5.b
    public boolean sef() {
        return this.uvD;
    }

    @Override // u5.b
    public final long uA() {
        return HiB() + vS();
    }

    public final boolean uP() {
        TKC tkc = this.vS;
        return tkc == null || tkc.sP();
    }

    @Override // u5.b
    public final boolean uvD() {
        return this.kF;
    }

    @Override // u5.b
    public final long vS() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return 0L;
        }
        return tkc.sef();
    }

    public final boolean wE() {
        TKC tkc = this.vS;
        return tkc != null && tkc.vS();
    }

    @Override // u5.b
    /* JADX INFO: renamed from: zR, reason: merged with bridge method [inline-methods] */
    public final HiB Fmk() {
        return this.Jcg;
    }
}
