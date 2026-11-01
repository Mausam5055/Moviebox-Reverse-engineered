package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static m a(ConstraintWidget constraintWidget, int i11, ArrayList arrayList, m mVar) {
        int iW1;
        int i12 = i11 == 0 ? constraintWidget.S0 : constraintWidget.T0;
        if (i12 != -1 && (mVar == null || i12 != mVar.f6980b)) {
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                m mVar2 = (m) arrayList.get(i13);
                if (mVar2.c() == i12) {
                    if (mVar != null) {
                        mVar.g(i11, mVar2);
                        arrayList.remove(mVar);
                    }
                    mVar = mVar2;
                    break;
                }
            }
        } else if (i12 != -1) {
            return mVar;
        }
        if (mVar == null) {
            if ((constraintWidget instanceof t0.b) && (iW1 = ((t0.b) constraintWidget).w1(i11)) != -1) {
                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                    m mVar3 = (m) arrayList.get(i14);
                    if (mVar3.c() == iW1) {
                        mVar = mVar3;
                        break;
                    }
                }
            }
            if (mVar == null) {
                mVar = new m(i11);
            }
            arrayList.add(mVar);
        }
        if (mVar.a(constraintWidget)) {
            if (constraintWidget instanceof androidx.constraintlayout.core.widgets.f) {
                androidx.constraintlayout.core.widgets.f fVar = (androidx.constraintlayout.core.widgets.f) constraintWidget;
                fVar.v1().c(fVar.w1() == 0 ? 1 : 0, arrayList, mVar);
            }
            if (i11 == 0) {
                constraintWidget.S0 = mVar.c();
                constraintWidget.Q.c(i11, arrayList, mVar);
                constraintWidget.S.c(i11, arrayList, mVar);
            } else {
                constraintWidget.T0 = mVar.c();
                constraintWidget.R.c(i11, arrayList, mVar);
                constraintWidget.U.c(i11, arrayList, mVar);
                constraintWidget.T.c(i11, arrayList, mVar);
            }
            constraintWidget.X.c(i11, arrayList, mVar);
        }
        return mVar;
    }

    private static m b(ArrayList arrayList, int i11) {
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            m mVar = (m) arrayList.get(i12);
            if (i11 == mVar.f6980b) {
                return mVar;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:179:0x0353  */
    public static boolean c(androidx.constraintlayout.core.widgets.d dVar, b.InterfaceC0060b interfaceC0060b) {
        m mVar;
        boolean z10;
        boolean z11;
        m mVar2;
        ArrayList arrayListV1 = dVar.v1();
        int size = arrayListV1.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayListV1.get(i12);
            if (!d(dVar.C(), dVar.V(), constraintWidget.C(), constraintWidget.V()) || (constraintWidget instanceof androidx.constraintlayout.core.widgets.e)) {
                return false;
            }
        }
        androidx.constraintlayout.core.e eVar = dVar.f7016b1;
        if (eVar != null) {
            eVar.F++;
        }
        int i13 = 0;
        ArrayList arrayList = null;
        ArrayList<t0.b> arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList<t0.b> arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        while (i13 < size) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) arrayListV1.get(i13);
            if (!d(dVar.C(), dVar.V(), constraintWidget2.C(), constraintWidget2.V())) {
                androidx.constraintlayout.core.widgets.d.X1(i11, constraintWidget2, interfaceC0060b, dVar.A1, b.a.f6937k);
            }
            boolean z12 = constraintWidget2 instanceof androidx.constraintlayout.core.widgets.f;
            if (z12) {
                androidx.constraintlayout.core.widgets.f fVar = (androidx.constraintlayout.core.widgets.f) constraintWidget2;
                if (fVar.w1() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(fVar);
                }
                if (fVar.w1() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fVar);
                }
            }
            if (constraintWidget2 instanceof t0.b) {
                if (constraintWidget2 instanceof androidx.constraintlayout.core.widgets.a) {
                    androidx.constraintlayout.core.widgets.a aVar = (androidx.constraintlayout.core.widgets.a) constraintWidget2;
                    if (aVar.B1() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(aVar);
                    }
                    if (aVar.B1() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(aVar);
                    }
                } else {
                    t0.b bVar = (t0.b) constraintWidget2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(bVar);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(bVar);
                }
            }
            if (constraintWidget2.Q.f6851f == null && constraintWidget2.S.f6851f == null && !z12 && !(constraintWidget2 instanceof androidx.constraintlayout.core.widgets.a)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(constraintWidget2);
            }
            if (constraintWidget2.R.f6851f == null && constraintWidget2.T.f6851f == null && constraintWidget2.U.f6851f == null && !z12 && !(constraintWidget2 instanceof androidx.constraintlayout.core.widgets.a)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(constraintWidget2);
            }
            i13++;
            i11 = 0;
        }
        ArrayList<m> arrayList7 = new ArrayList();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((androidx.constraintlayout.core.widgets.f) it.next(), 0, arrayList7, null);
            }
        }
        int i14 = 0;
        m mVar3 = null;
        if (arrayList2 != null) {
            for (t0.b bVar2 : arrayList2) {
                m mVarA = a(bVar2, i14, arrayList7, mVar3);
                bVar2.v1(arrayList7, i14, mVarA);
                mVarA.b(arrayList7);
                i14 = 0;
                mVar3 = null;
            }
        }
        ConstraintAnchor constraintAnchorQ = dVar.q(ConstraintAnchor.Type.LEFT);
        if (constraintAnchorQ.d() != null) {
            Iterator it2 = constraintAnchorQ.d().iterator();
            while (it2.hasNext()) {
                a(((ConstraintAnchor) it2.next()).f6849d, 0, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ2 = dVar.q(ConstraintAnchor.Type.RIGHT);
        if (constraintAnchorQ2.d() != null) {
            Iterator it3 = constraintAnchorQ2.d().iterator();
            while (it3.hasNext()) {
                a(((ConstraintAnchor) it3.next()).f6849d, 0, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ3 = dVar.q(ConstraintAnchor.Type.CENTER);
        if (constraintAnchorQ3.d() != null) {
            Iterator it4 = constraintAnchorQ3.d().iterator();
            while (it4.hasNext()) {
                a(((ConstraintAnchor) it4.next()).f6849d, 0, arrayList7, null);
            }
        }
        m mVar4 = null;
        if (arrayList5 != null) {
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                a((ConstraintWidget) it5.next(), 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                a((androidx.constraintlayout.core.widgets.f) it6.next(), 1, arrayList7, null);
            }
        }
        int i15 = 1;
        if (arrayList4 != null) {
            for (t0.b bVar3 : arrayList4) {
                m mVarA2 = a(bVar3, i15, arrayList7, mVar4);
                bVar3.v1(arrayList7, i15, mVarA2);
                mVarA2.b(arrayList7);
                i15 = 1;
                mVar4 = null;
            }
        }
        ConstraintAnchor constraintAnchorQ4 = dVar.q(ConstraintAnchor.Type.TOP);
        if (constraintAnchorQ4.d() != null) {
            Iterator it7 = constraintAnchorQ4.d().iterator();
            while (it7.hasNext()) {
                a(((ConstraintAnchor) it7.next()).f6849d, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ5 = dVar.q(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorQ5.d() != null) {
            Iterator it8 = constraintAnchorQ5.d().iterator();
            while (it8.hasNext()) {
                a(((ConstraintAnchor) it8.next()).f6849d, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ6 = dVar.q(ConstraintAnchor.Type.BOTTOM);
        if (constraintAnchorQ6.d() != null) {
            Iterator it9 = constraintAnchorQ6.d().iterator();
            while (it9.hasNext()) {
                a(((ConstraintAnchor) it9.next()).f6849d, 1, arrayList7, null);
            }
        }
        ConstraintAnchor constraintAnchorQ7 = dVar.q(ConstraintAnchor.Type.CENTER);
        if (constraintAnchorQ7.d() != null) {
            Iterator it10 = constraintAnchorQ7.d().iterator();
            while (it10.hasNext()) {
                a(((ConstraintAnchor) it10.next()).f6849d, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it11 = arrayList6.iterator();
            while (it11.hasNext()) {
                a((ConstraintWidget) it11.next(), 1, arrayList7, null);
            }
        }
        for (int i16 = 0; i16 < size; i16++) {
            ConstraintWidget constraintWidget3 = (ConstraintWidget) arrayListV1.get(i16);
            if (constraintWidget3.u0()) {
                m mVarB = b(arrayList7, constraintWidget3.S0);
                m mVarB2 = b(arrayList7, constraintWidget3.T0);
                if (mVarB != null && mVarB2 != null) {
                    mVarB.g(0, mVarB2);
                    mVarB2.i(2);
                    arrayList7.remove(mVarB);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (dVar.C() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            mVar = null;
            int i17 = 0;
            for (m mVar5 : arrayList7) {
                if (mVar5.d() != 1) {
                    mVar5.h(false);
                    int iF = mVar5.f(dVar.P1(), 0);
                    if (iF > i17) {
                        mVar = mVar5;
                        i17 = iF;
                    }
                }
            }
            if (mVar != null) {
                dVar.T0(ConstraintWidget.DimensionBehaviour.FIXED);
                dVar.o1(i17);
                mVar.h(true);
            } else {
                mVar = null;
            }
        } else {
            mVar = null;
        }
        if (dVar.V() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
            m mVar6 = null;
            int i18 = 0;
            for (m mVar7 : arrayList7) {
                if (mVar7.d() != 0) {
                    mVar7.h(false);
                    int iF2 = mVar7.f(dVar.P1(), 1);
                    if (iF2 > i18) {
                        mVar6 = mVar7;
                        i18 = iF2;
                    }
                }
            }
            z10 = false;
            z11 = true;
            if (mVar6 != null) {
                dVar.k1(ConstraintWidget.DimensionBehaviour.FIXED);
                dVar.P0(i18);
                mVar6.h(true);
                mVar2 = mVar6;
            }
            return (mVar == null || mVar2 != null) ? z11 : z10;
        }
        z10 = false;
        z11 = true;
        mVar2 = null;
        if (mVar == null) {
        }
    }

    public static boolean d(ConstraintWidget.DimensionBehaviour dimensionBehaviour, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, ConstraintWidget.DimensionBehaviour dimensionBehaviour3, ConstraintWidget.DimensionBehaviour dimensionBehaviour4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.FIXED;
        return (dimensionBehaviour3 == dimensionBehaviour7 || dimensionBehaviour3 == (dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour != dimensionBehaviour6)) || (dimensionBehaviour4 == dimensionBehaviour7 || dimensionBehaviour4 == (dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && dimensionBehaviour2 != dimensionBehaviour5));
    }
}
