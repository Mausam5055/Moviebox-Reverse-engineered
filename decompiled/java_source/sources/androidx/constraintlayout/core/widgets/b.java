package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class b {
    /* JADX WARN: Code duplicated, block: B:100:0x016d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0173  */
    /* JADX WARN: Code duplicated, block: B:104:0x0194  */
    /* JADX WARN: Code duplicated, block: B:16:0x0033 A[PHI: r8 r16
  0x0033: PHI (r8v39 boolean) = (r8v1 boolean), (r8v41 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
  0x0033: PHI (r16v6 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[PHI: r8 r16
  0x0035: PHI (r8v3 boolean) = (r8v1 boolean), (r8v41 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
  0x0035: PHI (r16v3 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:202:0x034e  */
    /* JADX WARN: Code duplicated, block: B:222:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:323:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x016a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v0, types: [androidx.constraintlayout.core.d] */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28, types: [androidx.constraintlayout.core.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    static void a(d dVar, androidx.constraintlayout.core.d dVar2, int i11, int i12, c cVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        Object obj;
        int i13;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        ?? r11;
        SolverVariable solverVariable4;
        int size;
        ConstraintAnchor constraintAnchor3;
        int i14;
        int i15 = i11;
        ConstraintWidget constraintWidget = cVar.f6993a;
        ConstraintWidget constraintWidget2 = cVar.f6995c;
        ConstraintWidget constraintWidget3 = cVar.f6994b;
        ConstraintWidget constraintWidget4 = cVar.f6996d;
        ConstraintWidget constraintWidget5 = cVar.f6997e;
        float f11 = cVar.f7003k;
        boolean z13 = dVar.f6859b0[i15] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i15 == 0) {
            int i16 = constraintWidget5.J0;
            z10 = i16 == 0;
            z11 = i16 == 1;
            if (i16 == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
        } else {
            int i17 = constraintWidget5.K0;
            z10 = i17 == 0;
            z11 = i17 == 1;
            if (i17 == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
        }
        boolean z14 = z11;
        boolean z15 = false;
        boolean z16 = z10;
        ?? r12 = constraintWidget;
        while (true) {
            obj = null;
            if (z15) {
                break;
            }
            ConstraintAnchor constraintAnchor4 = r12.Y[i12];
            int i18 = z12 ? 1 : 4;
            int iF = constraintAnchor4.f();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r12.f6859b0[i15];
            float f12 = f11;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z17 = dimensionBehaviour == dimensionBehaviour2 && r12.f6904y[i15] == 0;
            ConstraintAnchor constraintAnchor5 = constraintAnchor4.f6851f;
            if (constraintAnchor5 != null && r12 != constraintWidget) {
                iF += constraintAnchor5.f();
            }
            int i19 = iF;
            if (z12 && r12 != constraintWidget && r12 != constraintWidget3) {
                i18 = 8;
            }
            ConstraintAnchor constraintAnchor6 = constraintAnchor4.f6851f;
            if (constraintAnchor6 != null) {
                if (r12 == constraintWidget3) {
                    dVar2.h(constraintAnchor4.f6854i, constraintAnchor6.f6854i, i19, 6);
                } else {
                    dVar2.h(constraintAnchor4.f6854i, constraintAnchor6.f6854i, i19, 8);
                }
                if (z17 && !z12) {
                    i18 = 5;
                }
                dVar2.e(constraintAnchor4.f6854i, constraintAnchor4.f6851f.f6854i, i19, (r12 == constraintWidget3 && z12 && r12.j0(i15)) ? 5 : i18);
            } else {
                constraintWidget = constraintWidget;
            }
            if (z13) {
                if (r12.X() == 8 || r12.f6859b0[i15] != dimensionBehaviour2) {
                    i14 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r12.Y;
                    i14 = 0;
                    dVar2.h(constraintAnchorArr[i12 + 1].f6854i, constraintAnchorArr[i12].f6854i, 0, 5);
                }
                dVar2.h(r12.Y[i12].f6854i, dVar.Y[i12].f6854i, i14, 8);
            }
            ConstraintAnchor constraintAnchor7 = r12.Y[i12 + 1].f6851f;
            if (constraintAnchor7 != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor7.f6849d;
                ConstraintAnchor constraintAnchor8 = constraintWidget6.Y[i12].f6851f;
                if (constraintAnchor8 != null && constraintAnchor8.f6849d == r12) {
                    obj = constraintWidget6;
                }
            }
            if (obj != null) {
                r12 = obj;
                z15 = z15;
            } else {
                z15 = true;
            }
            constraintWidget5 = constraintWidget5;
            f11 = f12;
            constraintWidget = constraintWidget;
            r12 = r12;
        }
        ConstraintWidget constraintWidget7 = constraintWidget5;
        float f13 = f11;
        ConstraintWidget constraintWidget8 = constraintWidget;
        if (constraintWidget4 != null) {
            int i20 = i12 + 1;
            if (constraintWidget2.Y[i20].f6851f != null) {
                ConstraintAnchor constraintAnchor9 = constraintWidget4.Y[i20];
                if (constraintWidget4.f6859b0[i15] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.f6904y[i15] == 0 && !z12) {
                    ConstraintAnchor constraintAnchor10 = constraintAnchor9.f6851f;
                    if (constraintAnchor10.f6849d == dVar) {
                        dVar2.e(constraintAnchor9.f6854i, constraintAnchor10.f6854i, -constraintAnchor9.f(), 5);
                    } else if (z12) {
                        constraintAnchor3 = constraintAnchor9.f6851f;
                        if (constraintAnchor3.f6849d == dVar) {
                            dVar2.e(constraintAnchor9.f6854i, constraintAnchor3.f6854i, -constraintAnchor9.f(), 4);
                        }
                    }
                } else if (z12) {
                    constraintAnchor3 = constraintAnchor9.f6851f;
                    if (constraintAnchor3.f6849d == dVar) {
                        dVar2.e(constraintAnchor9.f6854i, constraintAnchor3.f6854i, -constraintAnchor9.f(), 4);
                    }
                }
                dVar2.j(constraintAnchor9.f6854i, constraintWidget2.Y[i20].f6851f.f6854i, -constraintAnchor9.f(), 6);
            }
        }
        if (z13) {
            int i21 = i12 + 1;
            SolverVariable solverVariable5 = dVar.Y[i21].f6854i;
            ConstraintAnchor constraintAnchor11 = constraintWidget2.Y[i21];
            dVar2.h(solverVariable5, constraintAnchor11.f6854i, constraintAnchor11.f(), 8);
        }
        ArrayList arrayList = cVar.f7000h;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f14 = (!cVar.f7010r || cVar.f7012t) ? f13 : cVar.f7002j;
            float f15 = 0.0f;
            float f16 = 0.0f;
            ConstraintWidget constraintWidget9 = null;
            int i22 = 0;
            while (i22 < size) {
                ConstraintWidget constraintWidget10 = (ConstraintWidget) arrayList.get(i22);
                float f17 = constraintWidget10.N0[i15];
                if (f17 < f15) {
                    if (cVar.f7012t) {
                        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget10.Y;
                        dVar2.e(constraintAnchorArr2[i12 + 1].f6854i, constraintAnchorArr2[i12].f6854i, 0, 4);
                    } else {
                        f17 = 1.0f;
                    }
                    arrayList = arrayList;
                    size = size;
                    i22++;
                    size = size;
                    arrayList = arrayList;
                    f15 = 0.0f;
                }
                if (f17 == 0.0f) {
                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget10.Y;
                    dVar2.e(constraintAnchorArr3[i12 + 1].f6854i, constraintAnchorArr3[i12].f6854i, 0, 8);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (constraintWidget9 != null) {
                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget9.Y;
                        SolverVariable solverVariable6 = constraintAnchorArr4[i12].f6854i;
                        int i23 = i12 + 1;
                        SolverVariable solverVariable7 = constraintAnchorArr4[i23].f6854i;
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget10.Y;
                        SolverVariable solverVariable8 = constraintAnchorArr5[i12].f6854i;
                        SolverVariable solverVariable9 = constraintAnchorArr5[i23].f6854i;
                        androidx.constraintlayout.core.b bVarR = dVar2.r();
                        bVarR.l(f16, f14, f17, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        dVar2.d(bVarR);
                    }
                    constraintWidget9 = constraintWidget10;
                    f16 = f17;
                }
                i22++;
                size = size;
                arrayList = arrayList;
                f15 = 0.0f;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z12)) {
            ConstraintAnchor constraintAnchor12 = constraintWidget8.Y[i12];
            int i24 = i12 + 1;
            ConstraintAnchor constraintAnchor13 = constraintWidget2.Y[i24];
            ConstraintAnchor constraintAnchor14 = constraintAnchor12.f6851f;
            SolverVariable solverVariable10 = constraintAnchor14 != null ? constraintAnchor14.f6854i : null;
            ConstraintAnchor constraintAnchor15 = constraintAnchor13.f6851f;
            SolverVariable solverVariable11 = constraintAnchor15 != null ? constraintAnchor15.f6854i : null;
            ConstraintAnchor constraintAnchor16 = constraintWidget3.Y[i12];
            if (constraintWidget4 != null) {
                constraintAnchor13 = constraintWidget4.Y[i24];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                dVar2.c(constraintAnchor16.f6854i, solverVariable10, constraintAnchor16.f(), i15 == 0 ? constraintWidget7.f6889q0 : constraintWidget7.f6891r0, solverVariable11, constraintAnchor13.f6854i, constraintAnchor13.f(), 7);
            }
        } else if (!z16 || constraintWidget3 == null) {
            int i25 = 8;
            if (z14 && constraintWidget3 != null) {
                int i26 = cVar.f7002j;
                boolean z18 = i26 > 0 && cVar.f7001i == i26;
                ConstraintWidget constraintWidget11 = constraintWidget3;
                ConstraintWidget constraintWidget12 = constraintWidget11;
                while (constraintWidget12 != null) {
                    ConstraintWidget constraintWidget13 = constraintWidget12.P0[i15];
                    while (constraintWidget13 != null && constraintWidget13.X() == i25) {
                        constraintWidget13 = constraintWidget13.P0[i15];
                    }
                    if (constraintWidget12 == constraintWidget3 || constraintWidget12 == constraintWidget4 || constraintWidget13 == null) {
                        constraintWidget11 = constraintWidget11;
                        i13 = i25;
                    } else {
                        ConstraintWidget constraintWidget14 = constraintWidget13 == constraintWidget4 ? null : constraintWidget13;
                        ConstraintAnchor constraintAnchor17 = constraintWidget12.Y[i12];
                        SolverVariable solverVariable12 = constraintAnchor17.f6854i;
                        ConstraintAnchor constraintAnchor18 = constraintAnchor17.f6851f;
                        if (constraintAnchor18 != null) {
                            SolverVariable solverVariable13 = constraintAnchor18.f6854i;
                        }
                        int i27 = i12 + 1;
                        SolverVariable solverVariable14 = constraintWidget11.Y[i27].f6854i;
                        int iF2 = constraintAnchor17.f();
                        int iF3 = constraintWidget12.Y[i27].f();
                        if (constraintWidget14 != null) {
                            constraintAnchor = constraintWidget14.Y[i12];
                            SolverVariable solverVariable15 = constraintAnchor.f6854i;
                            ConstraintAnchor constraintAnchor19 = constraintAnchor.f6851f;
                            solverVariable2 = constraintAnchor19 != null ? constraintAnchor19.f6854i : null;
                            solverVariable = solverVariable15;
                        } else {
                            constraintAnchor = constraintWidget4.Y[i12];
                            solverVariable = constraintAnchor != null ? constraintAnchor.f6854i : null;
                            solverVariable2 = constraintWidget12.Y[i27].f6854i;
                        }
                        if (constraintAnchor != null) {
                            iF3 += constraintAnchor.f();
                        }
                        int i28 = iF3;
                        int iF4 = constraintWidget11.Y[i27].f() + iF2;
                        int i29 = z18 ? 8 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                            i13 = 8;
                        } else {
                            i13 = 8;
                            dVar2.c(solverVariable12, solverVariable14, iF4, 0.5f, solverVariable, solverVariable2, i28, i29);
                        }
                        constraintWidget13 = constraintWidget14;
                    }
                    constraintWidget11 = constraintWidget12.X() != i13 ? constraintWidget12 : constraintWidget11;
                    constraintWidget12 = constraintWidget13;
                    i25 = i13;
                    i15 = i11;
                }
                ConstraintAnchor constraintAnchor20 = constraintWidget3.Y[i12];
                ConstraintAnchor constraintAnchor21 = constraintWidget8.Y[i12].f6851f;
                int i30 = i12 + 1;
                ConstraintAnchor constraintAnchor22 = constraintWidget4.Y[i30];
                ConstraintAnchor constraintAnchor23 = constraintWidget2.Y[i30].f6851f;
                if (constraintAnchor21 != null) {
                    if (constraintWidget3 != constraintWidget4) {
                        dVar2.e(constraintAnchor20.f6854i, constraintAnchor21.f6854i, constraintAnchor20.f(), 5);
                    } else if (constraintAnchor23 != null) {
                        dVar2.c(constraintAnchor20.f6854i, constraintAnchor21.f6854i, constraintAnchor20.f(), 0.5f, constraintAnchor22.f6854i, constraintAnchor23.f6854i, constraintAnchor22.f(), 5);
                    }
                }
                if (constraintAnchor23 != null && constraintWidget3 != constraintWidget4) {
                    dVar2.e(constraintAnchor22.f6854i, constraintAnchor23.f6854i, -constraintAnchor22.f(), 5);
                }
            }
        } else {
            int i31 = cVar.f7002j;
            boolean z19 = i31 > 0 && cVar.f7001i == i31;
            ConstraintWidget constraintWidget15 = constraintWidget3;
            ConstraintWidget constraintWidget16 = constraintWidget15;
            while (constraintWidget16 != null) {
                ConstraintWidget constraintWidget17 = constraintWidget16.P0[i15];
                while (constraintWidget17 != null && constraintWidget17.X() == 8) {
                    constraintWidget17 = constraintWidget17.P0[i15];
                }
                if (constraintWidget17 != null || constraintWidget16 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor24 = constraintWidget16.Y[i12];
                    SolverVariable solverVariable16 = constraintAnchor24.f6854i;
                    ConstraintAnchor constraintAnchor25 = constraintAnchor24.f6851f;
                    SolverVariable solverVariable17 = constraintAnchor25 != null ? constraintAnchor25.f6854i : null;
                    if (constraintWidget15 != constraintWidget16) {
                        solverVariable17 = constraintWidget15.Y[i12 + 1].f6854i;
                    } else if (constraintWidget16 == constraintWidget3) {
                        ConstraintAnchor constraintAnchor26 = constraintWidget8.Y[i12].f6851f;
                        solverVariable17 = constraintAnchor26 != null ? constraintAnchor26.f6854i : null;
                    }
                    int iF5 = constraintAnchor24.f();
                    int i32 = i12 + 1;
                    int iF6 = constraintWidget16.Y[i32].f();
                    if (constraintWidget17 != null) {
                        constraintAnchor2 = constraintWidget17.Y[i12];
                        solverVariable3 = constraintAnchor2.f6854i;
                    } else {
                        constraintAnchor2 = constraintWidget2.Y[i32].f6851f;
                        if (constraintAnchor2 != null) {
                            solverVariable3 = constraintAnchor2.f6854i;
                        } else {
                            solverVariable3 = null;
                        }
                        SolverVariable solverVariable18 = constraintWidget16.Y[i32].f6854i;
                        if (constraintAnchor2 != null) {
                            iF6 += constraintAnchor2.f();
                        }
                        int iF7 = iF5 + constraintWidget15.Y[i32].f();
                        if (solverVariable16 == null && solverVariable17 != null && solverVariable3 != null && solverVariable18 != null) {
                            if (constraintWidget16 == constraintWidget3) {
                                iF7 = constraintWidget3.Y[i12].f();
                            }
                            constraintWidget17 = constraintWidget17;
                            dVar2.c(solverVariable16, solverVariable17, iF7, 0.5f, solverVariable3, solverVariable18, constraintWidget16 == constraintWidget4 ? constraintWidget4.Y[i32].f() : iF6, z19 ? 8 : 5);
                        }
                        if (constraintWidget16.X() != 8) {
                            constraintWidget16 = constraintWidget15;
                        }
                        constraintWidget15 = constraintWidget16;
                        constraintWidget16 = constraintWidget17;
                    }
                    SolverVariable solverVariable19 = constraintWidget16.Y[i32].f6854i;
                    if (constraintAnchor2 != null) {
                        iF6 += constraintAnchor2.f();
                    }
                    int iF8 = iF5 + constraintWidget15.Y[i32].f();
                    if (solverVariable16 == null) {
                    }
                }
                if (constraintWidget16.X() != 8) {
                    constraintWidget16 = constraintWidget15;
                }
                constraintWidget15 = constraintWidget16;
                constraintWidget16 = constraintWidget17;
            }
        }
        if ((!z16 && !z14) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
            return;
        }
        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget3.Y;
        ConstraintAnchor constraintAnchor27 = constraintAnchorArr6[i12];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        int i33 = i12 + 1;
        ConstraintAnchor constraintAnchor28 = constraintWidget4.Y[i33];
        ConstraintAnchor constraintAnchor29 = constraintAnchor27.f6851f;
        SolverVariable solverVariable20 = constraintAnchor29 != null ? constraintAnchor29.f6854i : null;
        ConstraintAnchor constraintAnchor30 = constraintAnchor28.f6851f;
        if (constraintAnchor30 != null) {
            solverVariable4 = constraintAnchor30.f6854i;
        } else {
            r11 = 0;
        }
        if (constraintWidget2 != constraintWidget4) {
            ConstraintAnchor constraintAnchor31 = constraintWidget2.Y[i33].f6851f;
            if (constraintAnchor31 != null) {
                r11 = solverVariable4;
                obj = constraintAnchor31.f6854i;
            }
            r11 = solverVariable4;
            r11 = obj;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor28 = constraintAnchorArr6[i33];
        }
        if (solverVariable20 == null || r11 == 0) {
            return;
        }
        dVar2.c(constraintAnchor27.f6854i, solverVariable20, constraintAnchor27.f(), 0.5f, r11, constraintAnchor28.f6854i, constraintWidget4.Y[i33].f(), 5);
    }

    public static void b(d dVar, androidx.constraintlayout.core.d dVar2, ArrayList arrayList, int i11) {
        int i12;
        c[] cVarArr;
        int i13;
        if (i11 == 0) {
            i12 = dVar.f7022h1;
            cVarArr = dVar.f7025k1;
            i13 = 0;
        } else {
            i12 = dVar.f7023i1;
            cVarArr = dVar.f7024j1;
            i13 = 2;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            c cVar = cVarArr[i14];
            cVar.a();
            if (arrayList == null || arrayList.contains(cVar.f6993a)) {
                a(dVar, dVar2, i11, i13, cVar);
            }
        }
    }
}
