package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.e0;
import androidx.compose.runtime.i1;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyListMeasureKt {
    private static final List a(List list, List list2, List list3, int i11, int i12, int i13, int i14, int i15, boolean z10, androidx.compose.foundation.layout.b.k kVar, androidx.compose.foundation.layout.b.d dVar, boolean z11, o0.e eVar) {
        int i16 = z10 ? i12 : i11;
        boolean z12 = i13 < Math.min(i16, i14);
        if (z12 && i15 != 0) {
            throw new IllegalStateException("non-zero itemsScrollOffset");
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size() + list3.size());
        if (!z12) {
            int size = list2.size();
            int iH = i15;
            for (int i17 = 0; i17 < size; i17++) {
                n nVar = (n) list2.get(i17);
                iH -= nVar.h();
                nVar.r(iH, i11, i12);
                arrayList.add(nVar);
            }
            int size2 = list.size();
            int iH2 = i15;
            for (int i18 = 0; i18 < size2; i18++) {
                n nVar2 = (n) list.get(i18);
                nVar2.r(iH2, i11, i12);
                arrayList.add(nVar2);
                iH2 += nVar2.h();
            }
            int size3 = list3.size();
            for (int i19 = 0; i19 < size3; i19++) {
                n nVar3 = (n) list3.get(i19);
                nVar3.r(iH2, i11, i12);
                arrayList.add(nVar3);
                iH2 += nVar3.h();
            }
        } else {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                throw new IllegalArgumentException("no extra items");
            }
            int size4 = list.size();
            int[] iArr = new int[size4];
            for (int i20 = 0; i20 < size4; i20++) {
                iArr[i20] = ((n) list.get(b(i20, z11, size4))).getSize();
            }
            int[] iArr2 = new int[size4];
            for (int i21 = 0; i21 < size4; i21++) {
                iArr2[i21] = 0;
            }
            if (z10) {
                if (kVar == null) {
                    throw new IllegalArgumentException("null verticalArrangement when isVertical == true");
                }
                kVar.c(eVar, i16, iArr, iArr2);
            } else {
                if (dVar == null) {
                    throw new IllegalArgumentException("null horizontalArrangement when isVertical == false");
                }
                dVar.b(eVar, i16, iArr, LayoutDirection.Ltr, iArr2);
            }
            IntProgression intProgressionY = ArraysKt.Y(iArr2);
            if (z11) {
                intProgressionY = RangesKt.r(intProgressionY);
            }
            int first = intProgressionY.getFirst();
            int last = intProgressionY.getLast();
            int step = intProgressionY.getStep();
            if ((step > 0 && first <= last) || (step < 0 && last <= first)) {
                while (true) {
                    int size5 = iArr2[first];
                    n nVar4 = (n) list.get(b(first, z11, size4));
                    if (z11) {
                        size5 = (i16 - size5) - nVar4.getSize();
                    }
                    nVar4.r(size5, i11, i12);
                    arrayList.add(nVar4);
                    if (first == last) {
                        break;
                    }
                    first += step;
                }
            }
        }
        return arrayList;
    }

    private static final int b(int i11, boolean z10, int i12) {
        return !z10 ? i11 : (i12 - i11) - 1;
    }

    private static final List c(List list, o oVar, int i11, int i12, List list2, float f11, boolean z10, l lVar) {
        ArrayList arrayList;
        j jVar;
        n nVar;
        Object obj;
        int iH;
        Object obj2;
        int index;
        int iMin;
        n nVar2;
        Object obj3;
        int i13 = i11 - 1;
        int iMin2 = Math.min(((n) CollectionsKt.u0(list)).getIndex() + i12, i13);
        int index2 = ((n) CollectionsKt.u0(list)).getIndex() + 1;
        if (index2 <= iMin2) {
            ArrayList arrayList2 = null;
            while (true) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList = arrayList2;
                arrayList.add(o.e(oVar, index2, 0L, 2, null));
                if (index2 == iMin2) {
                    break;
                }
                index2++;
                arrayList2 = arrayList;
            }
        } else {
            arrayList = null;
        }
        if (z10 && lVar != null && !lVar.h().isEmpty()) {
            List listH = lVar.h();
            int size = listH.size();
            while (true) {
                size--;
                if (-1 >= size) {
                    jVar = null;
                    break;
                }
                if (((j) listH.get(size)).getIndex() > iMin2 && (size == 0 || ((j) listH.get(size - 1)).getIndex() <= iMin2)) {
                    jVar = (j) listH.get(size);
                    break;
                }
            }
            j jVar2 = (j) CollectionsKt.u0(lVar.h());
            if (jVar != null && (index = jVar.getIndex()) <= (iMin = Math.min(jVar2.getIndex(), i13))) {
                while (true) {
                    if (arrayList != null) {
                        int size2 = arrayList.size();
                        int i14 = 0;
                        while (true) {
                            if (i14 >= size2) {
                                obj3 = null;
                                break;
                            }
                            obj3 = arrayList.get(i14);
                            if (((n) obj3).getIndex() == index) {
                                break;
                            }
                            i14++;
                        }
                        nVar2 = (n) obj3;
                    } else {
                        nVar2 = null;
                    }
                    if (nVar2 == null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(o.e(oVar, index, 0L, 2, null));
                    }
                    if (index == iMin) {
                        break;
                    }
                    index++;
                }
            }
            float fC = ((lVar.c() - jVar2.g()) - jVar2.getSize()) - f11;
            if (fC > 0.0f) {
                int index3 = jVar2.getIndex() + 1;
                int i15 = 0;
                while (index3 < i11 && i15 < fC) {
                    if (index3 <= iMin2) {
                        int size3 = list.size();
                        int i16 = 0;
                        while (true) {
                            if (i16 >= size3) {
                                obj2 = null;
                                break;
                            }
                            obj2 = list.get(i16);
                            if (((n) obj2).getIndex() == index3) {
                                break;
                            }
                            i16++;
                        }
                        nVar = (n) obj2;
                    } else if (arrayList != null) {
                        int size4 = arrayList.size();
                        int i17 = 0;
                        while (true) {
                            if (i17 >= size4) {
                                obj = null;
                                break;
                            }
                            obj = arrayList.get(i17);
                            if (((n) obj).getIndex() == index3) {
                                break;
                            }
                            i17++;
                        }
                        nVar = (n) obj;
                    } else {
                        nVar = null;
                    }
                    if (nVar != null) {
                        index3++;
                        iH = nVar.h();
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(o.e(oVar, index3, 0L, 2, null));
                        index3++;
                        iH = ((n) CollectionsKt.u0(arrayList)).h();
                    }
                    i15 += iH;
                }
            }
        }
        if (arrayList != null && ((n) CollectionsKt.u0(arrayList)).getIndex() > iMin2) {
            iMin2 = ((n) CollectionsKt.u0(arrayList)).getIndex();
        }
        int size5 = list2.size();
        for (int i18 = 0; i18 < size5; i18++) {
            int iIntValue = ((Number) list2.get(i18)).intValue();
            if (iIntValue > iMin2) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(o.e(oVar, iIntValue, 0L, 2, null));
            }
        }
        return arrayList == null ? CollectionsKt.l() : arrayList;
    }

    private static final List d(int i11, o oVar, int i12, List list) {
        int iMax = Math.max(0, i11 - i12);
        int i13 = i11 - 1;
        ArrayList arrayList = null;
        if (iMax <= i13) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(o.e(oVar, i13, 0L, 2, null));
                if (i13 == iMax) {
                    break;
                }
                i13--;
            }
        }
        int size = list.size() - 1;
        if (size >= 0) {
            while (true) {
                int i14 = size - 1;
                int iIntValue = ((Number) list.get(size)).intValue();
                if (iIntValue < iMax) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(o.e(oVar, iIntValue, 0L, 2, null));
                }
                if (i14 < 0) {
                    break;
                }
                size = i14;
            }
        }
        return arrayList == null ? CollectionsKt.l() : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0370  */
    /* JADX WARN: Code duplicated, block: B:148:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:149:0x03be  */
    /* JADX WARN: Code duplicated, block: B:151:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:160:0x0401  */
    /* JADX WARN: Code duplicated, block: B:162:0x0406  */
    public static final m e(int i11, o oVar, int i12, int i13, int i14, int i15, int i16, int i17, float f11, long j11, boolean z10, List list, androidx.compose.foundation.layout.b.k kVar, androidx.compose.foundation.layout.b.d dVar, boolean z11, o0.e eVar, LazyLayoutItemAnimator lazyLayoutItemAnimator, int i18, List list2, boolean z12, boolean z13, l lVar, n0 n0Var, final i1 i1Var, a4 a4Var, Function3 function3) {
        int i19;
        int i20;
        int iH;
        int i21;
        int i22;
        int i23;
        int i24;
        n nVar;
        int i25;
        int i26;
        int i27;
        final boolean z14;
        boolean z15;
        int size;
        int i28;
        List list3;
        n nVar2;
        Orientation orientation;
        int i29;
        if (i13 < 0) {
            throw new IllegalArgumentException("invalid beforeContentPadding");
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("invalid afterContentPadding");
        }
        if (i11 <= 0) {
            int iN = o0.b.n(j11);
            int iM = o0.b.m(j11);
            lazyLayoutItemAnimator.l(0, iN, iM, new ArrayList(), oVar.g(), oVar, z10, z13, 1, z12, 0, 0, n0Var, a4Var);
            if (!z13) {
                long jH = lazyLayoutItemAnimator.h();
                if (!o0.t.e(jH, o0.t.f70624b.a())) {
                    iN = o0.c.i(j11, o0.t.g(jH));
                    iM = o0.c.h(j11, o0.t.f(jH));
                }
            }
            return new m(null, 0, false, 0.0f, (androidx.compose.ui.layout.v) function3.invoke(Integer.valueOf(iN), Integer.valueOf(iM), new Function1<g0.a, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$measureLazyList$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((g0.a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(g0.a aVar) {
                }
            }), 0.0f, false, n0Var, eVar, oVar.f(), CollectionsKt.l(), -i13, i12 + i14, 0, z11, z10 ? Orientation.Vertical : Orientation.Horizontal, i14, i15, null);
        }
        int i30 = i16;
        if (i30 >= i11) {
            i30 = i11 - 1;
            i19 = 0;
        } else {
            i19 = i17;
        }
        int iRound = Math.round(f11);
        int i31 = i19 - iRound;
        if (i30 == 0 && i31 < 0) {
            iRound += i31;
            i31 = 0;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        int i32 = -i13;
        int i33 = (i15 < 0 ? i15 : 0) + i32;
        int iH2 = i31 + i33;
        int iMax = 0;
        while (iH2 < 0 && i30 > 0) {
            i30--;
            n nVarE = o.e(oVar, i30, 0L, 2, null);
            arrayDeque.add(0, nVarE);
            iMax = Math.max(iMax, nVarE.m());
            iH2 += nVarE.h();
        }
        if (iH2 < i33) {
            iRound += iH2;
            iH2 = i33;
        }
        int i34 = iH2 - i33;
        int i35 = i12 + i14;
        int iF = RangesKt.f(i35, 0);
        int iH3 = -i34;
        int i36 = i30;
        int i37 = i36;
        int i38 = 0;
        boolean z16 = false;
        while (i38 < arrayDeque.size()) {
            if (iH3 >= iF) {
                arrayDeque.remove(i38);
                z16 = true;
            } else {
                i37++;
                iH3 += ((n) arrayDeque.get(i38)).h();
                i38++;
            }
        }
        int i39 = i36;
        int iH4 = i34;
        int i40 = i37;
        boolean z17 = z16;
        while (i40 < i11 && (iH3 < iF || iH3 <= 0 || arrayDeque.isEmpty())) {
            int i41 = i39;
            n nVarE2 = o.e(oVar, i40, 0L, 2, null);
            iH3 += nVarE2.h();
            if (iH3 <= i33) {
                i29 = i33;
                if (i40 != i11 - 1) {
                    iH4 -= nVarE2.h();
                    i39 = i40 + 1;
                    z17 = true;
                }
                i40++;
                i33 = i29;
            } else {
                i29 = i33;
            }
            int iMax2 = Math.max(iMax, nVarE2.m());
            arrayDeque.add(nVarE2);
            i39 = i41;
            iMax = iMax2;
            i40++;
            i33 = i29;
        }
        int i42 = i39;
        if (iH3 < i12) {
            int i43 = i12 - iH3;
            int i44 = iH3 + i43;
            iH = iH4 - i43;
            i23 = i42;
            while (iH < i13 && i23 > 0) {
                i23--;
                n nVarE3 = o.e(oVar, i23, 0L, 2, null);
                arrayDeque.add(0, nVarE3);
                iMax = Math.max(iMax, nVarE3.m());
                iH += nVarE3.h();
                i40 = i40;
            }
            i20 = i40;
            i21 = i43 + iRound;
            if (iH < 0) {
                i21 += iH;
                i22 = i44 + iH;
                iH = 0;
            } else {
                i22 = i44;
            }
        } else {
            i20 = i40;
            iH = iH4;
            i21 = iRound;
            i22 = iH3;
            i23 = i42;
        }
        float f12 = (MathKt.a(Math.round(f11)) != MathKt.a(i21) || Math.abs(Math.round(f11)) < Math.abs(i21)) ? f11 : i21;
        float f13 = f11 - f12;
        float f14 = (!z13 || i21 <= iRound || f13 > 0.0f) ? 0.0f : (i21 - iRound) + f13;
        if (iH < 0) {
            throw new IllegalArgumentException("negative currentFirstItemScrollOffset");
        }
        int i45 = -iH;
        n nVar3 = (n) arrayDeque.first();
        if (i13 > 0 || i15 < 0) {
            int size2 = arrayDeque.size();
            n nVar4 = nVar3;
            int i46 = 0;
            while (true) {
                if (i46 < size2) {
                    int i47 = size2;
                    int iH5 = ((n) arrayDeque.get(i46)).h();
                    if (iH != 0 && iH5 <= iH) {
                        i24 = iMax;
                        if (i46 == CollectionsKt.n(arrayDeque)) {
                            break;
                        }
                        iH -= iH5;
                        i46++;
                        nVar4 = (n) arrayDeque.get(i46);
                        iMax = i24;
                        size2 = i47;
                    }
                }
                i24 = iMax;
                break;
            }
            nVar = nVar4;
            i25 = iH;
        } else {
            i25 = iH;
            i24 = iMax;
            nVar = nVar3;
        }
        List listD = d(i23, oVar, i18, list2);
        int iMax3 = i24;
        int i48 = 0;
        for (int size3 = listD.size(); i48 < size3; size3 = size3) {
            iMax3 = Math.max(iMax3, ((n) listD.get(i48)).m());
            i48++;
        }
        int i49 = iMax3;
        n nVar5 = nVar;
        List listC = c(arrayDeque, oVar, i11, i18, list2, f12, z13, lVar);
        int size4 = listC.size();
        int iMax4 = i49;
        for (int i50 = 0; i50 < size4; i50++) {
            iMax4 = Math.max(iMax4, ((n) listC.get(i50)).m());
        }
        boolean z18 = Intrinsics.c(nVar5, arrayDeque.first()) && listD.isEmpty() && listC.isEmpty();
        int i51 = o0.c.i(j11, z10 ? iMax4 : i22);
        if (z10) {
            iMax4 = i22;
        }
        int iH6 = o0.c.h(j11, iMax4);
        float f15 = f12;
        int i52 = i22;
        int i53 = i20;
        final List listA = a(arrayDeque, listD, listC, i51, iH6, i22, i12, i45, z10, kVar, dVar, z11, eVar);
        lazyLayoutItemAnimator.l((int) f15, i51, iH6, listA, oVar.g(), oVar, z10, z13, 1, z12, i25, i52, n0Var, a4Var);
        if (z13) {
            i26 = iH6;
            i27 = i51;
        } else {
            long jH2 = lazyLayoutItemAnimator.h();
            if (o0.t.e(jH2, o0.t.f70624b.a())) {
                i26 = iH6;
                i27 = i51;
            } else {
                int i54 = z10 ? iH6 : i51;
                int i55 = o0.c.i(j11, Math.max(i51, o0.t.g(jH2)));
                int iH7 = o0.c.h(j11, Math.max(iH6, o0.t.f(jH2)));
                int i56 = z10 ? iH7 : i55;
                if (i56 != i54) {
                    int size5 = listA.size();
                    for (int i57 = 0; i57 < size5; i57++) {
                        ((n) listA.get(i57)).s(i56);
                    }
                }
                i26 = iH7;
                i27 = i55;
            }
        }
        final n nVarA = !list.isEmpty() ? h.a(listA, oVar, list, i13, i27, i26) : null;
        if (i53 >= i11) {
            z14 = z13;
            if (i52 <= i12) {
                z15 = false;
            }
            androidx.compose.ui.layout.v vVar = (androidx.compose.ui.layout.v) function3.invoke(Integer.valueOf(i27), Integer.valueOf(i26), new Function1<g0.a, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$measureLazyList$8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((g0.a) obj);
                    return Unit.f67061a;
                }

                public final void invoke(g0.a aVar) {
                    List<n> list4 = listA;
                    n nVar6 = nVarA;
                    boolean z19 = z14;
                    int size6 = list4.size();
                    for (int i58 = 0; i58 < size6; i58++) {
                        n nVar7 = list4.get(i58);
                        if (nVar7 != nVar6) {
                            nVar7.q(aVar, z19);
                        }
                    }
                    n nVar8 = nVarA;
                    if (nVar8 != null) {
                        nVar8.q(aVar, z14);
                    }
                    e0.a(i1Var);
                }
            });
            if (z18) {
                list3 = listA;
            } else {
                ArrayList arrayList = new ArrayList(listA.size());
                size = listA.size();
                for (i28 = 0; i28 < size; i28++) {
                    Object obj = listA.get(i28);
                    nVar2 = (n) obj;
                    if ((nVar2.getIndex() < ((n) arrayDeque.first()).getIndex() && nVar2.getIndex() <= ((n) arrayDeque.last()).getIndex()) || nVar2 == nVarA) {
                        arrayList.add(obj);
                    }
                }
                list3 = arrayList;
            }
            if (z10) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            return new m(nVar5, i25, z15, f15, vVar, f14, z17, n0Var, eVar, oVar.f(), list3, i32, i35, i11, z11, orientation, i14, i15, null);
        }
        z14 = z13;
        z15 = true;
        androidx.compose.ui.layout.v vVar2 = (androidx.compose.ui.layout.v) function3.invoke(Integer.valueOf(i27), Integer.valueOf(i26), new Function1<g0.a, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListMeasureKt$measureLazyList$8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                invoke((g0.a) obj2);
                return Unit.f67061a;
            }

            public final void invoke(g0.a aVar) {
                List<n> list4 = listA;
                n nVar6 = nVarA;
                boolean z19 = z14;
                int size6 = list4.size();
                for (int i58 = 0; i58 < size6; i58++) {
                    n nVar7 = list4.get(i58);
                    if (nVar7 != nVar6) {
                        nVar7.q(aVar, z19);
                    }
                }
                n nVar8 = nVarA;
                if (nVar8 != null) {
                    nVar8.q(aVar, z14);
                }
                e0.a(i1Var);
            }
        });
        if (z18) {
            list3 = listA;
        } else {
            ArrayList arrayList2 = new ArrayList(listA.size());
            size = listA.size();
            while (i28 < size) {
                Object obj2 = listA.get(i28);
                nVar2 = (n) obj2;
                if (nVar2.getIndex() < ((n) arrayDeque.first()).getIndex()) {
                }
            }
            list3 = arrayList2;
        }
        if (z10) {
            orientation = Orientation.Vertical;
        } else {
            orientation = Orientation.Horizontal;
        }
        return new m(nVar5, i25, z15, f15, vVar2, f14, z17, n0Var, eVar, oVar.f(), list3, i32, i35, i11, z11, orientation, i14, i15, null);
    }
}
