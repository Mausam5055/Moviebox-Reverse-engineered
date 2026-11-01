package androidx.compose.foundation.text;

import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.TextStringSimpleElement;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.s;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.graphics.b4;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.font.h;
import androidx.compose.ui.text.style.p;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasicTextKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0117  */
    /* JADX WARN: Code duplicated, block: B:104:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:105:0x0132  */
    /* JADX WARN: Code duplicated, block: B:106:0x0135  */
    /* JADX WARN: Code duplicated, block: B:108:0x0139  */
    /* JADX WARN: Code duplicated, block: B:109:0x0140  */
    /* JADX WARN: Code duplicated, block: B:112:0x0145  */
    /* JADX WARN: Code duplicated, block: B:114:0x0148  */
    /* JADX WARN: Code duplicated, block: B:115:0x014f  */
    /* JADX WARN: Code duplicated, block: B:118:0x0153  */
    /* JADX WARN: Code duplicated, block: B:119:0x0156  */
    /* JADX WARN: Code duplicated, block: B:121:0x015a  */
    /* JADX WARN: Code duplicated, block: B:122:0x015f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0164  */
    /* JADX WARN: Code duplicated, block: B:128:0x0169  */
    /* JADX WARN: Code duplicated, block: B:131:0x0171  */
    /* JADX WARN: Code duplicated, block: B:134:0x0193  */
    /* JADX WARN: Code duplicated, block: B:135:0x0205  */
    /* JADX WARN: Code duplicated, block: B:138:0x027e  */
    /* JADX WARN: Code duplicated, block: B:141:0x028a  */
    /* JADX WARN: Code duplicated, block: B:142:0x028e  */
    /* JADX WARN: Code duplicated, block: B:145:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:147:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:150:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:154:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00be  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:86:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:93:0x0100  */
    /* JADX WARN: Code duplicated, block: B:95:0x0106  */
    /* JADX WARN: Code duplicated, block: B:96:0x0109  */
    public static final void a(final String str, androidx.compose.ui.f fVar, d0 d0Var, Function1 function1, int i11, boolean z10, int i12, int i13, x1 x1Var, i iVar, final int i14, final int i15) {
        int i16;
        int i17;
        int i18;
        int i19;
        Function1 function2;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z11;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        androidx.compose.ui.f fVar2;
        d0 d0VarA;
        int iA;
        boolean z12;
        int i32;
        final int i33;
        x1 x1Var2;
        int i34;
        androidx.compose.ui.f fVarE;
        int iA2;
        Function0 function0A;
        i iVarA;
        Function2 function2B;
        final androidx.compose.ui.f fVar3;
        final d0 d0Var2;
        final int i35;
        final Function1 function3;
        final int i36;
        final x1 x1Var3;
        final boolean z13;
        g2 g2VarJ;
        i iVarG = iVar.g(-1186827822);
        if ((i15 & 1) != 0) {
            i16 = i14 | 6;
        } else if ((i14 & 6) == 0) {
            i16 = (iVarG.O(str) ? 4 : 2) | i14;
        } else {
            i16 = i14;
        }
        int i37 = i15 & 2;
        if (i37 == 0) {
            if ((i14 & 48) == 0) {
                i16 |= iVarG.O(fVar) ? 32 : 16;
            }
            i17 = i15 & 4;
            if (i17 != 0) {
                if ((i14 & 384) == 0) {
                    if (iVarG.O(d0Var)) {
                        i18 = 256;
                    } else {
                        i18 = 128;
                    }
                    i16 |= i18;
                }
                i19 = i15 & 8;
                if (i19 != 0) {
                    if ((i14 & 3072) == 0) {
                        function2 = function1;
                        if (iVarG.A(function2)) {
                            i20 = 2048;
                        } else {
                            i20 = 1024;
                        }
                        i16 |= i20;
                    }
                    i21 = i15 & 16;
                    if (i21 != 0) {
                        if ((i14 & 24576) == 0) {
                            i22 = i11;
                            if (iVarG.c(i22)) {
                                i23 = 16384;
                            } else {
                                i23 = 8192;
                            }
                            i16 |= i23;
                        }
                        i24 = i15 & 32;
                        if (i24 != 0) {
                            if ((196608 & i14) == 0) {
                                z11 = z10;
                                if (iVarG.a(z11)) {
                                    i25 = 131072;
                                } else {
                                    i25 = 65536;
                                }
                                i16 |= i25;
                            }
                            i26 = i15 & 64;
                            if (i26 != 0) {
                                i16 |= 1572864;
                            } else if ((i14 & 1572864) == 0) {
                                if (iVarG.c(i12)) {
                                    i27 = 1048576;
                                } else {
                                    i27 = 524288;
                                }
                                i16 |= i27;
                            }
                            i28 = i15 & 128;
                            if (i28 != 0) {
                                i16 |= 12582912;
                            } else if ((i14 & 12582912) == 0) {
                                if (iVarG.c(i13)) {
                                    i29 = 8388608;
                                } else {
                                    i29 = 4194304;
                                }
                                i16 |= i29;
                            }
                            i30 = i15 & 256;
                            if (i30 != 0) {
                                i16 |= 100663296;
                            } else if ((i14 & 100663296) == 0) {
                                if (iVarG.A(x1Var)) {
                                    i31 = 67108864;
                                } else {
                                    i31 = ASTNode.PCTX_STORED;
                                }
                                i16 |= i31;
                            }
                            if ((i16 & 38347923) == 38347922 || !iVarG.h()) {
                                if (i37 != 0) {
                                    fVar2 = androidx.compose.ui.f.f4178a;
                                } else {
                                    fVar2 = fVar;
                                }
                                if (i17 != 0) {
                                    d0VarA = d0.f6087d.a();
                                } else {
                                    d0VarA = d0Var;
                                }
                                if (i19 != 0) {
                                    function2 = null;
                                }
                                if (i21 != 0) {
                                    iA = p.f6442a.a();
                                } else {
                                    iA = i22;
                                }
                                if (i24 != 0) {
                                    z12 = true;
                                } else {
                                    z12 = z11;
                                }
                                if (i26 != 0) {
                                    i32 = Integer.MAX_VALUE;
                                } else {
                                    i32 = i12;
                                }
                                i33 = i28 == 0 ? i13 : 1;
                                x1Var2 = i30 == 0 ? x1Var : null;
                                if (k.H()) {
                                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                                }
                                a.a(i33, i32);
                                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                                iVarG.P(-1588686502);
                                iVarG.K();
                                if (function2 != null) {
                                    iVarG.P(-1588564052);
                                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                    iVarG.K();
                                    i34 = i32;
                                } else {
                                    iVarG.P(-1587866335);
                                    i34 = i32;
                                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                    iVarG.K();
                                }
                                EmptyMeasurePolicy emptyMeasurePolicy = EmptyMeasurePolicy.f3192a;
                                iA2 = g.a(iVarG, 0);
                                androidx.compose.ui.f fVarE2 = ComposedModifierKt.e(iVarG, fVarE);
                                s sVarN = iVarG.n();
                                ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
                                function0A = companion.a();
                                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                    g.b();
                                }
                                iVarG.C();
                                if (iVarG.e()) {
                                    iVarG.F(function0A);
                                } else {
                                    iVarG.o();
                                }
                                iVarA = f3.a(iVarG);
                                f3.b(iVarA, emptyMeasurePolicy, companion.c());
                                f3.b(iVarA, sVarN, companion.e());
                                f3.b(iVarA, fVarE2, companion.d());
                                function2B = companion.b();
                                if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA2))) {
                                    iVarA.p(Integer.valueOf(iA2));
                                    iVarA.k(Integer.valueOf(iA2), function2B);
                                }
                                iVarG.r();
                                if (k.H()) {
                                    k.P();
                                }
                                fVar3 = fVar2;
                                d0Var2 = d0VarA;
                                i35 = iA;
                                function3 = function2;
                                i36 = i34;
                                x1Var3 = x1Var2;
                                z13 = z12;
                            } else {
                                iVarG.G();
                                fVar3 = fVar;
                                d0Var2 = d0Var;
                                i36 = i12;
                                i33 = i13;
                                function3 = function2;
                                i35 = i22;
                                z13 = z11;
                                x1Var3 = x1Var;
                            }
                            g2VarJ = iVarG.j();
                            if (g2VarJ != null) {
                                g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                        invoke((i) obj, ((Number) obj2).intValue());
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(i iVar2, int i38) {
                                        BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                                    }
                                });
                            }
                        }
                        i16 |= 196608;
                        z11 = z10;
                        i26 = i15 & 64;
                        if (i26 != 0) {
                            i16 |= 1572864;
                        } else if ((i14 & 1572864) == 0) {
                            if (iVarG.c(i12)) {
                                i27 = 1048576;
                            } else {
                                i27 = 524288;
                            }
                            i16 |= i27;
                        }
                        i28 = i15 & 128;
                        if (i28 != 0) {
                            i16 |= 12582912;
                        } else if ((i14 & 12582912) == 0) {
                            if (iVarG.c(i13)) {
                                i29 = 8388608;
                            } else {
                                i29 = 4194304;
                            }
                            i16 |= i29;
                        }
                        i30 = i15 & 256;
                        if (i30 != 0) {
                            i16 |= 100663296;
                        } else if ((i14 & 100663296) == 0) {
                            if (iVarG.A(x1Var)) {
                                i31 = 67108864;
                            } else {
                                i31 = ASTNode.PCTX_STORED;
                            }
                            i16 |= i31;
                        }
                        if ((i16 & 38347923) == 38347922) {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy2 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE3 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN2 = iVarG.n();
                            ComposeUiNode.Companion companion2 = ComposeUiNode.f5224c1;
                            function0A = companion2.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy2, companion2.c());
                            f3.b(iVarA, sVarN2, companion2.e());
                            f3.b(iVarA, fVarE3, companion2.d());
                            function2B = companion2.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        } else {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy3 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE4 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN3 = iVarG.n();
                            ComposeUiNode.Companion companion3 = ComposeUiNode.f5224c1;
                            function0A = companion3.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy3, companion3.c());
                            f3.b(iVarA, sVarN3, companion3.e());
                            f3.b(iVarA, fVarE4, companion3.d());
                            function2B = companion3.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(i iVar2, int i38) {
                                    BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                                }
                            });
                        }
                    }
                    i16 |= 24576;
                    i22 = i11;
                    i24 = i15 & 32;
                    if (i24 != 0) {
                        if ((196608 & i14) == 0) {
                            z11 = z10;
                            if (iVarG.a(z11)) {
                                i25 = 131072;
                            } else {
                                i25 = 65536;
                            }
                            i16 |= i25;
                        }
                        i26 = i15 & 64;
                        if (i26 != 0) {
                            i16 |= 1572864;
                        } else if ((i14 & 1572864) == 0) {
                            if (iVarG.c(i12)) {
                                i27 = 1048576;
                            } else {
                                i27 = 524288;
                            }
                            i16 |= i27;
                        }
                        i28 = i15 & 128;
                        if (i28 != 0) {
                            i16 |= 12582912;
                        } else if ((i14 & 12582912) == 0) {
                            if (iVarG.c(i13)) {
                                i29 = 8388608;
                            } else {
                                i29 = 4194304;
                            }
                            i16 |= i29;
                        }
                        i30 = i15 & 256;
                        if (i30 != 0) {
                            i16 |= 100663296;
                        } else if ((i14 & 100663296) == 0) {
                            if (iVarG.A(x1Var)) {
                                i31 = 67108864;
                            } else {
                                i31 = ASTNode.PCTX_STORED;
                            }
                            i16 |= i31;
                        }
                        if ((i16 & 38347923) == 38347922) {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy4 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE5 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN4 = iVarG.n();
                            ComposeUiNode.Companion companion4 = ComposeUiNode.f5224c1;
                            function0A = companion4.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy4, companion4.c());
                            f3.b(iVarA, sVarN4, companion4.e());
                            f3.b(iVarA, fVarE5, companion4.d());
                            function2B = companion4.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        } else {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy5 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE6 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN5 = iVarG.n();
                            ComposeUiNode.Companion companion5 = ComposeUiNode.f5224c1;
                            function0A = companion5.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy5, companion5.c());
                            f3.b(iVarA, sVarN5, companion5.e());
                            f3.b(iVarA, fVarE6, companion5.d());
                            function2B = companion5.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(i iVar2, int i38) {
                                    BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                                }
                            });
                        }
                    }
                    i16 |= 196608;
                    z11 = z10;
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy6 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE7 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN6 = iVarG.n();
                        ComposeUiNode.Companion companion6 = ComposeUiNode.f5224c1;
                        function0A = companion6.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy6, companion6.c());
                        f3.b(iVarA, sVarN6, companion6.e());
                        f3.b(iVarA, fVarE7, companion6.d());
                        function2B = companion6.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy7 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE8 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN7 = iVarG.n();
                        ComposeUiNode.Companion companion7 = ComposeUiNode.f5224c1;
                        function0A = companion7.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy7, companion7.c());
                        f3.b(iVarA, sVarN7, companion7.e());
                        f3.b(iVarA, fVarE8, companion7.d());
                        function2B = companion7.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 3072;
                function2 = function1;
                i21 = i15 & 16;
                if (i21 != 0) {
                    if ((i14 & 24576) == 0) {
                        i22 = i11;
                        if (iVarG.c(i22)) {
                            i23 = 16384;
                        } else {
                            i23 = 8192;
                        }
                        i16 |= i23;
                    }
                    i24 = i15 & 32;
                    if (i24 != 0) {
                        if ((196608 & i14) == 0) {
                            z11 = z10;
                            if (iVarG.a(z11)) {
                                i25 = 131072;
                            } else {
                                i25 = 65536;
                            }
                            i16 |= i25;
                        }
                        i26 = i15 & 64;
                        if (i26 != 0) {
                            i16 |= 1572864;
                        } else if ((i14 & 1572864) == 0) {
                            if (iVarG.c(i12)) {
                                i27 = 1048576;
                            } else {
                                i27 = 524288;
                            }
                            i16 |= i27;
                        }
                        i28 = i15 & 128;
                        if (i28 != 0) {
                            i16 |= 12582912;
                        } else if ((i14 & 12582912) == 0) {
                            if (iVarG.c(i13)) {
                                i29 = 8388608;
                            } else {
                                i29 = 4194304;
                            }
                            i16 |= i29;
                        }
                        i30 = i15 & 256;
                        if (i30 != 0) {
                            i16 |= 100663296;
                        } else if ((i14 & 100663296) == 0) {
                            if (iVarG.A(x1Var)) {
                                i31 = 67108864;
                            } else {
                                i31 = ASTNode.PCTX_STORED;
                            }
                            i16 |= i31;
                        }
                        if ((i16 & 38347923) == 38347922) {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy8 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE9 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN8 = iVarG.n();
                            ComposeUiNode.Companion companion8 = ComposeUiNode.f5224c1;
                            function0A = companion8.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy8, companion8.c());
                            f3.b(iVarA, sVarN8, companion8.e());
                            f3.b(iVarA, fVarE9, companion8.d());
                            function2B = companion8.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        } else {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy9 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE10 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN9 = iVarG.n();
                            ComposeUiNode.Companion companion9 = ComposeUiNode.f5224c1;
                            function0A = companion9.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy9, companion9.c());
                            f3.b(iVarA, sVarN9, companion9.e());
                            f3.b(iVarA, fVarE10, companion9.d());
                            function2B = companion9.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(i iVar2, int i38) {
                                    BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                                }
                            });
                        }
                    }
                    i16 |= 196608;
                    z11 = z10;
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy10 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE11 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN10 = iVarG.n();
                        ComposeUiNode.Companion companion10 = ComposeUiNode.f5224c1;
                        function0A = companion10.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy10, companion10.c());
                        f3.b(iVarA, sVarN10, companion10.e());
                        f3.b(iVarA, fVarE11, companion10.d());
                        function2B = companion10.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy11 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE12 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN11 = iVarG.n();
                        ComposeUiNode.Companion companion11 = ComposeUiNode.f5224c1;
                        function0A = companion11.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy11, companion11.c());
                        f3.b(iVarA, sVarN11, companion11.e());
                        f3.b(iVarA, fVarE12, companion11.d());
                        function2B = companion11.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 24576;
                i22 = i11;
                i24 = i15 & 32;
                if (i24 != 0) {
                    if ((196608 & i14) == 0) {
                        z11 = z10;
                        if (iVarG.a(z11)) {
                            i25 = 131072;
                        } else {
                            i25 = 65536;
                        }
                        i16 |= i25;
                    }
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy12 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE13 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN12 = iVarG.n();
                        ComposeUiNode.Companion companion12 = ComposeUiNode.f5224c1;
                        function0A = companion12.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy12, companion12.c());
                        f3.b(iVarA, sVarN12, companion12.e());
                        f3.b(iVarA, fVarE13, companion12.d());
                        function2B = companion12.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy13 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE14 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN13 = iVarG.n();
                        ComposeUiNode.Companion companion13 = ComposeUiNode.f5224c1;
                        function0A = companion13.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy13, companion13.c());
                        f3.b(iVarA, sVarN13, companion13.e());
                        f3.b(iVarA, fVarE14, companion13.d());
                        function2B = companion13.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 196608;
                z11 = z10;
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy14 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE15 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN14 = iVarG.n();
                    ComposeUiNode.Companion companion14 = ComposeUiNode.f5224c1;
                    function0A = companion14.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy14, companion14.c());
                    f3.b(iVarA, sVarN14, companion14.e());
                    f3.b(iVarA, fVarE15, companion14.d());
                    function2B = companion14.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy15 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE16 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN15 = iVarG.n();
                    ComposeUiNode.Companion companion15 = ComposeUiNode.f5224c1;
                    function0A = companion15.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy15, companion15.c());
                    f3.b(iVarA, sVarN15, companion15.e());
                    f3.b(iVarA, fVarE16, companion15.d());
                    function2B = companion15.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 384;
            i19 = i15 & 8;
            if (i19 != 0) {
                if ((i14 & 3072) == 0) {
                    function2 = function1;
                    if (iVarG.A(function2)) {
                        i20 = 2048;
                    } else {
                        i20 = 1024;
                    }
                    i16 |= i20;
                }
                i21 = i15 & 16;
                if (i21 != 0) {
                    if ((i14 & 24576) == 0) {
                        i22 = i11;
                        if (iVarG.c(i22)) {
                            i23 = 16384;
                        } else {
                            i23 = 8192;
                        }
                        i16 |= i23;
                    }
                    i24 = i15 & 32;
                    if (i24 != 0) {
                        if ((196608 & i14) == 0) {
                            z11 = z10;
                            if (iVarG.a(z11)) {
                                i25 = 131072;
                            } else {
                                i25 = 65536;
                            }
                            i16 |= i25;
                        }
                        i26 = i15 & 64;
                        if (i26 != 0) {
                            i16 |= 1572864;
                        } else if ((i14 & 1572864) == 0) {
                            if (iVarG.c(i12)) {
                                i27 = 1048576;
                            } else {
                                i27 = 524288;
                            }
                            i16 |= i27;
                        }
                        i28 = i15 & 128;
                        if (i28 != 0) {
                            i16 |= 12582912;
                        } else if ((i14 & 12582912) == 0) {
                            if (iVarG.c(i13)) {
                                i29 = 8388608;
                            } else {
                                i29 = 4194304;
                            }
                            i16 |= i29;
                        }
                        i30 = i15 & 256;
                        if (i30 != 0) {
                            i16 |= 100663296;
                        } else if ((i14 & 100663296) == 0) {
                            if (iVarG.A(x1Var)) {
                                i31 = 67108864;
                            } else {
                                i31 = ASTNode.PCTX_STORED;
                            }
                            i16 |= i31;
                        }
                        if ((i16 & 38347923) == 38347922) {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy16 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE17 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN16 = iVarG.n();
                            ComposeUiNode.Companion companion16 = ComposeUiNode.f5224c1;
                            function0A = companion16.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy16, companion16.c());
                            f3.b(iVarA, sVarN16, companion16.e());
                            f3.b(iVarA, fVarE17, companion16.d());
                            function2B = companion16.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        } else {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy17 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE18 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN17 = iVarG.n();
                            ComposeUiNode.Companion companion17 = ComposeUiNode.f5224c1;
                            function0A = companion17.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy17, companion17.c());
                            f3.b(iVarA, sVarN17, companion17.e());
                            f3.b(iVarA, fVarE18, companion17.d());
                            function2B = companion17.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(i iVar2, int i38) {
                                    BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                                }
                            });
                        }
                    }
                    i16 |= 196608;
                    z11 = z10;
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy18 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE19 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN18 = iVarG.n();
                        ComposeUiNode.Companion companion18 = ComposeUiNode.f5224c1;
                        function0A = companion18.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy18, companion18.c());
                        f3.b(iVarA, sVarN18, companion18.e());
                        f3.b(iVarA, fVarE19, companion18.d());
                        function2B = companion18.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy19 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE110 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN19 = iVarG.n();
                        ComposeUiNode.Companion companion19 = ComposeUiNode.f5224c1;
                        function0A = companion19.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy19, companion19.c());
                        f3.b(iVarA, sVarN19, companion19.e());
                        f3.b(iVarA, fVarE110, companion19.d());
                        function2B = companion19.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 24576;
                i22 = i11;
                i24 = i15 & 32;
                if (i24 != 0) {
                    if ((196608 & i14) == 0) {
                        z11 = z10;
                        if (iVarG.a(z11)) {
                            i25 = 131072;
                        } else {
                            i25 = 65536;
                        }
                        i16 |= i25;
                    }
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy110 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE111 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN110 = iVarG.n();
                        ComposeUiNode.Companion companion110 = ComposeUiNode.f5224c1;
                        function0A = companion110.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy110, companion110.c());
                        f3.b(iVarA, sVarN110, companion110.e());
                        f3.b(iVarA, fVarE111, companion110.d());
                        function2B = companion110.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy111 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE112 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN111 = iVarG.n();
                        ComposeUiNode.Companion companion111 = ComposeUiNode.f5224c1;
                        function0A = companion111.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy111, companion111.c());
                        f3.b(iVarA, sVarN111, companion111.e());
                        f3.b(iVarA, fVarE112, companion111.d());
                        function2B = companion111.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 196608;
                z11 = z10;
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy112 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE113 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN112 = iVarG.n();
                    ComposeUiNode.Companion companion112 = ComposeUiNode.f5224c1;
                    function0A = companion112.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy112, companion112.c());
                    f3.b(iVarA, sVarN112, companion112.e());
                    f3.b(iVarA, fVarE113, companion112.d());
                    function2B = companion112.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy113 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE114 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN113 = iVarG.n();
                    ComposeUiNode.Companion companion113 = ComposeUiNode.f5224c1;
                    function0A = companion113.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy113, companion113.c());
                    f3.b(iVarA, sVarN113, companion113.e());
                    f3.b(iVarA, fVarE114, companion113.d());
                    function2B = companion113.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 3072;
            function2 = function1;
            i21 = i15 & 16;
            if (i21 != 0) {
                if ((i14 & 24576) == 0) {
                    i22 = i11;
                    if (iVarG.c(i22)) {
                        i23 = 16384;
                    } else {
                        i23 = 8192;
                    }
                    i16 |= i23;
                }
                i24 = i15 & 32;
                if (i24 != 0) {
                    if ((196608 & i14) == 0) {
                        z11 = z10;
                        if (iVarG.a(z11)) {
                            i25 = 131072;
                        } else {
                            i25 = 65536;
                        }
                        i16 |= i25;
                    }
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy114 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE115 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN114 = iVarG.n();
                        ComposeUiNode.Companion companion114 = ComposeUiNode.f5224c1;
                        function0A = companion114.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy114, companion114.c());
                        f3.b(iVarA, sVarN114, companion114.e());
                        f3.b(iVarA, fVarE115, companion114.d());
                        function2B = companion114.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy115 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE116 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN115 = iVarG.n();
                        ComposeUiNode.Companion companion115 = ComposeUiNode.f5224c1;
                        function0A = companion115.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy115, companion115.c());
                        f3.b(iVarA, sVarN115, companion115.e());
                        f3.b(iVarA, fVarE116, companion115.d());
                        function2B = companion115.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 196608;
                z11 = z10;
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy116 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE117 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN116 = iVarG.n();
                    ComposeUiNode.Companion companion116 = ComposeUiNode.f5224c1;
                    function0A = companion116.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy116, companion116.c());
                    f3.b(iVarA, sVarN116, companion116.e());
                    f3.b(iVarA, fVarE117, companion116.d());
                    function2B = companion116.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy117 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE118 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN117 = iVarG.n();
                    ComposeUiNode.Companion companion117 = ComposeUiNode.f5224c1;
                    function0A = companion117.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy117, companion117.c());
                    f3.b(iVarA, sVarN117, companion117.e());
                    f3.b(iVarA, fVarE118, companion117.d());
                    function2B = companion117.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 24576;
            i22 = i11;
            i24 = i15 & 32;
            if (i24 != 0) {
                if ((196608 & i14) == 0) {
                    z11 = z10;
                    if (iVarG.a(z11)) {
                        i25 = 131072;
                    } else {
                        i25 = 65536;
                    }
                    i16 |= i25;
                }
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy118 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE119 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN118 = iVarG.n();
                    ComposeUiNode.Companion companion118 = ComposeUiNode.f5224c1;
                    function0A = companion118.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy118, companion118.c());
                    f3.b(iVarA, sVarN118, companion118.e());
                    f3.b(iVarA, fVarE119, companion118.d());
                    function2B = companion118.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy119 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE1110 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN119 = iVarG.n();
                    ComposeUiNode.Companion companion119 = ComposeUiNode.f5224c1;
                    function0A = companion119.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy119, companion119.c());
                    f3.b(iVarA, sVarN119, companion119.e());
                    f3.b(iVarA, fVarE1110, companion119.d());
                    function2B = companion119.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 196608;
            z11 = z10;
            i26 = i15 & 64;
            if (i26 != 0) {
                i16 |= 1572864;
            } else if ((i14 & 1572864) == 0) {
                if (iVarG.c(i12)) {
                    i27 = 1048576;
                } else {
                    i27 = 524288;
                }
                i16 |= i27;
            }
            i28 = i15 & 128;
            if (i28 != 0) {
                i16 |= 12582912;
            } else if ((i14 & 12582912) == 0) {
                if (iVarG.c(i13)) {
                    i29 = 8388608;
                } else {
                    i29 = 4194304;
                }
                i16 |= i29;
            }
            i30 = i15 & 256;
            if (i30 != 0) {
                i16 |= 100663296;
            } else if ((i14 & 100663296) == 0) {
                if (iVarG.A(x1Var)) {
                    i31 = 67108864;
                } else {
                    i31 = ASTNode.PCTX_STORED;
                }
                i16 |= i31;
            }
            if ((i16 & 38347923) == 38347922) {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy1110 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE1111 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN1110 = iVarG.n();
                ComposeUiNode.Companion companion1110 = ComposeUiNode.f5224c1;
                function0A = companion1110.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy1110, companion1110.c());
                f3.b(iVarA, sVarN1110, companion1110.e());
                f3.b(iVarA, fVarE1111, companion1110.d());
                function2B = companion1110.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            } else {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy1111 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE1112 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN1111 = iVarG.n();
                ComposeUiNode.Companion companion1111 = ComposeUiNode.f5224c1;
                function0A = companion1111.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy1111, companion1111.c());
                f3.b(iVarA, sVarN1111, companion1111.e());
                f3.b(iVarA, fVarE1112, companion1111.d());
                function2B = companion1111.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(i iVar2, int i38) {
                        BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                    }
                });
            }
        }
        i16 |= 48;
        i17 = i15 & 4;
        if (i17 != 0) {
            if ((i14 & 384) == 0) {
                if (iVarG.O(d0Var)) {
                    i18 = 256;
                } else {
                    i18 = 128;
                }
                i16 |= i18;
            }
            i19 = i15 & 8;
            if (i19 != 0) {
                if ((i14 & 3072) == 0) {
                    function2 = function1;
                    if (iVarG.A(function2)) {
                        i20 = 2048;
                    } else {
                        i20 = 1024;
                    }
                    i16 |= i20;
                }
                i21 = i15 & 16;
                if (i21 != 0) {
                    if ((i14 & 24576) == 0) {
                        i22 = i11;
                        if (iVarG.c(i22)) {
                            i23 = 16384;
                        } else {
                            i23 = 8192;
                        }
                        i16 |= i23;
                    }
                    i24 = i15 & 32;
                    if (i24 != 0) {
                        if ((196608 & i14) == 0) {
                            z11 = z10;
                            if (iVarG.a(z11)) {
                                i25 = 131072;
                            } else {
                                i25 = 65536;
                            }
                            i16 |= i25;
                        }
                        i26 = i15 & 64;
                        if (i26 != 0) {
                            i16 |= 1572864;
                        } else if ((i14 & 1572864) == 0) {
                            if (iVarG.c(i12)) {
                                i27 = 1048576;
                            } else {
                                i27 = 524288;
                            }
                            i16 |= i27;
                        }
                        i28 = i15 & 128;
                        if (i28 != 0) {
                            i16 |= 12582912;
                        } else if ((i14 & 12582912) == 0) {
                            if (iVarG.c(i13)) {
                                i29 = 8388608;
                            } else {
                                i29 = 4194304;
                            }
                            i16 |= i29;
                        }
                        i30 = i15 & 256;
                        if (i30 != 0) {
                            i16 |= 100663296;
                        } else if ((i14 & 100663296) == 0) {
                            if (iVarG.A(x1Var)) {
                                i31 = 67108864;
                            } else {
                                i31 = ASTNode.PCTX_STORED;
                            }
                            i16 |= i31;
                        }
                        if ((i16 & 38347923) == 38347922) {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy1112 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE1113 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN1112 = iVarG.n();
                            ComposeUiNode.Companion companion1112 = ComposeUiNode.f5224c1;
                            function0A = companion1112.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy1112, companion1112.c());
                            f3.b(iVarA, sVarN1112, companion1112.e());
                            f3.b(iVarA, fVarE1113, companion1112.d());
                            function2B = companion1112.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        } else {
                            if (i37 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            } else {
                                fVar2 = fVar;
                            }
                            if (i17 != 0) {
                                d0VarA = d0.f6087d.a();
                            } else {
                                d0VarA = d0Var;
                            }
                            if (i19 != 0) {
                                function2 = null;
                            }
                            if (i21 != 0) {
                                iA = p.f6442a.a();
                            } else {
                                iA = i22;
                            }
                            if (i24 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i26 != 0) {
                                i32 = Integer.MAX_VALUE;
                            } else {
                                i32 = i12;
                            }
                            if (i28 == 0) {
                            }
                            if (i30 == 0) {
                            }
                            if (k.H()) {
                                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                            }
                            a.a(i33, i32);
                            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                            iVarG.P(-1588686502);
                            iVarG.K();
                            if (function2 != null) {
                                iVarG.P(-1588564052);
                                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                                iVarG.K();
                                i34 = i32;
                            } else {
                                iVarG.P(-1587866335);
                                i34 = i32;
                                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                                iVarG.K();
                            }
                            EmptyMeasurePolicy emptyMeasurePolicy1113 = EmptyMeasurePolicy.f3192a;
                            iA2 = g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE1114 = ComposedModifierKt.e(iVarG, fVarE);
                            s sVarN1113 = iVarG.n();
                            ComposeUiNode.Companion companion1113 = ComposeUiNode.f5224c1;
                            function0A = companion1113.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, emptyMeasurePolicy1113, companion1113.c());
                            f3.b(iVarA, sVarN1113, companion1113.e());
                            f3.b(iVarA, fVarE1114, companion1113.d());
                            function2B = companion1113.b();
                            if (iVarA.e()) {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            } else {
                                iVarA.p(Integer.valueOf(iA2));
                                iVarA.k(Integer.valueOf(iA2), function2B);
                            }
                            iVarG.r();
                            if (k.H()) {
                                k.P();
                            }
                            fVar3 = fVar2;
                            d0Var2 = d0VarA;
                            i35 = iA;
                            function3 = function2;
                            i36 = i34;
                            x1Var3 = x1Var2;
                            z13 = z12;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(i iVar2, int i38) {
                                    BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                                }
                            });
                        }
                    }
                    i16 |= 196608;
                    z11 = z10;
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy1114 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE1115 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN1114 = iVarG.n();
                        ComposeUiNode.Companion companion1114 = ComposeUiNode.f5224c1;
                        function0A = companion1114.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy1114, companion1114.c());
                        f3.b(iVarA, sVarN1114, companion1114.e());
                        f3.b(iVarA, fVarE1115, companion1114.d());
                        function2B = companion1114.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy1115 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE1116 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN1115 = iVarG.n();
                        ComposeUiNode.Companion companion1115 = ComposeUiNode.f5224c1;
                        function0A = companion1115.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy1115, companion1115.c());
                        f3.b(iVarA, sVarN1115, companion1115.e());
                        f3.b(iVarA, fVarE1116, companion1115.d());
                        function2B = companion1115.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 24576;
                i22 = i11;
                i24 = i15 & 32;
                if (i24 != 0) {
                    if ((196608 & i14) == 0) {
                        z11 = z10;
                        if (iVarG.a(z11)) {
                            i25 = 131072;
                        } else {
                            i25 = 65536;
                        }
                        i16 |= i25;
                    }
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy1116 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE1117 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN1116 = iVarG.n();
                        ComposeUiNode.Companion companion1116 = ComposeUiNode.f5224c1;
                        function0A = companion1116.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy1116, companion1116.c());
                        f3.b(iVarA, sVarN1116, companion1116.e());
                        f3.b(iVarA, fVarE1117, companion1116.d());
                        function2B = companion1116.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy1117 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE1118 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN1117 = iVarG.n();
                        ComposeUiNode.Companion companion1117 = ComposeUiNode.f5224c1;
                        function0A = companion1117.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy1117, companion1117.c());
                        f3.b(iVarA, sVarN1117, companion1117.e());
                        f3.b(iVarA, fVarE1118, companion1117.d());
                        function2B = companion1117.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 196608;
                z11 = z10;
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy1118 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE1119 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN1118 = iVarG.n();
                    ComposeUiNode.Companion companion1118 = ComposeUiNode.f5224c1;
                    function0A = companion1118.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy1118, companion1118.c());
                    f3.b(iVarA, sVarN1118, companion1118.e());
                    f3.b(iVarA, fVarE1119, companion1118.d());
                    function2B = companion1118.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy1119 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE11110 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN1119 = iVarG.n();
                    ComposeUiNode.Companion companion1119 = ComposeUiNode.f5224c1;
                    function0A = companion1119.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy1119, companion1119.c());
                    f3.b(iVarA, sVarN1119, companion1119.e());
                    f3.b(iVarA, fVarE11110, companion1119.d());
                    function2B = companion1119.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 3072;
            function2 = function1;
            i21 = i15 & 16;
            if (i21 != 0) {
                if ((i14 & 24576) == 0) {
                    i22 = i11;
                    if (iVarG.c(i22)) {
                        i23 = 16384;
                    } else {
                        i23 = 8192;
                    }
                    i16 |= i23;
                }
                i24 = i15 & 32;
                if (i24 != 0) {
                    if ((196608 & i14) == 0) {
                        z11 = z10;
                        if (iVarG.a(z11)) {
                            i25 = 131072;
                        } else {
                            i25 = 65536;
                        }
                        i16 |= i25;
                    }
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy11110 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE11111 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN11110 = iVarG.n();
                        ComposeUiNode.Companion companion11110 = ComposeUiNode.f5224c1;
                        function0A = companion11110.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy11110, companion11110.c());
                        f3.b(iVarA, sVarN11110, companion11110.e());
                        f3.b(iVarA, fVarE11111, companion11110.d());
                        function2B = companion11110.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy11111 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE11112 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN11111 = iVarG.n();
                        ComposeUiNode.Companion companion11111 = ComposeUiNode.f5224c1;
                        function0A = companion11111.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy11111, companion11111.c());
                        f3.b(iVarA, sVarN11111, companion11111.e());
                        f3.b(iVarA, fVarE11112, companion11111.d());
                        function2B = companion11111.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 196608;
                z11 = z10;
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy11112 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE11113 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN11112 = iVarG.n();
                    ComposeUiNode.Companion companion11112 = ComposeUiNode.f5224c1;
                    function0A = companion11112.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy11112, companion11112.c());
                    f3.b(iVarA, sVarN11112, companion11112.e());
                    f3.b(iVarA, fVarE11113, companion11112.d());
                    function2B = companion11112.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy11113 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE11114 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN11113 = iVarG.n();
                    ComposeUiNode.Companion companion11113 = ComposeUiNode.f5224c1;
                    function0A = companion11113.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy11113, companion11113.c());
                    f3.b(iVarA, sVarN11113, companion11113.e());
                    f3.b(iVarA, fVarE11114, companion11113.d());
                    function2B = companion11113.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 24576;
            i22 = i11;
            i24 = i15 & 32;
            if (i24 != 0) {
                if ((196608 & i14) == 0) {
                    z11 = z10;
                    if (iVarG.a(z11)) {
                        i25 = 131072;
                    } else {
                        i25 = 65536;
                    }
                    i16 |= i25;
                }
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy11114 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE11115 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN11114 = iVarG.n();
                    ComposeUiNode.Companion companion11114 = ComposeUiNode.f5224c1;
                    function0A = companion11114.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy11114, companion11114.c());
                    f3.b(iVarA, sVarN11114, companion11114.e());
                    f3.b(iVarA, fVarE11115, companion11114.d());
                    function2B = companion11114.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy11115 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE11116 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN11115 = iVarG.n();
                    ComposeUiNode.Companion companion11115 = ComposeUiNode.f5224c1;
                    function0A = companion11115.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy11115, companion11115.c());
                    f3.b(iVarA, sVarN11115, companion11115.e());
                    f3.b(iVarA, fVarE11116, companion11115.d());
                    function2B = companion11115.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 196608;
            z11 = z10;
            i26 = i15 & 64;
            if (i26 != 0) {
                i16 |= 1572864;
            } else if ((i14 & 1572864) == 0) {
                if (iVarG.c(i12)) {
                    i27 = 1048576;
                } else {
                    i27 = 524288;
                }
                i16 |= i27;
            }
            i28 = i15 & 128;
            if (i28 != 0) {
                i16 |= 12582912;
            } else if ((i14 & 12582912) == 0) {
                if (iVarG.c(i13)) {
                    i29 = 8388608;
                } else {
                    i29 = 4194304;
                }
                i16 |= i29;
            }
            i30 = i15 & 256;
            if (i30 != 0) {
                i16 |= 100663296;
            } else if ((i14 & 100663296) == 0) {
                if (iVarG.A(x1Var)) {
                    i31 = 67108864;
                } else {
                    i31 = ASTNode.PCTX_STORED;
                }
                i16 |= i31;
            }
            if ((i16 & 38347923) == 38347922) {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy11116 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE11117 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN11116 = iVarG.n();
                ComposeUiNode.Companion companion11116 = ComposeUiNode.f5224c1;
                function0A = companion11116.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy11116, companion11116.c());
                f3.b(iVarA, sVarN11116, companion11116.e());
                f3.b(iVarA, fVarE11117, companion11116.d());
                function2B = companion11116.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            } else {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy11117 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE11118 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN11117 = iVarG.n();
                ComposeUiNode.Companion companion11117 = ComposeUiNode.f5224c1;
                function0A = companion11117.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy11117, companion11117.c());
                f3.b(iVarA, sVarN11117, companion11117.e());
                f3.b(iVarA, fVarE11118, companion11117.d());
                function2B = companion11117.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(i iVar2, int i38) {
                        BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                    }
                });
            }
        }
        i16 |= 384;
        i19 = i15 & 8;
        if (i19 != 0) {
            if ((i14 & 3072) == 0) {
                function2 = function1;
                if (iVarG.A(function2)) {
                    i20 = 2048;
                } else {
                    i20 = 1024;
                }
                i16 |= i20;
            }
            i21 = i15 & 16;
            if (i21 != 0) {
                if ((i14 & 24576) == 0) {
                    i22 = i11;
                    if (iVarG.c(i22)) {
                        i23 = 16384;
                    } else {
                        i23 = 8192;
                    }
                    i16 |= i23;
                }
                i24 = i15 & 32;
                if (i24 != 0) {
                    if ((196608 & i14) == 0) {
                        z11 = z10;
                        if (iVarG.a(z11)) {
                            i25 = 131072;
                        } else {
                            i25 = 65536;
                        }
                        i16 |= i25;
                    }
                    i26 = i15 & 64;
                    if (i26 != 0) {
                        i16 |= 1572864;
                    } else if ((i14 & 1572864) == 0) {
                        if (iVarG.c(i12)) {
                            i27 = 1048576;
                        } else {
                            i27 = 524288;
                        }
                        i16 |= i27;
                    }
                    i28 = i15 & 128;
                    if (i28 != 0) {
                        i16 |= 12582912;
                    } else if ((i14 & 12582912) == 0) {
                        if (iVarG.c(i13)) {
                            i29 = 8388608;
                        } else {
                            i29 = 4194304;
                        }
                        i16 |= i29;
                    }
                    i30 = i15 & 256;
                    if (i30 != 0) {
                        i16 |= 100663296;
                    } else if ((i14 & 100663296) == 0) {
                        if (iVarG.A(x1Var)) {
                            i31 = 67108864;
                        } else {
                            i31 = ASTNode.PCTX_STORED;
                        }
                        i16 |= i31;
                    }
                    if ((i16 & 38347923) == 38347922) {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy11118 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE11119 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN11118 = iVarG.n();
                        ComposeUiNode.Companion companion11118 = ComposeUiNode.f5224c1;
                        function0A = companion11118.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy11118, companion11118.c());
                        f3.b(iVarA, sVarN11118, companion11118.e());
                        f3.b(iVarA, fVarE11119, companion11118.d());
                        function2B = companion11118.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    } else {
                        if (i37 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        } else {
                            fVar2 = fVar;
                        }
                        if (i17 != 0) {
                            d0VarA = d0.f6087d.a();
                        } else {
                            d0VarA = d0Var;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if (i21 != 0) {
                            iA = p.f6442a.a();
                        } else {
                            iA = i22;
                        }
                        if (i24 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i26 != 0) {
                            i32 = Integer.MAX_VALUE;
                        } else {
                            i32 = i12;
                        }
                        if (i28 == 0) {
                        }
                        if (i30 == 0) {
                        }
                        if (k.H()) {
                            k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                        }
                        a.a(i33, i32);
                        android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                        iVarG.P(-1588686502);
                        iVarG.K();
                        if (function2 != null) {
                            iVarG.P(-1588564052);
                            fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                            iVarG.K();
                            i34 = i32;
                        } else {
                            iVarG.P(-1587866335);
                            i34 = i32;
                            fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                            iVarG.K();
                        }
                        EmptyMeasurePolicy emptyMeasurePolicy11119 = EmptyMeasurePolicy.f3192a;
                        iA2 = g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE111110 = ComposedModifierKt.e(iVarG, fVarE);
                        s sVarN11119 = iVarG.n();
                        ComposeUiNode.Companion companion11119 = ComposeUiNode.f5224c1;
                        function0A = companion11119.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, emptyMeasurePolicy11119, companion11119.c());
                        f3.b(iVarA, sVarN11119, companion11119.e());
                        f3.b(iVarA, fVarE111110, companion11119.d());
                        function2B = companion11119.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA2));
                            iVarA.k(Integer.valueOf(iA2), function2B);
                        }
                        iVarG.r();
                        if (k.H()) {
                            k.P();
                        }
                        fVar3 = fVar2;
                        d0Var2 = d0VarA;
                        i35 = iA;
                        function3 = function2;
                        i36 = i34;
                        x1Var3 = x1Var2;
                        z13 = z12;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(i iVar2, int i38) {
                                BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                            }
                        });
                    }
                }
                i16 |= 196608;
                z11 = z10;
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy111110 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111111 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN111110 = iVarG.n();
                    ComposeUiNode.Companion companion111110 = ComposeUiNode.f5224c1;
                    function0A = companion111110.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy111110, companion111110.c());
                    f3.b(iVarA, sVarN111110, companion111110.e());
                    f3.b(iVarA, fVarE111111, companion111110.d());
                    function2B = companion111110.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy111111 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111112 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN111111 = iVarG.n();
                    ComposeUiNode.Companion companion111111 = ComposeUiNode.f5224c1;
                    function0A = companion111111.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy111111, companion111111.c());
                    f3.b(iVarA, sVarN111111, companion111111.e());
                    f3.b(iVarA, fVarE111112, companion111111.d());
                    function2B = companion111111.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 24576;
            i22 = i11;
            i24 = i15 & 32;
            if (i24 != 0) {
                if ((196608 & i14) == 0) {
                    z11 = z10;
                    if (iVarG.a(z11)) {
                        i25 = 131072;
                    } else {
                        i25 = 65536;
                    }
                    i16 |= i25;
                }
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy111112 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111113 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN111112 = iVarG.n();
                    ComposeUiNode.Companion companion111112 = ComposeUiNode.f5224c1;
                    function0A = companion111112.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy111112, companion111112.c());
                    f3.b(iVarA, sVarN111112, companion111112.e());
                    f3.b(iVarA, fVarE111113, companion111112.d());
                    function2B = companion111112.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy111113 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111114 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN111113 = iVarG.n();
                    ComposeUiNode.Companion companion111113 = ComposeUiNode.f5224c1;
                    function0A = companion111113.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy111113, companion111113.c());
                    f3.b(iVarA, sVarN111113, companion111113.e());
                    f3.b(iVarA, fVarE111114, companion111113.d());
                    function2B = companion111113.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 196608;
            z11 = z10;
            i26 = i15 & 64;
            if (i26 != 0) {
                i16 |= 1572864;
            } else if ((i14 & 1572864) == 0) {
                if (iVarG.c(i12)) {
                    i27 = 1048576;
                } else {
                    i27 = 524288;
                }
                i16 |= i27;
            }
            i28 = i15 & 128;
            if (i28 != 0) {
                i16 |= 12582912;
            } else if ((i14 & 12582912) == 0) {
                if (iVarG.c(i13)) {
                    i29 = 8388608;
                } else {
                    i29 = 4194304;
                }
                i16 |= i29;
            }
            i30 = i15 & 256;
            if (i30 != 0) {
                i16 |= 100663296;
            } else if ((i14 & 100663296) == 0) {
                if (iVarG.A(x1Var)) {
                    i31 = 67108864;
                } else {
                    i31 = ASTNode.PCTX_STORED;
                }
                i16 |= i31;
            }
            if ((i16 & 38347923) == 38347922) {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy111114 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE111115 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN111114 = iVarG.n();
                ComposeUiNode.Companion companion111114 = ComposeUiNode.f5224c1;
                function0A = companion111114.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy111114, companion111114.c());
                f3.b(iVarA, sVarN111114, companion111114.e());
                f3.b(iVarA, fVarE111115, companion111114.d());
                function2B = companion111114.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            } else {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy111115 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE111116 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN111115 = iVarG.n();
                ComposeUiNode.Companion companion111115 = ComposeUiNode.f5224c1;
                function0A = companion111115.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy111115, companion111115.c());
                f3.b(iVarA, sVarN111115, companion111115.e());
                f3.b(iVarA, fVarE111116, companion111115.d());
                function2B = companion111115.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(i iVar2, int i38) {
                        BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                    }
                });
            }
        }
        i16 |= 3072;
        function2 = function1;
        i21 = i15 & 16;
        if (i21 != 0) {
            if ((i14 & 24576) == 0) {
                i22 = i11;
                if (iVarG.c(i22)) {
                    i23 = 16384;
                } else {
                    i23 = 8192;
                }
                i16 |= i23;
            }
            i24 = i15 & 32;
            if (i24 != 0) {
                if ((196608 & i14) == 0) {
                    z11 = z10;
                    if (iVarG.a(z11)) {
                        i25 = 131072;
                    } else {
                        i25 = 65536;
                    }
                    i16 |= i25;
                }
                i26 = i15 & 64;
                if (i26 != 0) {
                    i16 |= 1572864;
                } else if ((i14 & 1572864) == 0) {
                    if (iVarG.c(i12)) {
                        i27 = 1048576;
                    } else {
                        i27 = 524288;
                    }
                    i16 |= i27;
                }
                i28 = i15 & 128;
                if (i28 != 0) {
                    i16 |= 12582912;
                } else if ((i14 & 12582912) == 0) {
                    if (iVarG.c(i13)) {
                        i29 = 8388608;
                    } else {
                        i29 = 4194304;
                    }
                    i16 |= i29;
                }
                i30 = i15 & 256;
                if (i30 != 0) {
                    i16 |= 100663296;
                } else if ((i14 & 100663296) == 0) {
                    if (iVarG.A(x1Var)) {
                        i31 = 67108864;
                    } else {
                        i31 = ASTNode.PCTX_STORED;
                    }
                    i16 |= i31;
                }
                if ((i16 & 38347923) == 38347922) {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy111116 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111117 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN111116 = iVarG.n();
                    ComposeUiNode.Companion companion111116 = ComposeUiNode.f5224c1;
                    function0A = companion111116.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy111116, companion111116.c());
                    f3.b(iVarA, sVarN111116, companion111116.e());
                    f3.b(iVarA, fVarE111117, companion111116.d());
                    function2B = companion111116.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                } else {
                    if (i37 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    } else {
                        fVar2 = fVar;
                    }
                    if (i17 != 0) {
                        d0VarA = d0.f6087d.a();
                    } else {
                        d0VarA = d0Var;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if (i21 != 0) {
                        iA = p.f6442a.a();
                    } else {
                        iA = i22;
                    }
                    if (i24 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i26 != 0) {
                        i32 = Integer.MAX_VALUE;
                    } else {
                        i32 = i12;
                    }
                    if (i28 == 0) {
                    }
                    if (i30 == 0) {
                    }
                    if (k.H()) {
                        k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                    }
                    a.a(i33, i32);
                    android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                    iVarG.P(-1588686502);
                    iVarG.K();
                    if (function2 != null) {
                        iVarG.P(-1588564052);
                        fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                        iVarG.K();
                        i34 = i32;
                    } else {
                        iVarG.P(-1587866335);
                        i34 = i32;
                        fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                        iVarG.K();
                    }
                    EmptyMeasurePolicy emptyMeasurePolicy111117 = EmptyMeasurePolicy.f3192a;
                    iA2 = g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111118 = ComposedModifierKt.e(iVarG, fVarE);
                    s sVarN111117 = iVarG.n();
                    ComposeUiNode.Companion companion111117 = ComposeUiNode.f5224c1;
                    function0A = companion111117.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, emptyMeasurePolicy111117, companion111117.c());
                    f3.b(iVarA, sVarN111117, companion111117.e());
                    f3.b(iVarA, fVarE111118, companion111117.d());
                    function2B = companion111117.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA2));
                        iVarA.k(Integer.valueOf(iA2), function2B);
                    }
                    iVarG.r();
                    if (k.H()) {
                        k.P();
                    }
                    fVar3 = fVar2;
                    d0Var2 = d0VarA;
                    i35 = iA;
                    function3 = function2;
                    i36 = i34;
                    x1Var3 = x1Var2;
                    z13 = z12;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(i iVar2, int i38) {
                            BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                        }
                    });
                }
            }
            i16 |= 196608;
            z11 = z10;
            i26 = i15 & 64;
            if (i26 != 0) {
                i16 |= 1572864;
            } else if ((i14 & 1572864) == 0) {
                if (iVarG.c(i12)) {
                    i27 = 1048576;
                } else {
                    i27 = 524288;
                }
                i16 |= i27;
            }
            i28 = i15 & 128;
            if (i28 != 0) {
                i16 |= 12582912;
            } else if ((i14 & 12582912) == 0) {
                if (iVarG.c(i13)) {
                    i29 = 8388608;
                } else {
                    i29 = 4194304;
                }
                i16 |= i29;
            }
            i30 = i15 & 256;
            if (i30 != 0) {
                i16 |= 100663296;
            } else if ((i14 & 100663296) == 0) {
                if (iVarG.A(x1Var)) {
                    i31 = 67108864;
                } else {
                    i31 = ASTNode.PCTX_STORED;
                }
                i16 |= i31;
            }
            if ((i16 & 38347923) == 38347922) {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy111118 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE111119 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN111118 = iVarG.n();
                ComposeUiNode.Companion companion111118 = ComposeUiNode.f5224c1;
                function0A = companion111118.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy111118, companion111118.c());
                f3.b(iVarA, sVarN111118, companion111118.e());
                f3.b(iVarA, fVarE111119, companion111118.d());
                function2B = companion111118.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            } else {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy111119 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE1111110 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN111119 = iVarG.n();
                ComposeUiNode.Companion companion111119 = ComposeUiNode.f5224c1;
                function0A = companion111119.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy111119, companion111119.c());
                f3.b(iVarA, sVarN111119, companion111119.e());
                f3.b(iVarA, fVarE1111110, companion111119.d());
                function2B = companion111119.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(i iVar2, int i38) {
                        BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                    }
                });
            }
        }
        i16 |= 24576;
        i22 = i11;
        i24 = i15 & 32;
        if (i24 != 0) {
            if ((196608 & i14) == 0) {
                z11 = z10;
                if (iVarG.a(z11)) {
                    i25 = 131072;
                } else {
                    i25 = 65536;
                }
                i16 |= i25;
            }
            i26 = i15 & 64;
            if (i26 != 0) {
                i16 |= 1572864;
            } else if ((i14 & 1572864) == 0) {
                if (iVarG.c(i12)) {
                    i27 = 1048576;
                } else {
                    i27 = 524288;
                }
                i16 |= i27;
            }
            i28 = i15 & 128;
            if (i28 != 0) {
                i16 |= 12582912;
            } else if ((i14 & 12582912) == 0) {
                if (iVarG.c(i13)) {
                    i29 = 8388608;
                } else {
                    i29 = 4194304;
                }
                i16 |= i29;
            }
            i30 = i15 & 256;
            if (i30 != 0) {
                i16 |= 100663296;
            } else if ((i14 & 100663296) == 0) {
                if (iVarG.A(x1Var)) {
                    i31 = 67108864;
                } else {
                    i31 = ASTNode.PCTX_STORED;
                }
                i16 |= i31;
            }
            if ((i16 & 38347923) == 38347922) {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy1111110 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE1111111 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN1111110 = iVarG.n();
                ComposeUiNode.Companion companion1111110 = ComposeUiNode.f5224c1;
                function0A = companion1111110.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy1111110, companion1111110.c());
                f3.b(iVarA, sVarN1111110, companion1111110.e());
                f3.b(iVarA, fVarE1111111, companion1111110.d());
                function2B = companion1111110.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            } else {
                if (i37 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                } else {
                    fVar2 = fVar;
                }
                if (i17 != 0) {
                    d0VarA = d0.f6087d.a();
                } else {
                    d0VarA = d0Var;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if (i21 != 0) {
                    iA = p.f6442a.a();
                } else {
                    iA = i22;
                }
                if (i24 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i26 != 0) {
                    i32 = Integer.MAX_VALUE;
                } else {
                    i32 = i12;
                }
                if (i28 == 0) {
                }
                if (i30 == 0) {
                }
                if (k.H()) {
                    k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
                }
                a.a(i33, i32);
                android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
                iVarG.P(-1588686502);
                iVarG.K();
                if (function2 != null) {
                    iVarG.P(-1588564052);
                    fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                    iVarG.K();
                    i34 = i32;
                } else {
                    iVarG.P(-1587866335);
                    i34 = i32;
                    fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                    iVarG.K();
                }
                EmptyMeasurePolicy emptyMeasurePolicy1111111 = EmptyMeasurePolicy.f3192a;
                iA2 = g.a(iVarG, 0);
                androidx.compose.ui.f fVarE1111112 = ComposedModifierKt.e(iVarG, fVarE);
                s sVarN1111111 = iVarG.n();
                ComposeUiNode.Companion companion1111111 = ComposeUiNode.f5224c1;
                function0A = companion1111111.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, emptyMeasurePolicy1111111, companion1111111.c());
                f3.b(iVarA, sVarN1111111, companion1111111.e());
                f3.b(iVarA, fVarE1111112, companion1111111.d());
                function2B = companion1111111.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA2));
                    iVarA.k(Integer.valueOf(iA2), function2B);
                }
                iVarG.r();
                if (k.H()) {
                    k.P();
                }
                fVar3 = fVar2;
                d0Var2 = d0VarA;
                i35 = iA;
                function3 = function2;
                i36 = i34;
                x1Var3 = x1Var2;
                z13 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(i iVar2, int i38) {
                        BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                    }
                });
            }
        }
        i16 |= 196608;
        z11 = z10;
        i26 = i15 & 64;
        if (i26 != 0) {
            i16 |= 1572864;
        } else if ((i14 & 1572864) == 0) {
            if (iVarG.c(i12)) {
                i27 = 1048576;
            } else {
                i27 = 524288;
            }
            i16 |= i27;
        }
        i28 = i15 & 128;
        if (i28 != 0) {
            i16 |= 12582912;
        } else if ((i14 & 12582912) == 0) {
            if (iVarG.c(i13)) {
                i29 = 8388608;
            } else {
                i29 = 4194304;
            }
            i16 |= i29;
        }
        i30 = i15 & 256;
        if (i30 != 0) {
            i16 |= 100663296;
        } else if ((i14 & 100663296) == 0) {
            if (iVarG.A(x1Var)) {
                i31 = 67108864;
            } else {
                i31 = ASTNode.PCTX_STORED;
            }
            i16 |= i31;
        }
        if ((i16 & 38347923) == 38347922) {
            if (i37 != 0) {
                fVar2 = androidx.compose.ui.f.f4178a;
            } else {
                fVar2 = fVar;
            }
            if (i17 != 0) {
                d0VarA = d0.f6087d.a();
            } else {
                d0VarA = d0Var;
            }
            if (i19 != 0) {
                function2 = null;
            }
            if (i21 != 0) {
                iA = p.f6442a.a();
            } else {
                iA = i22;
            }
            if (i24 != 0) {
                z12 = true;
            } else {
                z12 = z11;
            }
            if (i26 != 0) {
                i32 = Integer.MAX_VALUE;
            } else {
                i32 = i12;
            }
            if (i28 == 0) {
            }
            if (i30 == 0) {
            }
            if (k.H()) {
                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
            }
            a.a(i33, i32);
            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
            iVarG.P(-1588686502);
            iVarG.K();
            if (function2 != null) {
                iVarG.P(-1588564052);
                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                iVarG.K();
                i34 = i32;
            } else {
                iVarG.P(-1587866335);
                i34 = i32;
                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                iVarG.K();
            }
            EmptyMeasurePolicy emptyMeasurePolicy1111112 = EmptyMeasurePolicy.f3192a;
            iA2 = g.a(iVarG, 0);
            androidx.compose.ui.f fVarE1111113 = ComposedModifierKt.e(iVarG, fVarE);
            s sVarN1111112 = iVarG.n();
            ComposeUiNode.Companion companion1111112 = ComposeUiNode.f5224c1;
            function0A = companion1111112.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            iVarA = f3.a(iVarG);
            f3.b(iVarA, emptyMeasurePolicy1111112, companion1111112.c());
            f3.b(iVarA, sVarN1111112, companion1111112.e());
            f3.b(iVarA, fVarE1111113, companion1111112.d());
            function2B = companion1111112.b();
            if (iVarA.e()) {
                iVarA.p(Integer.valueOf(iA2));
                iVarA.k(Integer.valueOf(iA2), function2B);
            } else {
                iVarA.p(Integer.valueOf(iA2));
                iVarA.k(Integer.valueOf(iA2), function2B);
            }
            iVarG.r();
            if (k.H()) {
                k.P();
            }
            fVar3 = fVar2;
            d0Var2 = d0VarA;
            i35 = iA;
            function3 = function2;
            i36 = i34;
            x1Var3 = x1Var2;
            z13 = z12;
        } else {
            if (i37 != 0) {
                fVar2 = androidx.compose.ui.f.f4178a;
            } else {
                fVar2 = fVar;
            }
            if (i17 != 0) {
                d0VarA = d0.f6087d.a();
            } else {
                d0VarA = d0Var;
            }
            if (i19 != 0) {
                function2 = null;
            }
            if (i21 != 0) {
                iA = p.f6442a.a();
            } else {
                iA = i22;
            }
            if (i24 != 0) {
                z12 = true;
            } else {
                z12 = z11;
            }
            if (i26 != 0) {
                i32 = Integer.MAX_VALUE;
            } else {
                i32 = i12;
            }
            if (i28 == 0) {
            }
            if (i30 == 0) {
            }
            if (k.H()) {
                k.Q(-1186827822, i16, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)");
            }
            a.a(i33, i32);
            android.support.v4.media.session.c.a(iVarG.l(SelectionRegistrarKt.a()));
            iVarG.P(-1588686502);
            iVarG.K();
            if (function2 != null) {
                iVarG.P(-1588564052);
                fVarE = b(b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null), new AnnotatedString(str, null, null, 6, null), d0VarA, function2, iA, z12, i32, i33, (h.b) iVarG.l(CompositionLocalsKt.d()), null, null, null, x1Var2, null);
                iVarG.K();
                i34 = i32;
            } else {
                iVarG.P(-1587866335);
                i34 = i32;
                fVarE = b4.b(fVar2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null).e(new TextStringSimpleElement(str, d0VarA, (h.b) iVarG.l(CompositionLocalsKt.d()), iA, z12, i34, i33, x1Var2, null));
                iVarG.K();
            }
            EmptyMeasurePolicy emptyMeasurePolicy1111113 = EmptyMeasurePolicy.f3192a;
            iA2 = g.a(iVarG, 0);
            androidx.compose.ui.f fVarE1111114 = ComposedModifierKt.e(iVarG, fVarE);
            s sVarN1111113 = iVarG.n();
            ComposeUiNode.Companion companion1111113 = ComposeUiNode.f5224c1;
            function0A = companion1111113.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            iVarA = f3.a(iVarG);
            f3.b(iVarA, emptyMeasurePolicy1111113, companion1111113.c());
            f3.b(iVarA, sVarN1111113, companion1111113.e());
            f3.b(iVarA, fVarE1111114, companion1111113.d());
            function2B = companion1111113.b();
            if (iVarA.e()) {
                iVarA.p(Integer.valueOf(iA2));
                iVarA.k(Integer.valueOf(iA2), function2B);
            } else {
                iVarA.p(Integer.valueOf(iA2));
                iVarA.k(Integer.valueOf(iA2), function2B);
            }
            iVarG.r();
            if (k.H()) {
                k.P();
            }
            fVar3 = fVar2;
            d0Var2 = d0VarA;
            i35 = iA;
            function3 = function2;
            i36 = i34;
            x1Var3 = x1Var2;
            z13 = z12;
        }
        g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(i iVar2, int i38) {
                    BasicTextKt.a(str, fVar3, d0Var2, function3, i35, z13, i36, i33, x1Var3, iVar2, v1.a(i14 | 1), i15);
                }
            });
        }
    }

    private static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, AnnotatedString annotatedString, d0 d0Var, Function1 function1, int i11, boolean z10, int i12, int i13, h.b bVar, List list, Function1 function2, androidx.compose.foundation.text.modifiers.h hVar, x1 x1Var, Function1 function3) {
        return fVar.e(androidx.compose.ui.f.f4178a).e(new TextAnnotatedStringElement(annotatedString, d0Var, bVar, function1, i11, z10, i12, i13, list, function2, null, x1Var, function3, null));
    }
}
