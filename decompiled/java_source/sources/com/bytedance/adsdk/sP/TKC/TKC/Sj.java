package com.bytedance.adsdk.sP.TKC.TKC;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.sP.Sj.sP.uvD;
import com.bytedance.adsdk.sP.TKC.sP.sef;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj implements com.bytedance.adsdk.sP.Sj.Sj.HiB, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    final uvD EjP;
    private final Paint Fmk;
    float HiB;
    private final Matrix LD;
    private boolean LqL;
    private final RectF RiZ;
    final Matrix Sj;
    final HiB TKC;
    private final RectF TzV;
    private Paint Yf;
    private final Paint Ym;
    private final RectF Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final Paint f20782aa;
    private final RectF dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private com.bytedance.adsdk.sP.Sj.sP.Dq f20783dx;
    private float fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private Sj f20784ib;
    private Sj kF;
    private boolean ley;
    final com.bytedance.adsdk.sP.uA sP;
    private final String sU;
    private final Paint sef;
    private List<Sj> uP;
    private final RectF uvD;
    BlurMaskFilter vS;
    private final List<com.bytedance.adsdk.sP.Sj.sP.Sj<?, ?>> wE;
    private com.bytedance.adsdk.sP.Sj.sP.EjP zR;
    private final Path Jcg = new Path();
    private final Matrix Dq = new Matrix();
    private final Matrix uA = new Matrix();
    private final Paint TEQ = new com.bytedance.adsdk.sP.Sj.Sj(1);

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.TKC.TKC.Sj$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] Sj;
        static final /* synthetic */ int[] sP;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.values().length];
            sP = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                sP[com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                sP[com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                sP[com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[HiB.Sj.values().length];
            Sj = iArr2;
            try {
                iArr2[HiB.Sj.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Sj[HiB.Sj.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Sj[HiB.Sj.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                Sj[HiB.Sj.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                Sj[HiB.Sj.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                Sj[HiB.Sj.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                Sj[HiB.Sj.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    Sj(com.bytedance.adsdk.sP.uA uAVar, HiB hiB) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.Ym = new com.bytedance.adsdk.sP.Sj.Sj(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f20782aa = new com.bytedance.adsdk.sP.Sj.Sj(1, mode2);
        com.bytedance.adsdk.sP.Sj.Sj sj2 = new com.bytedance.adsdk.sP.Sj.Sj(1);
        this.Fmk = sj2;
        this.sef = new com.bytedance.adsdk.sP.Sj.Sj(PorterDuff.Mode.CLEAR);
        this.Zq = new RectF();
        this.uvD = new RectF();
        this.dNu = new RectF();
        this.TzV = new RectF();
        this.RiZ = new RectF();
        this.Sj = new Matrix();
        this.wE = new ArrayList();
        this.ley = true;
        this.HiB = 0.0f;
        this.LD = new Matrix();
        this.fF = 1.0f;
        this.sP = uAVar;
        this.TKC = hiB;
        this.sU = hiB.vS() + "#draw";
        if (hiB.aa() == HiB.sP.INVERT) {
            sj2.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            sj2.setXfermode(new PorterDuffXfermode(mode));
        }
        uvD uvdTEQ = hiB.Zq().TEQ();
        this.EjP = uvdTEQ;
        uvdTEQ.Sj((com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj) this);
        if (hiB.TEQ() != null && !hiB.TEQ().isEmpty()) {
            com.bytedance.adsdk.sP.Sj.sP.Dq dq2 = new com.bytedance.adsdk.sP.Sj.sP.Dq(hiB.TEQ());
            this.f20783dx = dq2;
            Iterator<com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path>> it = dq2.sP().iterator();
            while (it.hasNext()) {
                it.next().Sj(this);
            }
            for (com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3 : this.f20783dx.TKC()) {
                Sj(sj3);
                sj3.Sj(this);
            }
        }
        aa();
    }

    private void EjP(Canvas canvas, Matrix matrix, com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2, com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3) {
        com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.Ym);
        this.Jcg.set(sj2.Jcg());
        this.Jcg.transform(matrix);
        this.TEQ.setAlpha((int) (sj3.Jcg().intValue() * 2.55f));
        canvas.drawPath(this.Jcg, this.TEQ);
        canvas.restore();
    }

    private void Fmk() {
        this.sP.invalidateSelf();
    }

    private void HiB(Canvas canvas, Matrix matrix, com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2, com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3) {
        com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.Ym);
        canvas.drawRect(this.Zq, this.TEQ);
        this.f20782aa.setAlpha((int) (sj3.Jcg().intValue() * 2.55f));
        this.Jcg.set(sj2.Jcg());
        this.Jcg.transform(matrix);
        canvas.drawPath(this.Jcg, this.f20782aa);
        canvas.restore();
    }

    static Sj Sj(sP sPVar, HiB hiB, com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.Jcg jcg, Context context) {
        switch (AnonymousClass2.Sj[hiB.Ym().ordinal()]) {
            case 1:
                return new Jcg(uAVar, hiB, sPVar, jcg);
            case 2:
                return new sP(uAVar, hiB, jcg.sP(hiB.Jcg()), jcg, context);
            case 3:
                return new Dq(uAVar, hiB);
            case 4:
                if (Sj(uAVar, hiB, "text:")) {
                    return new TKC(uAVar, hiB, context);
                }
                return Sj(uAVar, hiB, "videoview:") ? new TEQ(uAVar, hiB, context) : new EjP(uAVar, hiB);
            case 5:
                return new vS(uAVar, hiB);
            case 6:
                return new uA(uAVar, hiB);
            default:
                Objects.toString(hiB.Ym());
                return null;
        }
    }

    private void Sj(Canvas canvas) {
        com.bytedance.adsdk.sP.HiB.Sj("Layer#clearLayer");
        RectF rectF = this.Zq;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.sef);
        com.bytedance.adsdk.sP.HiB.sP("Layer#clearLayer");
    }

    private void Sj(Canvas canvas, Matrix matrix) {
        com.bytedance.adsdk.sP.HiB.Sj("Layer#saveLayer");
        com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.Ym, 19);
        if (Build.VERSION.SDK_INT < 28) {
            Sj(canvas);
        }
        com.bytedance.adsdk.sP.HiB.sP("Layer#saveLayer");
        for (int i11 = 0; i11 < this.f20783dx.Sj().size(); i11++) {
            com.bytedance.adsdk.sP.TKC.sP.Dq dq2 = this.f20783dx.Sj().get(i11);
            com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2 = this.f20783dx.sP().get(i11);
            com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3 = this.f20783dx.TKC().get(i11);
            int i12 = AnonymousClass2.sP[dq2.Sj().ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    if (i11 == 0) {
                        this.TEQ.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.TEQ.setAlpha(255);
                        canvas.drawRect(this.Zq, this.TEQ);
                    }
                    if (dq2.EjP()) {
                        TKC(canvas, matrix, sj2, sj3);
                    } else {
                        Sj(canvas, matrix, sj2);
                    }
                } else if (i12 != 3) {
                    if (i12 == 4) {
                        if (dq2.EjP()) {
                            sP(canvas, matrix, sj2, sj3);
                        } else {
                            Sj(canvas, matrix, sj2, sj3);
                        }
                    }
                } else if (dq2.EjP()) {
                    HiB(canvas, matrix, sj2, sj3);
                } else {
                    EjP(canvas, matrix, sj2, sj3);
                }
            } else if (sef()) {
                this.TEQ.setAlpha(255);
                canvas.drawRect(this.Zq, this.TEQ);
            }
        }
        com.bytedance.adsdk.sP.HiB.Sj("Layer#restoreLayer");
        canvas.restore();
        com.bytedance.adsdk.sP.HiB.sP("Layer#restoreLayer");
    }

    private void Sj(Canvas canvas, Matrix matrix, com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2) {
        this.Jcg.set(sj2.Jcg());
        this.Jcg.transform(matrix);
        canvas.drawPath(this.Jcg, this.f20782aa);
    }

    private void Sj(Canvas canvas, Matrix matrix, com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2, com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3) {
        this.Jcg.set(sj2.Jcg());
        this.Jcg.transform(matrix);
        this.TEQ.setAlpha((int) (sj3.Jcg().intValue() * 2.55f));
        canvas.drawPath(this.Jcg, this.TEQ);
    }

    private void Sj(RectF rectF, Matrix matrix) {
        this.dNu.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (Jcg()) {
            int size = this.f20783dx.Sj().size();
            for (int i11 = 0; i11 < size; i11++) {
                com.bytedance.adsdk.sP.TKC.sP.Dq dq2 = this.f20783dx.Sj().get(i11);
                Path pathJcg = this.f20783dx.sP().get(i11).Jcg();
                if (pathJcg != null) {
                    this.Jcg.set(pathJcg);
                    this.Jcg.transform(matrix);
                    int i12 = AnonymousClass2.sP[dq2.Sj().ordinal()];
                    if (i12 == 1 || i12 == 2) {
                        return;
                    }
                    if ((i12 == 3 || i12 == 4) && dq2.EjP()) {
                        return;
                    }
                    this.Jcg.computeBounds(this.RiZ, false);
                    if (i11 == 0) {
                        this.dNu.set(this.RiZ);
                    } else {
                        RectF rectF2 = this.dNu;
                        rectF2.set(Math.min(rectF2.left, this.RiZ.left), Math.min(this.dNu.top, this.RiZ.top), Math.max(this.dNu.right, this.RiZ.right), Math.max(this.dNu.bottom, this.RiZ.bottom));
                    }
                }
            }
            if (rectF.intersect(this.dNu)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private static boolean Sj(com.bytedance.adsdk.sP.uA uAVar, HiB hiB, String str) {
        com.bytedance.adsdk.sP.TEQ teqVS;
        if (uAVar == null || hiB == null || str == null || (teqVS = uAVar.vS(hiB.Jcg())) == null) {
            return false;
        }
        return str.equals(teqVS.TEQ());
    }

    private void TKC(float f11) {
        this.sP.wE().TKC().Sj(this.TKC.vS(), f11);
    }

    private void TKC(Canvas canvas, Matrix matrix, com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2, com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3) {
        com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.f20782aa);
        canvas.drawRect(this.Zq, this.TEQ);
        this.f20782aa.setAlpha((int) (sj3.Jcg().intValue() * 2.55f));
        this.Jcg.set(sj2.Jcg());
        this.Jcg.transform(matrix);
        canvas.drawPath(this.Jcg, this.f20782aa);
        canvas.restore();
    }

    private void Zq() {
        if (this.uP != null) {
            return;
        }
        if (this.kF == null) {
            this.uP = Collections.emptyList();
            return;
        }
        this.uP = new ArrayList();
        for (Sj sj2 = this.kF; sj2 != null; sj2 = sj2.kF) {
            this.uP.add(sj2);
        }
    }

    private void aa() {
        if (this.TKC.EjP().isEmpty()) {
            sP(true);
            return;
        }
        com.bytedance.adsdk.sP.Sj.sP.EjP ejP = new com.bytedance.adsdk.sP.Sj.sP.EjP(this.TKC.EjP());
        this.zR = ejP;
        ejP.Sj();
        this.zR.Sj(new com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj() { // from class: com.bytedance.adsdk.sP.TKC.TKC.Sj.1
            @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
            public void Sj() {
                Sj sj2 = Sj.this;
                sj2.sP(sj2.zR.uA() == 1.0f);
            }
        });
        sP(this.zR.Jcg().floatValue() == 1.0f);
        Sj(this.zR);
    }

    private void sP(Canvas canvas, Matrix matrix, com.bytedance.adsdk.sP.Sj.sP.Sj<sef, Path> sj2, com.bytedance.adsdk.sP.Sj.sP.Sj<Integer, Integer> sj3) {
        com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.TEQ);
        canvas.drawRect(this.Zq, this.TEQ);
        this.Jcg.set(sj2.Jcg());
        this.Jcg.transform(matrix);
        this.TEQ.setAlpha((int) (sj3.Jcg().intValue() * 2.55f));
        canvas.drawPath(this.Jcg, this.f20782aa);
        canvas.restore();
    }

    private void sP(RectF rectF, Matrix matrix) {
        if (TKC() && this.TKC.aa() != HiB.sP.INVERT) {
            this.TzV.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f20784ib.Sj(this.TzV, matrix, true);
            if (rectF.intersect(this.TzV)) {
                return;
            }
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(boolean z10) {
        if (z10 != this.ley) {
            this.ley = z10;
            Fmk();
        }
    }

    private boolean sef() {
        if (this.f20783dx.sP().isEmpty()) {
            return false;
        }
        for (int i11 = 0; i11 < this.f20783dx.Sj().size(); i11++) {
            if (this.f20783dx.Sj().get(i11).Sj() != com.bytedance.adsdk.sP.TKC.sP.Dq.Sj.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    public boolean Dq() {
        return this.ley;
    }

    public Matrix EjP() {
        return this.LD;
    }

    public String HiB() {
        HiB hiB = this.TKC;
        if (hiB != null) {
            return hiB.Jcg();
        }
        return null;
    }

    boolean Jcg() {
        com.bytedance.adsdk.sP.Sj.sP.Dq dq2 = this.f20783dx;
        return (dq2 == null || dq2.sP().isEmpty()) ? false : true;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        Fmk();
    }

    void Sj(float f11) {
        this.EjP.Sj(f11);
        if (this.f20783dx != null) {
            for (int i11 = 0; i11 < this.f20783dx.sP().size(); i11++) {
                this.f20783dx.sP().get(i11).Sj(f11);
            }
        }
        com.bytedance.adsdk.sP.Sj.sP.EjP ejP = this.zR;
        if (ejP != null) {
            ejP.Sj(f11);
        }
        Sj sj2 = this.f20784ib;
        if (sj2 != null) {
            sj2.Sj(f11);
        }
        for (int i12 = 0; i12 < this.wE.size(); i12++) {
            this.wE.get(i12).Sj(f11);
        }
    }

    protected void Sj(int i11) {
        this.fF = ((this.EjP.Sj() != null ? this.EjP.Sj().Jcg().intValue() : 100) / 100.0f) * (i11 / 255.0f);
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(Canvas canvas, Matrix matrix, int i11) {
        Paint paint;
        Integer numJcg;
        com.bytedance.adsdk.sP.HiB.Sj(this.sU);
        if (!this.ley || this.TKC.zR()) {
            com.bytedance.adsdk.sP.HiB.sP(this.sU);
            return;
        }
        Zq();
        com.bytedance.adsdk.sP.HiB.Sj("Layer#parentMatrix");
        this.LD.set(matrix);
        this.Dq.reset();
        this.Dq.set(matrix);
        for (int size = this.uP.size() - 1; size >= 0; size--) {
            this.Dq.preConcat(this.uP.get(size).EjP.EjP());
        }
        com.bytedance.adsdk.sP.HiB.sP("Layer#parentMatrix");
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Integer> Sj = this.EjP.Sj();
        int iIntValue = (int) ((((i11 / 255.0f) * ((Sj == null || (numJcg = Sj.Jcg()) == null) ? 100 : numJcg.intValue())) / 100.0f) * 255.0f);
        if (!TKC() && !Jcg()) {
            this.Dq.preConcat(this.EjP.EjP());
            com.bytedance.adsdk.sP.HiB.Sj("Layer#drawLayer");
            sP(canvas, this.Dq, iIntValue);
            com.bytedance.adsdk.sP.HiB.sP("Layer#drawLayer");
            TKC(com.bytedance.adsdk.sP.HiB.sP(this.sU));
            return;
        }
        com.bytedance.adsdk.sP.HiB.Sj("Layer#computeBounds");
        Sj(this.Zq, this.Dq, false);
        sP(this.Zq, matrix);
        this.Dq.preConcat(this.EjP.EjP());
        Sj(this.Zq, this.Dq);
        this.uvD.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        canvas.getMatrix(this.uA);
        if (!this.uA.isIdentity()) {
            Matrix matrix2 = this.uA;
            matrix2.invert(matrix2);
            this.uA.mapRect(this.uvD);
        }
        if (!this.Zq.intersect(this.uvD)) {
            this.Zq.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
        com.bytedance.adsdk.sP.HiB.sP("Layer#computeBounds");
        if (this.Zq.width() >= 1.0f && this.Zq.height() >= 1.0f) {
            com.bytedance.adsdk.sP.HiB.Sj("Layer#saveLayer");
            this.TEQ.setAlpha(255);
            com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.TEQ);
            com.bytedance.adsdk.sP.HiB.sP("Layer#saveLayer");
            Sj(canvas);
            com.bytedance.adsdk.sP.HiB.Sj("Layer#drawLayer");
            sP(canvas, this.Dq, iIntValue);
            com.bytedance.adsdk.sP.HiB.sP("Layer#drawLayer");
            if (Jcg()) {
                Sj(canvas, this.Dq);
            }
            if (TKC()) {
                com.bytedance.adsdk.sP.HiB.Sj("Layer#drawMatte");
                com.bytedance.adsdk.sP.HiB.Sj("Layer#saveLayer");
                com.bytedance.adsdk.sP.vS.vS.Sj(canvas, this.Zq, this.Fmk, 19);
                com.bytedance.adsdk.sP.HiB.sP("Layer#saveLayer");
                Sj(canvas);
                this.f20784ib.Sj(canvas, matrix, iIntValue);
                com.bytedance.adsdk.sP.HiB.Sj("Layer#restoreLayer");
                canvas.restore();
                com.bytedance.adsdk.sP.HiB.sP("Layer#restoreLayer");
                com.bytedance.adsdk.sP.HiB.sP("Layer#drawMatte");
            }
            com.bytedance.adsdk.sP.HiB.Sj("Layer#restoreLayer");
            canvas.restore();
            com.bytedance.adsdk.sP.HiB.sP("Layer#restoreLayer");
        }
        if (this.LqL && (paint = this.Yf) != null) {
            paint.setStyle(Paint.Style.STROKE);
            this.Yf.setColor(-251901);
            this.Yf.setStrokeWidth(4.0f);
            canvas.drawRect(this.Zq, this.Yf);
            this.Yf.setStyle(Paint.Style.FILL);
            this.Yf.setColor(1357638635);
            canvas.drawRect(this.Zq, this.Yf);
        }
        TKC(com.bytedance.adsdk.sP.HiB.sP(this.sU));
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.HiB
    public void Sj(RectF rectF, Matrix matrix, boolean z10) {
        this.Zq.set(0.0f, 0.0f, 0.0f, 0.0f);
        Zq();
        this.Sj.set(matrix);
        if (z10) {
            List<Sj> list = this.uP;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.Sj.preConcat(this.uP.get(size).EjP.EjP());
                }
            } else {
                Sj sj2 = this.kF;
                if (sj2 != null) {
                    this.Sj.preConcat(sj2.EjP.EjP());
                }
            }
        }
        this.Sj.preConcat(this.EjP.EjP());
    }

    public void Sj(com.bytedance.adsdk.sP.Sj.sP.Sj<?, ?> sj2) {
        if (sj2 == null) {
            return;
        }
        this.wE.add(sj2);
    }

    void Sj(Sj sj2) {
        this.f20784ib = sj2;
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<com.bytedance.adsdk.sP.Sj.Sj.TKC> list, List<com.bytedance.adsdk.sP.Sj.Sj.TKC> list2) {
    }

    void Sj(boolean z10) {
        if (z10 && this.Yf == null) {
            this.Yf = new com.bytedance.adsdk.sP.Sj.Sj();
        }
        this.LqL = z10;
    }

    public com.bytedance.adsdk.sP.TKC.sP.Sj TEQ() {
        return this.TKC.ib();
    }

    boolean TKC() {
        return this.f20784ib != null;
    }

    public com.bytedance.adsdk.sP.HiB.TEQ Ym() {
        return this.TKC.kF();
    }

    public BlurMaskFilter sP(float f11) {
        if (this.HiB == f11) {
            return this.vS;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f11 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.vS = blurMaskFilter;
        this.HiB = f11;
        return blurMaskFilter;
    }

    HiB sP() {
        return this.TKC;
    }

    public void sP(Canvas canvas, Matrix matrix, int i11) {
        Sj(i11);
    }

    void sP(Sj sj2) {
        this.kF = sj2;
    }

    public String uA() {
        return this.TKC.vS();
    }

    public float vS() {
        return this.fF;
    }
}
