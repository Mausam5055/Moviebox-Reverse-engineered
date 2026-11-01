package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.i0;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.a0;
import androidx.compose.foundation.lazy.layout.e0;
import androidx.compose.foundation.lazy.layout.z;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyListKt {
    /* JADX WARN: Code duplicated, block: B:101:0x011f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0125  */
    /* JADX WARN: Code duplicated, block: B:104:0x0128  */
    /* JADX WARN: Code duplicated, block: B:108:0x0130  */
    /* JADX WARN: Code duplicated, block: B:109:0x0135  */
    /* JADX WARN: Code duplicated, block: B:111:0x013b  */
    /* JADX WARN: Code duplicated, block: B:113:0x0141  */
    /* JADX WARN: Code duplicated, block: B:114:0x0144  */
    /* JADX WARN: Code duplicated, block: B:116:0x0149  */
    /* JADX WARN: Code duplicated, block: B:119:0x014f  */
    /* JADX WARN: Code duplicated, block: B:121:0x0154  */
    /* JADX WARN: Code duplicated, block: B:123:0x015a  */
    /* JADX WARN: Code duplicated, block: B:125:0x0160  */
    /* JADX WARN: Code duplicated, block: B:126:0x0163  */
    /* JADX WARN: Code duplicated, block: B:130:0x016c  */
    /* JADX WARN: Code duplicated, block: B:131:0x016f  */
    /* JADX WARN: Code duplicated, block: B:133:0x0173  */
    /* JADX WARN: Code duplicated, block: B:136:0x017a  */
    /* JADX WARN: Code duplicated, block: B:140:0x0187  */
    /* JADX WARN: Code duplicated, block: B:146:0x01a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:147:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:148:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:151:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:152:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:154:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:155:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:157:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:158:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:160:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:161:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:164:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:167:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:170:0x027f  */
    /* JADX WARN: Code duplicated, block: B:172:0x0283  */
    /* JADX WARN: Code duplicated, block: B:175:0x0327  */
    /* JADX WARN: Code duplicated, block: B:179:0x0339  */
    /* JADX WARN: Code duplicated, block: B:181:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0067  */
    /* JADX WARN: Code duplicated, block: B:38:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0070  */
    /* JADX WARN: Code duplicated, block: B:42:0x0078  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0083  */
    /* JADX WARN: Code duplicated, block: B:48:0x0086  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0090  */
    /* JADX WARN: Code duplicated, block: B:53:0x0093  */
    /* JADX WARN: Code duplicated, block: B:57:0x009c  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:91:0x0101  */
    /* JADX WARN: Code duplicated, block: B:93:0x0107  */
    /* JADX WARN: Code duplicated, block: B:94:0x010a  */
    /* JADX WARN: Code duplicated, block: B:98:0x0114  */
    /* JADX WARN: Code duplicated, block: B:99:0x0119  */
    public static final void a(final androidx.compose.ui.f fVar, final LazyListState lazyListState, final androidx.compose.foundation.layout.t tVar, final boolean z10, final boolean z11, final androidx.compose.foundation.gestures.g gVar, final boolean z12, int i11, androidx.compose.ui.b.InterfaceC0044b interfaceC0044b, androidx.compose.foundation.layout.b.k kVar, androidx.compose.ui.b.c cVar, androidx.compose.foundation.layout.b.d dVar, final Function1 function1, androidx.compose.runtime.i iVar, final int i12, final int i13, final int i14) {
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        androidx.compose.ui.b.InterfaceC0044b interfaceC0044b2;
        androidx.compose.foundation.layout.b.k kVar2;
        androidx.compose.ui.b.c cVar2;
        androidx.compose.foundation.layout.b.d dVar2;
        Object objY;
        Orientation orientation;
        androidx.compose.runtime.i iVar2;
        final int i33;
        final androidx.compose.ui.b.InterfaceC0044b interfaceC0044b3;
        final androidx.compose.foundation.layout.b.k kVar3;
        final androidx.compose.ui.b.c cVar3;
        final androidx.compose.foundation.layout.b.d dVar3;
        g2 g2VarJ;
        androidx.compose.runtime.i iVarG = iVar.g(620764179);
        if ((i14 & 1) != 0) {
            i15 = i12 | 6;
        } else if ((i12 & 6) == 0) {
            i15 = (iVarG.O(fVar) ? 4 : 2) | i12;
        } else {
            i15 = i12;
        }
        if ((i14 & 2) != 0) {
            i15 |= 48;
        } else if ((i12 & 48) == 0) {
            i15 |= iVarG.O(lazyListState) ? 32 : 16;
        }
        if ((i14 & 4) == 0) {
            if ((i12 & 384) == 0) {
                i15 |= iVarG.O(tVar) ? 256 : 128;
            }
            if ((i14 & 8) != 0) {
                if ((i12 & 3072) == 0) {
                    if (iVarG.a(z10)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i15 |= i16;
                }
                if ((i14 & 16) != 0) {
                    i15 |= 24576;
                } else if ((i12 & 24576) == 0) {
                    if (iVarG.a(z11)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i15 |= i17;
                }
                if ((i14 & 32) != 0) {
                    if ((i12 & 196608) == 0) {
                        if (iVarG.O(gVar)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i15 |= i18;
                    }
                    if ((i14 & 64) != 0) {
                        i15 |= 1572864;
                    } else if ((i12 & 1572864) == 0) {
                        if (iVarG.a(z12)) {
                            i19 = 1048576;
                        } else {
                            i19 = 524288;
                        }
                        i15 |= i19;
                    }
                    i20 = i14 & 128;
                    if (i20 != 0) {
                        i15 |= 12582912;
                    } else if ((i12 & 12582912) == 0) {
                        if (iVarG.c(i11)) {
                            i21 = 8388608;
                        } else {
                            i21 = 4194304;
                        }
                        i15 |= i21;
                    }
                    i22 = i14 & 256;
                    if (i22 != 0) {
                        i15 |= 100663296;
                    } else if ((i12 & 100663296) == 0) {
                        if (iVarG.O(interfaceC0044b)) {
                            i23 = 67108864;
                        } else {
                            i23 = ASTNode.PCTX_STORED;
                        }
                        i15 |= i23;
                    }
                    i24 = i14 & 512;
                    if (i24 != 0) {
                        i15 |= 805306368;
                    } else if ((i12 & 805306368) == 0) {
                        if (iVarG.O(kVar)) {
                            i25 = ASTNode.DISCARD;
                        } else {
                            i25 = ASTNode.DEOP;
                        }
                        i15 |= i25;
                    }
                    i26 = i14 & 1024;
                    if (i26 != 0) {
                        i27 = i13 | 6;
                    } else if ((i13 & 6) == 0) {
                        if (iVarG.O(cVar)) {
                            i28 = 4;
                        } else {
                            i28 = 2;
                        }
                        i27 = i13 | i28;
                    } else {
                        i27 = i13;
                    }
                    i29 = i14 & 2048;
                    if (i29 != 0) {
                        i27 |= 48;
                    } else if ((i13 & 48) == 0) {
                        if (iVarG.O(dVar)) {
                            i30 = 32;
                        } else {
                            i30 = 16;
                        }
                        i27 |= i30;
                    }
                    i31 = i27;
                    if ((i14 & 4096) != 0) {
                        i31 |= 384;
                    } else if ((i13 & 384) == 0) {
                        i31 |= iVarG.A(function1) ? 256 : 128;
                    }
                    if ((306783379 & i15) != 306783378 && (i31 & 147) == 146 && iVarG.h()) {
                        iVarG.G();
                        i33 = i11;
                        interfaceC0044b3 = interfaceC0044b;
                        cVar3 = cVar;
                        dVar3 = dVar;
                        iVar2 = iVarG;
                        kVar3 = kVar;
                    } else {
                        if (i20 != 0) {
                            i32 = 0;
                        } else {
                            i32 = i11;
                        }
                        if (i22 != 0) {
                            interfaceC0044b2 = null;
                        } else {
                            interfaceC0044b2 = interfaceC0044b;
                        }
                        if (i24 != 0) {
                            kVar2 = null;
                        } else {
                            kVar2 = kVar;
                        }
                        if (i26 != 0) {
                            cVar2 = null;
                        } else {
                            cVar2 = cVar;
                        }
                        if (i29 != 0) {
                            dVar2 = null;
                        } else {
                            dVar2 = dVar;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                        }
                        int i34 = (i15 >> 3) & 14;
                        Function0 function0A = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i34 | ((i31 >> 3) & 112));
                        int i35 = i15 >> 9;
                        z zVarA = w.a(lazyListState, z11, iVarG, i34 | (i35 & 112));
                        objY = iVarG.y();
                        if (objY == androidx.compose.runtime.i.f3736a.a()) {
                            androidx.compose.runtime.v vVar = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                            iVarG.p(vVar);
                            objY = vVar;
                        }
                        int i36 = i15 & 112;
                        int i37 = i15 & 7168;
                        int i38 = i15 >> 6;
                        int i39 = i31 << 21;
                        int i40 = i15;
                        int i41 = i32;
                        Function2 function2B = b(function0A, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i38 & 458752) | (i38 & 3670016) | (29360128 & i39) | (i39 & 234881024) | (1879048192 & i15), 0);
                        if (z11) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation2 = orientation;
                        iVar2 = iVarG;
                        LazyLayoutKt.a(function0A, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A, zVarA, orientation2, z12, z10, iVarG, (i38 & 57344) | ((i40 << 6) & 458752)), f.a(lazyListState, i41, iVar2, i34 | ((i40 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation2, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i37 | (i40 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation2, z12, z10, gVar, lazyListState.r(), null, iVar2, i36 | (i35 & 7168) | (57344 & (i40 << 3)) | (i40 & 458752), 64), lazyListState.z(), function2B, iVar2, 0, 0);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        i33 = i41;
                        interfaceC0044b3 = interfaceC0044b2;
                        kVar3 = kVar2;
                        cVar3 = cVar2;
                        dVar3 = dVar2;
                    }
                    g2VarJ = iVar2.j();
                    if (g2VarJ != null) {
                        g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar3, int i42) {
                                LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                            }
                        });
                    }
                }
                i15 |= 196608;
                if ((i14 & 64) != 0) {
                    i15 |= 1572864;
                } else if ((i12 & 1572864) == 0) {
                    if (iVarG.a(z12)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i15 |= i19;
                }
                i20 = i14 & 128;
                if (i20 != 0) {
                    i15 |= 12582912;
                } else if ((i12 & 12582912) == 0) {
                    if (iVarG.c(i11)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i15 |= i21;
                }
                i22 = i14 & 256;
                if (i22 != 0) {
                    i15 |= 100663296;
                } else if ((i12 & 100663296) == 0) {
                    if (iVarG.O(interfaceC0044b)) {
                        i23 = 67108864;
                    } else {
                        i23 = ASTNode.PCTX_STORED;
                    }
                    i15 |= i23;
                }
                i24 = i14 & 512;
                if (i24 != 0) {
                    i15 |= 805306368;
                } else if ((i12 & 805306368) == 0) {
                    if (iVarG.O(kVar)) {
                        i25 = ASTNode.DISCARD;
                    } else {
                        i25 = ASTNode.DEOP;
                    }
                    i15 |= i25;
                }
                i26 = i14 & 1024;
                if (i26 != 0) {
                    i27 = i13 | 6;
                } else if ((i13 & 6) == 0) {
                    if (iVarG.O(cVar)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i13 | i28;
                } else {
                    i27 = i13;
                }
                i29 = i14 & 2048;
                if (i29 != 0) {
                    i27 |= 48;
                } else if ((i13 & 48) == 0) {
                    if (iVarG.O(dVar)) {
                        i30 = 32;
                    } else {
                        i30 = 16;
                    }
                    i27 |= i30;
                }
                i31 = i27;
                if ((i14 & 4096) != 0) {
                    i31 |= 384;
                } else if ((i13 & 384) == 0) {
                    i31 |= iVarG.A(function1) ? 256 : 128;
                }
                if ((306783379 & i15) != 306783378) {
                    if (i20 != 0) {
                        i32 = 0;
                    } else {
                        i32 = i11;
                    }
                    if (i22 != 0) {
                        interfaceC0044b2 = null;
                    } else {
                        interfaceC0044b2 = interfaceC0044b;
                    }
                    if (i24 != 0) {
                        kVar2 = null;
                    } else {
                        kVar2 = kVar;
                    }
                    if (i26 != 0) {
                        cVar2 = null;
                    } else {
                        cVar2 = cVar;
                    }
                    if (i29 != 0) {
                        dVar2 = null;
                    } else {
                        dVar2 = dVar;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                    }
                    int i310 = (i15 >> 3) & 14;
                    Function0 function0A2 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i310 | ((i31 >> 3) & 112));
                    int i311 = i15 >> 9;
                    z zVarA2 = w.a(lazyListState, z11, iVarG, i310 | (i311 & 112));
                    objY = iVarG.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        androidx.compose.runtime.v vVar2 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                        iVarG.p(vVar2);
                        objY = vVar2;
                    }
                    int i312 = i15 & 112;
                    int i313 = i15 & 7168;
                    int i314 = i15 >> 6;
                    int i315 = i31 << 21;
                    int i42 = i15;
                    int i43 = i32;
                    Function2 function2B2 = b(function0A2, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i314 & 458752) | (i314 & 3670016) | (29360128 & i315) | (i315 & 234881024) | (1879048192 & i15), 0);
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation3 = orientation;
                    iVar2 = iVarG;
                    LazyLayoutKt.a(function0A2, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A2, zVarA2, orientation3, z12, z10, iVarG, (i314 & 57344) | ((i42 << 6) & 458752)), f.a(lazyListState, i43, iVar2, i310 | ((i42 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation3, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i313 | (i42 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation3, z12, z10, gVar, lazyListState.r(), null, iVar2, i312 | (i311 & 7168) | (57344 & (i42 << 3)) | (i42 & 458752), 64), lazyListState.z(), function2B2, iVar2, 0, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    i33 = i43;
                    interfaceC0044b3 = interfaceC0044b2;
                    kVar3 = kVar2;
                    cVar3 = cVar2;
                    dVar3 = dVar2;
                } else {
                    if (i20 != 0) {
                        i32 = 0;
                    } else {
                        i32 = i11;
                    }
                    if (i22 != 0) {
                        interfaceC0044b2 = null;
                    } else {
                        interfaceC0044b2 = interfaceC0044b;
                    }
                    if (i24 != 0) {
                        kVar2 = null;
                    } else {
                        kVar2 = kVar;
                    }
                    if (i26 != 0) {
                        cVar2 = null;
                    } else {
                        cVar2 = cVar;
                    }
                    if (i29 != 0) {
                        dVar2 = null;
                    } else {
                        dVar2 = dVar;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                    }
                    int i316 = (i15 >> 3) & 14;
                    Function0 function0A3 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i316 | ((i31 >> 3) & 112));
                    int i317 = i15 >> 9;
                    z zVarA3 = w.a(lazyListState, z11, iVarG, i316 | (i317 & 112));
                    objY = iVarG.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        androidx.compose.runtime.v vVar3 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                        iVarG.p(vVar3);
                        objY = vVar3;
                    }
                    int i318 = i15 & 112;
                    int i319 = i15 & 7168;
                    int i3110 = i15 >> 6;
                    int i3111 = i31 << 21;
                    int i44 = i15;
                    int i45 = i32;
                    Function2 function2B3 = b(function0A3, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i3110 & 458752) | (i3110 & 3670016) | (29360128 & i3111) | (i3111 & 234881024) | (1879048192 & i15), 0);
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation4 = orientation;
                    iVar2 = iVarG;
                    LazyLayoutKt.a(function0A3, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A3, zVarA3, orientation4, z12, z10, iVarG, (i3110 & 57344) | ((i44 << 6) & 458752)), f.a(lazyListState, i45, iVar2, i316 | ((i44 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation4, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i319 | (i44 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation4, z12, z10, gVar, lazyListState.r(), null, iVar2, i318 | (i317 & 7168) | (57344 & (i44 << 3)) | (i44 & 458752), 64), lazyListState.z(), function2B3, iVar2, 0, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    i33 = i45;
                    interfaceC0044b3 = interfaceC0044b2;
                    kVar3 = kVar2;
                    cVar3 = cVar2;
                    dVar3 = dVar2;
                }
                g2VarJ = iVar2.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar3, int i46) {
                            LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                        }
                    });
                }
            }
            i15 |= 3072;
            if ((i14 & 16) != 0) {
                i15 |= 24576;
            } else if ((i12 & 24576) == 0) {
                if (iVarG.a(z11)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i15 |= i17;
            }
            if ((i14 & 32) != 0) {
                if ((i12 & 196608) == 0) {
                    if (iVarG.O(gVar)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i15 |= i18;
                }
                if ((i14 & 64) != 0) {
                    i15 |= 1572864;
                } else if ((i12 & 1572864) == 0) {
                    if (iVarG.a(z12)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i15 |= i19;
                }
                i20 = i14 & 128;
                if (i20 != 0) {
                    i15 |= 12582912;
                } else if ((i12 & 12582912) == 0) {
                    if (iVarG.c(i11)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i15 |= i21;
                }
                i22 = i14 & 256;
                if (i22 != 0) {
                    i15 |= 100663296;
                } else if ((i12 & 100663296) == 0) {
                    if (iVarG.O(interfaceC0044b)) {
                        i23 = 67108864;
                    } else {
                        i23 = ASTNode.PCTX_STORED;
                    }
                    i15 |= i23;
                }
                i24 = i14 & 512;
                if (i24 != 0) {
                    i15 |= 805306368;
                } else if ((i12 & 805306368) == 0) {
                    if (iVarG.O(kVar)) {
                        i25 = ASTNode.DISCARD;
                    } else {
                        i25 = ASTNode.DEOP;
                    }
                    i15 |= i25;
                }
                i26 = i14 & 1024;
                if (i26 != 0) {
                    i27 = i13 | 6;
                } else if ((i13 & 6) == 0) {
                    if (iVarG.O(cVar)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i13 | i28;
                } else {
                    i27 = i13;
                }
                i29 = i14 & 2048;
                if (i29 != 0) {
                    i27 |= 48;
                } else if ((i13 & 48) == 0) {
                    if (iVarG.O(dVar)) {
                        i30 = 32;
                    } else {
                        i30 = 16;
                    }
                    i27 |= i30;
                }
                i31 = i27;
                if ((i14 & 4096) != 0) {
                    i31 |= 384;
                } else if ((i13 & 384) == 0) {
                    i31 |= iVarG.A(function1) ? 256 : 128;
                }
                if ((306783379 & i15) != 306783378) {
                    if (i20 != 0) {
                        i32 = 0;
                    } else {
                        i32 = i11;
                    }
                    if (i22 != 0) {
                        interfaceC0044b2 = null;
                    } else {
                        interfaceC0044b2 = interfaceC0044b;
                    }
                    if (i24 != 0) {
                        kVar2 = null;
                    } else {
                        kVar2 = kVar;
                    }
                    if (i26 != 0) {
                        cVar2 = null;
                    } else {
                        cVar2 = cVar;
                    }
                    if (i29 != 0) {
                        dVar2 = null;
                    } else {
                        dVar2 = dVar;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                    }
                    int i3112 = (i15 >> 3) & 14;
                    Function0 function0A4 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i3112 | ((i31 >> 3) & 112));
                    int i3113 = i15 >> 9;
                    z zVarA4 = w.a(lazyListState, z11, iVarG, i3112 | (i3113 & 112));
                    objY = iVarG.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        androidx.compose.runtime.v vVar4 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                        iVarG.p(vVar4);
                        objY = vVar4;
                    }
                    int i3114 = i15 & 112;
                    int i3115 = i15 & 7168;
                    int i3116 = i15 >> 6;
                    int i3117 = i31 << 21;
                    int i46 = i15;
                    int i47 = i32;
                    Function2 function2B4 = b(function0A4, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i3116 & 458752) | (i3116 & 3670016) | (29360128 & i3117) | (i3117 & 234881024) | (1879048192 & i15), 0);
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation5 = orientation;
                    iVar2 = iVarG;
                    LazyLayoutKt.a(function0A4, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A4, zVarA4, orientation5, z12, z10, iVarG, (i3116 & 57344) | ((i46 << 6) & 458752)), f.a(lazyListState, i47, iVar2, i3112 | ((i46 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation5, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i3115 | (i46 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation5, z12, z10, gVar, lazyListState.r(), null, iVar2, i3114 | (i3113 & 7168) | (57344 & (i46 << 3)) | (i46 & 458752), 64), lazyListState.z(), function2B4, iVar2, 0, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    i33 = i47;
                    interfaceC0044b3 = interfaceC0044b2;
                    kVar3 = kVar2;
                    cVar3 = cVar2;
                    dVar3 = dVar2;
                } else {
                    if (i20 != 0) {
                        i32 = 0;
                    } else {
                        i32 = i11;
                    }
                    if (i22 != 0) {
                        interfaceC0044b2 = null;
                    } else {
                        interfaceC0044b2 = interfaceC0044b;
                    }
                    if (i24 != 0) {
                        kVar2 = null;
                    } else {
                        kVar2 = kVar;
                    }
                    if (i26 != 0) {
                        cVar2 = null;
                    } else {
                        cVar2 = cVar;
                    }
                    if (i29 != 0) {
                        dVar2 = null;
                    } else {
                        dVar2 = dVar;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                    }
                    int i3118 = (i15 >> 3) & 14;
                    Function0 function0A5 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i3118 | ((i31 >> 3) & 112));
                    int i3119 = i15 >> 9;
                    z zVarA5 = w.a(lazyListState, z11, iVarG, i3118 | (i3119 & 112));
                    objY = iVarG.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        androidx.compose.runtime.v vVar5 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                        iVarG.p(vVar5);
                        objY = vVar5;
                    }
                    int i31110 = i15 & 112;
                    int i31111 = i15 & 7168;
                    int i31112 = i15 >> 6;
                    int i31113 = i31 << 21;
                    int i48 = i15;
                    int i49 = i32;
                    Function2 function2B5 = b(function0A5, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i31112 & 458752) | (i31112 & 3670016) | (29360128 & i31113) | (i31113 & 234881024) | (1879048192 & i15), 0);
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation6 = orientation;
                    iVar2 = iVarG;
                    LazyLayoutKt.a(function0A5, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A5, zVarA5, orientation6, z12, z10, iVarG, (i31112 & 57344) | ((i48 << 6) & 458752)), f.a(lazyListState, i49, iVar2, i3118 | ((i48 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation6, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i31111 | (i48 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation6, z12, z10, gVar, lazyListState.r(), null, iVar2, i31110 | (i3119 & 7168) | (57344 & (i48 << 3)) | (i48 & 458752), 64), lazyListState.z(), function2B5, iVar2, 0, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    i33 = i49;
                    interfaceC0044b3 = interfaceC0044b2;
                    kVar3 = kVar2;
                    cVar3 = cVar2;
                    dVar3 = dVar2;
                }
                g2VarJ = iVar2.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar3, int i410) {
                            LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                        }
                    });
                }
            }
            i15 |= 196608;
            if ((i14 & 64) != 0) {
                i15 |= 1572864;
            } else if ((i12 & 1572864) == 0) {
                if (iVarG.a(z12)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i15 |= i19;
            }
            i20 = i14 & 128;
            if (i20 != 0) {
                i15 |= 12582912;
            } else if ((i12 & 12582912) == 0) {
                if (iVarG.c(i11)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i15 |= i21;
            }
            i22 = i14 & 256;
            if (i22 != 0) {
                i15 |= 100663296;
            } else if ((i12 & 100663296) == 0) {
                if (iVarG.O(interfaceC0044b)) {
                    i23 = 67108864;
                } else {
                    i23 = ASTNode.PCTX_STORED;
                }
                i15 |= i23;
            }
            i24 = i14 & 512;
            if (i24 != 0) {
                i15 |= 805306368;
            } else if ((i12 & 805306368) == 0) {
                if (iVarG.O(kVar)) {
                    i25 = ASTNode.DISCARD;
                } else {
                    i25 = ASTNode.DEOP;
                }
                i15 |= i25;
            }
            i26 = i14 & 1024;
            if (i26 != 0) {
                i27 = i13 | 6;
            } else if ((i13 & 6) == 0) {
                if (iVarG.O(cVar)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i13 | i28;
            } else {
                i27 = i13;
            }
            i29 = i14 & 2048;
            if (i29 != 0) {
                i27 |= 48;
            } else if ((i13 & 48) == 0) {
                if (iVarG.O(dVar)) {
                    i30 = 32;
                } else {
                    i30 = 16;
                }
                i27 |= i30;
            }
            i31 = i27;
            if ((i14 & 4096) != 0) {
                i31 |= 384;
            } else if ((i13 & 384) == 0) {
                i31 |= iVarG.A(function1) ? 256 : 128;
            }
            if ((306783379 & i15) != 306783378) {
                if (i20 != 0) {
                    i32 = 0;
                } else {
                    i32 = i11;
                }
                if (i22 != 0) {
                    interfaceC0044b2 = null;
                } else {
                    interfaceC0044b2 = interfaceC0044b;
                }
                if (i24 != 0) {
                    kVar2 = null;
                } else {
                    kVar2 = kVar;
                }
                if (i26 != 0) {
                    cVar2 = null;
                } else {
                    cVar2 = cVar;
                }
                if (i29 != 0) {
                    dVar2 = null;
                } else {
                    dVar2 = dVar;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                }
                int i31114 = (i15 >> 3) & 14;
                Function0 function0A6 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i31114 | ((i31 >> 3) & 112));
                int i31115 = i15 >> 9;
                z zVarA6 = w.a(lazyListState, z11, iVarG, i31114 | (i31115 & 112));
                objY = iVarG.y();
                if (objY == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.v vVar6 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                    iVarG.p(vVar6);
                    objY = vVar6;
                }
                int i31116 = i15 & 112;
                int i31117 = i15 & 7168;
                int i31118 = i15 >> 6;
                int i31119 = i31 << 21;
                int i410 = i15;
                int i411 = i32;
                Function2 function2B6 = b(function0A6, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i31118 & 458752) | (i31118 & 3670016) | (29360128 & i31119) | (i31119 & 234881024) | (1879048192 & i15), 0);
                if (z11) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation7 = orientation;
                iVar2 = iVarG;
                LazyLayoutKt.a(function0A6, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A6, zVarA6, orientation7, z12, z10, iVarG, (i31118 & 57344) | ((i410 << 6) & 458752)), f.a(lazyListState, i411, iVar2, i31114 | ((i410 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation7, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i31117 | (i410 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation7, z12, z10, gVar, lazyListState.r(), null, iVar2, i31116 | (i31115 & 7168) | (57344 & (i410 << 3)) | (i410 & 458752), 64), lazyListState.z(), function2B6, iVar2, 0, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                i33 = i411;
                interfaceC0044b3 = interfaceC0044b2;
                kVar3 = kVar2;
                cVar3 = cVar2;
                dVar3 = dVar2;
            } else {
                if (i20 != 0) {
                    i32 = 0;
                } else {
                    i32 = i11;
                }
                if (i22 != 0) {
                    interfaceC0044b2 = null;
                } else {
                    interfaceC0044b2 = interfaceC0044b;
                }
                if (i24 != 0) {
                    kVar2 = null;
                } else {
                    kVar2 = kVar;
                }
                if (i26 != 0) {
                    cVar2 = null;
                } else {
                    cVar2 = cVar;
                }
                if (i29 != 0) {
                    dVar2 = null;
                } else {
                    dVar2 = dVar;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                }
                int i311110 = (i15 >> 3) & 14;
                Function0 function0A7 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i311110 | ((i31 >> 3) & 112));
                int i311111 = i15 >> 9;
                z zVarA7 = w.a(lazyListState, z11, iVarG, i311110 | (i311111 & 112));
                objY = iVarG.y();
                if (objY == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.v vVar7 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                    iVarG.p(vVar7);
                    objY = vVar7;
                }
                int i311112 = i15 & 112;
                int i311113 = i15 & 7168;
                int i311114 = i15 >> 6;
                int i311115 = i31 << 21;
                int i412 = i15;
                int i413 = i32;
                Function2 function2B7 = b(function0A7, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i311114 & 458752) | (i311114 & 3670016) | (29360128 & i311115) | (i311115 & 234881024) | (1879048192 & i15), 0);
                if (z11) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation8 = orientation;
                iVar2 = iVarG;
                LazyLayoutKt.a(function0A7, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A7, zVarA7, orientation8, z12, z10, iVarG, (i311114 & 57344) | ((i412 << 6) & 458752)), f.a(lazyListState, i413, iVar2, i311110 | ((i412 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation8, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i311113 | (i412 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation8, z12, z10, gVar, lazyListState.r(), null, iVar2, i311112 | (i311111 & 7168) | (57344 & (i412 << 3)) | (i412 & 458752), 64), lazyListState.z(), function2B7, iVar2, 0, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                i33 = i413;
                interfaceC0044b3 = interfaceC0044b2;
                kVar3 = kVar2;
                cVar3 = cVar2;
                dVar3 = dVar2;
            }
            g2VarJ = iVar2.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar3, int i414) {
                        LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                    }
                });
            }
        }
        i15 |= 384;
        if ((i14 & 8) != 0) {
            if ((i12 & 3072) == 0) {
                if (iVarG.a(z10)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i15 |= i16;
            }
            if ((i14 & 16) != 0) {
                i15 |= 24576;
            } else if ((i12 & 24576) == 0) {
                if (iVarG.a(z11)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i15 |= i17;
            }
            if ((i14 & 32) != 0) {
                if ((i12 & 196608) == 0) {
                    if (iVarG.O(gVar)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i15 |= i18;
                }
                if ((i14 & 64) != 0) {
                    i15 |= 1572864;
                } else if ((i12 & 1572864) == 0) {
                    if (iVarG.a(z12)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i15 |= i19;
                }
                i20 = i14 & 128;
                if (i20 != 0) {
                    i15 |= 12582912;
                } else if ((i12 & 12582912) == 0) {
                    if (iVarG.c(i11)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i15 |= i21;
                }
                i22 = i14 & 256;
                if (i22 != 0) {
                    i15 |= 100663296;
                } else if ((i12 & 100663296) == 0) {
                    if (iVarG.O(interfaceC0044b)) {
                        i23 = 67108864;
                    } else {
                        i23 = ASTNode.PCTX_STORED;
                    }
                    i15 |= i23;
                }
                i24 = i14 & 512;
                if (i24 != 0) {
                    i15 |= 805306368;
                } else if ((i12 & 805306368) == 0) {
                    if (iVarG.O(kVar)) {
                        i25 = ASTNode.DISCARD;
                    } else {
                        i25 = ASTNode.DEOP;
                    }
                    i15 |= i25;
                }
                i26 = i14 & 1024;
                if (i26 != 0) {
                    i27 = i13 | 6;
                } else if ((i13 & 6) == 0) {
                    if (iVarG.O(cVar)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i13 | i28;
                } else {
                    i27 = i13;
                }
                i29 = i14 & 2048;
                if (i29 != 0) {
                    i27 |= 48;
                } else if ((i13 & 48) == 0) {
                    if (iVarG.O(dVar)) {
                        i30 = 32;
                    } else {
                        i30 = 16;
                    }
                    i27 |= i30;
                }
                i31 = i27;
                if ((i14 & 4096) != 0) {
                    i31 |= 384;
                } else if ((i13 & 384) == 0) {
                    i31 |= iVarG.A(function1) ? 256 : 128;
                }
                if ((306783379 & i15) != 306783378) {
                    if (i20 != 0) {
                        i32 = 0;
                    } else {
                        i32 = i11;
                    }
                    if (i22 != 0) {
                        interfaceC0044b2 = null;
                    } else {
                        interfaceC0044b2 = interfaceC0044b;
                    }
                    if (i24 != 0) {
                        kVar2 = null;
                    } else {
                        kVar2 = kVar;
                    }
                    if (i26 != 0) {
                        cVar2 = null;
                    } else {
                        cVar2 = cVar;
                    }
                    if (i29 != 0) {
                        dVar2 = null;
                    } else {
                        dVar2 = dVar;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                    }
                    int i311116 = (i15 >> 3) & 14;
                    Function0 function0A8 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i311116 | ((i31 >> 3) & 112));
                    int i311117 = i15 >> 9;
                    z zVarA8 = w.a(lazyListState, z11, iVarG, i311116 | (i311117 & 112));
                    objY = iVarG.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        androidx.compose.runtime.v vVar8 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                        iVarG.p(vVar8);
                        objY = vVar8;
                    }
                    int i311118 = i15 & 112;
                    int i311119 = i15 & 7168;
                    int i3111110 = i15 >> 6;
                    int i3111111 = i31 << 21;
                    int i414 = i15;
                    int i415 = i32;
                    Function2 function2B8 = b(function0A8, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i3111110 & 458752) | (i3111110 & 3670016) | (29360128 & i3111111) | (i3111111 & 234881024) | (1879048192 & i15), 0);
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation9 = orientation;
                    iVar2 = iVarG;
                    LazyLayoutKt.a(function0A8, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A8, zVarA8, orientation9, z12, z10, iVarG, (i3111110 & 57344) | ((i414 << 6) & 458752)), f.a(lazyListState, i415, iVar2, i311116 | ((i414 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation9, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i311119 | (i414 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation9, z12, z10, gVar, lazyListState.r(), null, iVar2, i311118 | (i311117 & 7168) | (57344 & (i414 << 3)) | (i414 & 458752), 64), lazyListState.z(), function2B8, iVar2, 0, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    i33 = i415;
                    interfaceC0044b3 = interfaceC0044b2;
                    kVar3 = kVar2;
                    cVar3 = cVar2;
                    dVar3 = dVar2;
                } else {
                    if (i20 != 0) {
                        i32 = 0;
                    } else {
                        i32 = i11;
                    }
                    if (i22 != 0) {
                        interfaceC0044b2 = null;
                    } else {
                        interfaceC0044b2 = interfaceC0044b;
                    }
                    if (i24 != 0) {
                        kVar2 = null;
                    } else {
                        kVar2 = kVar;
                    }
                    if (i26 != 0) {
                        cVar2 = null;
                    } else {
                        cVar2 = cVar;
                    }
                    if (i29 != 0) {
                        dVar2 = null;
                    } else {
                        dVar2 = dVar;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                    }
                    int i3111112 = (i15 >> 3) & 14;
                    Function0 function0A9 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i3111112 | ((i31 >> 3) & 112));
                    int i3111113 = i15 >> 9;
                    z zVarA9 = w.a(lazyListState, z11, iVarG, i3111112 | (i3111113 & 112));
                    objY = iVarG.y();
                    if (objY == androidx.compose.runtime.i.f3736a.a()) {
                        androidx.compose.runtime.v vVar9 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                        iVarG.p(vVar9);
                        objY = vVar9;
                    }
                    int i3111114 = i15 & 112;
                    int i3111115 = i15 & 7168;
                    int i3111116 = i15 >> 6;
                    int i3111117 = i31 << 21;
                    int i416 = i15;
                    int i417 = i32;
                    Function2 function2B9 = b(function0A9, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i3111116 & 458752) | (i3111116 & 3670016) | (29360128 & i3111117) | (i3111117 & 234881024) | (1879048192 & i15), 0);
                    if (z11) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation10 = orientation;
                    iVar2 = iVarG;
                    LazyLayoutKt.a(function0A9, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A9, zVarA9, orientation10, z12, z10, iVarG, (i3111116 & 57344) | ((i416 << 6) & 458752)), f.a(lazyListState, i417, iVar2, i3111112 | ((i416 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation10, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i3111115 | (i416 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation10, z12, z10, gVar, lazyListState.r(), null, iVar2, i3111114 | (i3111113 & 7168) | (57344 & (i416 << 3)) | (i416 & 458752), 64), lazyListState.z(), function2B9, iVar2, 0, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    i33 = i417;
                    interfaceC0044b3 = interfaceC0044b2;
                    kVar3 = kVar2;
                    cVar3 = cVar2;
                    dVar3 = dVar2;
                }
                g2VarJ = iVar2.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar3, int i418) {
                            LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                        }
                    });
                }
            }
            i15 |= 196608;
            if ((i14 & 64) != 0) {
                i15 |= 1572864;
            } else if ((i12 & 1572864) == 0) {
                if (iVarG.a(z12)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i15 |= i19;
            }
            i20 = i14 & 128;
            if (i20 != 0) {
                i15 |= 12582912;
            } else if ((i12 & 12582912) == 0) {
                if (iVarG.c(i11)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i15 |= i21;
            }
            i22 = i14 & 256;
            if (i22 != 0) {
                i15 |= 100663296;
            } else if ((i12 & 100663296) == 0) {
                if (iVarG.O(interfaceC0044b)) {
                    i23 = 67108864;
                } else {
                    i23 = ASTNode.PCTX_STORED;
                }
                i15 |= i23;
            }
            i24 = i14 & 512;
            if (i24 != 0) {
                i15 |= 805306368;
            } else if ((i12 & 805306368) == 0) {
                if (iVarG.O(kVar)) {
                    i25 = ASTNode.DISCARD;
                } else {
                    i25 = ASTNode.DEOP;
                }
                i15 |= i25;
            }
            i26 = i14 & 1024;
            if (i26 != 0) {
                i27 = i13 | 6;
            } else if ((i13 & 6) == 0) {
                if (iVarG.O(cVar)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i13 | i28;
            } else {
                i27 = i13;
            }
            i29 = i14 & 2048;
            if (i29 != 0) {
                i27 |= 48;
            } else if ((i13 & 48) == 0) {
                if (iVarG.O(dVar)) {
                    i30 = 32;
                } else {
                    i30 = 16;
                }
                i27 |= i30;
            }
            i31 = i27;
            if ((i14 & 4096) != 0) {
                i31 |= 384;
            } else if ((i13 & 384) == 0) {
                i31 |= iVarG.A(function1) ? 256 : 128;
            }
            if ((306783379 & i15) != 306783378) {
                if (i20 != 0) {
                    i32 = 0;
                } else {
                    i32 = i11;
                }
                if (i22 != 0) {
                    interfaceC0044b2 = null;
                } else {
                    interfaceC0044b2 = interfaceC0044b;
                }
                if (i24 != 0) {
                    kVar2 = null;
                } else {
                    kVar2 = kVar;
                }
                if (i26 != 0) {
                    cVar2 = null;
                } else {
                    cVar2 = cVar;
                }
                if (i29 != 0) {
                    dVar2 = null;
                } else {
                    dVar2 = dVar;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                }
                int i3111118 = (i15 >> 3) & 14;
                Function0 function0A10 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i3111118 | ((i31 >> 3) & 112));
                int i3111119 = i15 >> 9;
                z zVarA10 = w.a(lazyListState, z11, iVarG, i3111118 | (i3111119 & 112));
                objY = iVarG.y();
                if (objY == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.v vVar10 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                    iVarG.p(vVar10);
                    objY = vVar10;
                }
                int i31111110 = i15 & 112;
                int i31111111 = i15 & 7168;
                int i31111112 = i15 >> 6;
                int i31111113 = i31 << 21;
                int i418 = i15;
                int i419 = i32;
                Function2 function2B10 = b(function0A10, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i31111112 & 458752) | (i31111112 & 3670016) | (29360128 & i31111113) | (i31111113 & 234881024) | (1879048192 & i15), 0);
                if (z11) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation11 = orientation;
                iVar2 = iVarG;
                LazyLayoutKt.a(function0A10, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A10, zVarA10, orientation11, z12, z10, iVarG, (i31111112 & 57344) | ((i418 << 6) & 458752)), f.a(lazyListState, i419, iVar2, i3111118 | ((i418 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation11, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i31111111 | (i418 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation11, z12, z10, gVar, lazyListState.r(), null, iVar2, i31111110 | (i3111119 & 7168) | (57344 & (i418 << 3)) | (i418 & 458752), 64), lazyListState.z(), function2B10, iVar2, 0, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                i33 = i419;
                interfaceC0044b3 = interfaceC0044b2;
                kVar3 = kVar2;
                cVar3 = cVar2;
                dVar3 = dVar2;
            } else {
                if (i20 != 0) {
                    i32 = 0;
                } else {
                    i32 = i11;
                }
                if (i22 != 0) {
                    interfaceC0044b2 = null;
                } else {
                    interfaceC0044b2 = interfaceC0044b;
                }
                if (i24 != 0) {
                    kVar2 = null;
                } else {
                    kVar2 = kVar;
                }
                if (i26 != 0) {
                    cVar2 = null;
                } else {
                    cVar2 = cVar;
                }
                if (i29 != 0) {
                    dVar2 = null;
                } else {
                    dVar2 = dVar;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                }
                int i31111114 = (i15 >> 3) & 14;
                Function0 function0A11 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i31111114 | ((i31 >> 3) & 112));
                int i31111115 = i15 >> 9;
                z zVarA11 = w.a(lazyListState, z11, iVarG, i31111114 | (i31111115 & 112));
                objY = iVarG.y();
                if (objY == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.v vVar11 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                    iVarG.p(vVar11);
                    objY = vVar11;
                }
                int i31111116 = i15 & 112;
                int i31111117 = i15 & 7168;
                int i31111118 = i15 >> 6;
                int i31111119 = i31 << 21;
                int i4110 = i15;
                int i4111 = i32;
                Function2 function2B11 = b(function0A11, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i31111118 & 458752) | (i31111118 & 3670016) | (29360128 & i31111119) | (i31111119 & 234881024) | (1879048192 & i15), 0);
                if (z11) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation12 = orientation;
                iVar2 = iVarG;
                LazyLayoutKt.a(function0A11, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A11, zVarA11, orientation12, z12, z10, iVarG, (i31111118 & 57344) | ((i4110 << 6) & 458752)), f.a(lazyListState, i4111, iVar2, i31111114 | ((i4110 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation12, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i31111117 | (i4110 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation12, z12, z10, gVar, lazyListState.r(), null, iVar2, i31111116 | (i31111115 & 7168) | (57344 & (i4110 << 3)) | (i4110 & 458752), 64), lazyListState.z(), function2B11, iVar2, 0, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                i33 = i4111;
                interfaceC0044b3 = interfaceC0044b2;
                kVar3 = kVar2;
                cVar3 = cVar2;
                dVar3 = dVar2;
            }
            g2VarJ = iVar2.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar3, int i4112) {
                        LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                    }
                });
            }
        }
        i15 |= 3072;
        if ((i14 & 16) != 0) {
            i15 |= 24576;
        } else if ((i12 & 24576) == 0) {
            if (iVarG.a(z11)) {
                i17 = 16384;
            } else {
                i17 = 8192;
            }
            i15 |= i17;
        }
        if ((i14 & 32) != 0) {
            if ((i12 & 196608) == 0) {
                if (iVarG.O(gVar)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i15 |= i18;
            }
            if ((i14 & 64) != 0) {
                i15 |= 1572864;
            } else if ((i12 & 1572864) == 0) {
                if (iVarG.a(z12)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i15 |= i19;
            }
            i20 = i14 & 128;
            if (i20 != 0) {
                i15 |= 12582912;
            } else if ((i12 & 12582912) == 0) {
                if (iVarG.c(i11)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i15 |= i21;
            }
            i22 = i14 & 256;
            if (i22 != 0) {
                i15 |= 100663296;
            } else if ((i12 & 100663296) == 0) {
                if (iVarG.O(interfaceC0044b)) {
                    i23 = 67108864;
                } else {
                    i23 = ASTNode.PCTX_STORED;
                }
                i15 |= i23;
            }
            i24 = i14 & 512;
            if (i24 != 0) {
                i15 |= 805306368;
            } else if ((i12 & 805306368) == 0) {
                if (iVarG.O(kVar)) {
                    i25 = ASTNode.DISCARD;
                } else {
                    i25 = ASTNode.DEOP;
                }
                i15 |= i25;
            }
            i26 = i14 & 1024;
            if (i26 != 0) {
                i27 = i13 | 6;
            } else if ((i13 & 6) == 0) {
                if (iVarG.O(cVar)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i13 | i28;
            } else {
                i27 = i13;
            }
            i29 = i14 & 2048;
            if (i29 != 0) {
                i27 |= 48;
            } else if ((i13 & 48) == 0) {
                if (iVarG.O(dVar)) {
                    i30 = 32;
                } else {
                    i30 = 16;
                }
                i27 |= i30;
            }
            i31 = i27;
            if ((i14 & 4096) != 0) {
                i31 |= 384;
            } else if ((i13 & 384) == 0) {
                i31 |= iVarG.A(function1) ? 256 : 128;
            }
            if ((306783379 & i15) != 306783378) {
                if (i20 != 0) {
                    i32 = 0;
                } else {
                    i32 = i11;
                }
                if (i22 != 0) {
                    interfaceC0044b2 = null;
                } else {
                    interfaceC0044b2 = interfaceC0044b;
                }
                if (i24 != 0) {
                    kVar2 = null;
                } else {
                    kVar2 = kVar;
                }
                if (i26 != 0) {
                    cVar2 = null;
                } else {
                    cVar2 = cVar;
                }
                if (i29 != 0) {
                    dVar2 = null;
                } else {
                    dVar2 = dVar;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                }
                int i311111110 = (i15 >> 3) & 14;
                Function0 function0A12 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i311111110 | ((i31 >> 3) & 112));
                int i311111111 = i15 >> 9;
                z zVarA12 = w.a(lazyListState, z11, iVarG, i311111110 | (i311111111 & 112));
                objY = iVarG.y();
                if (objY == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.v vVar12 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                    iVarG.p(vVar12);
                    objY = vVar12;
                }
                int i311111112 = i15 & 112;
                int i311111113 = i15 & 7168;
                int i311111114 = i15 >> 6;
                int i311111115 = i31 << 21;
                int i4112 = i15;
                int i4113 = i32;
                Function2 function2B12 = b(function0A12, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i311111114 & 458752) | (i311111114 & 3670016) | (29360128 & i311111115) | (i311111115 & 234881024) | (1879048192 & i15), 0);
                if (z11) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation13 = orientation;
                iVar2 = iVarG;
                LazyLayoutKt.a(function0A12, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A12, zVarA12, orientation13, z12, z10, iVarG, (i311111114 & 57344) | ((i4112 << 6) & 458752)), f.a(lazyListState, i4113, iVar2, i311111110 | ((i4112 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation13, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i311111113 | (i4112 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation13, z12, z10, gVar, lazyListState.r(), null, iVar2, i311111112 | (i311111111 & 7168) | (57344 & (i4112 << 3)) | (i4112 & 458752), 64), lazyListState.z(), function2B12, iVar2, 0, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                i33 = i4113;
                interfaceC0044b3 = interfaceC0044b2;
                kVar3 = kVar2;
                cVar3 = cVar2;
                dVar3 = dVar2;
            } else {
                if (i20 != 0) {
                    i32 = 0;
                } else {
                    i32 = i11;
                }
                if (i22 != 0) {
                    interfaceC0044b2 = null;
                } else {
                    interfaceC0044b2 = interfaceC0044b;
                }
                if (i24 != 0) {
                    kVar2 = null;
                } else {
                    kVar2 = kVar;
                }
                if (i26 != 0) {
                    cVar2 = null;
                } else {
                    cVar2 = cVar;
                }
                if (i29 != 0) {
                    dVar2 = null;
                } else {
                    dVar2 = dVar;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
                }
                int i311111116 = (i15 >> 3) & 14;
                Function0 function0A13 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i311111116 | ((i31 >> 3) & 112));
                int i311111117 = i15 >> 9;
                z zVarA13 = w.a(lazyListState, z11, iVarG, i311111116 | (i311111117 & 112));
                objY = iVarG.y();
                if (objY == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.v vVar13 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                    iVarG.p(vVar13);
                    objY = vVar13;
                }
                int i311111118 = i15 & 112;
                int i311111119 = i15 & 7168;
                int i3111111110 = i15 >> 6;
                int i3111111111 = i31 << 21;
                int i4114 = i15;
                int i4115 = i32;
                Function2 function2B13 = b(function0A13, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i3111111110 & 458752) | (i3111111110 & 3670016) | (29360128 & i3111111111) | (i3111111111 & 234881024) | (1879048192 & i15), 0);
                if (z11) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation14 = orientation;
                iVar2 = iVarG;
                LazyLayoutKt.a(function0A13, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A13, zVarA13, orientation14, z12, z10, iVarG, (i3111111110 & 57344) | ((i4114 << 6) & 458752)), f.a(lazyListState, i4115, iVar2, i311111116 | ((i4114 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation14, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i311111119 | (i4114 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation14, z12, z10, gVar, lazyListState.r(), null, iVar2, i311111118 | (i311111117 & 7168) | (57344 & (i4114 << 3)) | (i4114 & 458752), 64), lazyListState.z(), function2B13, iVar2, 0, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                i33 = i4115;
                interfaceC0044b3 = interfaceC0044b2;
                kVar3 = kVar2;
                cVar3 = cVar2;
                dVar3 = dVar2;
            }
            g2VarJ = iVar2.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar3, int i4116) {
                        LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                    }
                });
            }
        }
        i15 |= 196608;
        if ((i14 & 64) != 0) {
            i15 |= 1572864;
        } else if ((i12 & 1572864) == 0) {
            if (iVarG.a(z12)) {
                i19 = 1048576;
            } else {
                i19 = 524288;
            }
            i15 |= i19;
        }
        i20 = i14 & 128;
        if (i20 != 0) {
            i15 |= 12582912;
        } else if ((i12 & 12582912) == 0) {
            if (iVarG.c(i11)) {
                i21 = 8388608;
            } else {
                i21 = 4194304;
            }
            i15 |= i21;
        }
        i22 = i14 & 256;
        if (i22 != 0) {
            i15 |= 100663296;
        } else if ((i12 & 100663296) == 0) {
            if (iVarG.O(interfaceC0044b)) {
                i23 = 67108864;
            } else {
                i23 = ASTNode.PCTX_STORED;
            }
            i15 |= i23;
        }
        i24 = i14 & 512;
        if (i24 != 0) {
            i15 |= 805306368;
        } else if ((i12 & 805306368) == 0) {
            if (iVarG.O(kVar)) {
                i25 = ASTNode.DISCARD;
            } else {
                i25 = ASTNode.DEOP;
            }
            i15 |= i25;
        }
        i26 = i14 & 1024;
        if (i26 != 0) {
            i27 = i13 | 6;
        } else if ((i13 & 6) == 0) {
            if (iVarG.O(cVar)) {
                i28 = 4;
            } else {
                i28 = 2;
            }
            i27 = i13 | i28;
        } else {
            i27 = i13;
        }
        i29 = i14 & 2048;
        if (i29 != 0) {
            i27 |= 48;
        } else if ((i13 & 48) == 0) {
            if (iVarG.O(dVar)) {
                i30 = 32;
            } else {
                i30 = 16;
            }
            i27 |= i30;
        }
        i31 = i27;
        if ((i14 & 4096) != 0) {
            i31 |= 384;
        } else if ((i13 & 384) == 0) {
            i31 |= iVarG.A(function1) ? 256 : 128;
        }
        if ((306783379 & i15) != 306783378) {
            if (i20 != 0) {
                i32 = 0;
            } else {
                i32 = i11;
            }
            if (i22 != 0) {
                interfaceC0044b2 = null;
            } else {
                interfaceC0044b2 = interfaceC0044b;
            }
            if (i24 != 0) {
                kVar2 = null;
            } else {
                kVar2 = kVar;
            }
            if (i26 != 0) {
                cVar2 = null;
            } else {
                cVar2 = cVar;
            }
            if (i29 != 0) {
                dVar2 = null;
            } else {
                dVar2 = dVar;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
            }
            int i3111111112 = (i15 >> 3) & 14;
            Function0 function0A14 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i3111111112 | ((i31 >> 3) & 112));
            int i3111111113 = i15 >> 9;
            z zVarA14 = w.a(lazyListState, z11, iVarG, i3111111112 | (i3111111113 & 112));
            objY = iVarG.y();
            if (objY == androidx.compose.runtime.i.f3736a.a()) {
                androidx.compose.runtime.v vVar14 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                iVarG.p(vVar14);
                objY = vVar14;
            }
            int i3111111114 = i15 & 112;
            int i3111111115 = i15 & 7168;
            int i3111111116 = i15 >> 6;
            int i3111111117 = i31 << 21;
            int i4116 = i15;
            int i4117 = i32;
            Function2 function2B14 = b(function0A14, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i3111111116 & 458752) | (i3111111116 & 3670016) | (29360128 & i3111111117) | (i3111111117 & 234881024) | (1879048192 & i15), 0);
            if (z11) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            Orientation orientation15 = orientation;
            iVar2 = iVarG;
            LazyLayoutKt.a(function0A14, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A14, zVarA14, orientation15, z12, z10, iVarG, (i3111111116 & 57344) | ((i4116 << 6) & 458752)), f.a(lazyListState, i4117, iVar2, i3111111112 | ((i4116 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation15, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i3111111115 | (i4116 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation15, z12, z10, gVar, lazyListState.r(), null, iVar2, i3111111114 | (i3111111113 & 7168) | (57344 & (i4116 << 3)) | (i4116 & 458752), 64), lazyListState.z(), function2B14, iVar2, 0, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            i33 = i4117;
            interfaceC0044b3 = interfaceC0044b2;
            kVar3 = kVar2;
            cVar3 = cVar2;
            dVar3 = dVar2;
        } else {
            if (i20 != 0) {
                i32 = 0;
            } else {
                i32 = i11;
            }
            if (i22 != 0) {
                interfaceC0044b2 = null;
            } else {
                interfaceC0044b2 = interfaceC0044b;
            }
            if (i24 != 0) {
                kVar2 = null;
            } else {
                kVar2 = kVar;
            }
            if (i26 != 0) {
                cVar2 = null;
            } else {
                cVar2 = cVar;
            }
            if (i29 != 0) {
                dVar2 = null;
            } else {
                dVar2 = dVar;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(620764179, i15, i31, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:80)");
            }
            int i3111111118 = (i15 >> 3) & 14;
            Function0 function0A15 = LazyListItemProviderKt.a(lazyListState, function1, iVarG, i3111111118 | ((i31 >> 3) & 112));
            int i3111111119 = i15 >> 9;
            z zVarA15 = w.a(lazyListState, z11, iVarG, i3111111118 | (i3111111119 & 112));
            objY = iVarG.y();
            if (objY == androidx.compose.runtime.i.f3736a.a()) {
                androidx.compose.runtime.v vVar15 = new androidx.compose.runtime.v(g0.g(EmptyCoroutineContext.INSTANCE, iVarG));
                iVarG.p(vVar15);
                objY = vVar15;
            }
            int i31111111110 = i15 & 112;
            int i31111111111 = i15 & 7168;
            int i31111111112 = i15 >> 6;
            int i31111111113 = i31 << 21;
            int i4118 = i15;
            int i4119 = i32;
            Function2 function2B15 = b(function0A15, lazyListState, tVar, z10, z11, i32, interfaceC0044b2, cVar2, dVar2, kVar2, ((androidx.compose.runtime.v) objY).a(), (a4) iVarG.l(CompositionLocalsKt.e()), !((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue(), iVarG, (65520 & i15) | (i31111111112 & 458752) | (i31111111112 & 3670016) | (29360128 & i31111111113) | (i31111111113 & 234881024) | (1879048192 & i15), 0);
            if (z11) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            Orientation orientation16 = orientation;
            iVar2 = iVarG;
            LazyLayoutKt.a(function0A15, i0.a(androidx.compose.foundation.lazy.layout.g.b(a0.c(fVar.e(lazyListState.B()).e(lazyListState.m()), function0A15, zVarA15, orientation16, z12, z10, iVarG, (i31111111112 & 57344) | ((i4118 << 6) & 458752)), f.a(lazyListState, i4119, iVar2, i3111111118 | ((i4118 >> 18) & 112)), lazyListState.n(), z10, (LayoutDirection) iVar2.l(CompositionLocalsKt.g()), orientation16, z12, iVar2, (androidx.compose.runtime.collection.b.f3680d << 6) | i31111111111 | (i4118 & 3670016)).e(lazyListState.s().i()), lazyListState, orientation16, z12, z10, gVar, lazyListState.r(), null, iVar2, i31111111110 | (i3111111119 & 7168) | (57344 & (i4118 << 3)) | (i4118 & 458752), 64), lazyListState.z(), function2B15, iVar2, 0, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            i33 = i4119;
            interfaceC0044b3 = interfaceC0044b2;
            kVar3 = kVar2;
            cVar3 = cVar2;
            dVar3 = dVar2;
        }
        g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListKt$LazyList$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar3, int i41110) {
                    LazyListKt.a(fVar, lazyListState, tVar, z10, z11, gVar, z12, i33, interfaceC0044b3, kVar3, cVar3, dVar3, function1, iVar3, v1.a(i12 | 1), v1.a(i13), i14);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:83:0x0101  */
    private static final Function2 b(final Function0 function0, final LazyListState lazyListState, final androidx.compose.foundation.layout.t tVar, final boolean z10, final boolean z11, final int i11, final androidx.compose.ui.b.InterfaceC0044b interfaceC0044b, final androidx.compose.ui.b.c cVar, final androidx.compose.foundation.layout.b.d dVar, final androidx.compose.foundation.layout.b.k kVar, final n0 n0Var, final a4 a4Var, final boolean z12, androidx.compose.runtime.i iVar, int i12, int i13) {
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1972347046, i12, i13, "androidx.compose.foundation.lazy.rememberLazyListMeasurePolicy (LazyList.kt:170)");
        }
        if (((i12 & 112) ^ 48) > 32 && iVar.O(lazyListState)) {
            z13 = true;
        } else if ((i12 & 48) == 32) {
            z13 = true;
        } else {
            z13 = false;
        }
        boolean z17 = z13 | ((((i12 & 896) ^ 384) > 256 && iVar.O(tVar)) || (i12 & 384) == 256) | ((((i12 & 7168) ^ 3072) > 2048 && iVar.a(z10)) || (i12 & 3072) == 2048) | ((((57344 & i12) ^ 24576) > 16384 && iVar.a(z11)) || (i12 & 24576) == 16384) | ((((3670016 & i12) ^ 1572864) > 1048576 && iVar.O(interfaceC0044b)) || (i12 & 1572864) == 1048576) | ((((29360128 & i12) ^ 12582912) > 8388608 && iVar.O(cVar)) || (i12 & 12582912) == 8388608);
        if (((234881024 & i12) ^ 100663296) > 67108864 && iVar.O(dVar)) {
            z14 = true;
        } else if ((100663296 & i12) == 67108864) {
            z14 = true;
        } else {
            z14 = false;
        }
        boolean z18 = z17 | z14;
        if (((1879048192 & i12) ^ 805306368) > 536870912 && iVar.O(kVar)) {
            z15 = true;
        } else if ((i12 & 805306368) == 536870912) {
            z15 = true;
        } else {
            z15 = false;
        }
        boolean zO = z15 | z18 | iVar.O(a4Var);
        if (((i13 & 896) ^ 384) > 256 && iVar.a(z12)) {
            z16 = true;
        } else if ((i13 & 384) == 256) {
            z16 = true;
        } else {
            z16 = false;
        }
        boolean z19 = zO | z16;
        Object objY = iVar.y();
        if (z19 || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new Function2<androidx.compose.foundation.lazy.layout.q, o0.b, m>() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1

                public static final class a extends o {

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    final /* synthetic */ boolean f2895d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    final /* synthetic */ androidx.compose.foundation.lazy.layout.q f2896e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    final /* synthetic */ int f2897f;

                    /* JADX INFO: renamed from: g, reason: collision with root package name */
                    final /* synthetic */ int f2898g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    final /* synthetic */ androidx.compose.ui.b.InterfaceC0044b f2899h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    final /* synthetic */ androidx.compose.ui.b.c f2900i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    final /* synthetic */ boolean f2901j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    final /* synthetic */ int f2902k;

                    /* JADX INFO: renamed from: l, reason: collision with root package name */
                    final /* synthetic */ int f2903l;

                    /* JADX INFO: renamed from: m, reason: collision with root package name */
                    final /* synthetic */ long f2904m;

                    /* JADX INFO: renamed from: n, reason: collision with root package name */
                    final /* synthetic */ LazyListState f2905n;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    a(long j11, boolean z10, k kVar, androidx.compose.foundation.lazy.layout.q qVar, int i11, int i12, androidx.compose.ui.b.InterfaceC0044b interfaceC0044b, androidx.compose.ui.b.c cVar, boolean z11, int i13, int i14, long j12, LazyListState lazyListState) {
                        super(j11, z10, kVar, qVar, null);
                        this.f2895d = z10;
                        this.f2896e = qVar;
                        this.f2897f = i11;
                        this.f2898g = i12;
                        this.f2899h = interfaceC0044b;
                        this.f2900i = cVar;
                        this.f2901j = z11;
                        this.f2902k = i13;
                        this.f2903l = i14;
                        this.f2904m = j12;
                        this.f2905n = lazyListState;
                    }

                    @Override // androidx.compose.foundation.lazy.o
                    public n b(int i11, Object obj, Object obj2, List list, long j11) {
                        return new n(i11, list, this.f2895d, this.f2899h, this.f2900i, this.f2896e.getLayoutDirection(), this.f2901j, this.f2902k, this.f2903l, i11 == this.f2897f + (-1) ? 0 : this.f2898g, this.f2904m, obj, obj2, this.f2905n.s(), j11, null);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    return m42invoke0kLqBqw((androidx.compose.foundation.lazy.layout.q) obj, ((o0.b) obj2).r());
                }

                /* JADX INFO: renamed from: invoke-0kLqBqw, reason: not valid java name */
                public final m m42invoke0kLqBqw(final androidx.compose.foundation.lazy.layout.q qVar, final long j11) {
                    int i14;
                    float fA;
                    long jA;
                    e0.a(lazyListState.u());
                    boolean z20 = lazyListState.q() || qVar.W();
                    androidx.compose.foundation.d.a(j11, z11 ? Orientation.Vertical : Orientation.Horizontal);
                    int iC0 = z11 ? qVar.c0(tVar.b(qVar.getLayoutDirection())) : qVar.c0(PaddingKt.e(tVar, qVar.getLayoutDirection()));
                    int iC1 = z11 ? qVar.c0(tVar.c(qVar.getLayoutDirection())) : qVar.c0(PaddingKt.d(tVar, qVar.getLayoutDirection()));
                    int iC2 = qVar.c0(tVar.d());
                    int iC3 = qVar.c0(tVar.a());
                    final int i15 = iC2 + iC3;
                    final int i16 = iC0 + iC1;
                    boolean z21 = z11;
                    int i17 = z21 ? i15 : i16;
                    if (z21 && !z10) {
                        i14 = iC2;
                    } else if (z21 && z10) {
                        i14 = iC3;
                    } else {
                        i14 = (z21 || z10) ? iC1 : iC0;
                    }
                    int i18 = i17 - i14;
                    long jN = o0.c.n(j11, -i16, -i15);
                    k kVar2 = (k) function0.invoke();
                    kVar2.d().a(o0.b.l(jN), o0.b.k(jN));
                    if (z11) {
                        androidx.compose.foundation.layout.b.k kVar3 = kVar;
                        if (kVar3 == null) {
                            throw new IllegalArgumentException("null verticalArrangement when isVertical == true");
                        }
                        fA = kVar3.a();
                    } else {
                        androidx.compose.foundation.layout.b.d dVar2 = dVar;
                        if (dVar2 == null) {
                            throw new IllegalArgumentException("null horizontalAlignment when isVertical == false");
                        }
                        fA = dVar2.a();
                    }
                    int iC4 = qVar.c0(fA);
                    int itemCount = kVar2.getItemCount();
                    int iK = z11 ? o0.b.k(j11) - i15 : o0.b.l(j11) - i16;
                    if (!z10 || iK > 0) {
                        jA = o0.q.a(iC0, iC2);
                    } else {
                        boolean z22 = z11;
                        if (!z22) {
                            iC0 += iK;
                        }
                        if (z22) {
                            iC2 += iK;
                        }
                        jA = o0.q.a(iC0, iC2);
                    }
                    a aVar = new a(jN, z11, kVar2, qVar, itemCount, iC4, interfaceC0044b, cVar, z10, i14, i18, jA, lazyListState);
                    androidx.compose.runtime.snapshots.j.a aVar2 = androidx.compose.runtime.snapshots.j.f4004e;
                    LazyListState lazyListState2 = lazyListState;
                    androidx.compose.runtime.snapshots.j jVarD = aVar2.d();
                    Function1 function1H = jVarD != null ? jVarD.h() : null;
                    androidx.compose.runtime.snapshots.j jVarF = aVar2.f(jVarD);
                    try {
                        int iM = lazyListState2.M(kVar2, lazyListState2.o());
                        int iP = lazyListState2.p();
                        Unit unit = Unit.f67061a;
                        aVar2.m(jVarD, jVarF, function1H);
                        List listA = androidx.compose.foundation.lazy.layout.i.a(kVar2, lazyListState.w(), lazyListState.n());
                        m mVarE = LazyListMeasureKt.e(itemCount, aVar, iK, i14, i18, iC4, iM, iP, (qVar.W() || !z20) ? lazyListState.D() : lazyListState.C(), jN, z11, z12 ? kVar2.f() : CollectionsKt.l(), kVar, dVar, z10, qVar, lazyListState.s(), i11, listA, z20, qVar.W(), lazyListState.y(), n0Var, lazyListState.x(), a4Var, new Function3<Integer, Integer, Function1<? super androidx.compose.ui.layout.g0.a, ? extends Unit>, androidx.compose.ui.layout.v>() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            public final androidx.compose.ui.layout.v invoke(int i19, int i20, Function1<? super androidx.compose.ui.layout.g0.a, Unit> function1) {
                                return qVar.p0(o0.c.i(j11, i19 + i16), o0.c.h(j11, i20 + i15), MapsKt.h(), function1);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                                return invoke(((Number) obj).intValue(), ((Number) obj2).intValue(), (Function1<? super androidx.compose.ui.layout.g0.a, Unit>) obj3);
                            }
                        });
                        LazyListState.l(lazyListState, mVarE, qVar.W(), false, 4, null);
                        return mVarE;
                    } catch (Throwable th2) {
                        aVar2.m(jVarD, jVarF, function1H);
                        throw th2;
                    }
                }
            };
            iVar.p(objY);
        }
        Function2 function2 = (Function2) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return function2;
    }
}
