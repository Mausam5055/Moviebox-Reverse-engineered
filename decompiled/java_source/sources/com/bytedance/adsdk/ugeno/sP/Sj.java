package com.bytedance.adsdk.ugeno.sP;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj<E extends ViewGroup> extends TKC {
    protected List<TKC<View>> Sj;

    /* JADX INFO: renamed from: com.bytedance.adsdk.ugeno.sP.Sj$Sj, reason: collision with other inner class name */
    public static class C0204Sj {
        protected float Dq;
        protected float Fmk;
        protected float HiB;
        protected float Jcg;
        protected boolean RiZ;
        protected float TEQ;
        protected boolean TzV;
        protected float Ym;
        protected boolean Zq;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        protected float f20825aa;
        protected boolean dNu;

        /* JADX INFO: renamed from: dx, reason: collision with root package name */
        protected boolean f20826dx;

        /* JADX INFO: renamed from: ib, reason: collision with root package name */
        protected boolean f20827ib;
        protected ViewGroup.LayoutParams kF;
        protected boolean sU;
        protected float sef;
        protected float uA;
        protected Sj uP;
        protected boolean uvD;
        protected float vS;
        protected boolean zR;
        protected float Sj = -2.0f;
        protected float sP = -2.0f;
        protected float TKC = 0.0f;
        protected float EjP = 0.0f;

        public C0204Sj(Sj sj2) {
            this.uP = sj2;
        }

        public ViewGroup.LayoutParams Sj() {
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((int) this.Sj, (int) this.sP);
            marginLayoutParams.leftMargin = (int) (this.sU ? this.vS : this.HiB);
            marginLayoutParams.rightMargin = (int) (this.f20826dx ? this.Jcg : this.HiB);
            marginLayoutParams.topMargin = (int) (this.zR ? this.Dq : this.HiB);
            marginLayoutParams.bottomMargin = (int) (this.f20827ib ? this.uA : this.HiB);
            return marginLayoutParams;
        }

        public void Sj(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            str.hashCode();
            switch (str) {
                case "paddingLeft":
                    this.Ym = Dq.Sj(context, str2);
                    this.uvD = true;
                    break;
                case "minWidth":
                    this.TKC = Dq.Sj(context, str2);
                    break;
                case "height":
                    if (TextUtils.equals(str2, "match_parent")) {
                        Sj sj2 = this.uP;
                        if (sj2 != null && sj2.LD() && this.uP.FPG() == -2 && !this.uP.HpB()) {
                            this.sP = -2.0f;
                        } else {
                            this.sP = -1.0f;
                        }
                        break;
                    } else {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.sP = Dq.Sj(context, str2);
                        } else {
                            this.sP = -2.0f;
                        }
                        break;
                    }
                    break;
                case "margin":
                    this.HiB = Dq.Sj(context, str2);
                    break;
                case "marginTop":
                    this.Dq = Dq.Sj(context, str2);
                    this.zR = true;
                    break;
                case "padding":
                    this.TEQ = Dq.Sj(context, str2);
                    this.Zq = true;
                    break;
                case "marginBottom":
                    this.uA = Dq.Sj(context, str2);
                    this.f20827ib = true;
                    break;
                case "minHeight":
                    this.EjP = Dq.Sj(context, str2);
                    break;
                case "paddingTop":
                    this.f20825aa = Dq.Sj(context, str2);
                    this.TzV = true;
                    break;
                case "width":
                    if (TextUtils.equals(str2, "match_parent")) {
                        Sj sj3 = this.uP;
                        if (sj3 != null && sj3.LD() && this.uP.Mts() == -2 && !this.uP.HpB()) {
                            this.Sj = -2.0f;
                        } else {
                            this.Sj = -1.0f;
                        }
                        break;
                    } else {
                        if (!TextUtils.equals(str2, "wrap_content")) {
                            this.Sj = Dq.Sj(context, str2);
                        } else {
                            this.Sj = -2.0f;
                        }
                        break;
                    }
                    break;
                case "paddingBottom":
                    this.sef = Dq.Sj(context, str2);
                    this.RiZ = true;
                    break;
                case "paddingRight":
                    this.Fmk = Dq.Sj(context, str2);
                    this.dNu = true;
                    break;
                case "marginRight":
                    this.Jcg = Dq.Sj(context, str2);
                    this.f20826dx = true;
                    break;
                case "marginLeft":
                    this.vS = Dq.Sj(context, str2);
                    this.sU = true;
                    break;
            }
        }

        public String toString() {
            return "LayoutParams{mWidth=" + this.Sj + ", mHeight=" + this.sP + ", mMargin=" + this.HiB + ", mMarginLeft=" + this.vS + ", mMarginRight=" + this.Jcg + ", mMarginTop=" + this.Dq + ", mMarginBottom=" + this.uA + ", mParams=" + this.kF + '}';
        }
    }

    public Sj(Context context) {
        this(context, null);
    }

    public Sj(Context context, Sj sj2) {
        super(context, sj2);
        this.Sj = new ArrayList();
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public TKC Sj(String str) {
        TKC<T> TKC;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.Ym)) {
            return this;
        }
        for (TKC<View> tkc : this.Sj) {
            if (tkc != null && (TKC = tkc.TKC(str)) != 0) {
                return TKC;
            }
        }
        return null;
    }

    public void Sj(TKC tkc) {
        if (tkc == null) {
            return;
        }
        this.Sj.add(tkc);
        View viewYm = tkc.Ym();
        if (viewYm != null) {
            ((ViewGroup) this.HiB).addView(viewYm);
        }
    }

    public void Sj(TKC tkc, ViewGroup.LayoutParams layoutParams) {
        if (tkc == null) {
            return;
        }
        this.Sj.add(tkc);
        View viewYm = tkc.Ym();
        if (viewYm != null) {
            ((ViewGroup) this.HiB).addView(viewYm, layoutParams);
        }
    }

    public C0204Sj TEQ() {
        return new C0204Sj(this);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public TKC sP(String str) {
        TKC<T> tkcEjP;
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, this.f20828aa)) {
            return this;
        }
        for (TKC<View> tkc : this.Sj) {
            if (tkc != null && (tkcEjP = tkc.EjP(str)) != 0) {
                return tkcEjP;
            }
        }
        return null;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
    }

    public List<TKC<View>> uA() {
        return this.Sj;
    }
}
