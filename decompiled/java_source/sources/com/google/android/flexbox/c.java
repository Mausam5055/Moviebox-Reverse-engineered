package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.core.view.MarginLayoutParamsCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.flexbox.a f28153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean[] f28154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f28155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long[] f28156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long[] f28157e;

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List f28158a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f28159b;

        b() {
        }

        void a() {
            this.f28158a = null;
            this.f28159b = 0;
        }
    }

    /* JADX INFO: renamed from: com.google.android.flexbox.c$c, reason: collision with other inner class name */
    private static class C0384c implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28160a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f28161b;

        private C0384c() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C0384c c0384c) {
            int i11 = this.f28161b;
            int i12 = c0384c.f28161b;
            return i11 != i12 ? i11 - i12 : this.f28160a - c0384c.f28160a;
        }

        public String toString() {
            return "Order{order=" + this.f28161b + ", index=" + this.f28160a + '}';
        }
    }

    c(com.google.android.flexbox.a aVar) {
        this.f28153a = aVar;
    }

    private int A(int i11, FlexItem flexItem, int i12) {
        com.google.android.flexbox.a aVar = this.f28153a;
        int childWidthMeasureSpec = aVar.getChildWidthMeasureSpec(i11, aVar.getPaddingLeft() + this.f28153a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i12, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    private int B(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginBottom() : flexItem.getMarginRight();
    }

    private int C(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginRight() : flexItem.getMarginBottom();
    }

    private int D(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginTop() : flexItem.getMarginLeft();
    }

    private int E(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getMarginLeft() : flexItem.getMarginTop();
    }

    private int F(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getHeight() : flexItem.getWidth();
    }

    private int G(FlexItem flexItem, boolean z10) {
        return z10 ? flexItem.getWidth() : flexItem.getHeight();
    }

    private int H(boolean z10) {
        return z10 ? this.f28153a.getPaddingBottom() : this.f28153a.getPaddingEnd();
    }

    private int I(boolean z10) {
        return z10 ? this.f28153a.getPaddingEnd() : this.f28153a.getPaddingBottom();
    }

    private int J(boolean z10) {
        return z10 ? this.f28153a.getPaddingTop() : this.f28153a.getPaddingStart();
    }

    private int K(boolean z10) {
        return z10 ? this.f28153a.getPaddingStart() : this.f28153a.getPaddingTop();
    }

    private int L(View view, boolean z10) {
        return z10 ? view.getMeasuredHeight() : view.getMeasuredWidth();
    }

    private int M(View view, boolean z10) {
        return z10 ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    private boolean N(int i11, int i12, com.google.android.flexbox.b bVar) {
        return i11 == i12 - 1 && bVar.c() != 0;
    }

    private boolean P(View view, int i11, int i12, int i13, int i14, FlexItem flexItem, int i15, int i16, int i17) {
        if (this.f28153a.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i11 == 0) {
            return false;
        }
        int maxLine = this.f28153a.getMaxLine();
        if (maxLine != -1 && maxLine <= i17 + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.f28153a.getDecorationLengthMainAxis(view, i15, i16);
        if (decorationLengthMainAxis > 0) {
            i14 += decorationLengthMainAxis;
        }
        return i12 < i13 + i14;
    }

    private void T(int i11, int i12, com.google.android.flexbox.b bVar, int i13, int i14, boolean z10) {
        int i15;
        int i16;
        int iMax;
        int i17 = bVar.f28139e;
        float f11 = bVar.f28145k;
        float f12 = 0.0f;
        if (f11 <= 0.0f || i13 > i17) {
            return;
        }
        float f13 = (i17 - i13) / f11;
        bVar.f28139e = i14 + bVar.f28140f;
        if (!z10) {
            bVar.f28141g = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f14 = 0.0f;
        while (i18 < bVar.f28142h) {
            int i20 = bVar.f28149o + i18;
            View reorderedFlexItemAt = this.f28153a.getReorderedFlexItemAt(i20);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i15 = i17;
                i16 = i18;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f28153a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i15 = i17;
                    int i21 = i18;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f28157e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i20]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f28157e;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i20]);
                    }
                    if (this.f28154b[i20] || flexItem.getFlexShrink() <= 0.0f) {
                        i16 = i21;
                    } else {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f13);
                        if (i16 == bVar.f28142h - 1) {
                            i16 = i21;
                            flexShrink += f14;
                            f14 = 0.0f;
                        }
                        i16 = i21;
                        int iRound = Math.round(flexShrink);
                        if (iRound < flexItem.getMinWidth()) {
                            iRound = flexItem.getMinWidth();
                            this.f28154b[i20] = true;
                            bVar.f28145k -= flexItem.getFlexShrink();
                            z11 = true;
                        } else {
                            f14 += flexShrink - iRound;
                            double d11 = f14;
                            if (d11 > 1.0d) {
                                iRound++;
                                f14 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                iRound--;
                                f14 += 1.0f;
                            }
                        }
                        int iZ = z(i12, flexItem, bVar.f28147m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iZ);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i20, iMakeMeasureSpec, iZ, reorderedFlexItemAt);
                        this.f28153a.updateViewCache(i20, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i19, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f28153a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f28139e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f28157e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i20]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f28157e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i20]);
                    }
                    if (this.f28154b[i20] || flexItem.getFlexShrink() <= f12) {
                        i15 = i17;
                        i16 = i18;
                    } else {
                        float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f13);
                        if (i18 == bVar.f28142h - 1) {
                            flexShrink2 += f14;
                            f14 = f12;
                        }
                        int iRound2 = Math.round(flexShrink2);
                        if (iRound2 < flexItem.getMinHeight()) {
                            iRound2 = flexItem.getMinHeight();
                            this.f28154b[i20] = true;
                            bVar.f28145k -= flexItem.getFlexShrink();
                            i15 = i17;
                            i16 = i18;
                            z11 = true;
                        } else {
                            f14 += flexShrink2 - iRound2;
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
                        int iA = A(i11, flexItem, bVar.f28147m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iA, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i20, iA, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.f28153a.updateViewCache(i20, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i19, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f28153a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f28139e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                bVar.f28141g = Math.max(bVar.f28141g, iMax);
                i19 = iMax;
            }
            i18 = i16 + 1;
            i17 = i15;
            f12 = 0.0f;
        }
        int i22 = i17;
        if (!z11 || i22 == bVar.f28139e) {
            return;
        }
        T(i11, i12, bVar, i13, i14, true);
    }

    private int[] U(int i11, List list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i11];
        Iterator it = list.iterator();
        int i12 = 0;
        while (it.hasNext()) {
            C0384c c0384c = (C0384c) it.next();
            int i13 = c0384c.f28160a;
            iArr[i12] = i13;
            sparseIntArray.append(i13, c0384c.f28161b);
            i12++;
        }
        return iArr;
    }

    private void V(View view, int i11, int i12) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i11 - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.f28153a.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.f28157e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? x(jArr[i12]) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        Z(i12, iMakeMeasureSpec2, iMakeMeasureSpec, view);
        this.f28153a.updateViewCache(i12, view);
    }

    private void W(View view, int i11, int i12) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i11 - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.f28153a.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.f28157e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? y(jArr[i12]) : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        Z(i12, iMakeMeasureSpec, iMakeMeasureSpec2, view);
        this.f28153a.updateViewCache(i12, view);
    }

    private void Z(int i11, int i12, int i13, View view) {
        long[] jArr = this.f28156d;
        if (jArr != null) {
            jArr[i11] = S(i12, i13);
        }
        long[] jArr2 = this.f28157e;
        if (jArr2 != null) {
            jArr2[i11] = S(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    private void a(List list, com.google.android.flexbox.b bVar, int i11, int i12) {
        bVar.f28147m = i12;
        this.f28153a.onNewFlexLineAdded(bVar);
        bVar.f28150p = i11;
        list.add(bVar);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    private void i(View view, int i11) {
        boolean z10;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth >= flexItem.getMinWidth()) {
            if (measuredWidth > flexItem.getMaxWidth()) {
                measuredWidth = flexItem.getMaxWidth();
            } else {
                z10 = false;
            }
            if (measuredHeight < flexItem.getMinHeight()) {
                measuredHeight = flexItem.getMinHeight();
            } else if (measuredHeight > flexItem.getMaxHeight()) {
                measuredHeight = flexItem.getMaxHeight();
            } else {
                z11 = z10;
            }
            if (z11) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                Z(i11, iMakeMeasureSpec, iMakeMeasureSpec2, view);
                this.f28153a.updateViewCache(i11, view);
            }
        }
        measuredWidth = flexItem.getMinWidth();
        z10 = true;
        if (measuredHeight < flexItem.getMinHeight()) {
            measuredHeight = flexItem.getMinHeight();
        } else if (measuredHeight > flexItem.getMaxHeight()) {
            measuredHeight = flexItem.getMaxHeight();
        } else {
            z11 = z10;
        }
        if (z11) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            Z(i11, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
            this.f28153a.updateViewCache(i11, view);
        }
    }

    private List k(List list, int i11, int i12) {
        int i13 = (i11 - i12) / 2;
        ArrayList arrayList = new ArrayList();
        com.google.android.flexbox.b bVar = new com.google.android.flexbox.b();
        bVar.f28141g = i13;
        int size = list.size();
        for (int i14 = 0; i14 < size; i14++) {
            if (i14 == 0) {
                arrayList.add(bVar);
            }
            arrayList.add((com.google.android.flexbox.b) list.get(i14));
            if (i14 == list.size() - 1) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    private List l(int i11) {
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            FlexItem flexItem = (FlexItem) this.f28153a.getFlexItemAt(i12).getLayoutParams();
            C0384c c0384c = new C0384c();
            c0384c.f28161b = flexItem.getOrder();
            c0384c.f28160a = i12;
            arrayList.add(c0384c);
        }
        return arrayList;
    }

    private void r(int i11) {
        boolean[] zArr = this.f28154b;
        if (zArr == null) {
            this.f28154b = new boolean[Math.max(i11, 10)];
        } else if (zArr.length < i11) {
            this.f28154b = new boolean[Math.max(zArr.length * 2, i11)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void v(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable drawableA = androidx.core.widget.c.a(compoundButton);
        int minimumWidth = drawableA == null ? 0 : drawableA.getMinimumWidth();
        int minimumHeight = drawableA != null ? drawableA.getMinimumHeight() : 0;
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = minimumHeight;
        }
        flexItem.setMinHeight(minHeight);
    }

    private void w(int i11, int i12, com.google.android.flexbox.b bVar, int i13, int i14, boolean z10) {
        int i15;
        int i16;
        int iMax;
        double d11;
        int i17;
        double d12;
        float f11 = bVar.f28144j;
        float f12 = 0.0f;
        if (f11 <= 0.0f || i13 < (i15 = bVar.f28139e)) {
            return;
        }
        float f13 = (i13 - i15) / f11;
        bVar.f28139e = i14 + bVar.f28140f;
        if (!z10) {
            bVar.f28141g = Integer.MIN_VALUE;
        }
        int i18 = 0;
        boolean z11 = false;
        int i19 = 0;
        float f14 = 0.0f;
        while (i18 < bVar.f28142h) {
            int i20 = bVar.f28149o + i18;
            View reorderedFlexItemAt = this.f28153a.getReorderedFlexItemAt(i20);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i16 = i15;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.f28153a.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int i21 = i15;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr = this.f28157e;
                    if (jArr != null) {
                        measuredWidth = y(jArr[i20]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr2 = this.f28157e;
                    i16 = i21;
                    if (jArr2 != null) {
                        measuredHeight = x(jArr2[i20]);
                    }
                    if (!this.f28154b[i20] && flexItem.getFlexGrow() > 0.0f) {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f13);
                        if (i18 == bVar.f28142h - 1) {
                            flexGrow += f14;
                            f14 = 0.0f;
                        }
                        int iRound = Math.round(flexGrow);
                        if (iRound > flexItem.getMaxWidth()) {
                            iRound = flexItem.getMaxWidth();
                            this.f28154b[i20] = true;
                            bVar.f28144j -= flexItem.getFlexGrow();
                            z11 = true;
                        } else {
                            f14 += flexGrow - iRound;
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
                        int iZ = z(i12, flexItem, bVar.f28147m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        reorderedFlexItemAt.measure(iMakeMeasureSpec, iZ);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i20, iMakeMeasureSpec, iZ, reorderedFlexItemAt);
                        this.f28153a.updateViewCache(i20, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i19, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.f28153a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f28139e += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                    long[] jArr3 = this.f28157e;
                    if (jArr3 != null) {
                        measuredHeight3 = x(jArr3[i20]);
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    long[] jArr4 = this.f28157e;
                    if (jArr4 != null) {
                        measuredWidth3 = y(jArr4[i20]);
                    }
                    if (this.f28154b[i20] || flexItem.getFlexGrow() <= f12) {
                        i17 = i15;
                    } else {
                        float flexGrow2 = measuredHeight3 + (flexItem.getFlexGrow() * f13);
                        if (i18 == bVar.f28142h - 1) {
                            flexGrow2 += f14;
                            f14 = f12;
                        }
                        int iRound2 = Math.round(flexGrow2);
                        if (iRound2 > flexItem.getMaxHeight()) {
                            iRound2 = flexItem.getMaxHeight();
                            this.f28154b[i20] = true;
                            bVar.f28144j -= flexItem.getFlexGrow();
                            i17 = i15;
                            z11 = true;
                        } else {
                            f14 += flexGrow2 - iRound2;
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
                        int iA = A(i11, flexItem, bVar.f28147m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        reorderedFlexItemAt.measure(iA, iMakeMeasureSpec2);
                        measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                        Z(i20, iA, iMakeMeasureSpec2, reorderedFlexItemAt);
                        this.f28153a.updateViewCache(i20, reorderedFlexItemAt);
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i19, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.f28153a.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    bVar.f28139e += measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                    i16 = i17;
                }
                bVar.f28141g = Math.max(bVar.f28141g, iMax);
                i19 = iMax;
            }
            i18++;
            i15 = i16;
            f12 = 0.0f;
        }
        int i22 = i15;
        if (!z11 || i22 == bVar.f28139e) {
            return;
        }
        w(i11, i12, bVar, i13, i14, true);
    }

    private int z(int i11, FlexItem flexItem, int i12) {
        com.google.android.flexbox.a aVar = this.f28153a;
        int childHeightMeasureSpec = aVar.getChildHeightMeasureSpec(i11, aVar.getPaddingTop() + this.f28153a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i12, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }

    boolean O(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f28153a.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i11 = 0; i11 < flexItemCount; i11++) {
            View flexItemAt = this.f28153a.getFlexItemAt(i11);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i11)) {
                return true;
            }
        }
        return false;
    }

    void Q(View view, com.google.android.flexbox.b bVar, int i11, int i12, int i13, int i14) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f28153a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i15 = bVar.f28141g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.f28153a.getFlexWrap() == 2) {
                    view.layout(i11, (i12 - i15) + view.getMeasuredHeight() + flexItem.getMarginTop(), i13, (i14 - i15) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                } else {
                    int i16 = i12 + i15;
                    view.layout(i11, (i16 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i13, i16 - flexItem.getMarginBottom());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i15 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.f28153a.getFlexWrap() != 2) {
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
                if (this.f28153a.getFlexWrap() != 2) {
                    int iMax = Math.max(bVar.f28146l - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i11, i12 + iMax, i13, i14 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((bVar.f28146l - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                    view.layout(i11, i12 - iMax2, i13, i14 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.f28153a.getFlexWrap() != 2) {
            view.layout(i11, i12 + flexItem.getMarginTop(), i13, i14 + flexItem.getMarginTop());
        } else {
            view.layout(i11, i12 - flexItem.getMarginBottom(), i13, i14 - flexItem.getMarginBottom());
        }
    }

    void R(View view, com.google.android.flexbox.b bVar, boolean z10, int i11, int i12, int i13, int i14) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.f28153a.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i15 = bVar.f28141g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (z10) {
                    view.layout((i11 - i15) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i12, (i13 - i15) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i14);
                    return;
                } else {
                    view.layout(((i11 + i15) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i12, ((i13 + i15) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i14);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i15 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
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
            view.layout(i11 - flexItem.getMarginRight(), i12, i13 - flexItem.getMarginRight(), i14);
        } else {
            view.layout(i11 + flexItem.getMarginLeft(), i12, i13 + flexItem.getMarginLeft(), i14);
        }
    }

    long S(int i11, int i12) {
        return (((long) i11) & 4294967295L) | (((long) i12) << 32);
    }

    void X() {
        Y(0);
    }

    void Y(int i11) {
        View reorderedFlexItemAt;
        if (i11 >= this.f28153a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28153a.getFlexDirection();
        if (this.f28153a.getAlignItems() != 4) {
            for (com.google.android.flexbox.b bVar : this.f28153a.getFlexLinesInternal()) {
                for (Integer num : bVar.f28148n) {
                    View reorderedFlexItemAt2 = this.f28153a.getReorderedFlexItemAt(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        W(reorderedFlexItemAt2, bVar.f28141g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                        }
                        V(reorderedFlexItemAt2, bVar.f28141g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = this.f28155c;
        List flexLinesInternal = this.f28153a.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i12 = iArr != null ? iArr[i11] : 0; i12 < size; i12++) {
            com.google.android.flexbox.b bVar2 = (com.google.android.flexbox.b) flexLinesInternal.get(i12);
            int i13 = bVar2.f28142h;
            for (int i14 = 0; i14 < i13; i14++) {
                int i15 = bVar2.f28149o + i14;
                if (i14 < this.f28153a.getFlexItemCount() && (reorderedFlexItemAt = this.f28153a.getReorderedFlexItemAt(i15)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            W(reorderedFlexItemAt, bVar2.f28141g, i15);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                            V(reorderedFlexItemAt, bVar2.f28141g, i15);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void b(b bVar, int i11, int i12, int i13, int i14, int i15, List list) {
        int i16;
        int i17;
        List list2;
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
        boolean zIsMainAxisDirectionHorizontal = this.f28153a.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        List arrayList = list == null ? new ArrayList() : list;
        bVar.f28158a = arrayList;
        int i29 = i28 == -1 ? 1 : 0;
        int iK = K(zIsMainAxisDirectionHorizontal);
        int I = I(zIsMainAxisDirectionHorizontal);
        int iJ = J(zIsMainAxisDirectionHorizontal);
        int iH = H(zIsMainAxisDirectionHorizontal);
        com.google.android.flexbox.b bVar2 = new com.google.android.flexbox.b();
        int i30 = i14;
        bVar2.f28149o = i30;
        int i31 = I + iK;
        bVar2.f28139e = i31;
        int flexItemCount = this.f28153a.getFlexItemCount();
        int i32 = i29;
        int i33 = Integer.MIN_VALUE;
        int i34 = 0;
        int iCombineMeasuredStates = 0;
        int i35 = 0;
        while (i30 < flexItemCount) {
            View reorderedFlexItemAt = this.f28153a.getReorderedFlexItemAt(i30);
            if (reorderedFlexItemAt != null) {
                if (reorderedFlexItemAt.getVisibility() == 8) {
                    bVar2.f28143i++;
                    bVar2.f28142h++;
                    if (N(i30, flexItemCount, bVar2)) {
                        a(arrayList, bVar2, i30, i34);
                    }
                } else {
                    if (reorderedFlexItemAt instanceof CompoundButton) {
                        v((CompoundButton) reorderedFlexItemAt);
                    }
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int i36 = flexItemCount;
                    if (flexItem.getAlignSelf() == 4) {
                        bVar2.f28148n.add(Integer.valueOf(i30));
                    }
                    int iG = G(flexItem, zIsMainAxisDirectionHorizontal);
                    if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                        iG = Math.round(size * flexItem.getFlexBasisPercent());
                    }
                    if (zIsMainAxisDirectionHorizontal) {
                        int childWidthMeasureSpec = this.f28153a.getChildWidthMeasureSpec(i11, i31 + E(flexItem, true) + C(flexItem, true), iG);
                        int childHeightMeasureSpec = this.f28153a.getChildHeightMeasureSpec(i27, iJ + iH + D(flexItem, true) + B(flexItem, true) + i34, F(flexItem, true));
                        reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                        Z(i30, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                        i17 = childWidthMeasureSpec;
                    } else {
                        int childWidthMeasureSpec2 = this.f28153a.getChildWidthMeasureSpec(i27, iJ + iH + D(flexItem, false) + B(flexItem, false) + i34, F(flexItem, false));
                        int childHeightMeasureSpec2 = this.f28153a.getChildHeightMeasureSpec(i11, E(flexItem, false) + i31 + C(flexItem, false), iG);
                        reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                        Z(i30, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                        i17 = childHeightMeasureSpec2;
                    }
                    this.f28153a.updateViewCache(i30, reorderedFlexItemAt);
                    i(reorderedFlexItemAt, i30);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, reorderedFlexItemAt.getMeasuredState());
                    int i37 = i34;
                    int i38 = i31;
                    com.google.android.flexbox.b bVar3 = bVar2;
                    int i39 = i30;
                    list2 = arrayList;
                    int i40 = i17;
                    if (P(reorderedFlexItemAt, mode, size, bVar2.f28139e, C(flexItem, zIsMainAxisDirectionHorizontal) + M(reorderedFlexItemAt, zIsMainAxisDirectionHorizontal) + E(flexItem, zIsMainAxisDirectionHorizontal), flexItem, i39, i35, arrayList.size())) {
                        if (bVar3.c() > 0) {
                            a(list2, bVar3, i39 > 0 ? i39 - 1 : 0, i37);
                            i34 = bVar3.f28141g + i37;
                        } else {
                            i34 = i37;
                        }
                        if (!zIsMainAxisDirectionHorizontal) {
                            i18 = i12;
                            i19 = i39;
                            view = reorderedFlexItemAt;
                            i20 = -1;
                            if (flexItem.getWidth() == -1) {
                                com.google.android.flexbox.a aVar = this.f28153a;
                                view.measure(aVar.getChildWidthMeasureSpec(i18, aVar.getPaddingLeft() + this.f28153a.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i34, flexItem.getWidth()), i40);
                                i(view, i19);
                            }
                        } else if (flexItem.getHeight() == -1) {
                            com.google.android.flexbox.a aVar2 = this.f28153a;
                            i18 = i12;
                            i20 = -1;
                            view = reorderedFlexItemAt;
                            view.measure(i40, aVar2.getChildHeightMeasureSpec(i18, aVar2.getPaddingTop() + this.f28153a.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i34, flexItem.getHeight()));
                            i19 = i39;
                            i(view, i19);
                        } else {
                            i18 = i12;
                            i19 = i39;
                            view = reorderedFlexItemAt;
                            i20 = -1;
                        }
                        bVar2 = new com.google.android.flexbox.b();
                        i22 = 1;
                        bVar2.f28142h = 1;
                        i21 = i38;
                        bVar2.f28139e = i21;
                        bVar2.f28149o = i19;
                        i24 = Integer.MIN_VALUE;
                        i23 = 0;
                    } else {
                        i18 = i12;
                        i19 = i39;
                        view = reorderedFlexItemAt;
                        i20 = -1;
                        bVar2 = bVar3;
                        i21 = i38;
                        i22 = 1;
                        bVar2.f28142h++;
                        i23 = i35 + 1;
                        i34 = i37;
                        i24 = i33;
                    }
                    bVar2.f28151q = (bVar2.f28151q ? 1 : 0) | (flexItem.getFlexGrow() != 0.0f ? i22 : 0);
                    bVar2.f28152r = (bVar2.f28152r ? 1 : 0) | (flexItem.getFlexShrink() != 0.0f ? i22 : 0);
                    int[] iArr = this.f28155c;
                    if (iArr != null) {
                        iArr[i19] = list2.size();
                    }
                    bVar2.f28139e += M(view, zIsMainAxisDirectionHorizontal) + E(flexItem, zIsMainAxisDirectionHorizontal) + C(flexItem, zIsMainAxisDirectionHorizontal);
                    bVar2.f28144j += flexItem.getFlexGrow();
                    bVar2.f28145k += flexItem.getFlexShrink();
                    this.f28153a.onNewFlexItemAdded(view, i19, i23, bVar2);
                    int iMax = Math.max(i24, L(view, zIsMainAxisDirectionHorizontal) + D(flexItem, zIsMainAxisDirectionHorizontal) + B(flexItem, zIsMainAxisDirectionHorizontal) + this.f28153a.getDecorationLengthCrossAxis(view));
                    bVar2.f28141g = Math.max(bVar2.f28141g, iMax);
                    if (zIsMainAxisDirectionHorizontal) {
                        if (this.f28153a.getFlexWrap() != 2) {
                            bVar2.f28146l = Math.max(bVar2.f28146l, view.getBaseline() + flexItem.getMarginTop());
                        } else {
                            bVar2.f28146l = Math.max(bVar2.f28146l, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    i25 = i36;
                    if (N(i19, i25, bVar2)) {
                        a(list2, bVar2, i19, i34);
                        i34 += bVar2.f28141g;
                    }
                    i26 = i15;
                    if (i26 != i20 && list2.size() > 0 && ((com.google.android.flexbox.b) list2.get(list2.size() - i22)).f28150p >= i26 && i19 >= i26 && i32 == 0) {
                        i34 = -bVar2.a();
                        i32 = i22;
                    }
                    if (i34 > i13 && i32 != 0) {
                        i16 = iCombineMeasuredStates;
                        bVar.f28159b = i16;
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
            } else if (N(i30, flexItemCount, bVar2)) {
                a(arrayList, bVar2, i30, i34);
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
        bVar.f28159b = i16;
    }

    void c(b bVar, int i11, int i12) {
        b(bVar, i11, i12, Integer.MAX_VALUE, 0, -1, null);
    }

    void d(b bVar, int i11, int i12, int i13, int i14, List list) {
        b(bVar, i11, i12, i13, i14, -1, list);
    }

    void e(b bVar, int i11, int i12, int i13, int i14, List list) {
        b(bVar, i11, i12, i13, 0, i14, list);
    }

    void f(b bVar, int i11, int i12) {
        b(bVar, i12, i11, Integer.MAX_VALUE, 0, -1, null);
    }

    void g(b bVar, int i11, int i12, int i13, int i14, List list) {
        b(bVar, i12, i11, i13, i14, -1, list);
    }

    void h(b bVar, int i11, int i12, int i13, int i14, List list) {
        b(bVar, i12, i11, i13, 0, i14, list);
    }

    void j(List list, int i11) {
        int i12 = this.f28155c[i11];
        if (i12 == -1) {
            i12 = 0;
        }
        if (list.size() > i12) {
            list.subList(i12, list.size()).clear();
        }
        int[] iArr = this.f28155c;
        int length = iArr.length - 1;
        if (i11 > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i11, length, -1);
        }
        long[] jArr = this.f28156d;
        int length2 = jArr.length - 1;
        if (i11 > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i11, length2, 0L);
        }
    }

    int[] m(SparseIntArray sparseIntArray) {
        int flexItemCount = this.f28153a.getFlexItemCount();
        return U(flexItemCount, l(flexItemCount), sparseIntArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    int[] n(View view, int i11, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.f28153a.getFlexItemCount();
        List listL = l(flexItemCount);
        C0384c c0384c = new C0384c();
        if (view == null || !(layoutParams instanceof FlexItem)) {
            c0384c.f28161b = 1;
        } else {
            c0384c.f28161b = ((FlexItem) layoutParams).getOrder();
        }
        if (i11 == -1 || i11 == flexItemCount || i11 >= this.f28153a.getFlexItemCount()) {
            c0384c.f28160a = flexItemCount;
        } else {
            c0384c.f28160a = i11;
            while (i11 < flexItemCount) {
                ((C0384c) listL.get(i11)).f28160a++;
                i11++;
            }
        }
        listL.add(c0384c);
        return U(flexItemCount + 1, listL, sparseIntArray);
    }

    void o(int i11, int i12, int i13) {
        int mode;
        int size;
        int flexDirection = this.f28153a.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i12);
            int size2 = View.MeasureSpec.getSize(i12);
            mode = mode2;
            size = size2;
        } else {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
        }
        List<com.google.android.flexbox.b> flexLinesInternal = this.f28153a.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.f28153a.getSumOfCrossSize() + i13;
            int i14 = 0;
            if (flexLinesInternal.size() == 1) {
                ((com.google.android.flexbox.b) flexLinesInternal.get(0)).f28141g = size - i13;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.f28153a.getAlignContent();
                if (alignContent == 1) {
                    int i15 = size - sumOfCrossSize;
                    com.google.android.flexbox.b bVar = new com.google.android.flexbox.b();
                    bVar.f28141g = i15;
                    flexLinesInternal.add(0, bVar);
                    return;
                }
                if (alignContent == 2) {
                    this.f28153a.setFlexLines(k(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size4 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i14 < size4) {
                        arrayList.add((com.google.android.flexbox.b) flexLinesInternal.get(i14));
                        if (i14 != flexLinesInternal.size() - 1) {
                            com.google.android.flexbox.b bVar2 = new com.google.android.flexbox.b();
                            if (i14 == flexLinesInternal.size() - 2) {
                                bVar2.f28141g = Math.round(f11 + size3);
                                f11 = 0.0f;
                            } else {
                                bVar2.f28141g = Math.round(size3);
                            }
                            int i16 = bVar2.f28141g;
                            f11 += size3 - i16;
                            if (f11 > 1.0f) {
                                bVar2.f28141g = i16 + 1;
                                f11 -= 1.0f;
                            } else if (f11 < -1.0f) {
                                bVar2.f28141g = i16 - 1;
                                f11 += 1.0f;
                            }
                            arrayList.add(bVar2);
                        }
                        i14++;
                    }
                    this.f28153a.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.f28153a.setFlexLines(k(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    com.google.android.flexbox.b bVar3 = new com.google.android.flexbox.b();
                    bVar3.f28141g = size5;
                    for (com.google.android.flexbox.b bVar4 : flexLinesInternal) {
                        arrayList2.add(bVar3);
                        arrayList2.add(bVar4);
                        arrayList2.add(bVar3);
                    }
                    this.f28153a.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f12 = 0.0f;
                    while (i14 < size7) {
                        com.google.android.flexbox.b bVar5 = (com.google.android.flexbox.b) flexLinesInternal.get(i14);
                        float f13 = bVar5.f28141g + size6;
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
                        bVar5.f28141g = iRound;
                        i14++;
                    }
                }
            }
        }
    }

    void p(int i11, int i12) {
        q(i11, i12, 0);
    }

    void q(int i11, int i12, int i13) {
        int size;
        int paddingLeft;
        int paddingRight;
        r(this.f28153a.getFlexItemCount());
        if (i13 >= this.f28153a.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.f28153a.getFlexDirection();
        int flexDirection2 = this.f28153a.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            int largestMainSize = this.f28153a.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.f28153a.getPaddingLeft();
            paddingRight = this.f28153a.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
            }
            int mode2 = View.MeasureSpec.getMode(i12);
            size = View.MeasureSpec.getSize(i12);
            if (mode2 != 1073741824) {
                size = this.f28153a.getLargestMainSize();
            }
            paddingLeft = this.f28153a.getPaddingTop();
            paddingRight = this.f28153a.getPaddingBottom();
        }
        int i14 = paddingLeft + paddingRight;
        int[] iArr = this.f28155c;
        List flexLinesInternal = this.f28153a.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i15 = iArr != null ? iArr[i13] : 0; i15 < size2; i15++) {
            com.google.android.flexbox.b bVar = (com.google.android.flexbox.b) flexLinesInternal.get(i15);
            int i16 = bVar.f28139e;
            if (i16 < size && bVar.f28151q) {
                w(i11, i12, bVar, size, i14, false);
            } else if (i16 > size && bVar.f28152r) {
                T(i11, i12, bVar, size, i14, false);
            }
        }
    }

    void s(int i11) {
        int[] iArr = this.f28155c;
        if (iArr == null) {
            this.f28155c = new int[Math.max(i11, 10)];
        } else if (iArr.length < i11) {
            this.f28155c = Arrays.copyOf(this.f28155c, Math.max(iArr.length * 2, i11));
        }
    }

    void t(int i11) {
        long[] jArr = this.f28156d;
        if (jArr == null) {
            this.f28156d = new long[Math.max(i11, 10)];
        } else if (jArr.length < i11) {
            this.f28156d = Arrays.copyOf(this.f28156d, Math.max(jArr.length * 2, i11));
        }
    }

    void u(int i11) {
        long[] jArr = this.f28157e;
        if (jArr == null) {
            this.f28157e = new long[Math.max(i11, 10)];
        } else if (jArr.length < i11) {
            this.f28157e = Arrays.copyOf(this.f28157e, Math.max(jArr.length * 2, i11));
        }
    }

    int x(long j11) {
        return (int) (j11 >> 32);
    }

    int y(long j11) {
        return (int) j11;
    }
}
