package com.bytedance.adsdk.sP;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.adsdk.sP.HiB.zR;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class uA extends Drawable implements Animatable, Drawable.Callback {
    private boolean Dq;
    private boolean Ei;
    private Jcg EjP;
    private RectF FPG;
    private Matrix Fm;
    private String Fmk;
    private final com.bytedance.adsdk.sP.vS.TKC HiB;
    private Paint JcM;
    private boolean Jcg;
    private Rect LD;
    private Bitmap LqL;
    private Rect Mts;
    private boolean RiZ;
    String Sj;
    private final ArrayList<Sj> TEQ;
    sU TKC;
    private boolean TzV;
    private Rect WMZ;
    private RectF Wjd;
    private Canvas Yf;
    private final ValueAnimator.AnimatorUpdateListener Ym;
    private com.bytedance.adsdk.sP.sP.Sj Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private com.bytedance.adsdk.sP.sP.sP f20792aa;
    private boolean dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private int f20793dx;
    private RectF fF;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private boolean f20794ib;

    /* JADX INFO: renamed from: jb, reason: collision with root package name */
    private View f20795jb;
    private boolean kF;
    private final Matrix ley;
    TKC sP;
    private com.bytedance.adsdk.sP.TKC.TKC.sP sU;
    private EjP sef;
    private sP uA;
    private RiZ uP;
    private Map<String, Typeface> uvD;
    private boolean vS;
    private boolean wE;
    private Matrix xD;
    private boolean zR;

    private interface Sj {
        void Sj(Jcg jcg);
    }

    private enum sP {
        NONE,
        PLAY,
        RESUME
    }

    public uA() {
        com.bytedance.adsdk.sP.vS.TKC tkc = new com.bytedance.adsdk.sP.vS.TKC();
        this.HiB = tkc;
        this.vS = true;
        this.Jcg = false;
        this.Dq = false;
        this.uA = sP.NONE;
        this.TEQ = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.adsdk.sP.uA.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (uA.this.sU != null) {
                    uA.this.sU.Sj(uA.this.HiB.vS());
                }
            }
        };
        this.Ym = animatorUpdateListener;
        this.TzV = false;
        this.RiZ = true;
        this.f20793dx = 255;
        this.uP = RiZ.AUTOMATIC;
        this.wE = false;
        this.ley = new Matrix();
        this.Ei = false;
        tkc.addUpdateListener(animatorUpdateListener);
    }

    private Context FPG() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private boolean JcM() {
        return this.vS || this.Jcg;
    }

    private com.bytedance.adsdk.sP.sP.Sj Mts() {
        if (getCallback() == null) {
            return null;
        }
        if (this.Zq == null) {
            com.bytedance.adsdk.sP.sP.Sj sj2 = new com.bytedance.adsdk.sP.sP.Sj(getCallback(), this.sP);
            this.Zq = sj2;
            String str = this.Sj;
            if (str != null) {
                sj2.Sj(str);
            }
        }
        return this.Zq;
    }

    private void Sj(Context context) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return;
        }
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = new com.bytedance.adsdk.sP.TKC.TKC.sP(this, zR.Sj(jcg), jcg.Fmk(), jcg, context);
        this.sU = sPVar;
        if (this.f20794ib) {
            sPVar.Sj(true);
        }
        this.sU.sP(this.RiZ);
    }

    private void Sj(Canvas canvas) {
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = this.sU;
        Jcg jcg = this.EjP;
        if (sPVar == null || jcg == null) {
            return;
        }
        this.ley.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.ley.preScale(bounds.width() / jcg.EjP().width(), bounds.height() / jcg.EjP().height());
            this.ley.preTranslate(bounds.left, bounds.top);
        }
        sPVar.Sj(canvas, this.ley, this.f20793dx);
    }

    private void Sj(Canvas canvas, com.bytedance.adsdk.sP.TKC.TKC.sP sPVar) {
        if (this.EjP == null || sPVar == null) {
            return;
        }
        Wjd();
        canvas.getMatrix(this.xD);
        canvas.getClipBounds(this.LD);
        Sj(this.LD, this.fF);
        this.xD.mapRect(this.fF);
        Sj(this.fF, this.LD);
        if (this.RiZ) {
            this.Wjd.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            sPVar.Sj(this.Wjd, (Matrix) null, false);
        }
        this.xD.mapRect(this.Wjd);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        Sj(this.Wjd, fWidth, fHeight);
        if (!xD()) {
            RectF rectF = this.Wjd;
            Rect rect = this.LD;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.Wjd.width());
        int iCeil2 = (int) Math.ceil(this.Wjd.height());
        if (iCeil == 0 || iCeil2 == 0) {
            return;
        }
        sP(iCeil, iCeil2);
        if (this.Ei) {
            this.ley.set(this.xD);
            this.ley.preScale(fWidth, fHeight);
            Matrix matrix = this.ley;
            RectF rectF2 = this.Wjd;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.LqL.eraseColor(0);
            sPVar.Sj(this.Yf, this.ley, this.f20793dx);
            this.xD.invert(this.Fm);
            this.Fm.mapRect(this.FPG, this.Wjd);
            Sj(this.FPG, this.Mts);
        }
        this.WMZ.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.LqL, this.WMZ, this.Mts, this.JcM);
    }

    private void Sj(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    private void Sj(RectF rectF, float f11, float f12) {
        rectF.set(rectF.left * f11, rectF.top * f12, rectF.right * f11, rectF.bottom * f12);
    }

    private void Sj(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private com.bytedance.adsdk.sP.sP.sP WMZ() {
        com.bytedance.adsdk.sP.sP.sP sPVar = this.f20792aa;
        if (sPVar != null && !sPVar.Sj(FPG())) {
            this.f20792aa = null;
        }
        if (this.f20792aa == null) {
            this.f20792aa = new com.bytedance.adsdk.sP.sP.sP(getCallback(), this.Fmk, this.sef, this.EjP.uvD());
        }
        return this.f20792aa;
    }

    private void Wjd() {
        if (this.Yf != null) {
            return;
        }
        this.Yf = new Canvas();
        this.Wjd = new RectF();
        this.xD = new Matrix();
        this.Fm = new Matrix();
        this.LD = new Rect();
        this.fF = new RectF();
        this.JcM = new com.bytedance.adsdk.sP.Sj.Sj();
        this.WMZ = new Rect();
        this.Mts = new Rect();
        this.FPG = new RectF();
    }

    private void fF() {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return;
        }
        this.wE = this.uP.Sj(Build.VERSION.SDK_INT, jcg.Sj(), jcg.sP());
    }

    private void sP(int i11, int i12) {
        Bitmap bitmap = this.LqL;
        if (bitmap == null || bitmap.getWidth() < i11 || this.LqL.getHeight() < i12) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
            this.LqL = bitmapCreateBitmap;
            this.Yf.setBitmap(bitmapCreateBitmap);
            this.Ei = true;
            return;
        }
        if (this.LqL.getWidth() > i11 || this.LqL.getHeight() > i12) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.LqL, 0, 0, i11, i12);
            this.LqL = bitmapCreateBitmap2;
            this.Yf.setBitmap(bitmapCreateBitmap2);
            this.Ei = true;
        }
    }

    private boolean xD() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        return (parent instanceof ViewGroup) && !((ViewGroup) parent).getClipChildren();
    }

    public TzV Dq() {
        Jcg jcg = this.EjP;
        if (jcg != null) {
            return jcg.TKC();
        }
        return null;
    }

    public void Dq(boolean z10) {
        this.HiB.TKC(z10);
    }

    public String EjP() {
        return this.Fmk;
    }

    public void EjP(final float f11) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.5
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.EjP(f11);
                }
            });
            return;
        }
        HiB.Sj("Drawable#setProgress");
        this.HiB.Sj(this.EjP.Sj(f11));
        HiB.sP("Drawable#setProgress");
    }

    public void EjP(int i11) {
        this.HiB.setRepeatMode(i11);
    }

    public void EjP(final String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.2
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg2) {
                    uA.this.EjP(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.sP.TKC.vS vSVarTKC = jcg.TKC(str);
        if (vSVarTKC != null) {
            int i11 = (int) vSVarTKC.Sj;
            Sj(i11, ((int) vSVarTKC.sP) + i11);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public void EjP(boolean z10) {
        if (this.f20794ib == z10) {
            return;
        }
        this.f20794ib = z10;
        com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = this.sU;
        if (sPVar != null) {
            sPVar.Sj(z10);
        }
    }

    public void Fmk() {
        if (this.sU == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.7
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.Fmk();
                }
            });
            return;
        }
        fF();
        if (JcM() || dx() == 0) {
            if (isVisible()) {
                this.HiB.sef();
                this.uA = sP.NONE;
            } else {
                this.uA = sP.RESUME;
            }
        }
        if (JcM()) {
            return;
        }
        TKC((int) (uvD() < 0.0f ? sef() : Zq()));
        this.HiB.aa();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public Bitmap HiB(String str) {
        com.bytedance.adsdk.sP.sP.sP sPVarWMZ = WMZ();
        if (sPVarWMZ != null) {
            return sPVarWMZ.Sj(str);
        }
        return null;
    }

    public void HiB(int i11) {
        this.HiB.setRepeatCount(i11);
    }

    public void HiB(boolean z10) {
        this.kF = z10;
    }

    public boolean HiB() {
        return this.TzV;
    }

    public void Jcg(String str) {
        this.Sj = str;
        com.bytedance.adsdk.sP.sP.Sj sjMts = Mts();
        if (sjMts != null) {
            sjMts.Sj(str);
        }
    }

    public void Jcg(boolean z10) {
        this.Jcg = z10;
    }

    public boolean Jcg() {
        return this.wE;
    }

    public RectF LD() {
        return this.Wjd;
    }

    public void LqL() {
        this.TEQ.clear();
        this.HiB.Fmk();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public int RiZ() {
        return (int) this.HiB.Jcg();
    }

    public Bitmap Sj(String str, Bitmap bitmap) {
        com.bytedance.adsdk.sP.sP.sP sPVarWMZ = WMZ();
        if (sPVarWMZ == null) {
            return null;
        }
        Bitmap bitmapSj = sPVarWMZ.Sj(str, bitmap);
        invalidateSelf();
        return bitmapSj;
    }

    public Typeface Sj(com.bytedance.adsdk.sP.TKC.TKC tkc) {
        Map<String, Typeface> map = this.uvD;
        if (map != null) {
            String strSj = tkc.Sj();
            if (map.containsKey(strSj)) {
                return map.get(strSj);
            }
            String strSP = tkc.sP();
            if (map.containsKey(strSP)) {
                return map.get(strSP);
            }
            String str = tkc.Sj() + "-" + tkc.TKC();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        com.bytedance.adsdk.sP.sP.Sj sjMts = Mts();
        if (sjMts != null) {
            return sjMts.Sj(tkc);
        }
        return null;
    }

    public View Sj() {
        return this.f20795jb;
    }

    public void Sj(final float f11) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.9
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg2) {
                    uA.this.Sj(f11);
                }
            });
        } else {
            Sj((int) com.bytedance.adsdk.sP.vS.HiB.Sj(jcg.vS(), this.EjP.Jcg(), f11));
        }
    }

    public void Sj(final int i11) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.8
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.Sj(i11);
                }
            });
        } else {
            this.HiB.Sj(i11);
        }
    }

    public void Sj(final int i11, final int i12) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.3
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.Sj(i11, i12);
                }
            });
        } else {
            this.HiB.Sj(i11, i12 + 0.99f);
        }
    }

    public void Sj(Animator.AnimatorListener animatorListener) {
        this.HiB.addListener(animatorListener);
    }

    public void Sj(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.HiB.addUpdateListener(animatorUpdateListener);
    }

    public void Sj(View view) {
        this.f20795jb = view;
    }

    public void Sj(EjP ejP) {
        this.sef = ejP;
        com.bytedance.adsdk.sP.sP.sP sPVar = this.f20792aa;
        if (sPVar != null) {
            sPVar.Sj(ejP);
        }
    }

    public void Sj(RiZ riZ) {
        this.uP = riZ;
        fF();
    }

    public void Sj(TKC tkc) {
        this.sP = tkc;
        com.bytedance.adsdk.sP.sP.Sj sj2 = this.Zq;
        if (sj2 != null) {
            sj2.Sj(tkc);
        }
    }

    public void Sj(sU sUVar) {
        this.TKC = sUVar;
    }

    public void Sj(Boolean bool) {
        this.vS = bool.booleanValue();
    }

    public void Sj(String str) {
        this.Fmk = str;
    }

    public void Sj(Map<String, Typeface> map) {
        if (map == this.uvD) {
            return;
        }
        this.uvD = map;
        invalidateSelf();
    }

    public void Sj(boolean z10) {
        if (z10 != this.RiZ) {
            this.RiZ = z10;
            com.bytedance.adsdk.sP.TKC.TKC.sP sPVar = this.sU;
            if (sPVar != null) {
                sPVar.sP(z10);
            }
            invalidateSelf();
        }
    }

    public void Sj(boolean z10, Context context) {
        if (this.dNu == z10) {
            return;
        }
        this.dNu = z10;
        if (this.EjP != null) {
            Sj(context);
        }
    }

    public boolean Sj(Jcg jcg, Context context) {
        if (this.EjP == jcg) {
            return false;
        }
        this.Ei = true;
        TEQ();
        this.EjP = jcg;
        Sj(context);
        this.HiB.Sj(jcg);
        EjP(this.HiB.getAnimatedFraction());
        Iterator it = new ArrayList(this.TEQ).iterator();
        while (it.hasNext()) {
            Sj sj2 = (Sj) it.next();
            if (sj2 != null) {
                sj2.Sj(jcg);
            }
            it.remove();
        }
        this.TEQ.clear();
        jcg.sP(this.zR);
        fF();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void TEQ() {
        if (this.HiB.isRunning()) {
            this.HiB.cancel();
            if (!isVisible()) {
                this.uA = sP.NONE;
            }
        }
        this.EjP = null;
        this.sU = null;
        this.f20792aa = null;
        this.HiB.Dq();
        invalidateSelf();
    }

    public void TKC(float f11) {
        this.HiB.TKC(f11);
    }

    public void TKC(final int i11) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.4
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.TKC(i11);
                }
            });
        } else {
            this.HiB.Sj(i11);
        }
    }

    public void TKC(final String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.13
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg2) {
                    uA.this.TKC(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.sP.TKC.vS vSVarTKC = jcg.TKC(str);
        if (vSVarTKC != null) {
            sP((int) (vSVarTKC.Sj + vSVarTKC.sP));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void TKC(boolean z10) {
        this.zR = z10;
        Jcg jcg = this.EjP;
        if (jcg != null) {
            jcg.sP(z10);
        }
    }

    public boolean TKC() {
        return this.RiZ;
    }

    public void TzV() {
        this.HiB.removeAllListeners();
    }

    public float Yf() {
        return this.HiB.vS();
    }

    public void Ym() {
        if (this.sU == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.6
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.Ym();
                }
            });
            return;
        }
        fF();
        if (JcM() || dx() == 0) {
            if (isVisible()) {
                this.HiB.Ym();
                this.uA = sP.NONE;
            } else {
                this.uA = sP.PLAY;
            }
        }
        if (JcM()) {
            return;
        }
        TKC((int) (uvD() < 0.0f ? sef() : Zq()));
        this.HiB.aa();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public float Zq() {
        return this.HiB.uvD();
    }

    public void aa() {
        this.TEQ.clear();
        this.HiB.aa();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public void dNu() {
        this.HiB.removeAllUpdateListeners();
        this.HiB.addUpdateListener(this.Ym);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        HiB.Sj("Drawable#draw");
        try {
            if (this.wE) {
                Sj(canvas, this.sU);
            } else {
                Sj(canvas);
            }
        } catch (Throwable unused) {
        }
        this.Ei = false;
        HiB.sP("Drawable#draw");
    }

    public int dx() {
        return this.HiB.getRepeatCount();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f20793dx;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return -1;
        }
        return jcg.EjP().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return -1;
        }
        return jcg.EjP().width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    boolean ib() {
        if (isVisible()) {
            return this.HiB.isRunning();
        }
        sP sPVar = this.uA;
        return sPVar == sP.PLAY || sPVar == sP.RESUME;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.Ei) {
            return;
        }
        this.Ei = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return zR();
    }

    public sU kF() {
        return this.TKC;
    }

    public void ley() {
        this.TEQ.clear();
        this.HiB.cancel();
        if (isVisible()) {
            return;
        }
        this.uA = sP.NONE;
    }

    public com.bytedance.adsdk.sP.TKC.TKC.sP sP() {
        return this.sU;
    }

    public void sP(final float f11) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.11
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg2) {
                    uA.this.sP(f11);
                }
            });
        } else {
            this.HiB.sP(com.bytedance.adsdk.sP.vS.HiB.Sj(jcg.vS(), this.EjP.Jcg(), f11));
        }
    }

    public void sP(final int i11) {
        if (this.EjP == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.10
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg) {
                    uA.this.sP(i11);
                }
            });
        } else {
            this.HiB.sP(i11 + 0.99f);
        }
    }

    public void sP(Animator.AnimatorListener animatorListener) {
        this.HiB.removeListener(animatorListener);
    }

    public void sP(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.HiB.removeUpdateListener(animatorUpdateListener);
    }

    public void sP(final String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            this.TEQ.add(new Sj() { // from class: com.bytedance.adsdk.sP.uA.12
                @Override // com.bytedance.adsdk.sP.uA.Sj
                public void Sj(Jcg jcg2) {
                    uA.this.sP(str);
                }
            });
            return;
        }
        com.bytedance.adsdk.sP.TKC.vS vSVarTKC = jcg.TKC(str);
        if (vSVarTKC != null) {
            Sj((int) vSVarTKC.Sj);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void sP(boolean z10) {
        this.TzV = z10;
    }

    @SuppressLint({"WrongConstant"})
    public int sU() {
        return this.HiB.getRepeatMode();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j11) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j11);
    }

    public float sef() {
        return this.HiB.Zq();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i11) {
        this.f20793dx = i11;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            sP sPVar = this.uA;
            if (sPVar == sP.PLAY) {
                Ym();
            } else if (sPVar == sP.RESUME) {
                Fmk();
            }
        } else if (this.HiB.isRunning()) {
            LqL();
            this.uA = sP.RESUME;
        } else if (zIsVisible) {
            this.uA = sP.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        Ym();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        aa();
    }

    public boolean uA() {
        return this.kF;
    }

    public boolean uP() {
        return this.uvD == null && this.TKC == null && this.EjP.sef().size() > 0;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public float uvD() {
        return this.HiB.TEQ();
    }

    public RiZ vS() {
        return this.wE ? RiZ.SOFTWARE : RiZ.HARDWARE;
    }

    public TEQ vS(String str) {
        Jcg jcg = this.EjP;
        if (jcg == null) {
            return null;
        }
        return jcg.uvD().get(str);
    }

    public void vS(boolean z10) {
        this.Dq = z10;
    }

    public Jcg wE() {
        return this.EjP;
    }

    public boolean zR() {
        com.bytedance.adsdk.sP.vS.TKC tkc = this.HiB;
        if (tkc == null) {
            return false;
        }
        return tkc.isRunning();
    }
}
