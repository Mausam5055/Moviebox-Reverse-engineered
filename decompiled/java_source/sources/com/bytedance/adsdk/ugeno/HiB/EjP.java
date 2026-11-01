package com.bytedance.adsdk.ugeno.HiB;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class EjP {
    static final /* synthetic */ boolean TKC = true;
    private final com.bytedance.adsdk.ugeno.HiB.Sj EjP;
    private boolean[] HiB;
    int[] Sj;
    long[] sP;
    private long[] vS;

    static class Sj {
        List<TKC> Sj;
        int sP;

        Sj() {
        }

        void Sj() {
            this.Sj = null;
            this.sP = 0;
        }
    }

    private static class sP implements Comparable<sP> {
        int Sj;
        int sP;

        private sP() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public int compareTo(sP sPVar) {
            int i11 = this.sP;
            int i12 = sPVar.sP;
            return i11 != i12 ? i11 - i12 : this.Sj - sPVar.Sj;
        }

        public String toString() {
            return "Order{order=" + this.sP + ", index=" + this.Sj + '}';
        }
    }

    EjP(com.bytedance.adsdk.ugeno.HiB.Sj sj2) {
        this.EjP = sj2;
    }

    private int EjP(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.Zq() : sPVar.uvD();
    }

    private int EjP(boolean z10) {
        return z10 ? this.EjP.getPaddingBottom() : this.EjP.getPaddingEnd();
    }

    private int HiB(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.sef() : sPVar.Fmk();
    }

    private int Sj(int i11, com.bytedance.adsdk.ugeno.HiB.sP sPVar, int i12) {
        com.bytedance.adsdk.ugeno.HiB.Sj sj2 = this.EjP;
        int iSj = sj2.Sj(i11, sj2.getPaddingLeft() + this.EjP.getPaddingRight() + sPVar.Fmk() + sPVar.Zq() + i12, sPVar.Sj());
        int size = View.MeasureSpec.getSize(iSj);
        if (size > sPVar.uA()) {
            return View.MeasureSpec.makeMeasureSpec(sPVar.uA(), View.MeasureSpec.getMode(iSj));
        }
        return size < sPVar.Jcg() ? View.MeasureSpec.makeMeasureSpec(sPVar.Jcg(), View.MeasureSpec.getMode(iSj)) : iSj;
    }

    private int Sj(View view, boolean z10) {
        return z10 ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    private int Sj(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.Sj() : sPVar.sP();
    }

    private int Sj(boolean z10) {
        return z10 ? this.EjP.getPaddingStart() : this.EjP.getPaddingTop();
    }

    private List<TKC> Sj(List<TKC> list, int i11, int i12) {
        int i13 = (i11 - i12) / 2;
        ArrayList arrayList = new ArrayList();
        TKC tkc = new TKC();
        tkc.Jcg = i13;
        int size = list.size();
        for (int i14 = 0; i14 < size; i14++) {
            if (i14 == 0) {
                arrayList.add(tkc);
            }
            arrayList.add(list.get(i14));
            if (i14 == list.size() - 1) {
                arrayList.add(tkc);
            }
        }
        return arrayList;
    }

    private void Sj(int i11, int i12, int i13, View view) {
        long[] jArr = this.sP;
        if (jArr != null) {
            jArr[i11] = sP(i12, i13);
        }
        long[] jArr2 = this.vS;
        if (jArr2 != null) {
            jArr2[i11] = sP(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    private void Sj(int i11, int i12, TKC tkc, int i13, int i14, boolean z10) {
        int i15;
        int i16;
        int iMax;
        double d11;
        int i17;
        double d12;
        float f11 = tkc.TEQ;
        float f12 = 0.0f;
        if (f11 <= 0.0f || i13 < (i15 = tkc.HiB)) {
            return;
        }
        float f13 = (i13 - i15) / f11;
        tkc.HiB = i14 + tkc.vS;
        if (!z10) {
            tkc.Jcg = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f14 = 0.0f;
        while (i18 < tkc.Dq) {
            int i20 = tkc.Zq + i18;
            View viewSP = this.EjP.sP(i20);
            if (viewSP == null || viewSP.getVisibility() == 8) {
                i16 = i15;
            } else {
                com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                int flexDirection = this.EjP.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int i21 = i15;
                    int measuredWidth = viewSP.getMeasuredWidth();
                    long[] jArr = this.vS;
                    if (jArr != null) {
                        measuredWidth = Sj(jArr[i20]);
                    }
                    int measuredHeight = viewSP.getMeasuredHeight();
                    long[] jArr2 = this.vS;
                    i16 = i21;
                    if (jArr2 != null) {
                        measuredHeight = sP(jArr2[i20]);
                    }
                    if (!this.HiB[i20] && sPVar.EjP() > 0.0f) {
                        float fEjP = measuredWidth + (sPVar.EjP() * f13);
                        if (i18 == tkc.Dq - 1) {
                            fEjP += f14;
                            f14 = 0.0f;
                        }
                        int iRound = Math.round(fEjP);
                        if (iRound > sPVar.uA()) {
                            iRound = sPVar.uA();
                            this.HiB[i20] = true;
                            tkc.TEQ -= sPVar.EjP();
                            z11 = true;
                        } else {
                            f14 += fEjP - iRound;
                            double d13 = f14;
                            if (d13 > 1.0d) {
                                iRound++;
                                d11 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                iRound--;
                                d11 = d13 + 1.0d;
                            }
                            f14 = (float) d11;
                        }
                        int iSP = sP(i12, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewSP.measure(iMakeMeasureSpec, iSP);
                        int measuredWidth2 = viewSP.getMeasuredWidth();
                        int measuredHeight2 = viewSP.getMeasuredHeight();
                        Sj(i20, iMakeMeasureSpec, iSP, viewSP);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i19, measuredHeight + sPVar.sef() + sPVar.uvD() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredWidth + sPVar.Fmk() + sPVar.Zq();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewSP.getMeasuredHeight();
                    long[] jArr3 = this.vS;
                    if (jArr3 != null) {
                        measuredHeight3 = sP(jArr3[i20]);
                    }
                    int measuredWidth3 = viewSP.getMeasuredWidth();
                    long[] jArr4 = this.vS;
                    if (jArr4 != null) {
                        measuredWidth3 = Sj(jArr4[i20]);
                    }
                    if (this.HiB[i20] || sPVar.EjP() <= f12) {
                        i17 = i15;
                    } else {
                        float fEjP2 = measuredHeight3 + (sPVar.EjP() * f13);
                        if (i18 == tkc.Dq - 1) {
                            fEjP2 += f14;
                            f14 = f12;
                        }
                        int iRound2 = Math.round(fEjP2);
                        if (iRound2 > sPVar.TEQ()) {
                            iRound2 = sPVar.TEQ();
                            this.HiB[i20] = true;
                            tkc.TEQ -= sPVar.EjP();
                            i17 = i15;
                            z11 = true;
                        } else {
                            f14 += fEjP2 - iRound2;
                            i17 = i15;
                            double d14 = f14;
                            if (d14 > 1.0d) {
                                iRound2++;
                                d12 = d14 - 1.0d;
                            } else if (d14 < -1.0d) {
                                iRound2--;
                                d12 = d14 + 1.0d;
                            }
                            f14 = (float) d12;
                        }
                        int iSj = Sj(i11, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewSP.measure(iSj, iMakeMeasureSpec2);
                        measuredWidth3 = viewSP.getMeasuredWidth();
                        int measuredHeight4 = viewSP.getMeasuredHeight();
                        Sj(i20, iSj, iMakeMeasureSpec2, viewSP);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i19, measuredWidth3 + sPVar.Fmk() + sPVar.Zq() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredHeight3 + sPVar.sef() + sPVar.uvD();
                    i16 = i17;
                }
                tkc.Jcg = Math.max(tkc.Jcg, iMax);
                i19 = iMax;
            }
            i18++;
            i15 = i16;
            f12 = 0.0f;
        }
        int i22 = i15;
        if (!z11 || i22 == tkc.HiB) {
            return;
        }
        Sj(i11, i12, tkc, i13, i14, true);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    private void Sj(View view, int i11) {
        boolean z10;
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth >= sPVar.Jcg()) {
            if (measuredWidth > sPVar.uA()) {
                measuredWidth = sPVar.uA();
            } else {
                z10 = false;
            }
            if (measuredHeight < sPVar.Dq()) {
                measuredHeight = sPVar.Dq();
            } else if (measuredHeight > sPVar.TEQ()) {
                measuredHeight = sPVar.TEQ();
            } else {
                z11 = z10;
            }
            if (z11) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                Sj(i11, iMakeMeasureSpec, iMakeMeasureSpec2, view);
            }
        }
        measuredWidth = sPVar.Jcg();
        z10 = true;
        if (measuredHeight < sPVar.Dq()) {
            measuredHeight = sPVar.Dq();
        } else if (measuredHeight > sPVar.TEQ()) {
            measuredHeight = sPVar.TEQ();
        } else {
            z11 = z10;
        }
        if (z11) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            Sj(i11, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
        }
    }

    private void Sj(View view, int i11, int i12) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i11 - sPVar.sef()) - sPVar.uvD()) - this.EjP.Sj(view), sPVar.Dq()), sPVar.TEQ());
        long[] jArr = this.vS;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? Sj(jArr[i12]) : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        Sj(i12, iMakeMeasureSpec, iMakeMeasureSpec2, view);
    }

    private void Sj(CompoundButton compoundButton) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) compoundButton.getLayoutParams();
        int iJcg = sPVar.Jcg();
        int iDq = sPVar.Dq();
        Drawable drawableSj = com.bytedance.adsdk.ugeno.Jcg.HiB.Sj(compoundButton);
        int minimumWidth = drawableSj == null ? 0 : drawableSj.getMinimumWidth();
        int minimumHeight = drawableSj != null ? drawableSj.getMinimumHeight() : 0;
        if (iJcg == -1) {
            iJcg = minimumWidth;
        }
        sPVar.Sj(iJcg);
        if (iDq == -1) {
            iDq = minimumHeight;
        }
        sPVar.sP(iDq);
    }

    private void Sj(List<TKC> list, TKC tkc, int i11, int i12) {
        tkc.Fmk = i12;
        this.EjP.Sj(tkc);
        tkc.uvD = i11;
        list.add(tkc);
    }

    private boolean Sj(int i11, int i12, TKC tkc) {
        return i11 == i12 - 1 && tkc.sP() != 0;
    }

    private boolean Sj(View view, int i11, int i12, int i13, int i14, com.bytedance.adsdk.ugeno.HiB.sP sPVar, int i15, int i16, int i17) {
        if (this.EjP.getFlexWrap() == 0) {
            return false;
        }
        if (sPVar.Ym()) {
            return true;
        }
        if (i11 == 0) {
            return false;
        }
        int maxLine = this.EjP.getMaxLine();
        if (maxLine != -1 && maxLine <= i17 + 1) {
            return false;
        }
        int iSj = this.EjP.Sj(view, i15, i16);
        if (iSj > 0) {
            i14 += iSj;
        }
        return i12 < i13 + i14;
    }

    private int[] Sj(int i11, List<sP> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i11];
        int i12 = 0;
        for (sP sPVar : list) {
            int i13 = sPVar.Sj;
            iArr[i12] = i13;
            sparseIntArray.append(i13, sPVar.sP);
            i12++;
        }
        return iArr;
    }

    private int TKC(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.Fmk() : sPVar.sef();
    }

    private int TKC(boolean z10) {
        return z10 ? this.EjP.getPaddingTop() : this.EjP.getPaddingStart();
    }

    private void TKC(int i11) {
        boolean[] zArr = this.HiB;
        if (zArr == null) {
            this.HiB = new boolean[Math.max(i11, 10)];
        } else if (zArr.length < i11) {
            this.HiB = new boolean[Math.max(zArr.length * 2, i11)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private int sP(int i11, com.bytedance.adsdk.ugeno.HiB.sP sPVar, int i12) {
        com.bytedance.adsdk.ugeno.HiB.Sj sj2 = this.EjP;
        int iSP = sj2.sP(i11, sj2.getPaddingTop() + this.EjP.getPaddingBottom() + sPVar.sef() + sPVar.uvD() + i12, sPVar.sP());
        int size = View.MeasureSpec.getSize(iSP);
        if (size > sPVar.TEQ()) {
            return View.MeasureSpec.makeMeasureSpec(sPVar.TEQ(), View.MeasureSpec.getMode(iSP));
        }
        return size < sPVar.Dq() ? View.MeasureSpec.makeMeasureSpec(sPVar.Dq(), View.MeasureSpec.getMode(iSP)) : iSP;
    }

    private int sP(View view, boolean z10) {
        return z10 ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    private int sP(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.sP() : sPVar.Sj();
    }

    private int sP(boolean z10) {
        return z10 ? this.EjP.getPaddingEnd() : this.EjP.getPaddingBottom();
    }

    private List<sP> sP(int i11) {
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) this.EjP.Sj(i12).getLayoutParams();
            sP sPVar2 = new sP();
            sPVar2.sP = sPVar.TKC();
            sPVar2.Sj = i12;
            arrayList.add(sPVar2);
        }
        return arrayList;
    }

    private void sP(int i11, int i12, TKC tkc, int i13, int i14, boolean z10) {
        int i15;
        int i16;
        int iMax;
        int i17 = tkc.HiB;
        float f11 = tkc.Ym;
        float f12 = 0.0f;
        if (f11 <= 0.0f || i13 > i17) {
            return;
        }
        float f13 = (i17 - i13) / f11;
        tkc.HiB = i14 + tkc.vS;
        if (!z10) {
            tkc.Jcg = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f14 = 0.0f;
        while (i18 < tkc.Dq) {
            int i20 = tkc.Zq + i18;
            View viewSP = this.EjP.sP(i20);
            if (viewSP == null || viewSP.getVisibility() == 8) {
                i15 = i17;
                i16 = i18;
            } else {
                com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                int flexDirection = this.EjP.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i15 = i17;
                    int i21 = i18;
                    int measuredWidth = viewSP.getMeasuredWidth();
                    long[] jArr = this.vS;
                    if (jArr != null) {
                        measuredWidth = Sj(jArr[i20]);
                    }
                    int measuredHeight = viewSP.getMeasuredHeight();
                    long[] jArr2 = this.vS;
                    if (jArr2 != null) {
                        measuredHeight = sP(jArr2[i20]);
                    }
                    if (this.HiB[i20] || sPVar.HiB() <= 0.0f) {
                        i16 = i21;
                    } else {
                        float fHiB = measuredWidth - (sPVar.HiB() * f13);
                        if (i16 == tkc.Dq - 1) {
                            i16 = i21;
                            fHiB += f14;
                            f14 = 0.0f;
                        }
                        i16 = i21;
                        int iRound = Math.round(fHiB);
                        if (iRound < sPVar.Jcg()) {
                            iRound = sPVar.Jcg();
                            this.HiB[i20] = true;
                            tkc.Ym -= sPVar.HiB();
                            z11 = true;
                        } else {
                            f14 += fHiB - iRound;
                            double d11 = f14;
                            if (d11 > 1.0d) {
                                iRound++;
                                f14 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                iRound--;
                                f14 += 1.0f;
                            }
                        }
                        int iSP = sP(i12, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewSP.measure(iMakeMeasureSpec, iSP);
                        int measuredWidth2 = viewSP.getMeasuredWidth();
                        int measuredHeight2 = viewSP.getMeasuredHeight();
                        Sj(i20, iMakeMeasureSpec, iSP, viewSP);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i19, measuredHeight + sPVar.sef() + sPVar.uvD() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredWidth + sPVar.Fmk() + sPVar.Zq();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewSP.getMeasuredHeight();
                    long[] jArr3 = this.vS;
                    if (jArr3 != null) {
                        measuredHeight3 = sP(jArr3[i20]);
                    }
                    int measuredWidth3 = viewSP.getMeasuredWidth();
                    long[] jArr4 = this.vS;
                    if (jArr4 != null) {
                        measuredWidth3 = Sj(jArr4[i20]);
                    }
                    if (this.HiB[i20] || sPVar.HiB() <= f12) {
                        i15 = i17;
                        i16 = i18;
                    } else {
                        float fHiB2 = measuredHeight3 - (sPVar.HiB() * f13);
                        if (i18 == tkc.Dq - 1) {
                            fHiB2 += f14;
                            f14 = f12;
                        }
                        int iRound2 = Math.round(fHiB2);
                        if (iRound2 < sPVar.Dq()) {
                            iRound2 = sPVar.Dq();
                            this.HiB[i20] = true;
                            tkc.Ym -= sPVar.HiB();
                            i15 = i17;
                            i16 = i18;
                            z11 = true;
                        } else {
                            f14 += fHiB2 - iRound2;
                            i15 = i17;
                            i16 = i18;
                            double d12 = f14;
                            if (d12 > 1.0d) {
                                iRound2++;
                                f14 -= 1.0f;
                            } else if (d12 < -1.0d) {
                                iRound2--;
                                f14 += 1.0f;
                            }
                        }
                        int iSj = Sj(i11, sPVar, tkc.Fmk);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewSP.measure(iSj, iMakeMeasureSpec2);
                        measuredWidth3 = viewSP.getMeasuredWidth();
                        int measuredHeight4 = viewSP.getMeasuredHeight();
                        Sj(i20, iSj, iMakeMeasureSpec2, viewSP);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i19, measuredWidth3 + sPVar.Fmk() + sPVar.Zq() + this.EjP.Sj(viewSP));
                    tkc.HiB += measuredHeight3 + sPVar.sef() + sPVar.uvD();
                }
                tkc.Jcg = Math.max(tkc.Jcg, iMax);
                i19 = iMax;
            }
            i18 = i16 + 1;
            i17 = i15;
            f12 = 0.0f;
        }
        int i22 = i17;
        if (!z11 || i22 == tkc.HiB) {
            return;
        }
        sP(i11, i12, tkc, i13, i14, true);
    }

    private void sP(View view, int i11, int i12) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i11 - sPVar.Fmk()) - sPVar.Zq()) - this.EjP.Sj(view), sPVar.Jcg()), sPVar.uA());
        long[] jArr = this.vS;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? sP(jArr[i12]) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        Sj(i12, iMakeMeasureSpec2, iMakeMeasureSpec, view);
    }

    private int vS(com.bytedance.adsdk.ugeno.HiB.sP sPVar, boolean z10) {
        return z10 ? sPVar.uvD() : sPVar.Zq();
    }

    int Sj(long j11) {
        return (int) j11;
    }

    void Sj() {
        Sj(0);
    }

    void Sj(int i11) {
        View viewSP;
        if (i11 >= this.EjP.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.EjP.getFlexDirection();
        if (this.EjP.getAlignItems() != 4) {
            for (TKC tkc : this.EjP.getFlexLinesInternal()) {
                for (Integer num : tkc.sef) {
                    View viewSP2 = this.EjP.sP(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        Sj(viewSP2, tkc.Jcg, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                        }
                        sP(viewSP2, tkc.Jcg, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.Sj;
        List<TKC> flexLinesInternal = this.EjP.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i12 = iArr != null ? iArr[i11] : 0; i12 < size; i12++) {
            TKC tkc2 = flexLinesInternal.get(i12);
            int i13 = tkc2.Dq;
            for (int i14 = 0; i14 < i13; i14++) {
                int i15 = tkc2.Zq + i14;
                if (i14 < this.EjP.getFlexItemCount() && (viewSP = this.EjP.sP(i15)) != null && viewSP.getVisibility() != 8) {
                    com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                    if (sPVar.vS() == -1 || sPVar.vS() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            Sj(viewSP, tkc2.Jcg, i15);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                            }
                            sP(viewSP, tkc2.Jcg, i15);
                        }
                    }
                }
            }
        }
    }

    void Sj(int i11, int i12) {
        Sj(i11, i12, 0);
    }

    void Sj(int i11, int i12, int i13) {
        int size;
        int paddingLeft;
        int paddingRight;
        TKC(this.EjP.getFlexItemCount());
        if (i13 >= this.EjP.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.EjP.getFlexDirection();
        int flexDirection2 = this.EjP.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            int largestMainSize = this.EjP.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.EjP.getPaddingLeft();
            paddingRight = this.EjP.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            int mode2 = View.MeasureSpec.getMode(i12);
            size = View.MeasureSpec.getSize(i12);
            if (mode2 != 1073741824) {
                size = this.EjP.getLargestMainSize();
            }
            paddingLeft = this.EjP.getPaddingTop();
            paddingRight = this.EjP.getPaddingBottom();
        }
        int i14 = paddingLeft + paddingRight;
        int[] iArr = this.Sj;
        List<TKC> flexLinesInternal = this.EjP.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i15 = iArr != null ? iArr[i13] : 0; i15 < size2; i15++) {
            TKC tkc = flexLinesInternal.get(i15);
            int i16 = tkc.HiB;
            if (i16 < size && tkc.dNu) {
                Sj(i11, i12, tkc, size, i14, false);
            } else if (i16 > size && tkc.TzV) {
                sP(i11, i12, tkc, size, i14, false);
            }
        }
    }

    void Sj(View view, TKC tkc, int i11, int i12, int i13, int i14) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int alignItems = this.EjP.getAlignItems();
        if (sPVar.vS() != -1) {
            alignItems = sPVar.vS();
        }
        int i15 = tkc.Jcg;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.EjP.getFlexWrap() == 2) {
                    view.layout(i11, (i12 - i15) + view.getMeasuredHeight() + sPVar.sef(), i13, (i14 - i15) + view.getMeasuredHeight() + sPVar.sef());
                    return;
                } else {
                    int i16 = i12 + i15;
                    view.layout(i11, (i16 - view.getMeasuredHeight()) - sPVar.uvD(), i13, i16 - sPVar.uvD());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i15 - view.getMeasuredHeight()) + sPVar.sef()) - sPVar.uvD()) / 2;
                if (this.EjP.getFlexWrap() != 2) {
                    int i17 = i12 + measuredHeight;
                    view.layout(i11, i17, i13, view.getMeasuredHeight() + i17);
                    return;
                } else {
                    int i18 = i12 - measuredHeight;
                    view.layout(i11, i18, i13, view.getMeasuredHeight() + i18);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.EjP.getFlexWrap() != 2) {
                    int iMax = Math.max(tkc.f20811aa - view.getBaseline(), sPVar.sef());
                    view.layout(i11, i12 + iMax, i13, i14 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((tkc.f20811aa - view.getMeasuredHeight()) + view.getBaseline(), sPVar.uvD());
                    view.layout(i11, i12 - iMax2, i13, i14 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.EjP.getFlexWrap() != 2) {
            view.layout(i11, i12 + sPVar.sef(), i13, i14 + sPVar.sef());
        } else {
            view.layout(i11, i12 - sPVar.uvD(), i13, i14 - sPVar.uvD());
        }
    }

    void Sj(View view, TKC tkc, boolean z10, int i11, int i12, int i13, int i14) {
        com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) view.getLayoutParams();
        int alignItems = this.EjP.getAlignItems();
        if (sPVar.vS() != -1) {
            alignItems = sPVar.vS();
        }
        int i15 = tkc.Jcg;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (z10) {
                    view.layout((i11 - i15) + view.getMeasuredWidth() + sPVar.Fmk(), i12, (i13 - i15) + view.getMeasuredWidth() + sPVar.Fmk(), i14);
                    return;
                } else {
                    view.layout(((i11 + i15) - view.getMeasuredWidth()) - sPVar.Zq(), i12, ((i13 + i15) - view.getMeasuredWidth()) - sPVar.Zq(), i14);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i15 - view.getMeasuredWidth()) + com.bytedance.adsdk.ugeno.Jcg.vS.Sj(marginLayoutParams)) - com.bytedance.adsdk.ugeno.Jcg.vS.sP(marginLayoutParams)) / 2;
                if (z10) {
                    view.layout(i11 - measuredWidth, i12, i13 - measuredWidth, i14);
                    return;
                } else {
                    view.layout(i11 + measuredWidth, i12, i13 + measuredWidth, i14);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z10) {
            view.layout(i11 - sPVar.Zq(), i12, i13 - sPVar.Zq(), i14);
        } else {
            view.layout(i11 + sPVar.Fmk(), i12, i13 + sPVar.Fmk(), i14);
        }
    }

    void Sj(Sj sj2, int i11, int i12) {
        Sj(sj2, i11, i12, Integer.MAX_VALUE, 0, -1, (List<TKC>) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void Sj(Sj sj2, int i11, int i12, int i13, int i14, int i15, List<TKC> list) {
        int i16;
        int i17;
        List<TKC> list2;
        int i18;
        int i19;
        View view;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27 = i12;
        int i28 = i15;
        boolean zSj = this.EjP.Sj();
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        List<TKC> arrayList = list == null ? new ArrayList() : list;
        sj2.Sj = arrayList;
        int i29 = i28 == -1 ? 1 : 0;
        int iSj = Sj(zSj);
        int iSP = sP(zSj);
        int iTKC = TKC(zSj);
        int iEjP = EjP(zSj);
        TKC tkc = new TKC();
        int i30 = i14;
        tkc.Zq = i30;
        int i31 = iSP + iSj;
        tkc.HiB = i31;
        int flexItemCount = this.EjP.getFlexItemCount();
        int i32 = i29;
        int i33 = Integer.MIN_VALUE;
        int i34 = 0;
        int iCombineMeasuredStates = 0;
        int i35 = 0;
        while (i30 < flexItemCount) {
            View viewSP = this.EjP.sP(i30);
            if (viewSP != null) {
                if (viewSP.getVisibility() == 8) {
                    tkc.uA++;
                    tkc.Dq++;
                    if (Sj(i30, flexItemCount, tkc)) {
                        Sj(arrayList, tkc, i30, i34);
                    }
                } else {
                    if (viewSP instanceof CompoundButton) {
                        Sj((CompoundButton) viewSP);
                    }
                    com.bytedance.adsdk.ugeno.HiB.sP sPVar = (com.bytedance.adsdk.ugeno.HiB.sP) viewSP.getLayoutParams();
                    int i36 = flexItemCount;
                    if (sPVar.vS() == 4) {
                        tkc.sef.add(Integer.valueOf(i30));
                    }
                    int iSj2 = Sj(sPVar, zSj);
                    if (sPVar.aa() != -1.0f && mode == 1073741824) {
                        iSj2 = Math.round(size * sPVar.aa());
                    }
                    if (zSj) {
                        int iSj3 = this.EjP.Sj(i11, i31 + TKC(sPVar, true) + EjP(sPVar, true), iSj2);
                        int iSP2 = this.EjP.sP(i27, iTKC + iEjP + HiB(sPVar, true) + vS(sPVar, true) + i34, sP(sPVar, true));
                        viewSP.measure(iSj3, iSP2);
                        Sj(i30, iSj3, iSP2, viewSP);
                        i17 = iSj3;
                    } else {
                        int iSj4 = this.EjP.Sj(i27, iTKC + iEjP + HiB(sPVar, false) + vS(sPVar, false) + i34, sP(sPVar, false));
                        int iSP3 = this.EjP.sP(i11, TKC(sPVar, false) + i31 + EjP(sPVar, false), iSj2);
                        viewSP.measure(iSj4, iSP3);
                        Sj(i30, iSj4, iSP3, viewSP);
                        i17 = iSP3;
                    }
                    Sj(viewSP, i30);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewSP.getMeasuredState());
                    int i37 = i34;
                    int i38 = i31;
                    TKC tkc2 = tkc;
                    int i39 = i30;
                    list2 = arrayList;
                    int i40 = i17;
                    if (Sj(viewSP, mode, size, tkc.HiB, EjP(sPVar, zSj) + Sj(viewSP, zSj) + TKC(sPVar, zSj), sPVar, i39, i35, arrayList.size())) {
                        if (tkc2.sP() > 0) {
                            Sj(list2, tkc2, i39 > 0 ? i39 - 1 : 0, i37);
                            i34 = tkc2.Jcg + i37;
                        } else {
                            i34 = i37;
                        }
                        if (!zSj) {
                            i18 = i12;
                            i19 = i39;
                            view = viewSP;
                            i20 = -1;
                            if (sPVar.Sj() == -1) {
                                com.bytedance.adsdk.ugeno.HiB.Sj sj3 = this.EjP;
                                view.measure(sj3.Sj(i18, sj3.getPaddingLeft() + this.EjP.getPaddingRight() + sPVar.Fmk() + sPVar.Zq() + i34, sPVar.Sj()), i40);
                                Sj(view, i19);
                            }
                        } else if (sPVar.sP() == -1) {
                            com.bytedance.adsdk.ugeno.HiB.Sj sj4 = this.EjP;
                            i18 = i12;
                            i20 = -1;
                            view = viewSP;
                            view.measure(i40, sj4.sP(i18, sj4.getPaddingTop() + this.EjP.getPaddingBottom() + sPVar.sef() + sPVar.uvD() + i34, sPVar.sP()));
                            i19 = i39;
                            Sj(view, i19);
                        } else {
                            i18 = i12;
                            i19 = i39;
                            view = viewSP;
                            i20 = -1;
                        }
                        tkc = new TKC();
                        i22 = 1;
                        tkc.Dq = 1;
                        i21 = i38;
                        tkc.HiB = i21;
                        tkc.Zq = i19;
                        i24 = Integer.MIN_VALUE;
                        i23 = 0;
                    } else {
                        i18 = i12;
                        i19 = i39;
                        view = viewSP;
                        i20 = -1;
                        tkc = tkc2;
                        i21 = i38;
                        i22 = 1;
                        tkc.Dq++;
                        i23 = i35 + 1;
                        i34 = i37;
                        i24 = i33;
                    }
                    tkc.dNu = (tkc.dNu ? 1 : 0) | (sPVar.EjP() != 0.0f ? i22 : 0);
                    tkc.TzV = (tkc.TzV ? 1 : 0) | (sPVar.HiB() != 0.0f ? i22 : 0);
                    int[] iArr = this.Sj;
                    if (iArr != null) {
                        iArr[i19] = list2.size();
                    }
                    tkc.HiB += Sj(view, zSj) + TKC(sPVar, zSj) + EjP(sPVar, zSj);
                    tkc.TEQ += sPVar.EjP();
                    tkc.Ym += sPVar.HiB();
                    this.EjP.Sj(view, i19, i23, tkc);
                    int iMax = Math.max(i24, sP(view, zSj) + HiB(sPVar, zSj) + vS(sPVar, zSj) + this.EjP.Sj(view));
                    tkc.Jcg = Math.max(tkc.Jcg, iMax);
                    if (zSj) {
                        if (this.EjP.getFlexWrap() != 2) {
                            tkc.f20811aa = Math.max(tkc.f20811aa, view.getBaseline() + sPVar.sef());
                        } else {
                            tkc.f20811aa = Math.max(tkc.f20811aa, (view.getMeasuredHeight() - view.getBaseline()) + sPVar.uvD());
                        }
                    }
                    i25 = i36;
                    if (Sj(i19, i25, tkc)) {
                        Sj(list2, tkc, i19, i34);
                        i34 += tkc.Jcg;
                    }
                    i26 = i15;
                    if (i26 != i20 && list2.size() > 0 && list2.get(list2.size() - i22).uvD >= i26 && i19 >= i26 && i32 == 0) {
                        i34 = -tkc.Sj();
                        i32 = i22;
                    }
                    if (i34 > i13 && i32 != 0) {
                        i16 = iCombineMeasuredStates;
                        sj2.sP = i16;
                    } else {
                        i35 = i23;
                        i33 = iMax;
                    }
                }
                i30 = i19 + 1;
                flexItemCount = i25;
                i27 = i18;
                i31 = i21;
                arrayList = list2;
                size = size;
                mode = mode;
                i28 = i26;
            } else if (Sj(i30, flexItemCount, tkc)) {
                Sj(arrayList, tkc, i30, i34);
            }
            size = size;
            mode = mode;
            i18 = i27;
            i26 = i28;
            i21 = i31;
            list2 = arrayList;
            i25 = flexItemCount;
            i19 = i30;
            i30 = i19 + 1;
            flexItemCount = i25;
            i27 = i18;
            i31 = i21;
            arrayList = list2;
            size = size;
            mode = mode;
            i28 = i26;
        }
        i16 = iCombineMeasuredStates;
        sj2.sP = i16;
    }

    int[] Sj(SparseIntArray sparseIntArray) {
        int flexItemCount = this.EjP.getFlexItemCount();
        return Sj(flexItemCount, sP(flexItemCount), sparseIntArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    int[] Sj(View view, int i11, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.EjP.getFlexItemCount();
        List<sP> listSP = sP(flexItemCount);
        sP sPVar = new sP();
        if (view == null || !(layoutParams instanceof com.bytedance.adsdk.ugeno.HiB.sP)) {
            sPVar.sP = 1;
        } else {
            sPVar.sP = ((com.bytedance.adsdk.ugeno.HiB.sP) layoutParams).TKC();
        }
        if (i11 == -1 || i11 == flexItemCount || i11 >= this.EjP.getFlexItemCount()) {
            sPVar.Sj = flexItemCount;
        } else {
            sPVar.Sj = i11;
            while (i11 < flexItemCount) {
                listSP.get(i11).Sj++;
                i11++;
            }
        }
        listSP.add(sPVar);
        return Sj(flexItemCount + 1, listSP, sparseIntArray);
    }

    int sP(long j11) {
        return (int) (j11 >> 32);
    }

    long sP(int i11, int i12) {
        return (((long) i11) & 4294967295L) | (((long) i12) << 32);
    }

    void sP(int i11, int i12, int i13) {
        int mode;
        int size;
        int flexDirection = this.EjP.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i12);
            int size2 = View.MeasureSpec.getSize(i12);
            mode = mode2;
            size = size2;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
        }
        List<TKC> flexLinesInternal = this.EjP.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.EjP.getSumOfCrossSize() + i13;
            int i14 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).Jcg = size - i13;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.EjP.getAlignContent();
                if (alignContent == 1) {
                    int i15 = size - sumOfCrossSize;
                    TKC tkc = new TKC();
                    tkc.Jcg = i15;
                    flexLinesInternal.add(0, tkc);
                    return;
                }
                if (alignContent == 2) {
                    this.EjP.setFlexLines(Sj(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize < size) {
                        float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size4 = flexLinesInternal.size();
                        float f11 = 0.0f;
                        while (i14 < size4) {
                            arrayList.add(flexLinesInternal.get(i14));
                            if (i14 != flexLinesInternal.size() - 1) {
                                TKC tkc2 = new TKC();
                                if (i14 == flexLinesInternal.size() - 2) {
                                    tkc2.Jcg = Math.round(f11 + size3);
                                    f11 = 0.0f;
                                } else {
                                    tkc2.Jcg = Math.round(size3);
                                }
                                int i16 = tkc2.Jcg;
                                f11 += size3 - i16;
                                if (f11 > 1.0f) {
                                    tkc2.Jcg = i16 + 1;
                                    f11 -= 1.0f;
                                } else if (f11 < -1.0f) {
                                    tkc2.Jcg = i16 - 1;
                                    f11 += 1.0f;
                                }
                                arrayList.add(tkc2);
                            }
                            i14++;
                        }
                        this.EjP.setFlexLines(arrayList);
                        return;
                    }
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.EjP.setFlexLines(Sj(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    TKC tkc3 = new TKC();
                    tkc3.Jcg = size5;
                    for (TKC tkc4 : flexLinesInternal) {
                        arrayList2.add(tkc3);
                        arrayList2.add(tkc4);
                        arrayList2.add(tkc3);
                    }
                    this.EjP.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f12 = 0.0f;
                    while (i14 < size7) {
                        TKC tkc5 = flexLinesInternal.get(i14);
                        float f13 = tkc5.Jcg + size6;
                        if (i14 == flexLinesInternal.size() - 1) {
                            f13 += f12;
                            f12 = 0.0f;
                        }
                        int iRound = Math.round(f13);
                        f12 += f13 - iRound;
                        if (f12 > 1.0f) {
                            iRound++;
                            f12 -= 1.0f;
                        } else if (f12 < -1.0f) {
                            iRound--;
                            f12 += 1.0f;
                        }
                        tkc5.Jcg = iRound;
                        i14++;
                    }
                }
            }
        }
    }

    void sP(Sj sj2, int i11, int i12) {
        Sj(sj2, i12, i11, Integer.MAX_VALUE, 0, -1, (List<TKC>) null);
    }

    boolean sP(SparseIntArray sparseIntArray) {
        int flexItemCount = this.EjP.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i11 = 0; i11 < flexItemCount; i11++) {
            View viewSj = this.EjP.Sj(i11);
            if (viewSj != null && ((com.bytedance.adsdk.ugeno.HiB.sP) viewSj.getLayoutParams()).TKC() != sparseIntArray.get(i11)) {
                return true;
            }
        }
        return false;
    }
}
