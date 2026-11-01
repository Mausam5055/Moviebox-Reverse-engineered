package androidx.compose.foundation.layout;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {
    public static final androidx.compose.ui.layout.v a(x xVar, int i11, int i12, int i13, int i14, int i15, androidx.compose.ui.layout.x xVar2, List list, androidx.compose.ui.layout.g0[] g0VarArr, int i16, int i17, int[] iArr, int i18) throws Throwable {
        int[] iArr2;
        long j11;
        long j12;
        String str;
        String str2;
        int i19;
        Integer num;
        int i20;
        int iM;
        int i21;
        String str3;
        int i22;
        float f11;
        String str4;
        float f12;
        long j13;
        int i23;
        int i24;
        String str5;
        int i25;
        int i26;
        String str6;
        long j14;
        int i27;
        String str7;
        String str8;
        int i28;
        float f13;
        float f14;
        char c11;
        int i29;
        int i30;
        int[] iArr3;
        int i31;
        List list2 = list;
        int i32 = i17;
        int i33 = i32 - i16;
        int i34 = 0;
        int i35 = i16;
        int i36 = 0;
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        int[] iArr4 = new int[i33];
        long j15 = i15;
        float f15 = 0.0f;
        int i40 = 0;
        while (true) {
            if (i35 >= i32) {
                break;
            }
            int i41 = i40;
            androidx.compose.ui.layout.s sVar = (androidx.compose.ui.layout.s) list2.get(i35);
            z zVarC = v.c(sVar);
            float fE = v.e(zVarC);
            i39 = (i39 != 0 || v.f(zVarC)) ? 1 : i34;
            if (fE > 0.0f) {
                i38++;
                i35 = i35;
                j15 = j15;
                iArr3 = iArr4;
                i33 = i33;
                f15 += fE;
                i31 = i34;
            } else {
                if (i14 != Integer.MAX_VALUE && zVarC != null) {
                    zVarC.c();
                }
                int i42 = i13 - i37;
                androidx.compose.ui.layout.g0 g0VarP = g0VarArr[i35];
                if (g0VarP == null) {
                    g0VarP = sVar.P(w.a(xVar, 0, 0, i13 != Integer.MAX_VALUE ? RangesKt.f(i42, i34) : Integer.MAX_VALUE, i14, false, 16, null));
                }
                androidx.compose.ui.layout.g0 g0Var = g0VarP;
                int iE = xVar.e(g0Var);
                int iF = xVar.f(g0Var);
                iArr3 = iArr4;
                iArr3[i35 - i16] = iE;
                i31 = 0;
                int iMin = Math.min(i15, RangesKt.f(i42 - iE, 0));
                i37 = iE + iMin + i37;
                int iMax = Math.max(i41, iF);
                g0VarArr[i35] = g0Var;
                i41 = iMax;
                i36 = iMin;
                i38 = i38;
            }
            i35++;
            iArr4 = iArr3;
            i34 = i31;
            f15 = f15;
            i33 = i33;
            i40 = i41;
            j15 = j15;
        }
        int i43 = i40;
        long j16 = j15;
        int[] iArr5 = iArr4;
        int i44 = i33;
        float f16 = f15;
        int i45 = i34;
        int i46 = i37;
        int i47 = i38;
        if (i47 == 0) {
            i21 = i46 - i36;
            iArr2 = iArr5;
            iM = i45;
            i19 = i11;
            i20 = i43;
            num = null;
        } else {
            int i48 = i13 != Integer.MAX_VALUE ? i13 : i11;
            iArr2 = iArr5;
            long j17 = ((long) (i47 - 1)) * j16;
            long jG = RangesKt.g(((long) (i48 - i46)) - j17, 0L);
            float f17 = jG / f16;
            int i49 = i16;
            long jRound = jG;
            while (true) {
                j11 = jG;
                j12 = j17;
                str = "arrangementSpacingPx ";
                str2 = "targetSpace ";
                if (i49 >= i32) {
                    break;
                }
                float fE2 = v.e(v.c((androidx.compose.ui.layout.s) list2.get(i49)));
                float f18 = f17 * fE2;
                try {
                    jRound -= (long) Math.round(f18);
                    i49++;
                    list2 = list;
                    i32 = i17;
                    jG = j11;
                    j17 = j12;
                } catch (IllegalArgumentException e11) {
                    throw new IllegalArgumentException("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax " + i13 + "mainAxisMin " + i11 + "targetSpace " + i48 + "arrangementSpacingPx " + j16 + "weightChildrenCount " + i47 + "fixedSpace " + i46 + "arrangementSpacingTotal " + j12 + "remainingToTarget " + j11 + "totalWeight " + f16 + "weightUnitSpace " + f17 + "itemWeight " + fE2 + "weightedSize " + f18).initCause(e11);
                }
            }
            i19 = i11;
            float f19 = f16;
            String str9 = "weightedSize ";
            String str10 = "weightUnitSpace ";
            String str11 = "totalWeight ";
            long j18 = j11;
            String str12 = "remainingToTarget ";
            long j19 = j12;
            String str13 = "arrangementSpacingTotal ";
            long j20 = j16;
            int i50 = i43;
            int i51 = 0;
            int i52 = i16;
            while (i52 < i17) {
                if (g0VarArr[i52] == null) {
                    androidx.compose.ui.layout.s sVar2 = (androidx.compose.ui.layout.s) list.get(i52);
                    z zVarC2 = v.c(sVar2);
                    float fE3 = v.e(zVarC2);
                    String str14 = str;
                    int i53 = i48;
                    if (i14 != Integer.MAX_VALUE && zVarC2 != null) {
                        zVarC2.c();
                    }
                    if (fE3 <= 0.0f) {
                        throw new IllegalStateException("All weights <= 0 should have placeables");
                    }
                    int iB = MathKt.b(jRound);
                    String str15 = str2;
                    jRound -= (long) iB;
                    float f20 = f17 * fE3;
                    int iMax2 = Math.max(0, Math.round(f20) + iB);
                    try {
                        try {
                            if (v.b(zVarC2)) {
                                c11 = 65535;
                                int i54 = iMax2 != Integer.MAX_VALUE ? iMax2 : 0;
                                j14 = j19;
                                str7 = str14;
                                i28 = iMax2;
                                str8 = str15;
                                int i55 = i54;
                                i27 = i53;
                                i25 = i47;
                                i26 = i46;
                                f13 = f17;
                                str6 = str9;
                                f14 = f19;
                                j13 = j20;
                                androidx.compose.ui.layout.g0 g0VarP2 = sVar2.P(xVar.a(i55, 0, i28, i14, true));
                                int iE2 = xVar.e(g0VarP2);
                                int iF2 = xVar.f(g0VarP2);
                                iArr2[i52 - i16] = iE2;
                                i51 += iE2;
                                int iMax3 = Math.max(i50, iF2);
                                g0VarArr[i52] = g0VarP2;
                                i50 = iMax3;
                                str4 = str6;
                                f12 = f14;
                                f11 = f13;
                                j19 = j14;
                                str3 = str7;
                                str5 = str8;
                                i23 = i27;
                                i24 = i25;
                                i22 = i26;
                            } else {
                                c11 = 65535;
                            }
                            androidx.compose.ui.layout.g0 g0VarP3 = sVar2.P(xVar.a(i55, 0, i28, i14, true));
                            int iE3 = xVar.e(g0VarP3);
                            int iF3 = xVar.f(g0VarP3);
                            iArr2[i52 - i16] = iE3;
                            i51 += iE3;
                            int iMax4 = Math.max(i50, iF3);
                            g0VarArr[i52] = g0VarP3;
                            i50 = iMax4;
                            str4 = str6;
                            f12 = f14;
                            f11 = f13;
                            j19 = j14;
                            str3 = str7;
                            str5 = str8;
                            i23 = i27;
                            i24 = i25;
                            i22 = i26;
                        } catch (IllegalArgumentException e12) {
                            e = e12;
                            throw new IllegalArgumentException("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax " + i13 + "mainAxisMin " + i19 + str8 + i27 + str7 + j13 + "weightChildrenCount " + i25 + "fixedSpace " + i26 + str13 + j14 + str12 + j18 + str11 + f14 + str10 + f13 + "weight " + fE3 + str6 + f20 + "crossAxisDesiredSize " + ((Object) null) + "remainderUnit " + iB + "childMainAxisSize " + i28).initCause(e);
                        }
                        j14 = j19;
                        str7 = str14;
                        i28 = iMax2;
                        str8 = str15;
                        int i56 = i54;
                        i27 = i53;
                        i25 = i47;
                        i26 = i46;
                        f13 = f17;
                        str6 = str9;
                        f14 = f19;
                        j13 = j20;
                    } catch (IllegalArgumentException e13) {
                        e = e13;
                        i25 = i47;
                        i26 = i46;
                        str6 = str9;
                        j14 = j19;
                        i27 = i53;
                        str7 = str14;
                        str8 = str15;
                        i28 = iMax2;
                        f13 = f17;
                        f14 = f19;
                        j13 = j20;
                    }
                } else {
                    str3 = str;
                    i22 = i46;
                    f11 = f17;
                    str4 = str9;
                    f12 = f19;
                    j13 = j20;
                    i23 = i48;
                    i24 = i47;
                    str5 = str2;
                }
                i52++;
                str2 = str5;
                i48 = i23;
                str = str3;
                i47 = i24;
                i46 = i22;
                j18 = j18;
                f17 = f11;
                str10 = str10;
                str11 = str11;
                str12 = str12;
                str13 = str13;
                j20 = j13;
                f19 = f12;
                str9 = str4;
            }
            int i57 = i46;
            num = null;
            i20 = i50;
            iM = RangesKt.m((int) (((long) i51) + j19), 0, i13 - i57);
            i21 = i57;
        }
        if (i39 != 0) {
            int iMax5 = 0;
            int iMax6 = 0;
            for (int i58 = i16; i58 < i17; i58++) {
                androidx.compose.ui.layout.g0 g0Var2 = g0VarArr[i58];
                Intrinsics.e(g0Var2);
                m mVarA = v.a(v.d(g0Var2));
                Integer numB = mVarA != null ? mVarA.b(g0Var2) : num;
                if (numB != null) {
                    int iIntValue = numB.intValue();
                    int iF4 = xVar.f(g0Var2);
                    iMax5 = Math.max(iMax5, iIntValue != Integer.MIN_VALUE ? numB.intValue() : 0);
                    if (iIntValue == Integer.MIN_VALUE) {
                        iIntValue = iF4;
                    }
                    iMax6 = Math.max(iMax6, iF4 - iIntValue);
                }
            }
            i29 = iMax6;
            i30 = iMax5;
        } else {
            i29 = 0;
            i30 = 0;
        }
        int iMax7 = Math.max(RangesKt.f(i21 + iM, 0), i19);
        int iMax8 = Math.max(i20, Math.max(i12, i29 + i30));
        int[] iArr6 = new int[i44];
        for (int i59 = 0; i59 < i44; i59++) {
            iArr6[i59] = 0;
        }
        xVar.b(iMax7, iArr2, iArr6, xVar2);
        return xVar.d(g0VarArr, xVar2, i30, iArr6, iMax7, iMax8, iArr, i18, i16, i17);
    }
}
