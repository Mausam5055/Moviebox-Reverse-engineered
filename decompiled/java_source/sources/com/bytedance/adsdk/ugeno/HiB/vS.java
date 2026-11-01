package com.bytedance.adsdk.ugeno.HiB;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends com.bytedance.adsdk.ugeno.sP.Sj<HiB> {
    private int AVc;
    private int RrR;
    private int SP;
    private int dLt;
    private int zwV;

    public static class Sj extends com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj {
        public int JcM;
        public float LD;
        public float LqL;
        public int Mts;
        public int WMZ;
        public int Yf;
        public int fF;
        public float ley;
        public int wE;

        public Sj(com.bytedance.adsdk.ugeno.sP.Sj sj2) {
            super(sj2);
            this.wE = 1;
            this.ley = 0.0f;
            this.LqL = 0.0f;
            this.Yf = -1;
            this.LD = -1.0f;
            this.fF = -1;
            this.JcM = -1;
            this.WMZ = 16777215;
            this.Mts = 16777215;
        }

        private float EjP(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return -1.0f;
            }
        }

        private int HiB(String str) {
            str.hashCode();
            switch (str) {
                case "stretch":
                    return 4;
                case "baseline":
                    return 3;
                case "center":
                    return 2;
                case "flex_start":
                    return 0;
                case "flex_end":
                    return 1;
                default:
                    return -1;
            }
        }

        private int Sj(String str) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }

        private float TKC(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        private float sP(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj
        public void Sj(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
            }
            super.Sj(context, str, str2);
            str.hashCode();
            switch (str) {
                case "flexBasisPercent":
                    this.LD = EjP(str2);
                    break;
                case "order":
                    this.wE = Sj(str2);
                    break;
                case "flexShrink":
                    this.LqL = TKC(str2);
                    break;
                case "flexGrow":
                    this.ley = sP(str2);
                    break;
                case "alignSelf":
                    this.Yf = HiB(str2);
                    break;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj
        /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
        public HiB.Sj Sj() {
            HiB.Sj sj2 = new HiB.Sj((int) this.Sj, (int) this.sP);
            ((ViewGroup.MarginLayoutParams) sj2).leftMargin = (int) this.vS;
            ((ViewGroup.MarginLayoutParams) sj2).rightMargin = (int) this.Jcg;
            ((ViewGroup.MarginLayoutParams) sj2).topMargin = (int) this.Dq;
            ((ViewGroup.MarginLayoutParams) sj2).bottomMargin = (int) this.uA;
            sj2.TKC(this.wE);
            sj2.EjP(this.Yf);
            sj2.Sj(this.ley);
            sj2.sP(this.LqL);
            sj2.TKC(this.LD);
            return sj2;
        }

        @Override // com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj
        public String toString() {
            return "LayoutParams{mWidth=" + this.Sj + ", mHeight=" + this.sP + ", mMargin=" + this.HiB + ", mMarginLeft=" + this.vS + ", mMarginRight=" + this.Jcg + ", mMarginTop=" + this.Dq + ", mMarginBottom=" + this.uA + ", mParams=" + this.kF + ", mOrder=" + this.wE + ", mFlexGrow=" + this.ley + ", mFlexShrink=" + this.LqL + ", mAlignSelf=" + this.Yf + ", mFlexBasisPercent=" + this.LD + ", mMinWidth=" + this.fF + ", mMinHeight=" + this.JcM + ", mMaxWidth=" + this.WMZ + ", mMaxHeight=" + this.Mts + "} " + super.toString();
        }
    }

    public vS(Context context) {
        super(context);
    }

    private int Dq(String str) {
        str.hashCode();
        return !str.equals("wrap") ? 0 : 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x003f  */
    private int TEQ(String str) {
        byte b11;
        switch (str) {
            case "stretch":
                b11 = 4;
                break;
            case "baseline":
                b11 = 3;
                break;
            case "center":
                b11 = 2;
                break;
            case "flex_start":
                b11 = 0;
                break;
            case "flex_end":
                b11 = 1;
                break;
            default:
                b11 = -1;
                break;
        }
        if (b11 == 0) {
            return 0;
        }
        if (b11 == 1) {
            return 1;
        }
        if (b11 != 2) {
            return b11 != 3 ? 4 : 3;
        }
        return 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    private int Ym(String str) {
        byte b11;
        switch (str) {
            case "stretch":
                b11 = 5;
                break;
            case "center":
                b11 = 2;
                break;
            case "space_around":
                b11 = 3;
                break;
            case "flex_start":
                b11 = 0;
                break;
            case "space_between":
                b11 = 4;
                break;
            case "flex_end":
                b11 = 1;
                break;
            default:
                b11 = -1;
                break;
        }
        if (b11 == 0) {
            return 0;
        }
        if (b11 == 1) {
            return 1;
        }
        if (b11 == 2) {
            return 2;
        }
        if (b11 != 3) {
            return b11 != 4 ? 5 : 3;
        }
        return 4;
    }

    private int uA(String str) {
        str.hashCode();
        switch (str) {
            case "center":
                return 2;
            case "space_around":
                return 4;
            case "space_between":
                return 3;
            case "flex_end":
                return 1;
            default:
                return 0;
        }
    }

    int Jcg(String str) {
        str.hashCode();
        switch (str) {
            case "column_reverse":
                return 3;
            case "column":
                return 2;
            case "row_reverse":
                return 1;
            default:
                return 0;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
        }
        super.Sj(str, str2);
        str.hashCode();
        switch (str) {
            case "alignItems":
                this.dLt = TEQ(str2);
                break;
            case "flexDirection":
                this.AVc = Jcg(str2);
                break;
            case "alignContent":
                this.zwV = Ym(str2);
                break;
            case "flexWrap":
                this.RrR = Dq(str2);
                break;
            case "justifyContent":
                this.SP = uA(str2);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    public com.bytedance.adsdk.ugeno.sP.Sj.C0204Sj TEQ() {
        return new Sj(this);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    /* JADX INFO: renamed from: TKC, reason: merged with bridge method [inline-methods] */
    public HiB Sj() {
        HiB hiB = new HiB(this.sP);
        hiB.Sj(this);
        return hiB;
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        ((HiB) this.HiB).setFlexDirection(this.AVc);
        ((HiB) this.HiB).setFlexWrap(this.RrR);
        ((HiB) this.HiB).setJustifyContent(this.SP);
        ((HiB) this.HiB).setAlignItems(this.dLt);
        ((HiB) this.HiB).setAlignContent(this.zwV);
    }
}
