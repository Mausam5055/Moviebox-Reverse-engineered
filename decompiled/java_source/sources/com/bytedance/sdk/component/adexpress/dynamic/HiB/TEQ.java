package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TEQ {
    public static float Sj(float f11) {
        return (float) Math.ceil((f11 * 16.0f) / 16.0f);
    }

    public static List<sP.Sj> Sj(float f11, List<sP.Sj> list) {
        ArrayList<sP.Sj> arrayList = new ArrayList();
        Iterator<sP.Sj> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((sP.Sj) it.next().clone());
        }
        boolean z10 = true;
        int i11 = 0;
        int i12 = 0;
        for (sP.Sj sj2 : arrayList) {
            if (sj2.sP) {
                i11 = (int) (i11 + sj2.Sj);
            } else {
                i12 = (int) (i12 + sj2.Sj);
                z10 = false;
            }
        }
        if (z10 && f11 > i11) {
            return arrayList;
        }
        float f12 = i11;
        float f13 = f11 < f12 ? f11 / f12 : 1.0f;
        float f14 = f11 > f12 ? (f11 - f12) / i12 : 0.0f;
        if (f14 > 1.0f) {
            ArrayList arrayList2 = new ArrayList();
            boolean z11 = false;
            for (sP.Sj sj3 : arrayList) {
                if (!sj3.sP) {
                    float f15 = sj3.TKC;
                    if (f15 != 0.0f && sj3.Sj * f14 > f15) {
                        sj3.Sj = f15;
                        sj3.sP = true;
                        z11 = true;
                    }
                }
                arrayList2.add(sj3);
            }
            if (z11) {
                return Sj(f11, arrayList2);
            }
        }
        int i13 = 0;
        for (sP.Sj sj4 : arrayList) {
            if (sj4.sP) {
                sj4.Sj = Sj(sj4.Sj * f13);
            } else {
                sj4.Sj = Sj(sj4.Sj * f14);
            }
            i13 = (int) (i13 + sj4.Sj);
        }
        float f16 = i13;
        if (f16 < f11) {
            float f17 = f11 - f16;
            for (int size = 0; size < arrayList.size() && f17 > 0.0f; size = (size + 1) % arrayList.size()) {
                sP.Sj sj5 = (sP.Sj) arrayList.get(size);
                if ((f11 < f12 && sj5.sP) || (f11 > f12 && !sj5.sP)) {
                    sj5.Sj += 0.0625f;
                    f17 -= 0.0625f;
                }
            }
        }
        return arrayList;
    }
}
