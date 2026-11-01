package com.bytedance.sdk.openadsdk.core.aa.EjP;

import android.content.Context;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.component.utils.uA;
import com.bytedance.sdk.openadsdk.EjP.Jcg;
import com.bytedance.sdk.openadsdk.core.TEQ.EjP;
import com.bytedance.sdk.openadsdk.core.Ym.vS;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.kF.sP.HiB;
import com.bytedance.sdk.openadsdk.sef.sef;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.Objects;
import t5.a;
import u5.b;
import u5.c;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends com.bytedance.sdk.openadsdk.core.aa.Sj.Sj {
    private InterfaceC0272Sj Ei;
    private long FPG;
    private final int Fm;
    protected boolean JcM;
    private final Jcg Mts;
    final TKC.sP WMZ;
    private long Wjd;
    protected long fF;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private final Runnable f21043jb;
    private boolean xD;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes3.dex */
    class AnonymousClass1 implements TKC.sP {
        private boolean sP = true;

        AnonymousClass1() {
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void EjP(a aVar) {
            com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.GMp();
            if (sjGMp != null && sjGMp.Sj() != null) {
                sjGMp.Sj().sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA);
            }
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 3);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(0);
            }
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(2);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void HiB(a aVar) {
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 0);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(1);
            }
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(1);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP
        public void Sj(int i11, int i12) {
            Sj sj2 = Sj.this;
            sj2.sP(sj2.Mts);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).f21046ib.EjP = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.sU();
            Sj.this.Yf();
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).sU.set(false);
            Sj sj3 = Sj.this;
            sj3.Sj(sj3.Mts);
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                        try {
                            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(9);
                        } catch (Exception unused2) {
                        }
                    }
                    Sj.this.jb();
                }
            });
            com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.GMp();
            if (sjGMp != null && sjGMp.Sj() != null) {
                long jHiB = Sj.this.HiB();
                sjGMp.Sj().EjP(jHiB);
                sjGMp.Sj().HiB(jHiB);
            }
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 5);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 5);
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(3);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, int i11) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).kF = false;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f21043jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.8
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 0);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(5);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, int i11, int i12) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.6
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS == null) {
                        return;
                    }
                    try {
                        final float fEjP = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.EjP();
                        final float fHiB = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.HiB();
                        if (fEjP == 0.0f || fHiB == 0.0f) {
                            return;
                        }
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!Sj.this.Ei()) {
                                    Sj.this.Sj(fEjP, fHiB);
                                    return;
                                }
                                if (TzV.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq) || ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).f21046ib.HiB == 4) {
                                    Sj.this.Sj(true, fEjP, fHiB);
                                    return;
                                }
                                if (TzV.TKC(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq)) {
                                    Sj.this.Sj(true, fEjP, fHiB);
                                    return;
                                }
                                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.Mts() == 3) {
                                    Sj.this.Sj(true, fEjP, fHiB);
                                } else if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.Mts() == 0) {
                                    Sj.this.TKC(fEjP, fHiB);
                                } else {
                                    Sj.this.sP(fEjP, fHiB);
                                }
                            }
                        });
                    } catch (Throwable th2) {
                        sU.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj, th2.getMessage());
                    }
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, int i11, int i12, int i13) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).kF = true;
            Sj.this.Fm();
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.7
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.dNu();
                    }
                }
            });
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 3);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(4);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, long j11) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).kF = false;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f21043jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.2
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
            if (!((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).sU.get()) {
                Sj sj2 = Sj.this;
                sj2.fF = j11;
                sj2.Sj(sj2.Mts);
                Sj.this.fF();
            }
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.TKC();
            }
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 0);
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, long j11, long j12) {
            if (Math.abs(j11 - ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA) < 50) {
                return;
            }
            Sj sj2 = Sj.this;
            sj2.Sj(sj2.Mts);
            Sj.this.Sj(j11, j12);
            Sj.this.sP(j11, j12);
            com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq.GMp();
            if (sjGMp != null && sjGMp.Sj() != null) {
                sjGMp.Sj().Sj(j11, j12, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL);
            }
            if (!this.sP || j12 - j11 >= 500) {
                return;
            }
            this.sP = false;
            Sj(aVar);
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, y5.a aVar2) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            aVar2.a();
            aVar2.d();
            aVar2.c();
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f21043jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.4
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley.sP(Sj.this.Wjd, c6.a.a(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Yf));
                    }
                }
            });
            Sj.this.Sj(aVar2);
            HiB.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq, 6);
            com.bytedance.sdk.openadsdk.kF.Sj.TKC.sP(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Dq);
            if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL != null) {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).LqL.Sj(14);
            }
            if (Sj.this.Ei != null) {
                Sj.this.Ei.Sj(4);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void Sj(a aVar, boolean z10) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f21043jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.5
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void TKC(a aVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void sP(a aVar) {
            String unused = ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj;
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.removeCallbacks(Sj.this.f21043jb);
            ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.1.3
                @Override // java.lang.Runnable
                public void run() {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.sP();
                    }
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.core.aa.EjP.TKC.sP, t5.a.InterfaceC0921a
        public void sP(a aVar, int i11) {
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj$Sj, reason: collision with other inner class name */
    public interface InterfaceC0272Sj {
        void Sj(int i11);
    }

    public Sj(Context context, ViewGroup viewGroup, com.bytedance.sdk.openadsdk.core.model.sU sUVar, Jcg jcg) {
        super(context, sUVar, viewGroup);
        this.FPG = 0L;
        this.Wjd = 0L;
        this.xD = false;
        this.fF = 0L;
        this.JcM = false;
        this.WMZ = new AnonymousClass1();
        this.f21043jb = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.3
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley != null) {
                    Sj.this.TzV();
                    ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley.Sj();
                }
            }
        };
        this.Mts = jcg;
        this.Fm = sUVar.If();
        if (sUVar.Ph() && sUVar.GMp() != null && this.uP != null) {
            if (this.LqL == null) {
                this.LqL = vS.Sj();
            }
            this.LqL.Sj(this.uP, sUVar.GMp().sef());
        }
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB = new com.bytedance.sdk.openadsdk.core.aa.sP.HiB(context.getApplicationContext(), new sef(context), true, 17, this.Dq, this);
        this.Jcg = hiB;
        hiB.Sj(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Ei() {
        return this.Dq.tY() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Fm() {
        int iXD;
        int i11 = this.f21046ib.HiB;
        if (i11 == 2 || i11 == 1) {
            iXD = dNu.EjP().xD() * 1000;
        } else {
            iXD = i11 == 4 ? dNu.EjP().uA(String.valueOf(this.Fm)) : 5000;
        }
        this.TKC.removeCallbacks(this.f21043jb);
        this.TKC.postDelayed(this.f21043jb, iXD);
    }

    private boolean HpB() {
        return Mts() == null || this.vS == null || (!EjP.Sj(this.Dq.fF()) ? this.Dq.xhi() != null : this.Dq.ndK() != null) || this.Dq.FPG() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(float f11, float f12) {
        ViewGroup viewGroup;
        try {
            if (Mts() != null && this.vS != null && (viewGroup = this.uP) != null) {
                float width = viewGroup.getWidth();
                float f13 = f11 / (width * 1.0f);
                float height = this.uP.getHeight();
                if (f13 <= f12 / (1.0f * height)) {
                    width = f11 * (height / f12);
                } else {
                    height = f12 * (width / f11);
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) width, (int) height);
                layoutParams.addRule(13);
                if (Mts() instanceof TextureView) {
                    ((TextureView) Mts()).setLayoutParams(layoutParams);
                } else if (Mts() instanceof SurfaceView) {
                    ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th2) {
            sU.Sj(this.Sj, "changeVideoSizeSupportInteraction error", th2);
        }
    }

    private void Sj(float f11, float f12, float f13, float f14, boolean z10) {
        RelativeLayout.LayoutParams layoutParams;
        if (f13 <= 0.0f || f14 <= 0.0f) {
            try {
                f13 = this.Dq.UHs().t();
                f14 = this.Dq.UHs().C();
            } catch (Throwable unused) {
                return;
            }
        }
        if (f14 > 0.0f && f13 > 0.0f) {
            if (z10) {
                if (f13 < f14) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f11, (int) ((f14 * f11) / f13));
            } else if (f13 > f14) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f13 * f12) / f14), (int) f12);
            }
            layoutParams.addRule(13);
            if (Mts() != null) {
                if (Mts() instanceof TextureView) {
                    ((TextureView) Mts()).setLayoutParams(layoutParams);
                } else if (Mts() instanceof SurfaceView) {
                    ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.uP.getLayoutParams();
                if (!com.bytedance.sdk.component.adexpress.EjP.sP.Sj(dNu.Sj()) || this.uP.getHeight() <= 0 || layoutParams2 == null) {
                    return;
                }
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
                this.uP.setLayoutParams(layoutParams2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC(float f11, float f12) {
        try {
            if (Mts() != null && this.vS != null) {
                boolean z10 = this.Dq.liH() == 1;
                int[] iArrSP = FPG.sP(dNu.Sj());
                Sj(iArrSP[0], iArrSP[1], f11, f12, z10);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jb() {
        if (this.Jcg == null) {
            return;
        }
        this.TKC.removeCallbacks(this.f21043jb);
        this.Jcg.sP();
        this.Wjd = System.currentTimeMillis() - this.FPG;
        if (!this.xD) {
            this.xD = true;
            long j11 = this.Yf;
            sP(j11, j11);
            long j12 = this.Yf;
            this.uA = j12;
            this.TEQ = j12;
            sP(this.Mts);
        }
        b.InterfaceC0935b interfaceC0935b = this.ley;
        if (interfaceC0935b != null) {
            interfaceC0935b.Sj(this.Wjd, c6.a.a(this.uA, this.Yf));
        }
        this.sef = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(float f11, float f12) {
        try {
            Objects.toString(this.Dq.xD());
            if (HpB()) {
                return;
            }
            int[] iArrSP = FPG.sP(dNu.Sj());
            boolean z10 = false;
            boolean z11 = this.Dq.liH() == 1;
            float f13 = iArrSP[0];
            float f14 = iArrSP[1];
            if (z11) {
                if (f11 > f12) {
                    Sj(f13, f14, f11, f12, true);
                    return;
                }
            } else if (f11 < f12) {
                Sj(f13, f14, f11, f12, false);
                return;
            }
            float f15 = f11 / f12;
            float f16 = f13 / f14;
            if (z11) {
                if (f16 < 0.5625f && f15 == 0.5625f) {
                    f11 = (9.0f * f14) / 16.0f;
                    z10 = true;
                    f12 = f14;
                }
            } else if (f16 > 1.7777778f && f15 == 1.7777778f) {
                f12 = (9.0f * f13) / 16.0f;
                z10 = true;
                f11 = f13;
            }
            if (z10) {
                f13 = f11;
                f14 = f12;
            }
            int i11 = (int) f13;
            int i12 = (int) f14;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i11, i12);
            layoutParams.addRule(13);
            if (Mts() != null) {
                if (Mts() instanceof TextureView) {
                    ((TextureView) Mts()).setLayoutParams(layoutParams);
                } else if (Mts() instanceof SurfaceView) {
                    ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.uP.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.height = i12;
                    layoutParams2.width = i11;
                    this.uP.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th2) {
            sU.Sj(this.Sj, "changeSize error", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(final long j11, final long j12) {
        this.Dq.TKC(j11);
        this.uA = j11;
        this.Yf = j12;
        final int iA = c6.a.a(j11, j12);
        this.TKC.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.4
            @Override // java.lang.Runnable
            public void run() {
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.Sj(j11, j12);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.Sj(iA);
                try {
                    if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley != null) {
                        ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).ley.Sj(j11, j12);
                    }
                } catch (Throwable th2) {
                    sU.Sj(((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Sj, "onProgressUpdate error: ", th2);
                }
            }
        });
    }

    private void xD() {
        this.vS.TKC(LD());
        this.vS.Sj(this.f21046ib);
        this.FPG = System.currentTimeMillis();
        this.Jcg.TKC(8);
        this.Jcg.TKC(0);
        Sj(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.aa.EjP.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS == null) {
                    return;
                }
                Sj.this.FPG = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).Jcg.EjP(0);
                ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).vS.Sj(true, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uA, ((com.bytedance.sdk.openadsdk.core.aa.Sj.Sj) Sj.this).uvD);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj, u5.b
    public void EjP() {
        TKC();
    }

    public void FPG() {
        vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.Sj(2);
        }
    }

    public void JcM() {
        this.WMZ.Sj((a) null, 0, 0);
    }

    public com.bykv.vk.openvk.Sj.Sj.Sj.vS.a Mts() {
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB = this.Jcg;
        if (hiB != null) {
            return hiB.Fmk();
        }
        return null;
    }

    public void Sj(InterfaceC0272Sj interfaceC0272Sj) {
        this.Ei = interfaceC0272Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj, com.bytedance.sdk.openadsdk.core.aa.sP.Sj
    public void Sj(c cVar, View view) {
        TKC tkc = this.vS;
        if (tkc == null) {
            return;
        }
        if (tkc.vS()) {
            Sj();
            this.Jcg.sP(true, false);
            this.Jcg.vS();
            return;
        }
        if (this.vS.Jcg()) {
            sP();
            com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB = this.Jcg;
            if (hiB != null) {
                hiB.sP(false, false);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB2 = this.Jcg;
        if (hiB2 != null) {
            hiB2.TKC(this.uP);
        }
        EjP(this.uA);
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB3 = this.Jcg;
        if (hiB3 != null) {
            hiB3.sP(false, false);
        }
    }

    protected void Sj(boolean z10, float f11, float f12) {
        try {
            Objects.toString(this.Dq.xD());
            if (!HpB() || z10) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f11, (int) f12);
                layoutParams.addRule(13);
                if (Mts() != null) {
                    if (Mts() instanceof TextureView) {
                        ((TextureView) Mts()).setLayoutParams(layoutParams);
                    } else if (Mts() instanceof SurfaceView) {
                        ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.uP.getLayoutParams();
                    if (this.uP.getHeight() > 0) {
                        float fMin = Math.min(this.uP.getWidth() / f11, this.uP.getHeight() / f12);
                        if (layoutParams2 != null) {
                            layoutParams.width = (int) (f11 * fMin);
                            layoutParams.height = (int) (f12 * fMin);
                            if (Mts() instanceof TextureView) {
                                ((TextureView) Mts()).setLayoutParams(layoutParams);
                            } else if (Mts() instanceof SurfaceView) {
                                ((SurfaceView) Mts()).setLayoutParams(layoutParams);
                            }
                            if (this.f21046ib.HiB == 4) {
                                layoutParams2.width = layoutParams.width;
                                layoutParams2.height = layoutParams.height;
                                this.uP.setLayoutParams(layoutParams2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            sU.Sj(this.Sj, "changeSize error", th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj, u5.b
    public void Sj(boolean z10, int i11) {
        TKC();
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj, u5.b
    public boolean Sj(@NonNull com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc) {
        int iRiZ;
        View view;
        if (this.vS != null) {
            return false;
        }
        tkc.Fmk();
        if (TextUtils.isEmpty(tkc.Fmk())) {
            return false;
        }
        sP(tkc);
        tkc.TKC(1);
        this.JcM = !tkc.Fmk().startsWith("http");
        if (this.LqL != null) {
            if (this.f21046ib.HiB == 1) {
                com.bytedance.sdk.openadsdk.core.model.sU sUVar = this.Dq;
                iRiZ = (sUVar == null || sUVar.sP() < 0) ? dNu.EjP().TEQ(String.valueOf(this.Fm)) : this.Dq.sP();
            } else {
                com.bytedance.sdk.openadsdk.core.model.sU sUVar2 = this.Dq;
                iRiZ = (sUVar2 == null || sUVar2.Sj() < 0) ? dNu.EjP().RiZ(String.valueOf(this.Fm)) : this.Dq.Sj();
            }
            ViewGroup viewGroup = this.uP;
            if (viewGroup != null && (view = (View) viewGroup.getParent()) != null) {
                try {
                    View viewFindViewById = view.findViewById(Zq.f21127aa);
                    View viewFindViewById2 = view.findViewById(Zq.IPx);
                    vS vSVar = this.LqL;
                    FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                    vSVar.Sj(viewFindViewById2, friendlyObstructionPurpose);
                    this.LqL.Sj(viewFindViewById, friendlyObstructionPurpose);
                } catch (Throwable unused) {
                }
            }
            this.LqL.Sj(iRiZ > 0, iRiZ / 1000.0f);
        }
        Yf();
        if (tkc.Jcg() > 0) {
            long jJcg = tkc.Jcg();
            this.uA = jJcg;
            this.TEQ = Math.max(this.TEQ, jJcg);
        }
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
            this.Jcg.Jcg();
            this.Jcg.TKC(tkc.HiB(), tkc.vS());
            this.Jcg.TKC(this.uP);
        }
        TKC tkc2 = new TKC();
        this.vS = tkc2;
        tkc2.Sj(this.WMZ);
        RiZ();
        this.Wjd = 0L;
        xD();
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj, u5.b
    public void TKC() {
        TKC tkc = this.vS;
        if (tkc == null) {
            return;
        }
        tkc.aa();
        this.vS = null;
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.uA();
        }
        this.TKC.removeCallbacks(this.f21043jb);
        this.TKC.removeCallbacksAndMessages(null);
        vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.EjP();
        }
    }

    protected void TzV() {
    }

    public void WMZ() {
        if (this.xD || !this.sU.get()) {
            return;
        }
        ley();
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.Dq.GMp();
        if (sjGMp == null || sjGMp.Sj() == null) {
            return;
        }
        sjGMp.Sj().TKC(HiB());
    }

    public void Wjd() {
        vS vSVar = this.LqL;
        if (vSVar != null) {
            vSVar.Sj(13);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj
    public boolean kF() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.aa.Sj.Sj, u5.b
    public void sP() {
        com.bytedance.sdk.openadsdk.core.aa.sP.HiB hiB = this.Jcg;
        if (hiB != null) {
            hiB.Sj();
            this.Jcg.Zq();
            this.Jcg.TzV();
        }
        TKC tkc = this.vS;
        if (tkc != null) {
            if (!tkc.Jcg()) {
                this.vS.Sj(false, this.uA, this.uvD);
            } else if (!this.Fmk) {
                sP(this.LD);
            } else if (com.bytedance.sdk.openadsdk.core.uA.kF()) {
                this.vS.sP(3);
                TKC tkc2 = this.vS;
                tkc2.Sj(false, tkc2.dNu(), this.uvD);
            } else {
                dx();
            }
        }
        if (this.xD || !this.sU.get()) {
            return;
        }
        ley();
        com.bytedance.sdk.openadsdk.core.Ym.Sj sjGMp = this.Dq.GMp();
        if (sjGMp == null || sjGMp.Sj() == null) {
            return;
        }
        sjGMp.Sj().TKC(HiB());
    }
}
