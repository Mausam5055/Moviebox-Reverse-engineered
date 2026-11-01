package com.bytedance.sdk.component.HiB.TKC;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.PointerIconCompat;
import com.bytedance.sdk.component.HiB.Dq;
import com.bytedance.sdk.component.HiB.RiZ;
import com.bytedance.sdk.component.HiB.TEQ;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.dx;
import com.bytedance.sdk.component.HiB.sef;
import com.bytedance.sdk.component.HiB.uA;
import com.bytedance.sdk.component.HiB.uvD;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements uA {
    private int Dq;
    private String EjP;
    private volatile boolean Fmk;
    private uvD HiB;
    private Bitmap.Config Jcg;
    private boolean LD;
    private boolean LqL;
    private final Handler RiZ;
    Future<?> Sj;
    private Dq TEQ;
    private String TKC;
    private Queue<com.bytedance.sdk.component.HiB.HiB.uA> TzV;
    private ExecutorService Yf;
    private int Ym;
    private boolean Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private WeakReference<ImageView> f20859aa;
    private int dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private com.bytedance.sdk.component.HiB.Jcg f20860dx;
    private sef fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private vS f20861ib;
    private com.bytedance.sdk.component.HiB.TKC.Sj kF;
    private int ley;
    private String sP;
    private boolean sU;
    private boolean sef;
    private int uA;
    private com.bytedance.sdk.component.HiB.sP uP;
    private RiZ uvD;
    private ImageView.ScaleType vS;
    private int wE;
    private int zR;

    private class Sj implements uvD {
        private uvD sP;

        public Sj(uvD uvd) {
            this.sP = uvd;
        }

        private boolean Sj(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(TKC.this.TKC)) ? false : true;
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(final int i11, final String str, final Throwable th2) {
            if (TKC.this.dNu == 5) {
                TKC.this.RiZ.post(new Runnable() { // from class: com.bytedance.sdk.component.HiB.TKC.TKC.Sj.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Sj.this.sP != null) {
                            Sj.this.sP.Sj(i11, str, th2);
                        }
                    }
                });
                return;
            }
            uvD uvd = this.sP;
            if (uvd != null) {
                uvd.Sj(i11, str, th2);
            }
        }

        @Override // com.bytedance.sdk.component.HiB.uvD
        public void Sj(final Ym ym2) {
            Bitmap bitmapSj;
            final ImageView imageView = (ImageView) TKC.this.f20859aa.get();
            if (imageView != null && TKC.this.Ym != 3 && Sj(imageView) && (ym2.sP() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) ym2.sP();
                TKC.this.RiZ.post(new Runnable() { // from class: com.bytedance.sdk.component.HiB.TKC.TKC.Sj.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (TKC.this.TEQ != null && (ym2.sP() instanceof Bitmap) && (bitmapSj = TKC.this.TEQ.Sj((Bitmap) ym2.sP())) != null) {
                    ym2.Sj(bitmapSj);
                }
            } catch (Throwable unused) {
            }
            if (TKC.this.dNu == 5) {
                TKC.this.RiZ.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.component.HiB.TKC.TKC.Sj.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Sj.this.sP != null) {
                            Sj.this.sP.Sj(ym2);
                        }
                    }
                });
                return;
            }
            uvD uvd = this.sP;
            if (uvd != null) {
                uvd.Sj(ym2);
            }
        }
    }

    public static class sP implements TEQ {
        private int Dq;
        private String EjP;
        private boolean Fmk;
        private ImageView.ScaleType HiB;
        private int Jcg;
        private int RiZ;
        private uvD Sj;
        private String TKC;
        private int TzV;
        private RiZ Ym;
        private com.bytedance.sdk.component.HiB.sP Zq;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private boolean f20862aa;
        private Dq dNu;

        /* JADX INFO: renamed from: dx, reason: collision with root package name */
        private ExecutorService f20863dx;

        /* JADX INFO: renamed from: ib, reason: collision with root package name */
        private sef f20864ib;
        private ImageView sP;
        private boolean sU;
        private String sef;
        private vS uvD;
        private Bitmap.Config vS;
        private boolean zR;
        private int uA = 1;
        private int TEQ = 5;

        public sP(vS vSVar) {
            this.uvD = vSVar;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ EjP(int i11) {
            this.TzV = i11;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ HiB(int i11) {
            this.RiZ = i11;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(int i11) {
            this.Jcg = i11;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(Bitmap.Config config) {
            this.vS = config;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(ImageView.ScaleType scaleType) {
            this.HiB = scaleType;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(Dq dq2) {
            this.dNu = dq2;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(RiZ riZ) {
            this.Ym = riZ;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(String str) {
            this.TKC = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ Sj(boolean z10) {
            this.Fmk = z10;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public uA Sj(ImageView imageView) {
            this.sP = imageView;
            return new TKC(this).ib();
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public uA Sj(uvD uvd) {
            this.Sj = uvd;
            return new TKC(this).ib();
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public uA Sj(uvD uvd, int i11) {
            this.TEQ = i11;
            return Sj(uvd);
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ TKC(int i11) {
            this.uA = i11;
            return this;
        }

        public TEQ TKC(String str) {
            this.EjP = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ sP(int i11) {
            this.Dq = i11;
            return this;
        }

        @Override // com.bytedance.sdk.component.HiB.TEQ
        public TEQ sP(String str) {
            this.sef = str;
            return this;
        }
    }

    private TKC(sP sPVar) {
        this.TzV = new LinkedBlockingQueue();
        this.RiZ = new Handler(Looper.getMainLooper());
        this.sU = true;
        this.sP = sPVar.EjP;
        this.HiB = new Sj(sPVar.Sj);
        this.f20859aa = new WeakReference<>(sPVar.sP);
        this.vS = sPVar.HiB;
        this.Jcg = sPVar.vS;
        this.Dq = sPVar.Jcg;
        this.uA = sPVar.Dq;
        this.Ym = sPVar.uA;
        this.dNu = sPVar.TEQ;
        this.uvD = sPVar.Ym;
        this.uP = Sj(sPVar);
        if (!TextUtils.isEmpty(sPVar.TKC)) {
            sP(sPVar.TKC);
            Sj(sPVar.TKC);
        }
        this.sef = sPVar.f20862aa;
        this.Zq = sPVar.Fmk;
        this.f20861ib = sPVar.uvD;
        this.TEQ = sPVar.dNu;
        this.ley = sPVar.RiZ;
        this.wE = sPVar.TzV;
        this.Yf = sPVar.f20863dx;
        this.LqL = sPVar.sU;
        this.LD = sPVar.zR;
        this.fF = sPVar.f20864ib;
        this.TzV.add(new com.bytedance.sdk.component.HiB.HiB.TKC());
    }

    private com.bytedance.sdk.component.HiB.sP Sj(sP sPVar) {
        if (sPVar.Zq != null) {
            return sPVar.Zq;
        }
        return !TextUtils.isEmpty(sPVar.sef) ? com.bytedance.sdk.component.HiB.TKC.Sj.Sj.Sj(new File(sPVar.sef)) : com.bytedance.sdk.component.HiB.TKC.Sj.Sj.TEQ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(int i11, String str, Throwable th2) {
        new com.bytedance.sdk.component.HiB.HiB.Dq(i11, str, th2).Sj(this);
        this.TzV.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public uA ib() {
        try {
            if (this.f20861ib == null) {
                uvD uvd = this.HiB;
                if (uvd != null) {
                    uvd.Sj(1005, "not init !", null);
                }
                return this;
            }
            String strSj = Sj();
            if (TextUtils.isEmpty(strSj)) {
                uvD uvd2 = this.HiB;
                if (uvd2 != null) {
                    uvd2.Sj(2000, "url is empty", null);
                }
                return this;
            }
            dx dxVarHiB = this.f20861ib.HiB();
            if (!strSj.startsWith("http://") && !strSj.startsWith("https://") && dxVarHiB != null) {
                dxVarHiB.Sj(PointerIconCompat.TYPE_CELL, "url is not validate ".concat(strSj));
            }
            ExecutorService executorServiceJcg = this.Yf == null ? this.f20861ib.Jcg() : null;
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.HiB.TKC.TKC.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.HiB.HiB.uA uAVar;
                    while (!TKC.this.Fmk && (uAVar = (com.bytedance.sdk.component.HiB.HiB.uA) TKC.this.TzV.poll()) != null) {
                        try {
                            if (TKC.this.uvD != null) {
                                TKC.this.uvD.Sj(uAVar.Sj(), TKC.this);
                            }
                            uAVar.Sj(TKC.this);
                            if (TKC.this.uvD != null) {
                                TKC.this.uvD.sP(uAVar.Sj(), TKC.this);
                            }
                        } catch (Throwable th2) {
                            TKC.this.Sj(2000, th2.getMessage(), th2);
                            if (TKC.this.uvD != null) {
                                TKC.this.uvD.sP("exception", TKC.this);
                                return;
                            }
                            return;
                        }
                    }
                    if (TKC.this.Fmk) {
                        TKC.this.Sj(1003, "canceled", null);
                    }
                }
            };
            if (this.LD) {
                runnable.run();
            } else {
                ExecutorService executorService = this.Yf;
                if (executorService != null) {
                    this.Sj = executorService.submit(runnable);
                } else if (executorServiceJcg != null) {
                    this.Sj = executorServiceJcg.submit(runnable);
                }
            }
            return this;
        } catch (Exception e11) {
            Log.e("ImageRequest", e11.getMessage());
        }
    }

    public uvD Dq() {
        return this.HiB;
    }

    @Override // com.bytedance.sdk.component.HiB.uA
    public ImageView.ScaleType EjP() {
        return this.vS;
    }

    public boolean Fmk() {
        return this.sef;
    }

    @Override // com.bytedance.sdk.component.HiB.uA
    public Bitmap.Config HiB() {
        return this.Jcg;
    }

    public int Jcg() {
        return this.ley;
    }

    public com.bytedance.sdk.component.HiB.sP RiZ() {
        return this.uP;
    }

    @Override // com.bytedance.sdk.component.HiB.uA
    public String Sj() {
        return this.sP;
    }

    public void Sj(int i11) {
        this.zR = i11;
    }

    public void Sj(com.bytedance.sdk.component.HiB.Jcg jcg) {
        this.f20860dx = jcg;
    }

    public void Sj(com.bytedance.sdk.component.HiB.TKC.Sj sj2) {
        this.kF = sj2;
    }

    public void Sj(String str) {
        this.EjP = str;
    }

    public void Sj(boolean z10) {
        this.sU = z10;
    }

    public boolean Sj(com.bytedance.sdk.component.HiB.HiB.uA uAVar) {
        if (this.Fmk) {
            return false;
        }
        return this.TzV.add(uAVar);
    }

    public String TEQ() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.HiB.uA
    public int TKC() {
        return this.uA;
    }

    public vS TzV() {
        return this.f20861ib;
    }

    public Bitmap.Config Ym() {
        return this.Jcg;
    }

    public boolean Zq() {
        return this.sU;
    }

    public int aa() {
        return this.Ym;
    }

    public int dNu() {
        return this.zR;
    }

    public sef dx() {
        return this.fF;
    }

    @Override // com.bytedance.sdk.component.HiB.uA
    public int sP() {
        return this.Dq;
    }

    public void sP(String str) {
        WeakReference<ImageView> weakReference = this.f20859aa;
        if (weakReference != null && weakReference.get() != null) {
            this.f20859aa.get().setTag(1094453505, str);
        }
        this.TKC = str;
    }

    public boolean sU() {
        return this.LqL;
    }

    public boolean sef() {
        return this.Zq;
    }

    public String uA() {
        return this.EjP;
    }

    public com.bytedance.sdk.component.HiB.Jcg uvD() {
        return this.f20860dx;
    }

    public int vS() {
        return this.wE;
    }

    public String zR() {
        return TEQ() + aa();
    }
}
