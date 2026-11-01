package com.bytedance.adsdk.ugeno.yoga.sP;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.Jcg.TKC;
import com.bytedance.adsdk.ugeno.yoga.Dq;
import com.bytedance.adsdk.ugeno.yoga.HiB;
import com.bytedance.adsdk.ugeno.yoga.Jcg;
import com.bytedance.adsdk.ugeno.yoga.Zq;
import com.bytedance.adsdk.ugeno.yoga.aa;
import com.bytedance.adsdk.ugeno.yoga.sP;
import com.bytedance.adsdk.ugeno.yoga.uvD;
import com.bytedance.adsdk.ugeno.yoga.vS;

/* JADX INFO: loaded from: classes2.dex */
public class Sj extends com.bytedance.adsdk.ugeno.sP.Sj<Dq> {
    private vS AVc;
    private uvD RrR;
    private Jcg SP;
    private aa Xqg;
    private sP dLt;
    private sP zwV;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.yoga.sP.Sj$Sj, reason: collision with other inner class name */
    public static class C0209Sj extends com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj {
        private boolean Ei;
        public int FPG;
        private boolean Fm;
        private boolean HpB;
        public int JcM;
        public float LD;
        public float LqL;
        public int Mts;
        public int WMZ;
        public float Wjd;
        public int Yf;
        public int fF;

        /* JADX INFO: renamed from: jb, reason: collision with root package name */
        private boolean f20851jb;
        public float ley;
        public int wE;
        private boolean xD;
        private boolean xhi;

        public C0209Sj(com.bytedance.adsdk.ugeno.sP.Sj sj2) {
            super(sj2);
            this.wE = 1;
            this.ley = 0.0f;
            this.LqL = 1.0f;
            this.Yf = sP.AUTO.Sj();
            this.LD = -1.0f;
            this.fF = Zq.RELATIVE.Sj();
        }

        @Override // com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj
        public void Sj(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            super.Sj(context, str, str2);
            str.hashCode();
            switch (str) {
                case "flexBasis":
                    this.xD = true;
                    this.LD = TKC.Sj(str2, -1.0f);
                    break;
                case "bottom":
                    this.f20851jb = true;
                    this.WMZ = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "top":
                    this.Fm = true;
                    this.JcM = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "left":
                    this.Ei = true;
                    this.Mts = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "order":
                    this.wE = TKC.Sj(str2, 1);
                    break;
                case "ratio":
                    this.xhi = true;
                    this.Wjd = TKC.Sj(str2, 0.0f);
                    break;
                case "right":
                    this.HpB = true;
                    this.FPG = (int) com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(context, TKC.Sj(str2, 0));
                    break;
                case "position":
                    this.fF = Zq.Sj(str2).Sj();
                    break;
                case "flexShrink":
                    this.LqL = TKC.Sj(str2, 1.0f);
                    break;
                case "flexGrow":
                    this.ley = TKC.Sj(str2, 0.0f);
                    break;
                case "alignSelf":
                    this.Yf = sP.Sj(str2).Sj();
                    break;
            }
        }

        public boolean TKC() {
            float f11 = this.Sj;
            if (f11 == -1.0f && this.sP == -1.0f) {
                return false;
            }
            return f11 == -2.0f || this.sP == -2.0f;
        }

        @Override // com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj
        /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
        public Dq.Sj Sj() {
            Dq.Sj sj2 = new Dq.Sj((int) this.Sj, (int) this.sP);
            sj2.aa((int) (this.sU ? this.vS : this.HiB));
            sj2.sef((int) (this.f20826dx ? this.Jcg : this.HiB));
            sj2.Ym((int) (this.zR ? this.Dq : this.HiB));
            sj2.Fmk((int) (this.f20827ib ? this.uA : this.HiB));
            sj2.Sj(this.wE);
            sj2.HiB(this.Yf);
            sj2.sP(this.ley);
            sj2.TKC(this.LqL);
            sj2.uvD(this.TKC);
            sj2.dNu(this.EjP);
            if (this.xD) {
                sj2.EjP(this.LD);
            }
            sj2.vS(this.fF);
            if (this.Fm) {
                sj2.Jcg(this.JcM);
            }
            if (this.f20851jb) {
                sj2.uA(this.WMZ);
            }
            if (this.Ei) {
                sj2.Dq(this.Mts);
            }
            if (this.HpB) {
                sj2.TEQ(this.FPG);
            }
            if (this.xhi && TKC()) {
                float f11 = this.Wjd;
                if (f11 > 0.0f) {
                    sj2.Zq(f11);
                }
            }
            return sj2;
        }

        @Override // com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj
        public String toString() {
            return "LayoutParams{mOrder=" + this.wE + ", mFlexGrow=" + this.ley + ", mFlexShrink=" + this.LqL + ", mAlignSelf=" + this.Yf + ", mFlexBasis=" + this.LD + ", mPosition=" + this.fF + ", mTop=" + this.JcM + ", mBottom=" + this.WMZ + ", mLeft=" + this.Mts + ", mRight=" + this.FPG + '}';
        }
    }

