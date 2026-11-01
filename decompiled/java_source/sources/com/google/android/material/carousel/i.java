package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f28643d = {1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f28644e = {1, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f28645c = 0;

    @Override // com.google.android.material.carousel.d
    f g(b bVar, View view) {
        float fB = bVar.b();
        if (bVar.d()) {
            fB = bVar.a();
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        float f11 = ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (bVar.d()) {
            f11 = ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f12 = f11;
        float fD = d() + f12;
        float fMax = Math.max(c() + f12, fD);
        float fMin = Math.min(measuredHeight + f12, fB);
        float fA = d1.a.a((measuredHeight / 3.0f) + f12, fD + f12, fMax + f12);
        float f13 = (fMin + fA) / 2.0f;
        int[] iArrA = f28643d;
        if (fB < 2.0f * fD) {
            iArrA = new int[]{0};
        }
        int[] iArrA2 = f28644e;
        if (bVar.c() == 1) {
            iArrA = d.a(iArrA);
            iArrA2 = d.a(iArrA2);
        }
        int[] iArr = iArrA;
        int[] iArr2 = iArrA2;
        int iMax = (int) Math.max(1.0d, Math.floor(((fB - (e.i(iArr2) * f13)) - (e.i(iArr) * fMax)) / fMin));
        int iCeil = (int) Math.ceil(fB / fMin);
        int i11 = (iCeil - iMax) + 1;
        int[] iArr3 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr3[i12] = iCeil - i12;
        }
        a aVarC = a.c(fB, fA, fD, fMax, iArr, f13, iArr2, fMin, iArr3);
        this.f28645c = aVarC.e();
        if (i(aVarC, bVar.getItemCount())) {
            aVarC = a.c(fB, fA, fD, fMax, new int[]{aVarC.f28604c}, f13, new int[]{aVarC.f28605d}, fMin, new int[]{aVarC.f28608g});
        }
        return e.d(view.getContext(), f12, fB, aVarC, bVar.c());
    }

    @Override // com.google.android.material.carousel.d
    boolean h(b bVar, int i11) {
        return (i11 < this.f28645c && bVar.getItemCount() >= this.f28645c) || (i11 >= this.f28645c && bVar.getItemCount() < this.f28645c);
    }

    boolean i(a aVar, int i11) {
        int iE = aVar.e() - i11;
        boolean z10 = iE > 0 && (aVar.f28604c > 0 || aVar.f28605d > 1);
        while (iE > 0) {
            int i12 = aVar.f28604c;
            if (i12 > 0) {
                aVar.f28604c = i12 - 1;
            } else {
                int i13 = aVar.f28605d;
                if (i13 > 1) {
                    aVar.f28605d = i13 - 1;
                }
            }
            iE--;
        }
        return z10;
    }
}
