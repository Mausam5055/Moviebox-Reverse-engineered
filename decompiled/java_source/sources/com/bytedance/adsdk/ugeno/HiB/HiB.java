package com.bytedance.adsdk.ugeno.HiB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.Jcg.Jcg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends ViewGroup implements com.bytedance.adsdk.ugeno.HiB.Sj {
    private Drawable Dq;
    private int EjP;
    private int[] Fmk;
    private int HiB;
    private Drawable Jcg;
    private int Sj;
    private int TEQ;
    private int TKC;
    private EjP.Sj TzV;
    private int Ym;
    private EjP Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20810aa;
    private com.bytedance.adsdk.ugeno.EjP dNu;
    private int sP;
    private SparseIntArray sef;
    private int uA;
    private List<TKC> uvD;
    private int vS;

    public static class Sj extends ViewGroup.MarginLayoutParams implements sP {
        public static final Parcelable.Creator<Sj> CREATOR = new Parcelable.Creator<Sj>() { // from class: com.bytedance.adsdk.ugeno.HiB.HiB.Sj.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public Sj createFromParcel(Parcel parcel) {
                return new Sj(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public Sj[] newArray(int i11) {
                return new Sj[i11];
            }
        };
        private int Dq;
        private int EjP;
        private float HiB;
        private int Jcg;
        private int Sj;
        private boolean TEQ;
        private float TKC;
        private float sP;
        private int uA;
        private int vS;

        public Sj(int i11, int i12) {
            super(new ViewGroup.LayoutParams(i11, i12));
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
        }

        protected Sj(Parcel parcel) {
            super(0, 0);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
            this.Sj = parcel.readInt();
            this.sP = parcel.readFloat();
            this.TKC = parcel.readFloat();
            this.EjP = parcel.readInt();
            this.HiB = parcel.readFloat();
            this.vS = parcel.readInt();
            this.Jcg = parcel.readInt();
            this.Dq = parcel.readInt();
            this.uA = parcel.readInt();
            this.TEQ = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }

        public Sj(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
        }

        public Sj(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
        }

        public Sj(Sj sj2) {
            super((ViewGroup.MarginLayoutParams) sj2);
            this.Sj = 1;
            this.sP = 0.0f;
            this.TKC = 0.0f;
            this.EjP = -1;
            this.HiB = -1.0f;
            this.vS = -1;
            this.Jcg = -1;
            this.Dq = 16777215;
            this.uA = 16777215;
            this.Sj = sj2.Sj;
            this.sP = sj2.sP;
            this.TKC = sj2.TKC;
            this.EjP = sj2.EjP;
            this.HiB = sj2.HiB;
            this.vS = sj2.vS;
            this.Jcg = sj2.Jcg;
            this.Dq = sj2.Dq;
            this.uA = sj2.uA;
            this.TEQ = sj2.TEQ;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int Dq() {
            return this.Jcg;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public float EjP() {
            return this.sP;
        }

        public void EjP(int i11) {
            this.EjP = i11;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int Fmk() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public float HiB() {
            return this.TKC;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int Jcg() {
            return this.vS;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int Sj() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        public void Sj(float f11) {
            this.sP = f11;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public void Sj(int i11) {
            this.vS = i11;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int TEQ() {
            return this.uA;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int TKC() {
            return this.Sj;
        }

        public void TKC(float f11) {
            this.HiB = f11;
        }

        public void TKC(int i11) {
            this.Sj = i11;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public boolean Ym() {
            return this.TEQ;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int Zq() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public float aa() {
            return this.HiB;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int sP() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        public void sP(float f11) {
            this.TKC = f11;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public void sP(int i11) {
            this.Jcg = i11;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int sef() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int uA() {
            return this.Dq;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int uvD() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.HiB.sP
        public int vS() {
            return this.EjP;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeInt(this.Sj);
            parcel.writeFloat(this.sP);
            parcel.writeFloat(this.TKC);
            parcel.writeInt(this.EjP);
            parcel.writeFloat(this.HiB);
            parcel.writeInt(this.vS);
            parcel.writeInt(this.Jcg);
            parcel.writeInt(this.Dq);
            parcel.writeInt(this.uA);
            parcel.writeByte(this.TEQ ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }
    }

    public HiB(Context context) {
        super(context, null);
        this.vS = -1;
        this.Zq = new EjP(this);
        this.uvD = new ArrayList();
        this.TzV = new EjP.Sj();
    }

    private boolean EjP(int i11) {
        if (i11 >= 0 && i11 < this.uvD.size()) {
            if (HiB(i11)) {
                if (Sj()) {
                    return (this.uA & 1) != 0;
                }
                return (this.TEQ & 1) != 0;
            }
            if (Sj()) {
                return (this.uA & 2) != 0;
            }
            if ((this.TEQ & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean EjP(int i11, int i12) {
        if (HiB(i11, i12)) {
            if (Sj()) {
                return (this.TEQ & 1) != 0;
            }
            return (this.uA & 1) != 0;
        }
        if (Sj()) {
            return (this.TEQ & 2) != 0;
        }
        return (this.uA & 2) != 0;
    }

    private boolean HiB(int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.uvD.get(i12).sP() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean HiB(int i11, int i12) {
        for (int i13 = 1; i13 <= i12; i13++) {
            View viewTKC = TKC(i11 - i13);
            if (viewTKC != null && viewTKC.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void Sj(int i11, int i12) {
        if (this.sef == null) {
            this.sef = new SparseIntArray(getChildCount());
        }
        if (this.Zq.sP(this.sef)) {
            this.Fmk = this.Zq.Sj(this.sef);
        }
        int i13 = this.Sj;
        if (i13 == 0 || i13 == 1) {
            sP(i11, i12);
        } else if (i13 == 2 || i13 == 3) {
            TKC(i11, i12);
        } else {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.Sj);
        }
    }

    private void Sj(int i11, int i12, int i13, int i14) {
        int sumOfCrossSize;
        int largestMainSize;
        int iResolveSizeAndState;
        int iResolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i12);
        int size = View.MeasureSpec.getSize(i12);
        int mode2 = View.MeasureSpec.getMode(i13);
        int size2 = View.MeasureSpec.getSize(i13);
        if (i11 == 0 || i11 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else {
            if (i11 != 2 && i11 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i11)));
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i14 = View.combineMeasuredStates(i14, 16777216);
            } else {
                size = largestMainSize;
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i12, i14);
        } else if (mode == 0) {
            iResolveSizeAndState = View.resolveSizeAndState(largestMainSize, i12, i14);
        } else {
            if (mode != 1073741824) {
                throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
            }
            if (size < largestMainSize) {
                i14 = View.combineMeasuredStates(i14, 16777216);
            }
            iResolveSizeAndState = View.resolveSizeAndState(size, i12, i14);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i14 = View.combineMeasuredStates(i14, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i13, i14);
        } else if (mode2 == 0) {
            iResolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i13, i14);
        } else {
            if (mode2 != 1073741824) {
                throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
            }
            if (size2 < sumOfCrossSize) {
                i14 = View.combineMeasuredStates(i14, 256);
            }
            iResolveSizeAndState2 = View.resolveSizeAndState(size2, i13, i14);
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    private void Sj(Canvas canvas, int i11, int i12, int i13) {
        Drawable drawable = this.Dq;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i11, i12, this.f20810aa + i11, i13 + i12);
        this.Dq.draw(canvas);
    }

    private void Sj(Canvas canvas, boolean z10, boolean z11) {
        int paddingLeft = getPaddingLeft();
        int iMax = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.uvD.size();
        for (int i11 = 0; i11 < size; i11++) {
            TKC tkc = this.uvD.get(i11);
            for (int i12 = 0; i12 < tkc.Dq; i12++) {
                int i13 = tkc.Zq + i12;
                View viewTKC = TKC(i13);
                if (viewTKC != null && viewTKC.getVisibility() != 8) {
                    Sj sj2 = (Sj) viewTKC.getLayoutParams();
                    if (EjP(i13, i12)) {
                        Sj(canvas, z10 ? viewTKC.getRight() + ((ViewGroup.MarginLayoutParams) sj2).rightMargin : (viewTKC.getLeft() - ((ViewGroup.MarginLayoutParams) sj2).leftMargin) - this.f20810aa, tkc.sP, tkc.Jcg);
                    }
                    if (i12 == tkc.Dq - 1 && (this.TEQ & 4) > 0) {
                        Sj(canvas, z10 ? (viewTKC.getLeft() - ((ViewGroup.MarginLayoutParams) sj2).leftMargin) - this.f20810aa : viewTKC.getRight() + ((ViewGroup.MarginLayoutParams) sj2).rightMargin, tkc.sP, tkc.Jcg);
                    }
                }
            }
            if (EjP(i11)) {
                sP(canvas, paddingLeft, z11 ? tkc.EjP : tkc.sP - this.Ym, iMax);
            }
            if (vS(i11) && (this.uA & 4) > 0) {
                sP(canvas, paddingLeft, z11 ? tkc.sP - this.Ym : tkc.EjP, iMax);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:48:0x0103  */
    /* JADX WARN: Code duplicated, block: B:51:0x010c  */
    /* JADX WARN: Code duplicated, block: B:53:0x0114  */
    /* JADX WARN: Code duplicated, block: B:54:0x0119  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x0157  */
    /* JADX WARN: Code duplicated, block: B:61:0x0181  */
    /* JADX WARN: Code duplicated, block: B:63:0x018e  */
    /* JADX WARN: Code duplicated, block: B:64:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:70:0x0200  */
    /* JADX WARN: Code duplicated, block: B:71:0x020b  */
    private void Sj(boolean z10, int i11, int i12, int i13, int i14) {
        float measuredWidth;
        float f11;
        float f12;
        float fMax;
        int i15;
        int i16;
        View viewTKC;
        int i17;
        int i18;
        int i19;
        char c11;
        Sj sj2;
        float f13;
        float f14;
        float f15;
        int i20;
        char c12;
        int i21;
        Sj sj3;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i22 = i13 - i11;
        int paddingBottom = (i14 - i12) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.uvD.size();
        int i23 = 0;
        while (i23 < size) {
            TKC tkc = this.uvD.get(i23);
            if (EjP(i23)) {
                int i24 = this.Ym;
                paddingBottom -= i24;
                paddingTop += i24;
            }
            int i25 = this.TKC;
            char c13 = 4;
            int i26 = 1;
            if (i25 == 0) {
                measuredWidth = paddingLeft;
                f11 = i22 - paddingRight;
            } else if (i25 != 1) {
                if (i25 == 2) {
                    int i27 = tkc.HiB;
                    measuredWidth = paddingLeft + ((i22 - i27) / 2.0f);
                    f11 = (i22 - paddingRight) - ((i22 - i27) / 2.0f);
                } else if (i25 == 3) {
                    measuredWidth = paddingLeft;
                    int iSP = tkc.sP();
                    f12 = (i22 - tkc.HiB) / (iSP != 1 ? iSP - 1 : 1.0f);
                    f11 = i22 - paddingRight;
                } else if (i25 == 4) {
                    int iSP2 = tkc.sP();
                    f12 = iSP2 != 0 ? (i22 - tkc.HiB) / iSP2 : 0.0f;
                    float f16 = f12 / 2.0f;
                    measuredWidth = paddingLeft + f16;
                    f11 = (i22 - paddingRight) - f16;
                } else {
                    if (i25 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.TKC);
                    }
                    int iSP3 = tkc.sP();
                    f12 = iSP3 != 0 ? (i22 - tkc.HiB) / (iSP3 + 1) : 0.0f;
                    measuredWidth = paddingLeft + f12;
                    f11 = (i22 - paddingRight) - f12;
                }
                fMax = Math.max(f12, 0.0f);
                i15 = 0;
                while (i15 < tkc.Dq) {
                    i16 = tkc.Zq + i15;
                    viewTKC = TKC(i16);
                    if (viewTKC != null) {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        c11 = c13;
                    } else if (viewTKC.getVisibility() != 8) {
                        sj2 = (Sj) viewTKC.getLayoutParams();
                        f13 = measuredWidth + ((ViewGroup.MarginLayoutParams) sj2).leftMargin;
                        f14 = f11 - ((ViewGroup.MarginLayoutParams) sj2).rightMargin;
                        if (EjP(i16, i15)) {
                            int i28 = this.f20810aa;
                            float f17 = i28;
                            f13 += f17;
                            i20 = i28;
                            f15 = f14 - f17;
                        } else {
                            f15 = f14;
                            i20 = 0;
                        }
                        if (i15 == tkc.Dq - i26) {
                            c12 = 4;
                            i21 = (this.TEQ & 4) > 0 ? this.f20810aa : 0;
                            if (this.sP == 2) {
                                i17 = paddingLeft;
                                i18 = i26;
                                i19 = i15;
                                sj3 = sj2;
                                c11 = c12;
                                if (z10) {
                                    this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + viewTKC.getMeasuredHeight());
                                } else {
                                    this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingTop, Math.round(f13) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                                }
                            } else if (z10) {
                                i18 = i26;
                                i19 = i15;
                                i17 = paddingLeft;
                                sj3 = sj2;
                                c11 = c12;
                                this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f15), paddingBottom);
                            } else {
                                i17 = paddingLeft;
                                i18 = i26;
                                i19 = i15;
                                sj3 = sj2;
                                c11 = c12;
                                this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f13) + viewTKC.getMeasuredWidth(), paddingBottom);
                            }
                            measuredWidth = f13 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                            float measuredWidth2 = f15 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                            if (z10) {
                                tkc.Sj(viewTKC, i21, 0, i20, 0);
                            } else {
                                tkc.Sj(viewTKC, i20, 0, i21, 0);
                            }
                            f11 = measuredWidth2;
                        } else {
                            c12 = 4;
                        }
                        if (this.sP == 2) {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            sj3 = sj2;
                            c11 = c12;
                            if (z10) {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + viewTKC.getMeasuredHeight());
                            } else {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingTop, Math.round(f13) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i18 = i26;
                            i19 = i15;
                            i17 = paddingLeft;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f15), paddingBottom);
                        } else {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f13) + viewTKC.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f13 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                        float measuredWidth3 = f15 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                        if (z10) {
                            tkc.Sj(viewTKC, i21, 0, i20, 0);
                        } else {
                            tkc.Sj(viewTKC, i20, 0, i21, 0);
                        }
                        f11 = measuredWidth3;
                    } else {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        c11 = 4;
                    }
                    i15 = i19 + 1;
                    c13 = c11;
                    i26 = i18;
                    paddingLeft = i17;
                }
                int i29 = paddingLeft;
                int i30 = tkc.Jcg;
                paddingTop += i30;
                paddingBottom -= i30;
                i23++;
                paddingLeft = i29;
            } else {
                int i31 = tkc.HiB;
                f11 = i31 - paddingLeft;
                measuredWidth = (i22 - i31) + paddingRight;
            }
            f12 = 0.0f;
            fMax = Math.max(f12, 0.0f);
            i15 = 0;
            while (i15 < tkc.Dq) {
                i16 = tkc.Zq + i15;
                viewTKC = TKC(i16);
                if (viewTKC != null) {
                    i17 = paddingLeft;
                    i18 = i26;
                    i19 = i15;
                    c11 = c13;
                } else if (viewTKC.getVisibility() != 8) {
                    sj2 = (Sj) viewTKC.getLayoutParams();
                    f13 = measuredWidth + ((ViewGroup.MarginLayoutParams) sj2).leftMargin;
                    f14 = f11 - ((ViewGroup.MarginLayoutParams) sj2).rightMargin;
                    if (EjP(i16, i15)) {
                        int i210 = this.f20810aa;
                        float f18 = i210;
                        f13 += f18;
                        i20 = i210;
                        f15 = f14 - f18;
                    } else {
                        f15 = f14;
                        i20 = 0;
                    }
                    if (i15 == tkc.Dq - i26) {
                        c12 = 4;
                        if ((this.TEQ & 4) > 0) {
                        }
                        if (this.sP == 2) {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            sj3 = sj2;
                            c11 = c12;
                            if (z10) {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + viewTKC.getMeasuredHeight());
                            } else {
                                this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingTop, Math.round(f13) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                            }
                        } else if (z10) {
                            i18 = i26;
                            i19 = i15;
                            i17 = paddingLeft;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f15), paddingBottom);
                        } else {
                            i17 = paddingLeft;
                            i18 = i26;
                            i19 = i15;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f13) + viewTKC.getMeasuredWidth(), paddingBottom);
                        }
                        measuredWidth = f13 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                        float measuredWidth4 = f15 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                        if (z10) {
                            tkc.Sj(viewTKC, i21, 0, i20, 0);
                        } else {
                            tkc.Sj(viewTKC, i20, 0, i21, 0);
                        }
                        f11 = measuredWidth4;
                    } else {
                        c12 = 4;
                    }
                    if (this.sP == 2) {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        sj3 = sj2;
                        c11 = c12;
                        if (z10) {
                            this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingTop, Math.round(f15), paddingTop + viewTKC.getMeasuredHeight());
                        } else {
                            this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingTop, Math.round(f13) + viewTKC.getMeasuredWidth(), paddingTop + viewTKC.getMeasuredHeight());
                        }
                    } else if (z10) {
                        i18 = i26;
                        i19 = i15;
                        i17 = paddingLeft;
                        sj3 = sj2;
                        c11 = c12;
                        this.Zq.Sj(viewTKC, tkc, Math.round(f15) - viewTKC.getMeasuredWidth(), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f15), paddingBottom);
                    } else {
                        i17 = paddingLeft;
                        i18 = i26;
                        i19 = i15;
                        sj3 = sj2;
                        c11 = c12;
                        this.Zq.Sj(viewTKC, tkc, Math.round(f13), paddingBottom - viewTKC.getMeasuredHeight(), Math.round(f13) + viewTKC.getMeasuredWidth(), paddingBottom);
                    }
                    measuredWidth = f13 + viewTKC.getMeasuredWidth() + fMax + ((ViewGroup.MarginLayoutParams) sj3).rightMargin;
                    float measuredWidth5 = f15 - ((viewTKC.getMeasuredWidth() + fMax) + ((ViewGroup.MarginLayoutParams) sj3).leftMargin);
                    if (z10) {
                        tkc.Sj(viewTKC, i21, 0, i20, 0);
                    } else {
                        tkc.Sj(viewTKC, i20, 0, i21, 0);
                    }
                    f11 = measuredWidth5;
                } else {
                    i17 = paddingLeft;
                    i18 = i26;
                    i19 = i15;
                    c11 = 4;
                }
                i15 = i19 + 1;
                c13 = c11;
                i26 = i18;
                paddingLeft = i17;
            }
            int i211 = paddingLeft;
            int i32 = tkc.Jcg;
            paddingTop += i32;
            paddingBottom -= i32;
            i23++;
            paddingLeft = i211;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00da  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    /* JADX WARN: Code duplicated, block: B:52:0x010f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0117  */
    /* JADX WARN: Code duplicated, block: B:55:0x011c  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x0153  */
    /* JADX WARN: Code duplicated, block: B:61:0x017b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0185  */
    /* JADX WARN: Code duplicated, block: B:64:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:67:0x01de  */
    /* JADX WARN: Code duplicated, block: B:68:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:70:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:71:0x0203  */
    private void Sj(boolean z10, boolean z11, int i11, int i12, int i13, int i14) {
        float f11;
        int i15;
        float f12;
        float f13;
        float fMax;
        int i16;
        int i17;
        View viewTKC;
        int i18;
        boolean z12;
        char c11;
        Sj sj2;
        float f14;
        float f15;
        float f16;
        float f17;
        int i19;
        char c12;
        int i20;
        Sj sj3;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i21 = i14 - i12;
        int i22 = (i13 - i11) - paddingRight;
        int size = this.uvD.size();
        for (int i23 = 0; i23 < size; i23++) {
            TKC tkc = this.uvD.get(i23);
            if (EjP(i23)) {
                int i24 = this.f20810aa;
                paddingLeft += i24;
                i22 -= i24;
            }
            int i25 = this.TKC;
            char c13 = 4;
            boolean z13 = true;
            if (i25 != 0) {
                if (i25 == 1) {
                    int i26 = tkc.HiB;
                    f11 = (i21 - i26) + paddingBottom;
                    i15 = i26 - paddingTop;
                } else if (i25 == 2) {
                    int i27 = tkc.HiB;
                    f12 = (i21 - paddingBottom) - ((i21 - i27) / 2.0f);
                    f11 = paddingTop + ((i21 - i27) / 2.0f);
                    f13 = 0.0f;
                } else if (i25 == 3) {
                    f11 = paddingTop;
                    int iSP = tkc.sP();
                    f13 = (i21 - tkc.HiB) / (iSP != 1 ? iSP - 1 : 1.0f);
                    f12 = i21 - paddingBottom;
                } else if (i25 == 4) {
                    int iSP2 = tkc.sP();
                    f13 = iSP2 != 0 ? (i21 - tkc.HiB) / iSP2 : 0.0f;
                    float f18 = f13 / 2.0f;
                    f11 = paddingTop + f18;
                    f12 = (i21 - paddingBottom) - f18;
                } else {
                    if (i25 != 5) {
                        throw new IllegalStateException("Invalid justifyContent is set: " + this.TKC);
                    }
                    int iSP3 = tkc.sP();
                    f13 = iSP3 != 0 ? (i21 - tkc.HiB) / (iSP3 + 1) : 0.0f;
                    f11 = paddingTop + f13;
                    f12 = (i21 - paddingBottom) - f13;
                }
                fMax = Math.max(f13, 0.0f);
                i16 = 0;
                while (i16 < tkc.Dq) {
                    i17 = tkc.Zq + i16;
                    viewTKC = TKC(i17);
                    if (viewTKC != null) {
                        i18 = i16;
                        z12 = z13;
                        c11 = c13;
                    } else if (viewTKC.getVisibility() != 8) {
                        sj2 = (Sj) viewTKC.getLayoutParams();
                        f14 = f11 + ((ViewGroup.MarginLayoutParams) sj2).topMargin;
                        f15 = f12 - ((ViewGroup.MarginLayoutParams) sj2).bottomMargin;
                        if (EjP(i17, i16)) {
                            int i28 = this.Ym;
                            float f19 = i28;
                            f16 = f14 + f19;
                            i19 = i28;
                            f17 = f15 - f19;
                        } else {
                            f16 = f14;
                            f17 = f15;
                            i19 = 0;
                        }
                        if (i16 == tkc.Dq - 1) {
                            c12 = 4;
                            i20 = (this.uA & 4) > 0 ? this.Ym : 0;
                            if (z10) {
                                i18 = i16;
                                z12 = true;
                                sj3 = sj2;
                                c11 = c12;
                                if (z11) {
                                    this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f17) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f17));
                                } else {
                                    this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16) + viewTKC.getMeasuredHeight());
                                }
                            } else if (z11) {
                                i18 = i16;
                                z12 = true;
                                sj3 = sj2;
                                c11 = c12;
                                this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f17) - viewTKC.getMeasuredHeight(), i22, Math.round(f17));
                            } else {
                                i18 = i16;
                                z12 = true;
                                sj3 = sj2;
                                c11 = c12;
                                this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + viewTKC.getMeasuredHeight());
                            }
                            Sj sj4 = sj3;
                            float measuredHeight = f16 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj4).bottomMargin;
                            float measuredHeight2 = f17 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj4).topMargin);
                            if (z11) {
                                tkc.Sj(viewTKC, 0, i20, 0, i19);
                            } else {
                                tkc.Sj(viewTKC, 0, i19, 0, i20);
                            }
                            f11 = measuredHeight;
                            f12 = measuredHeight2;
                        } else {
                            c12 = 4;
                        }
                        if (z10) {
                            i18 = i16;
                            z12 = true;
                            sj3 = sj2;
                            c11 = c12;
                            if (z11) {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f17) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f17));
                            } else {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16) + viewTKC.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i18 = i16;
                            z12 = true;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f17) - viewTKC.getMeasuredHeight(), i22, Math.round(f17));
                        } else {
                            i18 = i16;
                            z12 = true;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + viewTKC.getMeasuredHeight());
                        }
                        Sj sj5 = sj3;
                        float measuredHeight3 = f16 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj5).bottomMargin;
                        float measuredHeight4 = f17 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj5).topMargin);
                        if (z11) {
                            tkc.Sj(viewTKC, 0, i20, 0, i19);
                        } else {
                            tkc.Sj(viewTKC, 0, i19, 0, i20);
                        }
                        f11 = measuredHeight3;
                        f12 = measuredHeight4;
                    } else {
                        i18 = i16;
                        z12 = true;
                        c11 = 4;
                    }
                    i16 = i18 + 1;
                    z13 = z12;
                    c13 = c11;
                }
                int i29 = tkc.Jcg;
                paddingLeft += i29;
                i22 -= i29;
            } else {
                f11 = paddingTop;
                i15 = i21 - paddingBottom;
            }
            f12 = i15;
            f13 = 0.0f;
            fMax = Math.max(f13, 0.0f);
            i16 = 0;
            while (i16 < tkc.Dq) {
                i17 = tkc.Zq + i16;
                viewTKC = TKC(i17);
                if (viewTKC != null) {
                    i18 = i16;
                    z12 = z13;
                    c11 = c13;
                } else if (viewTKC.getVisibility() != 8) {
                    sj2 = (Sj) viewTKC.getLayoutParams();
                    f14 = f11 + ((ViewGroup.MarginLayoutParams) sj2).topMargin;
                    f15 = f12 - ((ViewGroup.MarginLayoutParams) sj2).bottomMargin;
                    if (EjP(i17, i16)) {
                        int i210 = this.Ym;
                        float f110 = i210;
                        f16 = f14 + f110;
                        i19 = i210;
                        f17 = f15 - f110;
                    } else {
                        f16 = f14;
                        f17 = f15;
                        i19 = 0;
                    }
                    if (i16 == tkc.Dq - 1) {
                        c12 = 4;
                        if ((this.uA & 4) > 0) {
                        }
                        if (z10) {
                            i18 = i16;
                            z12 = true;
                            sj3 = sj2;
                            c11 = c12;
                            if (z11) {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f17) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f17));
                            } else {
                                this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16) + viewTKC.getMeasuredHeight());
                            }
                        } else if (z11) {
                            i18 = i16;
                            z12 = true;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f17) - viewTKC.getMeasuredHeight(), i22, Math.round(f17));
                        } else {
                            i18 = i16;
                            z12 = true;
                            sj3 = sj2;
                            c11 = c12;
                            this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + viewTKC.getMeasuredHeight());
                        }
                        Sj sj6 = sj3;
                        float measuredHeight5 = f16 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj6).bottomMargin;
                        float measuredHeight6 = f17 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj6).topMargin);
                        if (z11) {
                            tkc.Sj(viewTKC, 0, i20, 0, i19);
                        } else {
                            tkc.Sj(viewTKC, 0, i19, 0, i20);
                        }
                        f11 = measuredHeight5;
                        f12 = measuredHeight6;
                    } else {
                        c12 = 4;
                    }
                    if (z10) {
                        i18 = i16;
                        z12 = true;
                        sj3 = sj2;
                        c11 = c12;
                        if (z11) {
                            this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f17) - viewTKC.getMeasuredHeight(), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f17));
                        } else {
                            this.Zq.Sj(viewTKC, tkc, false, paddingLeft, Math.round(f16), paddingLeft + viewTKC.getMeasuredWidth(), Math.round(f16) + viewTKC.getMeasuredHeight());
                        }
                    } else if (z11) {
                        i18 = i16;
                        z12 = true;
                        sj3 = sj2;
                        c11 = c12;
                        this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f17) - viewTKC.getMeasuredHeight(), i22, Math.round(f17));
                    } else {
                        i18 = i16;
                        z12 = true;
                        sj3 = sj2;
                        c11 = c12;
                        this.Zq.Sj(viewTKC, tkc, true, i22 - viewTKC.getMeasuredWidth(), Math.round(f16), i22, Math.round(f16) + viewTKC.getMeasuredHeight());
                    }
                    Sj sj7 = sj3;
                    float measuredHeight7 = f16 + viewTKC.getMeasuredHeight() + fMax + ((ViewGroup.MarginLayoutParams) sj7).bottomMargin;
                    float measuredHeight8 = f17 - ((viewTKC.getMeasuredHeight() + fMax) + ((ViewGroup.MarginLayoutParams) sj7).topMargin);
                    if (z11) {
                        tkc.Sj(viewTKC, 0, i20, 0, i19);
                    } else {
                        tkc.Sj(viewTKC, 0, i19, 0, i20);
                    }
                    f11 = measuredHeight7;
                    f12 = measuredHeight8;
                } else {
                    i18 = i16;
                    z12 = true;
                    c11 = 4;
                }
                i16 = i18 + 1;
                z13 = z12;
                c13 = c11;
            }
            int i211 = tkc.Jcg;
            paddingLeft += i211;
            i22 -= i211;
        }
    }

    private void TKC(int i11, int i12) {
        this.uvD.clear();
        this.TzV.Sj();
        this.Zq.sP(this.TzV, i11, i12);
        this.uvD = this.TzV.Sj;
        this.Zq.Sj(i11, i12);
        this.Zq.sP(i11, i12, getPaddingLeft() + getPaddingRight());
        this.Zq.Sj();
        Sj(this.Sj, i11, i12, this.TzV.sP);
    }

    private void sP() {
        if (this.Jcg == null && this.Dq == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    private void sP(int i11, int i12) {
        this.uvD.clear();
        this.TzV.Sj();
        this.Zq.Sj(this.TzV, i11, i12);
        this.uvD = this.TzV.Sj;
        this.Zq.Sj(i11, i12);
        if (this.EjP == 3) {
            for (TKC tkc : this.uvD) {
                int iMax = Integer.MIN_VALUE;
                for (int i13 = 0; i13 < tkc.Dq; i13++) {
                    View viewTKC = TKC(tkc.Zq + i13);
                    if (viewTKC != null && viewTKC.getVisibility() != 8) {
                        Sj sj2 = (Sj) viewTKC.getLayoutParams();
                        iMax = this.sP != 2 ? Math.max(iMax, viewTKC.getMeasuredHeight() + Math.max(tkc.f20811aa - viewTKC.getBaseline(), ((ViewGroup.MarginLayoutParams) sj2).topMargin) + ((ViewGroup.MarginLayoutParams) sj2).bottomMargin) : Math.max(iMax, viewTKC.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) sj2).topMargin + Math.max((tkc.f20811aa - viewTKC.getMeasuredHeight()) + viewTKC.getBaseline(), ((ViewGroup.MarginLayoutParams) sj2).bottomMargin));
                    }
                }
                tkc.Jcg = iMax;
            }
        }
        this.Zq.sP(i11, i12, getPaddingTop() + getPaddingBottom());
        this.Zq.Sj();
        Sj(this.Sj, i11, i12, this.TzV.sP);
    }

    private void sP(Canvas canvas, int i11, int i12, int i13) {
        Drawable drawable = this.Jcg;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i11, i12, i13 + i11, this.Ym + i12);
        this.Jcg.draw(canvas);
    }

    private void sP(Canvas canvas, boolean z10, boolean z11) {
        int paddingTop = getPaddingTop();
        int iMax = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.uvD.size();
        for (int i11 = 0; i11 < size; i11++) {
            TKC tkc = this.uvD.get(i11);
            for (int i12 = 0; i12 < tkc.Dq; i12++) {
                int i13 = tkc.Zq + i12;
                View viewTKC = TKC(i13);
                if (viewTKC != null && viewTKC.getVisibility() != 8) {
                    Sj sj2 = (Sj) viewTKC.getLayoutParams();
                    if (EjP(i13, i12)) {
                        sP(canvas, tkc.Sj, z11 ? viewTKC.getBottom() + ((ViewGroup.MarginLayoutParams) sj2).bottomMargin : (viewTKC.getTop() - ((ViewGroup.MarginLayoutParams) sj2).topMargin) - this.Ym, tkc.Jcg);
                    }
                    if (i12 == tkc.Dq - 1 && (this.uA & 4) > 0) {
                        sP(canvas, tkc.Sj, z11 ? (viewTKC.getTop() - ((ViewGroup.MarginLayoutParams) sj2).topMargin) - this.Ym : viewTKC.getBottom() + ((ViewGroup.MarginLayoutParams) sj2).bottomMargin, tkc.Jcg);
                    }
                }
            }
            if (EjP(i11)) {
                Sj(canvas, z10 ? tkc.TKC : tkc.Sj - this.f20810aa, paddingTop, iMax);
            }
            if (vS(i11) && (this.TEQ & 4) > 0) {
                Sj(canvas, z10 ? tkc.Sj - this.f20810aa : tkc.TKC, paddingTop, iMax);
            }
        }
    }

    private boolean vS(int i11) {
        if (i11 >= 0 && i11 < this.uvD.size()) {
            for (int i12 = i11 + 1; i12 < this.uvD.size(); i12++) {
                if (this.uvD.get(i12).sP() > 0) {
                    return false;
                }
            }
            if (Sj()) {
                return (this.uA & 4) != 0;
            }
            if ((this.TEQ & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int Sj(int i11, int i12, int i13) {
        return ViewGroup.getChildMeasureSpec(i11, i12, i13);
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int Sj(View view) {
        return 0;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int Sj(View view, int i11, int i12) {
        int i13;
        int i14;
        if (Sj()) {
            i13 = EjP(i11, i12) ? this.f20810aa : 0;
            if ((this.TEQ & 4) <= 0) {
                return i13;
            }
            i14 = this.f20810aa;
        } else {
            i13 = EjP(i11, i12) ? this.Ym : 0;
            if ((this.uA & 4) <= 0) {
                return i13;
            }
            i14 = this.Ym;
        }
        return i13 + i14;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public View Sj(int i11) {
        return getChildAt(i11);
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public void Sj(View view, int i11, int i12, TKC tkc) {
        if (EjP(i11, i12)) {
            if (Sj()) {
                int i13 = tkc.HiB;
                int i14 = this.f20810aa;
                tkc.HiB = i13 + i14;
                tkc.vS += i14;
                return;
            }
            int i15 = tkc.HiB;
            int i16 = this.Ym;
            tkc.HiB = i15 + i16;
            tkc.vS += i16;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public void Sj(TKC tkc) {
        if (Sj()) {
            if ((this.TEQ & 4) > 0) {
                int i11 = tkc.HiB;
                int i12 = this.f20810aa;
                tkc.HiB = i11 + i12;
                tkc.vS += i12;
                return;
            }
            return;
        }
        if ((this.uA & 4) > 0) {
            int i13 = tkc.HiB;
            int i14 = this.Ym;
            tkc.HiB = i13 + i14;
            tkc.vS += i14;
        }
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.dNu = tkc;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public boolean Sj() {
        int i11 = this.Sj;
        return i11 == 0 || i11 == 1;
    }

    public View TKC(int i11) {
        if (i11 < 0) {
            return null;
        }
        int[] iArr = this.Fmk;
        if (i11 >= iArr.length) {
            return null;
        }
        return getChildAt(iArr[i11]);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        if (this.sef == null) {
            this.sef = new SparseIntArray(getChildCount());
        }
        this.Fmk = this.Zq.Sj(view, i11, layoutParams, this.sef);
        super.addView(view, i11, layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Sj;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof Sj) {
            return new Sj((Sj) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new Sj((ViewGroup.MarginLayoutParams) layoutParams) : new Sj(layoutParams);
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getAlignContent() {
        return this.HiB;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getAlignItems() {
        return this.EjP;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.Jcg;
    }

    public Drawable getDividerDrawableVertical() {
        return this.Dq;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getFlexDirection() {
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<TKC> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.uvD.size());
        for (TKC tkc : this.uvD) {
            if (tkc.sP() != 0) {
                arrayList.add(tkc);
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public List<TKC> getFlexLinesInternal() {
        return this.uvD;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getFlexWrap() {
        return this.sP;
    }

    public int getJustifyContent() {
        return this.TKC;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getLargestMainSize() {
        Iterator<TKC> it = this.uvD.iterator();
        int iMax = Integer.MIN_VALUE;
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().HiB);
        }
        return iMax;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getMaxLine() {
        return this.vS;
    }

    public int getShowDividerHorizontal() {
        return this.uA;
    }

    public int getShowDividerVertical() {
        return this.TEQ;
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int getSumOfCrossSize() {
        int size = this.uvD.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            TKC tkc = this.uvD.get(i12);
            if (EjP(i12)) {
                i11 += Sj() ? this.Ym : this.f20810aa;
            }
            if (vS(i12)) {
                i11 += Sj() ? this.Ym : this.f20810aa;
            }
            i11 += tkc.Jcg;
        }
        return i11;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.Jcg();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.Dq();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.Dq == null && this.Jcg == null) {
            return;
        }
        if (this.uA == 0 && this.TEQ == 0) {
            return;
        }
        int iSj = Jcg.Sj(this);
        int i11 = this.Sj;
        if (i11 == 0) {
            Sj(canvas, iSj == 1, this.sP == 2);
            return;
        }
        if (i11 == 1) {
            Sj(canvas, iSj != 1, this.sP == 2);
            return;
        }
        if (i11 == 2) {
            boolean z10 = iSj == 1;
            if (this.sP == 2) {
                z10 = !z10;
            }
            sP(canvas, z10, false);
            return;
        }
        if (i11 != 3) {
            return;
        }
        boolean z11 = iSj == 1;
        if (this.sP == 2) {
            z11 = !z11;
        }
        sP(canvas, z11, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i11, int i12, int i13, int i14) {
        boolean z11;
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.vS();
        }
        int iSj = Jcg.Sj(this);
        int i15 = this.Sj;
        if (i15 == 0) {
            Sj(iSj == 1, i11, i12, i13, i14);
        } else if (i15 == 1) {
            Sj(iSj != 1, i11, i12, i13, i14);
        } else if (i15 == 2) {
            z11 = iSj == 1;
            Sj(this.sP == 2 ? !z11 : z11, false, i11, i12, i13, i14);
        } else {
            if (i15 != 3) {
                throw new IllegalStateException("Invalid flex direction is set: " + this.Sj);
            }
            z11 = iSj == 1;
            Sj(this.sP == 2 ? !z11 : z11, true, i11, i12, i13, i14);
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.dNu;
        if (ejP2 != null) {
            ejP2.Sj(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i11, int i12) {
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            int[] iArrSj = ejP.Sj(i11, i12);
            Sj(iArrSj[0], iArrSj[1]);
        } else {
            Sj(i11, i12);
        }
        com.bytedance.adsdk.ugeno.EjP ejP2 = this.dNu;
        if (ejP2 != null) {
            ejP2.HiB();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i11, int i12, int i13, int i14) {
        super.onSizeChanged(i11, i12, i13, i14);
        com.bytedance.adsdk.ugeno.EjP ejP = this.dNu;
        if (ejP != null) {
            ejP.sP(i11, i12, i13, i14);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public int sP(int i11, int i12, int i13) {
        return ViewGroup.getChildMeasureSpec(i11, i12, i13);
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public View sP(int i11) {
        return TKC(i11);
    }

    public void setAlignContent(int i11) {
        if (this.HiB != i11) {
            this.HiB = i11;
            requestLayout();
        }
    }

    public void setAlignItems(int i11) {
        if (this.EjP != i11) {
            this.EjP = i11;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.Jcg) {
            return;
        }
        this.Jcg = drawable;
        if (drawable != null) {
            this.Ym = drawable.getIntrinsicHeight();
        } else {
            this.Ym = 0;
        }
        sP();
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.Dq) {
            return;
        }
        this.Dq = drawable;
        if (drawable != null) {
            this.f20810aa = drawable.getIntrinsicWidth();
        } else {
            this.f20810aa = 0;
        }
        sP();
        requestLayout();
    }

    public void setFlexDirection(int i11) {
        if (this.Sj != i11) {
            this.Sj = i11;
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.HiB.Sj
    public void setFlexLines(List<TKC> list) {
        this.uvD = list;
    }

    public void setFlexWrap(int i11) {
        if (this.sP != i11) {
            this.sP = i11;
            requestLayout();
        }
    }

    public void setJustifyContent(int i11) {
        if (this.TKC != i11) {
            this.TKC = i11;
            requestLayout();
        }
    }

    public void setMaxLine(int i11) {
        if (this.vS != i11) {
            this.vS = i11;
            requestLayout();
        }
    }

    public void setShowDivider(int i11) {
        setShowDividerVertical(i11);
        setShowDividerHorizontal(i11);
    }

    public void setShowDividerHorizontal(int i11) {
        if (i11 != this.uA) {
            this.uA = i11;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i11) {
        if (i11 != this.TEQ) {
            this.TEQ = i11;
            requestLayout();
        }
    }
}