    public Sj(Context context) {
        super(context);
        this.AVc = vS.ROW;
        this.RrR = uvD.NO_WRAP;
        this.SP = Jcg.FLEX_START;
        sP sPVar = sP.STRETCH;
        this.dLt = sPVar;
        this.zwV = sPVar;
    }

    private void Sj(final ImageView imageView) {
        this.HiB.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.yoga.sP.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                aa aaVarSj;
                if (((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB == null || (aaVarSj = ((Dq) ((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB).Sj(imageView)) == null) {
                    return;
                }
                aaVarSj.EjP(((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB.getWidth());
                aaVarSj.vS(((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB.getHeight());
                ((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).HiB.requestLayout();
            }
        });
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    /* JADX INFO: renamed from: EjP, reason: merged with bridge method [inline-methods] */
    public C0209Sj TEQ() {
        return new C0209Sj(this);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    protected void Fmk() {
        if (this.fF) {
            this.Xqg.sP(HiB.ALL, this.wE);
        }
        if (this.JcM) {
            this.Xqg.sP(HiB.LEFT, this.ley);
        }
        if (this.WMZ) {
            this.Xqg.sP(HiB.RIGHT, this.LqL);
        }
        if (this.Mts) {
            this.Xqg.sP(HiB.TOP, this.Yf);
        }
        if (this.FPG) {
            this.Xqg.sP(HiB.BOTTOM, this.LD);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    protected void Sj(Drawable drawable) {
        ImageView.ScaleType scaleType;
        ImageView imageView = new ImageView(this.sP);
        imageView.setImageDrawable(drawable);
        if (!this.HpB || (scaleType = this.Fm) == ImageView.ScaleType.FIT_XY) {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            imageView.setScaleType(scaleType);
        }
        Dq.Sj sj2 = new Dq.Sj(-1, -1);
        sj2.vS(Zq.ABSOLUTE.Sj());
        T t11 = this.HiB;
        if (t11 instanceof Dq) {
            ((Dq) t11).addView(imageView, 0, sj2);
            Sj(imageView);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        super.Sj(tkc);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, ViewGroup.LayoutParams layoutParams) {
        if (tkc == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.add(tkc);
        View viewYm = tkc.Ym();
        if (viewYm != null) {
            ((Dq) this.HiB).addView(viewYm, layoutParams);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "alignItems":
                this.dLt = sP.Sj(str2);
                break;
            case "flexDirection":
                this.AVc = vS.Sj(str2);
                break;
            case "alignContent":
                this.zwV = sP.Sj(str2);
                break;
            case "flexWrap":
                this.RrR = uvD.Sj(str2);
                break;
            case "justifyContent":
                this.SP = Jcg.Sj(str2);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public Dq Sj() {
        Dq dq2 = new Dq(this.sP);
        dq2.Sj(this);
        this.Xqg = dq2.getYogaNode();
        return dq2;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        this.Xqg.Sj(this.AVc);
        this.Xqg.Sj(this.RrR);
        this.Xqg.Sj(this.SP);
        this.Xqg.Sj(this.dLt);
        this.Xqg.TKC(this.zwV);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    protected void wE() {
        ImageView.ScaleType scaleType;
        if (this.Ei) {
            com.bytedance.adsdk.ugeno.HiB.Sj().sP().Sj(this.uA, this.xD, new com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj() { // from class: com.bytedance.adsdk.ugeno.yoga.sP.Sj.1
                @Override // com.bytedance.adsdk.ugeno.Sj.InterfaceC0200Sj
                public void Sj(Bitmap bitmap) {
                    final Bitmap bitmapSj;
                    if (bitmap == null || (bitmapSj = com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).sP, bitmap, (int) ((com.bytedance.adsdk.ugeno.sP.TKC) Sj.this).f20833jb)) == null) {
                        return;
                    }
                    com.bytedance.adsdk.ugeno.Jcg.Dq.Sj(new Runnable() { // from class: com.bytedance.adsdk.ugeno.yoga.sP.Sj.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Sj.this.Sj(new BitmapDrawable(bitmapSj));
                        }
                    });
                }
            });
            return;
        }
        ImageView imageView = new ImageView(this.sP);
        com.bytedance.adsdk.ugeno.HiB.Sj().sP().Sj(this.uA, this.xD, imageView, this.HiB.getWidth(), this.HiB.getHeight());
        if (!this.HpB || (scaleType = this.Fm) == ImageView.ScaleType.FIT_XY) {
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        } else {
            imageView.setScaleType(scaleType);
        }
        Dq.Sj sj2 = new Dq.Sj(-1, -1);
        sj2.vS(Zq.ABSOLUTE.Sj());
        T t11 = this.HiB;
        if (t11 instanceof Dq) {
            ((Dq) t11).addView(imageView, 0, sj2);
            Sj(imageView);
        }
    }
}
