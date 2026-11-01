package androidx.compose.foundation;

import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageKt {
    /* JADX WARN: Code duplicated, block: B:102:0x011c  */
    /* JADX WARN: Code duplicated, block: B:104:0x012b  */
    /* JADX WARN: Code duplicated, block: B:105:0x012d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0134  */
    /* JADX WARN: Code duplicated, block: B:110:0x013c  */
    /* JADX WARN: Code duplicated, block: B:112:0x014e  */
    /* JADX WARN: Code duplicated, block: B:115:0x018d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0199  */
    /* JADX WARN: Code duplicated, block: B:119:0x019d  */
    /* JADX WARN: Code duplicated, block: B:122:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:124:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:127:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:131:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:133:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x0099  */
    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:92:0x0102  */
    /* JADX WARN: Code duplicated, block: B:93:0x0105  */
    /* JADX WARN: Code duplicated, block: B:96:0x0109  */
    /* JADX WARN: Code duplicated, block: B:99:0x0110  */
    public static final void a(final Painter painter, final String str, androidx.compose.ui.f fVar, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f11, v1 v1Var, androidx.compose.runtime.i iVar, final int i11, final int i12) {
        int i13;
        androidx.compose.ui.f fVar2;
        int i14;
        androidx.compose.ui.b bVar2;
        int i15;
        int i16;
        androidx.compose.ui.layout.e eVar2;
        int i17;
        int i18;
        float f12;
        int i19;
        int i20;
        v1 v1Var2;
        int i21;
        androidx.compose.ui.b bVarD;
        androidx.compose.ui.layout.e eVarA;
        float f13;
        androidx.compose.ui.f fVarC;
        int iA;
        Function0 function0A;
        androidx.compose.runtime.i iVarA;
        Function2 function2B;
        final androidx.compose.ui.b bVar3;
        final androidx.compose.ui.layout.e eVar3;
        final androidx.compose.ui.f fVar3;
        final v1 v1Var3;
        final float f14;
        boolean z10;
        Object objY;
        g2 g2VarJ;
        androidx.compose.runtime.i iVarG = iVar.g(1142754848);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.A(painter) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i11 & 48) == 0) {
            i13 |= iVarG.O(str) ? 32 : 16;
        }
        int i22 = i12 & 4;
        if (i22 == 0) {
            if ((i11 & 384) == 0) {
                fVar2 = fVar;
                i13 |= iVarG.O(fVar2) ? 256 : 128;
            }
            i14 = i12 & 8;
            if (i14 != 0) {
                if ((i11 & 3072) == 0) {
                    bVar2 = bVar;
                    if (iVarG.O(bVar2)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i13 |= i15;
                }
                i16 = i12 & 16;
                if (i16 != 0) {
                    if ((i11 & 24576) == 0) {
                        eVar2 = eVar;
                        if (iVarG.O(eVar2)) {
                            i17 = 16384;
                        } else {
                            i17 = 8192;
                        }
                        i13 |= i17;
                    }
                    i18 = i12 & 32;
                    if (i18 != 0) {
                        if ((196608 & i11) == 0) {
                            f12 = f11;
                            if (iVarG.b(f12)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                            i13 |= i19;
                        }
                        i20 = i12 & 64;
                        if (i20 != 0) {
                            i13 |= 1572864;
                            v1Var2 = v1Var;
                        } else {
                            v1Var2 = v1Var;
                            if ((i11 & 1572864) == 0) {
                                if (iVarG.O(v1Var2)) {
                                    i21 = 1048576;
                                } else {
                                    i21 = 524288;
                                }
                                i13 |= i21;
                            }
                        }
                        if ((i13 & 599187) == 599186 || !iVarG.h()) {
                            if (i22 != 0) {
                                fVar2 = androidx.compose.ui.f.f4178a;
                            }
                            if (i14 != 0) {
                                bVarD = androidx.compose.ui.b.f4087a.d();
                            } else {
                                bVarD = bVar2;
                            }
                            if (i16 != 0) {
                                eVarA = androidx.compose.ui.layout.e.f5176a.a();
                            } else {
                                eVarA = eVar2;
                            }
                            if (i18 != 0) {
                                f13 = 1.0f;
                            } else {
                                f13 = f12;
                            }
                            if (i20 != 0) {
                                v1Var2 = null;
                            }
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                            }
                            if (str != null) {
                                iVarG.P(1040258775);
                                androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f4178a;
                                if ((i13 & 112) == 32) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                objY = iVarG.y();
                                if (z10 || objY == androidx.compose.runtime.i.f3736a.a()) {
                                    objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                            invoke((androidx.compose.ui.semantics.n) obj);
                                            return Unit.f67061a;
                                        }

                                        public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                            SemanticsPropertiesKt.v(nVar, str);
                                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                        }
                                    };
                                    iVarG.p(objY);
                                }
                                fVarC = androidx.compose.ui.semantics.k.c(aVar, false, (Function1) objY, 1, null);
                                iVarG.K();
                            } else {
                                iVarG.P(1040398089);
                                iVarG.K();
                                fVarC = androidx.compose.ui.f.f4178a;
                            }
                            androidx.compose.ui.f fVarB = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                            ImageKt$Image$1 imageKt$Image$1 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                                @Override // androidx.compose.ui.layout.t
                                public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                    return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                            invoke((androidx.compose.ui.layout.g0.a) obj);
                                            return Unit.f67061a;
                                        }

                                        public final void invoke(androidx.compose.ui.layout.g0.a aVar2) {
                                        }
                                    }, 4, null);
                                }
                            };
                            iA = androidx.compose.runtime.g.a(iVarG, 0);
                            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVarG, fVarB);
                            androidx.compose.runtime.s sVarN = iVarG.n();
                            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
                            function0A = companion.a();
                            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                                androidx.compose.runtime.g.b();
                            }
                            iVarG.C();
                            if (iVarG.e()) {
                                iVarG.F(function0A);
                            } else {
                                iVarG.o();
                            }
                            iVarA = f3.a(iVarG);
                            f3.b(iVarA, imageKt$Image$1, companion.c());
                            f3.b(iVarA, sVarN, companion.e());
                            f3.b(iVarA, fVarE, companion.d());
                            function2B = companion.b();
                            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                                iVarA.p(Integer.valueOf(iA));
                                iVarA.k(Integer.valueOf(iA), function2B);
                            }
                            iVarG.r();
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.P();
                            }
                            bVar3 = bVarD;
                            float f15 = f13;
                            eVar3 = eVarA;
                            fVar3 = fVar2;
                            v1Var3 = v1Var2;
                            f14 = f15;
                        } else {
                            iVarG.G();
                            fVar3 = fVar2;
                            bVar3 = bVar2;
                            eVar3 = eVar2;
                            v1Var3 = v1Var2;
                            f14 = f12;
                        }
                        g2VarJ = iVarG.j();
                        if (g2VarJ != null) {
                            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                                    ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                                }
                            });
                        }
                    }
                    i13 |= 196608;
                    f12 = f11;
                    i20 = i12 & 64;
                    if (i20 != 0) {
                        i13 |= 1572864;
                        v1Var2 = v1Var;
                    } else {
                        v1Var2 = v1Var;
                        if ((i11 & 1572864) == 0) {
                            if (iVarG.O(v1Var2)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i13 |= i21;
                        }
                    }
                    if ((i13 & 599187) == 599186) {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar2 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar2, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB2 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$2 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar3) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE2 = ComposedModifierKt.e(iVarG, fVarB2);
                        androidx.compose.runtime.s sVarN2 = iVarG.n();
                        ComposeUiNode.Companion companion2 = ComposeUiNode.f5224c1;
                        function0A = companion2.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$2, companion2.c());
                        f3.b(iVarA, sVarN2, companion2.e());
                        f3.b(iVarA, fVarE2, companion2.d());
                        function2B = companion2.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f16 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f16;
                    } else {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar3 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar3, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB3 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$3 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar4) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE3 = ComposedModifierKt.e(iVarG, fVarB3);
                        androidx.compose.runtime.s sVarN3 = iVarG.n();
                        ComposeUiNode.Companion companion3 = ComposeUiNode.f5224c1;
                        function0A = companion3.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$3, companion3.c());
                        f3.b(iVarA, sVarN3, companion3.e());
                        f3.b(iVarA, fVarE3, companion3.d());
                        function2B = companion3.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f17 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f17;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                                ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                            }
                        });
                    }
                }
                i13 |= 24576;
                eVar2 = eVar;
                i18 = i12 & 32;
                if (i18 != 0) {
                    if ((196608 & i11) == 0) {
                        f12 = f11;
                        if (iVarG.b(f12)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                        i13 |= i19;
                    }
                    i20 = i12 & 64;
                    if (i20 != 0) {
                        i13 |= 1572864;
                        v1Var2 = v1Var;
                    } else {
                        v1Var2 = v1Var;
                        if ((i11 & 1572864) == 0) {
                            if (iVarG.O(v1Var2)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i13 |= i21;
                        }
                    }
                    if ((i13 & 599187) == 599186) {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar4 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar4, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB4 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$4 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar5) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE4 = ComposedModifierKt.e(iVarG, fVarB4);
                        androidx.compose.runtime.s sVarN4 = iVarG.n();
                        ComposeUiNode.Companion companion4 = ComposeUiNode.f5224c1;
                        function0A = companion4.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$4, companion4.c());
                        f3.b(iVarA, sVarN4, companion4.e());
                        f3.b(iVarA, fVarE4, companion4.d());
                        function2B = companion4.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f18 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f18;
                    } else {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar5 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar5, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB5 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$5 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar6) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE5 = ComposedModifierKt.e(iVarG, fVarB5);
                        androidx.compose.runtime.s sVarN5 = iVarG.n();
                        ComposeUiNode.Companion companion5 = ComposeUiNode.f5224c1;
                        function0A = companion5.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$5, companion5.c());
                        f3.b(iVarA, sVarN5, companion5.e());
                        f3.b(iVarA, fVarE5, companion5.d());
                        function2B = companion5.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f19 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f19;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                                ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                            }
                        });
                    }
                }
                i13 |= 196608;
                f12 = f11;
                i20 = i12 & 64;
                if (i20 != 0) {
                    i13 |= 1572864;
                    v1Var2 = v1Var;
                } else {
                    v1Var2 = v1Var;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.O(v1Var2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                }
                if ((i13 & 599187) == 599186) {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar6 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar6, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB6 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$6 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar7) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE6 = ComposedModifierKt.e(iVarG, fVarB6);
                    androidx.compose.runtime.s sVarN6 = iVarG.n();
                    ComposeUiNode.Companion companion6 = ComposeUiNode.f5224c1;
                    function0A = companion6.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$6, companion6.c());
                    f3.b(iVarA, sVarN6, companion6.e());
                    f3.b(iVarA, fVarE6, companion6.d());
                    function2B = companion6.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f110 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f110;
                } else {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar7 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar7, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB7 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$7 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar8) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE7 = ComposedModifierKt.e(iVarG, fVarB7);
                    androidx.compose.runtime.s sVarN7 = iVarG.n();
                    ComposeUiNode.Companion companion7 = ComposeUiNode.f5224c1;
                    function0A = companion7.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$7, companion7.c());
                    f3.b(iVarA, sVarN7, companion7.e());
                    f3.b(iVarA, fVarE7, companion7.d());
                    function2B = companion7.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f111 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f111;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                            ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 3072;
            bVar2 = bVar;
            i16 = i12 & 16;
            if (i16 != 0) {
                if ((i11 & 24576) == 0) {
                    eVar2 = eVar;
                    if (iVarG.O(eVar2)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i13 |= i17;
                }
                i18 = i12 & 32;
                if (i18 != 0) {
                    if ((196608 & i11) == 0) {
                        f12 = f11;
                        if (iVarG.b(f12)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                        i13 |= i19;
                    }
                    i20 = i12 & 64;
                    if (i20 != 0) {
                        i13 |= 1572864;
                        v1Var2 = v1Var;
                    } else {
                        v1Var2 = v1Var;
                        if ((i11 & 1572864) == 0) {
                            if (iVarG.O(v1Var2)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i13 |= i21;
                        }
                    }
                    if ((i13 & 599187) == 599186) {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar8 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar8, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB8 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$8 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar9) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE8 = ComposedModifierKt.e(iVarG, fVarB8);
                        androidx.compose.runtime.s sVarN8 = iVarG.n();
                        ComposeUiNode.Companion companion8 = ComposeUiNode.f5224c1;
                        function0A = companion8.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$8, companion8.c());
                        f3.b(iVarA, sVarN8, companion8.e());
                        f3.b(iVarA, fVarE8, companion8.d());
                        function2B = companion8.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f112 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f112;
                    } else {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar9 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar9, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB9 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$9 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar10) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE9 = ComposedModifierKt.e(iVarG, fVarB9);
                        androidx.compose.runtime.s sVarN9 = iVarG.n();
                        ComposeUiNode.Companion companion9 = ComposeUiNode.f5224c1;
                        function0A = companion9.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$9, companion9.c());
                        f3.b(iVarA, sVarN9, companion9.e());
                        f3.b(iVarA, fVarE9, companion9.d());
                        function2B = companion9.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f113 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f113;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                                ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                            }
                        });
                    }
                }
                i13 |= 196608;
                f12 = f11;
                i20 = i12 & 64;
                if (i20 != 0) {
                    i13 |= 1572864;
                    v1Var2 = v1Var;
                } else {
                    v1Var2 = v1Var;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.O(v1Var2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                }
                if ((i13 & 599187) == 599186) {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar10 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar10, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB10 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$10 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar11) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE10 = ComposedModifierKt.e(iVarG, fVarB10);
                    androidx.compose.runtime.s sVarN10 = iVarG.n();
                    ComposeUiNode.Companion companion10 = ComposeUiNode.f5224c1;
                    function0A = companion10.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$10, companion10.c());
                    f3.b(iVarA, sVarN10, companion10.e());
                    f3.b(iVarA, fVarE10, companion10.d());
                    function2B = companion10.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f114 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f114;
                } else {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar11 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar11, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB11 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$11 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar12) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE11 = ComposedModifierKt.e(iVarG, fVarB11);
                    androidx.compose.runtime.s sVarN11 = iVarG.n();
                    ComposeUiNode.Companion companion11 = ComposeUiNode.f5224c1;
                    function0A = companion11.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$11, companion11.c());
                    f3.b(iVarA, sVarN11, companion11.e());
                    f3.b(iVarA, fVarE11, companion11.d());
                    function2B = companion11.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f115 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f115;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                            ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 24576;
            eVar2 = eVar;
            i18 = i12 & 32;
            if (i18 != 0) {
                if ((196608 & i11) == 0) {
                    f12 = f11;
                    if (iVarG.b(f12)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                    i13 |= i19;
                }
                i20 = i12 & 64;
                if (i20 != 0) {
                    i13 |= 1572864;
                    v1Var2 = v1Var;
                } else {
                    v1Var2 = v1Var;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.O(v1Var2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                }
                if ((i13 & 599187) == 599186) {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar12 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar12, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB12 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$12 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar13) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE12 = ComposedModifierKt.e(iVarG, fVarB12);
                    androidx.compose.runtime.s sVarN12 = iVarG.n();
                    ComposeUiNode.Companion companion12 = ComposeUiNode.f5224c1;
                    function0A = companion12.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$12, companion12.c());
                    f3.b(iVarA, sVarN12, companion12.e());
                    f3.b(iVarA, fVarE12, companion12.d());
                    function2B = companion12.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f116 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f116;
                } else {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar13 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar13, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB13 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$13 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar14) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE13 = ComposedModifierKt.e(iVarG, fVarB13);
                    androidx.compose.runtime.s sVarN13 = iVarG.n();
                    ComposeUiNode.Companion companion13 = ComposeUiNode.f5224c1;
                    function0A = companion13.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$13, companion13.c());
                    f3.b(iVarA, sVarN13, companion13.e());
                    f3.b(iVarA, fVarE13, companion13.d());
                    function2B = companion13.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f117 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f117;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                            ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 196608;
            f12 = f11;
            i20 = i12 & 64;
            if (i20 != 0) {
                i13 |= 1572864;
                v1Var2 = v1Var;
            } else {
                v1Var2 = v1Var;
                if ((i11 & 1572864) == 0) {
                    if (iVarG.O(v1Var2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
            }
            if ((i13 & 599187) == 599186) {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar14 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar14, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB14 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$14 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar15) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE14 = ComposedModifierKt.e(iVarG, fVarB14);
                androidx.compose.runtime.s sVarN14 = iVarG.n();
                ComposeUiNode.Companion companion14 = ComposeUiNode.f5224c1;
                function0A = companion14.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$14, companion14.c());
                f3.b(iVarA, sVarN14, companion14.e());
                f3.b(iVarA, fVarE14, companion14.d());
                function2B = companion14.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f118 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f118;
            } else {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar15 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar15, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB15 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$15 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar16) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE15 = ComposedModifierKt.e(iVarG, fVarB15);
                androidx.compose.runtime.s sVarN15 = iVarG.n();
                ComposeUiNode.Companion companion15 = ComposeUiNode.f5224c1;
                function0A = companion15.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$15, companion15.c());
                f3.b(iVarA, sVarN15, companion15.e());
                f3.b(iVarA, fVarE15, companion15.d());
                function2B = companion15.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f119 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f119;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                        ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 384;
        fVar2 = fVar;
        i14 = i12 & 8;
        if (i14 != 0) {
            if ((i11 & 3072) == 0) {
                bVar2 = bVar;
                if (iVarG.O(bVar2)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i13 |= i15;
            }
            i16 = i12 & 16;
            if (i16 != 0) {
                if ((i11 & 24576) == 0) {
                    eVar2 = eVar;
                    if (iVarG.O(eVar2)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i13 |= i17;
                }
                i18 = i12 & 32;
                if (i18 != 0) {
                    if ((196608 & i11) == 0) {
                        f12 = f11;
                        if (iVarG.b(f12)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                        i13 |= i19;
                    }
                    i20 = i12 & 64;
                    if (i20 != 0) {
                        i13 |= 1572864;
                        v1Var2 = v1Var;
                    } else {
                        v1Var2 = v1Var;
                        if ((i11 & 1572864) == 0) {
                            if (iVarG.O(v1Var2)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i13 |= i21;
                        }
                    }
                    if ((i13 & 599187) == 599186) {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar16 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar16, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB16 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$16 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar17) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE16 = ComposedModifierKt.e(iVarG, fVarB16);
                        androidx.compose.runtime.s sVarN16 = iVarG.n();
                        ComposeUiNode.Companion companion16 = ComposeUiNode.f5224c1;
                        function0A = companion16.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$16, companion16.c());
                        f3.b(iVarA, sVarN16, companion16.e());
                        f3.b(iVarA, fVarE16, companion16.d());
                        function2B = companion16.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f1110 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f1110;
                    } else {
                        if (i22 != 0) {
                            fVar2 = androidx.compose.ui.f.f4178a;
                        }
                        if (i14 != 0) {
                            bVarD = androidx.compose.ui.b.f4087a.d();
                        } else {
                            bVarD = bVar2;
                        }
                        if (i16 != 0) {
                            eVarA = androidx.compose.ui.layout.e.f5176a.a();
                        } else {
                            eVarA = eVar2;
                        }
                        if (i18 != 0) {
                            f13 = 1.0f;
                        } else {
                            f13 = f12;
                        }
                        if (i20 != 0) {
                            v1Var2 = null;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                        }
                        if (str != null) {
                            iVarG.P(1040258775);
                            androidx.compose.ui.f.a aVar17 = androidx.compose.ui.f.f4178a;
                            if ((i13 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            objY = iVarG.y();
                            if (z10) {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            } else {
                                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.semantics.n) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                        SemanticsPropertiesKt.v(nVar, str);
                                        SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                    }
                                };
                                iVarG.p(objY);
                            }
                            fVarC = androidx.compose.ui.semantics.k.c(aVar17, false, (Function1) objY, 1, null);
                            iVarG.K();
                        } else {
                            iVarG.P(1040398089);
                            iVarG.K();
                            fVarC = androidx.compose.ui.f.f4178a;
                        }
                        androidx.compose.ui.f fVarB17 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                        ImageKt$Image$1 imageKt$Image$17 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                            @Override // androidx.compose.ui.layout.t
                            public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                                return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((androidx.compose.ui.layout.g0.a) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(androidx.compose.ui.layout.g0.a aVar18) {
                                    }
                                }, 4, null);
                            }
                        };
                        iA = androidx.compose.runtime.g.a(iVarG, 0);
                        androidx.compose.ui.f fVarE17 = ComposedModifierKt.e(iVarG, fVarB17);
                        androidx.compose.runtime.s sVarN17 = iVarG.n();
                        ComposeUiNode.Companion companion17 = ComposeUiNode.f5224c1;
                        function0A = companion17.a();
                        if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                            androidx.compose.runtime.g.b();
                        }
                        iVarG.C();
                        if (iVarG.e()) {
                            iVarG.F(function0A);
                        } else {
                            iVarG.o();
                        }
                        iVarA = f3.a(iVarG);
                        f3.b(iVarA, imageKt$Image$17, companion17.c());
                        f3.b(iVarA, sVarN17, companion17.e());
                        f3.b(iVarA, fVarE17, companion17.d());
                        function2B = companion17.b();
                        if (iVarA.e()) {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        } else {
                            iVarA.p(Integer.valueOf(iA));
                            iVarA.k(Integer.valueOf(iA), function2B);
                        }
                        iVarG.r();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        bVar3 = bVarD;
                        float f1111 = f13;
                        eVar3 = eVarA;
                        fVar3 = fVar2;
                        v1Var3 = v1Var2;
                        f14 = f1111;
                    }
                    g2VarJ = iVarG.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                                ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                            }
                        });
                    }
                }
                i13 |= 196608;
                f12 = f11;
                i20 = i12 & 64;
                if (i20 != 0) {
                    i13 |= 1572864;
                    v1Var2 = v1Var;
                } else {
                    v1Var2 = v1Var;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.O(v1Var2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                }
                if ((i13 & 599187) == 599186) {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar18 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar18, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB18 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$18 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar19) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE18 = ComposedModifierKt.e(iVarG, fVarB18);
                    androidx.compose.runtime.s sVarN18 = iVarG.n();
                    ComposeUiNode.Companion companion18 = ComposeUiNode.f5224c1;
                    function0A = companion18.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$18, companion18.c());
                    f3.b(iVarA, sVarN18, companion18.e());
                    f3.b(iVarA, fVarE18, companion18.d());
                    function2B = companion18.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f1112 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f1112;
                } else {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar19 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar19, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB19 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$19 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar110) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE19 = ComposedModifierKt.e(iVarG, fVarB19);
                    androidx.compose.runtime.s sVarN19 = iVarG.n();
                    ComposeUiNode.Companion companion19 = ComposeUiNode.f5224c1;
                    function0A = companion19.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$19, companion19.c());
                    f3.b(iVarA, sVarN19, companion19.e());
                    f3.b(iVarA, fVarE19, companion19.d());
                    function2B = companion19.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f1113 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f1113;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                            ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 24576;
            eVar2 = eVar;
            i18 = i12 & 32;
            if (i18 != 0) {
                if ((196608 & i11) == 0) {
                    f12 = f11;
                    if (iVarG.b(f12)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                    i13 |= i19;
                }
                i20 = i12 & 64;
                if (i20 != 0) {
                    i13 |= 1572864;
                    v1Var2 = v1Var;
                } else {
                    v1Var2 = v1Var;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.O(v1Var2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                }
                if ((i13 & 599187) == 599186) {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar110 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar110, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB110 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$110 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar111) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE110 = ComposedModifierKt.e(iVarG, fVarB110);
                    androidx.compose.runtime.s sVarN110 = iVarG.n();
                    ComposeUiNode.Companion companion110 = ComposeUiNode.f5224c1;
                    function0A = companion110.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$110, companion110.c());
                    f3.b(iVarA, sVarN110, companion110.e());
                    f3.b(iVarA, fVarE110, companion110.d());
                    function2B = companion110.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f1114 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f1114;
                } else {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar111 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar111, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB111 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$111 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar112) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE111 = ComposedModifierKt.e(iVarG, fVarB111);
                    androidx.compose.runtime.s sVarN111 = iVarG.n();
                    ComposeUiNode.Companion companion111 = ComposeUiNode.f5224c1;
                    function0A = companion111.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$111, companion111.c());
                    f3.b(iVarA, sVarN111, companion111.e());
                    f3.b(iVarA, fVarE111, companion111.d());
                    function2B = companion111.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f1115 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f1115;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                            ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 196608;
            f12 = f11;
            i20 = i12 & 64;
            if (i20 != 0) {
                i13 |= 1572864;
                v1Var2 = v1Var;
            } else {
                v1Var2 = v1Var;
                if ((i11 & 1572864) == 0) {
                    if (iVarG.O(v1Var2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
            }
            if ((i13 & 599187) == 599186) {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar112 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar112, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB112 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$112 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar113) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE112 = ComposedModifierKt.e(iVarG, fVarB112);
                androidx.compose.runtime.s sVarN112 = iVarG.n();
                ComposeUiNode.Companion companion112 = ComposeUiNode.f5224c1;
                function0A = companion112.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$112, companion112.c());
                f3.b(iVarA, sVarN112, companion112.e());
                f3.b(iVarA, fVarE112, companion112.d());
                function2B = companion112.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f1116 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f1116;
            } else {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar113 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar113, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB113 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$113 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar114) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE113 = ComposedModifierKt.e(iVarG, fVarB113);
                androidx.compose.runtime.s sVarN113 = iVarG.n();
                ComposeUiNode.Companion companion113 = ComposeUiNode.f5224c1;
                function0A = companion113.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$113, companion113.c());
                f3.b(iVarA, sVarN113, companion113.e());
                f3.b(iVarA, fVarE113, companion113.d());
                function2B = companion113.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f1117 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f1117;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                        ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 3072;
        bVar2 = bVar;
        i16 = i12 & 16;
        if (i16 != 0) {
            if ((i11 & 24576) == 0) {
                eVar2 = eVar;
                if (iVarG.O(eVar2)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i13 |= i17;
            }
            i18 = i12 & 32;
            if (i18 != 0) {
                if ((196608 & i11) == 0) {
                    f12 = f11;
                    if (iVarG.b(f12)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                    i13 |= i19;
                }
                i20 = i12 & 64;
                if (i20 != 0) {
                    i13 |= 1572864;
                    v1Var2 = v1Var;
                } else {
                    v1Var2 = v1Var;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.O(v1Var2)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i13 |= i21;
                    }
                }
                if ((i13 & 599187) == 599186) {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar114 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar114, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB114 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$114 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar115) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE114 = ComposedModifierKt.e(iVarG, fVarB114);
                    androidx.compose.runtime.s sVarN114 = iVarG.n();
                    ComposeUiNode.Companion companion114 = ComposeUiNode.f5224c1;
                    function0A = companion114.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$114, companion114.c());
                    f3.b(iVarA, sVarN114, companion114.e());
                    f3.b(iVarA, fVarE114, companion114.d());
                    function2B = companion114.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f1118 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f1118;
                } else {
                    if (i22 != 0) {
                        fVar2 = androidx.compose.ui.f.f4178a;
                    }
                    if (i14 != 0) {
                        bVarD = androidx.compose.ui.b.f4087a.d();
                    } else {
                        bVarD = bVar2;
                    }
                    if (i16 != 0) {
                        eVarA = androidx.compose.ui.layout.e.f5176a.a();
                    } else {
                        eVarA = eVar2;
                    }
                    if (i18 != 0) {
                        f13 = 1.0f;
                    } else {
                        f13 = f12;
                    }
                    if (i20 != 0) {
                        v1Var2 = null;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                    }
                    if (str != null) {
                        iVarG.P(1040258775);
                        androidx.compose.ui.f.a aVar115 = androidx.compose.ui.f.f4178a;
                        if ((i13 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        objY = iVarG.y();
                        if (z10) {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        } else {
                            objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.semantics.n) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                    SemanticsPropertiesKt.v(nVar, str);
                                    SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                                }
                            };
                            iVarG.p(objY);
                        }
                        fVarC = androidx.compose.ui.semantics.k.c(aVar115, false, (Function1) objY, 1, null);
                        iVarG.K();
                    } else {
                        iVarG.P(1040398089);
                        iVarG.K();
                        fVarC = androidx.compose.ui.f.f4178a;
                    }
                    androidx.compose.ui.f fVarB115 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                    ImageKt$Image$1 imageKt$Image$115 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                        @Override // androidx.compose.ui.layout.t
                        public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                            return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                    invoke((androidx.compose.ui.layout.g0.a) obj);
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.ui.layout.g0.a aVar116) {
                                }
                            }, 4, null);
                        }
                    };
                    iA = androidx.compose.runtime.g.a(iVarG, 0);
                    androidx.compose.ui.f fVarE115 = ComposedModifierKt.e(iVarG, fVarB115);
                    androidx.compose.runtime.s sVarN115 = iVarG.n();
                    ComposeUiNode.Companion companion115 = ComposeUiNode.f5224c1;
                    function0A = companion115.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        androidx.compose.runtime.g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A);
                    } else {
                        iVarG.o();
                    }
                    iVarA = f3.a(iVarG);
                    f3.b(iVarA, imageKt$Image$115, companion115.c());
                    f3.b(iVarA, sVarN115, companion115.e());
                    f3.b(iVarA, fVarE115, companion115.d());
                    function2B = companion115.b();
                    if (iVarA.e()) {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    } else {
                        iVarA.p(Integer.valueOf(iA));
                        iVarA.k(Integer.valueOf(iA), function2B);
                    }
                    iVarG.r();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    bVar3 = bVarD;
                    float f1119 = f13;
                    eVar3 = eVarA;
                    fVar3 = fVar2;
                    v1Var3 = v1Var2;
                    f14 = f1119;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                            ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 196608;
            f12 = f11;
            i20 = i12 & 64;
            if (i20 != 0) {
                i13 |= 1572864;
                v1Var2 = v1Var;
            } else {
                v1Var2 = v1Var;
                if ((i11 & 1572864) == 0) {
                    if (iVarG.O(v1Var2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
            }
            if ((i13 & 599187) == 599186) {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar116 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar116, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB116 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$116 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar117) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE116 = ComposedModifierKt.e(iVarG, fVarB116);
                androidx.compose.runtime.s sVarN116 = iVarG.n();
                ComposeUiNode.Companion companion116 = ComposeUiNode.f5224c1;
                function0A = companion116.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$116, companion116.c());
                f3.b(iVarA, sVarN116, companion116.e());
                f3.b(iVarA, fVarE116, companion116.d());
                function2B = companion116.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f11110 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f11110;
            } else {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar117 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar117, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB117 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$117 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar118) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE117 = ComposedModifierKt.e(iVarG, fVarB117);
                androidx.compose.runtime.s sVarN117 = iVarG.n();
                ComposeUiNode.Companion companion117 = ComposeUiNode.f5224c1;
                function0A = companion117.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$117, companion117.c());
                f3.b(iVarA, sVarN117, companion117.e());
                f3.b(iVarA, fVarE117, companion117.d());
                function2B = companion117.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f11111 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f11111;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                        ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 24576;
        eVar2 = eVar;
        i18 = i12 & 32;
        if (i18 != 0) {
            if ((196608 & i11) == 0) {
                f12 = f11;
                if (iVarG.b(f12)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
                i13 |= i19;
            }
            i20 = i12 & 64;
            if (i20 != 0) {
                i13 |= 1572864;
                v1Var2 = v1Var;
            } else {
                v1Var2 = v1Var;
                if ((i11 & 1572864) == 0) {
                    if (iVarG.O(v1Var2)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i13 |= i21;
                }
            }
            if ((i13 & 599187) == 599186) {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar118 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar118, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB118 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$118 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar119) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE118 = ComposedModifierKt.e(iVarG, fVarB118);
                androidx.compose.runtime.s sVarN118 = iVarG.n();
                ComposeUiNode.Companion companion118 = ComposeUiNode.f5224c1;
                function0A = companion118.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$118, companion118.c());
                f3.b(iVarA, sVarN118, companion118.e());
                f3.b(iVarA, fVarE118, companion118.d());
                function2B = companion118.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f11112 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f11112;
            } else {
                if (i22 != 0) {
                    fVar2 = androidx.compose.ui.f.f4178a;
                }
                if (i14 != 0) {
                    bVarD = androidx.compose.ui.b.f4087a.d();
                } else {
                    bVarD = bVar2;
                }
                if (i16 != 0) {
                    eVarA = androidx.compose.ui.layout.e.f5176a.a();
                } else {
                    eVarA = eVar2;
                }
                if (i18 != 0) {
                    f13 = 1.0f;
                } else {
                    f13 = f12;
                }
                if (i20 != 0) {
                    v1Var2 = null;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
                }
                if (str != null) {
                    iVarG.P(1040258775);
                    androidx.compose.ui.f.a aVar119 = androidx.compose.ui.f.f4178a;
                    if ((i13 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    objY = iVarG.y();
                    if (z10) {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    } else {
                        objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.semantics.n) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                            }
                        };
                        iVarG.p(objY);
                    }
                    fVarC = androidx.compose.ui.semantics.k.c(aVar119, false, (Function1) objY, 1, null);
                    iVarG.K();
                } else {
                    iVarG.P(1040398089);
                    iVarG.K();
                    fVarC = androidx.compose.ui.f.f4178a;
                }
                androidx.compose.ui.f fVarB119 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
                ImageKt$Image$1 imageKt$Image$119 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                    @Override // androidx.compose.ui.layout.t
                    public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                        return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((androidx.compose.ui.layout.g0.a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.ui.layout.g0.a aVar1110) {
                            }
                        }, 4, null);
                    }
                };
                iA = androidx.compose.runtime.g.a(iVarG, 0);
                androidx.compose.ui.f fVarE119 = ComposedModifierKt.e(iVarG, fVarB119);
                androidx.compose.runtime.s sVarN119 = iVarG.n();
                ComposeUiNode.Companion companion119 = ComposeUiNode.f5224c1;
                function0A = companion119.a();
                if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                    androidx.compose.runtime.g.b();
                }
                iVarG.C();
                if (iVarG.e()) {
                    iVarG.F(function0A);
                } else {
                    iVarG.o();
                }
                iVarA = f3.a(iVarG);
                f3.b(iVarA, imageKt$Image$119, companion119.c());
                f3.b(iVarA, sVarN119, companion119.e());
                f3.b(iVarA, fVarE119, companion119.d());
                function2B = companion119.b();
                if (iVarA.e()) {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                } else {
                    iVarA.p(Integer.valueOf(iA));
                    iVarA.k(Integer.valueOf(iA), function2B);
                }
                iVarG.r();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                bVar3 = bVarD;
                float f11113 = f13;
                eVar3 = eVarA;
                fVar3 = fVar2;
                v1Var3 = v1Var2;
                f14 = f11113;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                        ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 196608;
        f12 = f11;
        i20 = i12 & 64;
        if (i20 != 0) {
            i13 |= 1572864;
            v1Var2 = v1Var;
        } else {
            v1Var2 = v1Var;
            if ((i11 & 1572864) == 0) {
                if (iVarG.O(v1Var2)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i13 |= i21;
            }
        }
        if ((i13 & 599187) == 599186) {
            if (i22 != 0) {
                fVar2 = androidx.compose.ui.f.f4178a;
            }
            if (i14 != 0) {
                bVarD = androidx.compose.ui.b.f4087a.d();
            } else {
                bVarD = bVar2;
            }
            if (i16 != 0) {
                eVarA = androidx.compose.ui.layout.e.f5176a.a();
            } else {
                eVarA = eVar2;
            }
            if (i18 != 0) {
                f13 = 1.0f;
            } else {
                f13 = f12;
            }
            if (i20 != 0) {
                v1Var2 = null;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
            }
            if (str != null) {
                iVarG.P(1040258775);
                androidx.compose.ui.f.a aVar1110 = androidx.compose.ui.f.f4178a;
                if ((i13 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                objY = iVarG.y();
                if (z10) {
                    objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((androidx.compose.ui.semantics.n) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.semantics.n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                        }
                    };
                    iVarG.p(objY);
                } else {
                    objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((androidx.compose.ui.semantics.n) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.semantics.n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                        }
                    };
                    iVarG.p(objY);
                }
                fVarC = androidx.compose.ui.semantics.k.c(aVar1110, false, (Function1) objY, 1, null);
                iVarG.K();
            } else {
                iVarG.P(1040398089);
                iVarG.K();
                fVarC = androidx.compose.ui.f.f4178a;
            }
            androidx.compose.ui.f fVarB1110 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
            ImageKt$Image$1 imageKt$Image$1110 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                @Override // androidx.compose.ui.layout.t
                public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                    return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((androidx.compose.ui.layout.g0.a) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.layout.g0.a aVar1111) {
                        }
                    }, 4, null);
                }
            };
            iA = androidx.compose.runtime.g.a(iVarG, 0);
            androidx.compose.ui.f fVarE1110 = ComposedModifierKt.e(iVarG, fVarB1110);
            androidx.compose.runtime.s sVarN1110 = iVarG.n();
            ComposeUiNode.Companion companion1110 = ComposeUiNode.f5224c1;
            function0A = companion1110.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            iVarA = f3.a(iVarG);
            f3.b(iVarA, imageKt$Image$1110, companion1110.c());
            f3.b(iVarA, sVarN1110, companion1110.e());
            f3.b(iVarA, fVarE1110, companion1110.d());
            function2B = companion1110.b();
            if (iVarA.e()) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            } else {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            iVarG.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            bVar3 = bVarD;
            float f11114 = f13;
            eVar3 = eVarA;
            fVar3 = fVar2;
            v1Var3 = v1Var2;
            f14 = f11114;
        } else {
            if (i22 != 0) {
                fVar2 = androidx.compose.ui.f.f4178a;
            }
            if (i14 != 0) {
                bVarD = androidx.compose.ui.b.f4087a.d();
            } else {
                bVarD = bVar2;
            }
            if (i16 != 0) {
                eVarA = androidx.compose.ui.layout.e.f5176a.a();
            } else {
                eVarA = eVar2;
            }
            if (i18 != 0) {
                f13 = 1.0f;
            } else {
                f13 = f12;
            }
            if (i20 != 0) {
                v1Var2 = null;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1142754848, i13, -1, "androidx.compose.foundation.Image (Image.kt:243)");
            }
            if (str != null) {
                iVarG.P(1040258775);
                androidx.compose.ui.f.a aVar1111 = androidx.compose.ui.f.f4178a;
                if ((i13 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                objY = iVarG.y();
                if (z10) {
                    objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((androidx.compose.ui.semantics.n) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.semantics.n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                        }
                    };
                    iVarG.p(objY);
                } else {
                    objY = new Function1<androidx.compose.ui.semantics.n, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$semantics$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((androidx.compose.ui.semantics.n) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.semantics.n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5964b.d());
                        }
                    };
                    iVarG.p(objY);
                }
                fVarC = androidx.compose.ui.semantics.k.c(aVar1111, false, (Function1) objY, 1, null);
                iVarG.K();
            } else {
                iVarG.P(1040398089);
                iVarG.K();
                fVarC = androidx.compose.ui.f.f4178a;
            }
            androidx.compose.ui.f fVarB1111 = androidx.compose.ui.draw.j.b(androidx.compose.ui.draw.d.b(fVar2.e(fVarC)), painter, false, bVarD, eVarA, f13, v1Var2, 2, null);
            ImageKt$Image$1 imageKt$Image$1111 = new androidx.compose.ui.layout.t() { // from class: androidx.compose.foundation.ImageKt$Image$1
                @Override // androidx.compose.ui.layout.t
                public final androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j11) {
                    return androidx.compose.ui.layout.w.b(xVar, o0.b.n(j11), o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$1.1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((androidx.compose.ui.layout.g0.a) obj);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.layout.g0.a aVar1112) {
                        }
                    }, 4, null);
                }
            };
            iA = androidx.compose.runtime.g.a(iVarG, 0);
            androidx.compose.ui.f fVarE1111 = ComposedModifierKt.e(iVarG, fVarB1111);
            androidx.compose.runtime.s sVarN1111 = iVarG.n();
            ComposeUiNode.Companion companion1111 = ComposeUiNode.f5224c1;
            function0A = companion1111.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            iVarA = f3.a(iVarG);
            f3.b(iVarA, imageKt$Image$1111, companion1111.c());
            f3.b(iVarA, sVarN1111, companion1111.e());
            f3.b(iVarA, fVarE1111, companion1111.d());
            function2B = companion1111.b();
            if (iVarA.e()) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            } else {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            iVarG.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            bVar3 = bVarD;
            float f11115 = f13;
            eVar3 = eVarA;
            fVar3 = fVar2;
            v1Var3 = v1Var2;
            f14 = f11115;
        }
        g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.ImageKt$Image$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i23) {
                    ImageKt.a(painter, str, fVar3, bVar3, eVar3, f14, v1Var3, iVar2, androidx.compose.runtime.v1.a(i11 | 1), i12);
                }
            });
        }
    }
}
