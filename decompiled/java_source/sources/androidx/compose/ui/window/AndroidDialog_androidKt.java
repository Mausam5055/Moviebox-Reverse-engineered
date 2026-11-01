package androidx.compose.ui.window;

import android.view.View;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.c0;
import androidx.compose.runtime.d0;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.m;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.layout.x;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.n;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidDialog_androidKt {
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:27:0x004a  */
    /* JADX WARN: Code duplicated, block: B:29:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x0057  */
    /* JADX WARN: Code duplicated, block: B:40:0x006e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:44:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:54:0x012d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0135  */
    /* JADX WARN: Code duplicated, block: B:59:0x014b  */
    /* JADX WARN: Code duplicated, block: B:60:0x014d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0156  */
    /* JADX WARN: Code duplicated, block: B:67:0x0165  */
    /* JADX WARN: Code duplicated, block: B:71:0x0171  */
    /* JADX WARN: Code duplicated, block: B:74:0x0186  */
    /* JADX WARN: Code duplicated, block: B:78:0x0190  */
    /* JADX WARN: Code duplicated, block: B:80:? A[RETURN, SYNTHETIC] */
    public static final void a(final Function0 function0, c cVar, final Function2 function2, androidx.compose.runtime.i iVar, final int i11, final int i12) {
        int i13;
        c cVar2;
        int i14;
        View view;
        o0.e eVar;
        final LayoutDirection layoutDirection;
        m mVarC;
        final a3 a3VarI;
        UUID uuid;
        boolean zO;
        Object obj;
        androidx.compose.runtime.i iVar2;
        final DialogWrapper dialogWrapper;
        boolean zA;
        Object objY;
        boolean z10;
        boolean zO2;
        Object objY2;
        final c cVar3;
        final c cVar4;
        androidx.compose.runtime.i iVar3;
        g2 g2VarJ;
        androidx.compose.runtime.i iVarG = iVar.g(-2032877254);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.A(function0) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        int i15 = i12 & 2;
        if (i15 == 0) {
            if ((i11 & 48) == 0) {
                cVar2 = cVar;
                i13 |= iVarG.O(cVar2) ? 32 : 16;
            }
            if ((i12 & 4) != 0) {
                i13 |= 384;
            } else if ((i11 & 384) == 0) {
                if (iVarG.A(function2)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i13 |= i14;
            }
            if ((i13 & 147) == 146 || !iVarG.h()) {
                if (i15 != 0) {
                    cVar2 = new c(false, false, false, 7, (DefaultConstructorMarker) null);
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-2032877254, i13, -1, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:166)");
                }
                view = (View) iVarG.l(AndroidCompositionLocals_androidKt.j());
                eVar = (o0.e) iVarG.l(CompositionLocalsKt.c());
                layoutDirection = (LayoutDirection) iVarG.l(CompositionLocalsKt.g());
                mVarC = androidx.compose.runtime.g.c(iVarG, 0);
                a3VarI = r2.i(function2, iVarG, (i13 >> 6) & 14);
                uuid = (UUID) RememberSaveableKt.c(new Object[0], null, null, new Function0<UUID>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialogId$1
                    @Override // kotlin.jvm.functions.Function0
                    public final UUID invoke() {
                        return UUID.randomUUID();
                    }
                }, iVarG, 3072, 6);
                zO = iVarG.O(view) | iVarG.O(eVar);
                Object objY3 = iVarG.y();
                if (!zO || objY3 == androidx.compose.runtime.i.f3736a.a()) {
                    androidx.compose.runtime.i iVar4 = iVarG;
                    DialogWrapper dialogWrapper2 = new DialogWrapper(function0, cVar2, view, layoutDirection, eVar, uuid);
                    dialogWrapper2.h(mVarC, androidx.compose.runtime.internal.b.b(488261145, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                            invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar5, int i16) {
                            if ((i16 & 3) == 2 && iVar5.h()) {
                                iVar5.G();
                                return;
                            }
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.Q(488261145, i16, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:185)");
                            }
                            androidx.compose.ui.f fVarC = androidx.compose.ui.semantics.k.c(androidx.compose.ui.f.f4178a, false, new Function1<n, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                    invoke((n) obj2);
                                    return Unit.f67061a;
                                }

                                public final void invoke(n nVar) {
                                    SemanticsPropertiesKt.e(nVar);
                                }
                            }, 1, null);
                            final a3 a3Var = a3VarI;
                            AndroidDialog_androidKt.c(fVarC, androidx.compose.runtime.internal.b.d(-533674951, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.2
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                                    return Unit.f67061a;
                                }

                                public final void invoke(androidx.compose.runtime.i iVar6, int i17) {
                                    if ((i17 & 3) == 2 && iVar6.h()) {
                                        iVar6.G();
                                        return;
                                    }
                                    if (androidx.compose.runtime.k.H()) {
                                        androidx.compose.runtime.k.Q(-533674951, i17, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:188)");
                                    }
                                    AndroidDialog_androidKt.b(a3Var).invoke(iVar6, 0);
                                    if (androidx.compose.runtime.k.H()) {
                                        androidx.compose.runtime.k.P();
                                    }
                                }
                            }, iVar5, 54), iVar5, 48, 0);
                            if (androidx.compose.runtime.k.H()) {
                                androidx.compose.runtime.k.P();
                            }
                        }
                    }));
                    iVar4.p(dialogWrapper2);
                    iVar2 = iVar4;
                    obj = dialogWrapper2;
                } else {
                    iVar2 = iVarG;
                    obj = objY3;
                }
                dialogWrapper = (DialogWrapper) obj;
                zA = iVar2.A(dialogWrapper);
                objY = iVar2.y();
                if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                    objY = new Function1<d0, c0>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$1$1

                        public static final class a implements c0 {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            final /* synthetic */ DialogWrapper f6519a;

                            public a(DialogWrapper dialogWrapper) {
                                this.f6519a = dialogWrapper;
                            }

                            @Override // androidx.compose.runtime.c0
                            public void dispose() {
                                this.f6519a.dismiss();
                                this.f6519a.g();
                            }
                        }

                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final c0 invoke(d0 d0Var) {
                            dialogWrapper.show();
                            return new a(dialogWrapper);
                        }
                    };
                    iVar2.p(objY);
                }
                g0.a(dialogWrapper, (Function1) objY, iVar2, 0);
                boolean zA2 = iVar2.A(dialogWrapper);
                if ((i13 & 14) == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zO2 = zA2 | z10 | ((i13 & 112) == 32) | iVar2.O(layoutDirection);
                objY2 = iVar2.y();
                if (!zO2 || objY2 == androidx.compose.runtime.i.f3736a.a()) {
                    cVar3 = cVar2;
                    objY2 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m188invoke();
                            return Unit.f67061a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m188invoke() {
                            dialogWrapper.k(function0, cVar3, layoutDirection);
                        }
                    };
                    iVar2.p(objY2);
                } else {
                    cVar3 = cVar2;
                }
                g0.e((Function0) objY2, iVar2, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                cVar4 = cVar3;
                iVar3 = iVar2;
            } else {
                iVarG.G();
                cVar4 = cVar2;
                iVar3 = iVarG;
            }
            g2VarJ = iVar3.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar5, int i16) {
                        AndroidDialog_androidKt.a(function0, cVar4, function2, iVar5, v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 48;
        cVar2 = cVar;
        if ((i12 & 4) != 0) {
            i13 |= 384;
        } else if ((i11 & 384) == 0) {
            if (iVarG.A(function2)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i13 |= i14;
        }
        if ((i13 & 147) == 146) {
            if (i15 != 0) {
                cVar2 = new c(false, false, false, 7, (DefaultConstructorMarker) null);
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-2032877254, i13, -1, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:166)");
            }
            view = (View) iVarG.l(AndroidCompositionLocals_androidKt.j());
            eVar = (o0.e) iVarG.l(CompositionLocalsKt.c());
            layoutDirection = (LayoutDirection) iVarG.l(CompositionLocalsKt.g());
            mVarC = androidx.compose.runtime.g.c(iVarG, 0);
            a3VarI = r2.i(function2, iVarG, (i13 >> 6) & 14);
            uuid = (UUID) RememberSaveableKt.c(new Object[0], null, null, new Function0<UUID>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialogId$1
                @Override // kotlin.jvm.functions.Function0
                public final UUID invoke() {
                    return UUID.randomUUID();
                }
            }, iVarG, 3072, 6);
            zO = iVarG.O(view) | iVarG.O(eVar);
            Object objY4 = iVarG.y();
            if (zO) {
                androidx.compose.runtime.i iVar5 = iVarG;
                DialogWrapper dialogWrapper3 = new DialogWrapper(function0, cVar2, view, layoutDirection, eVar, uuid);
                dialogWrapper3.h(mVarC, androidx.compose.runtime.internal.b.b(488261145, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar6, int i16) {
                        if ((i16 & 3) == 2 && iVar6.h()) {
                            iVar6.G();
                            return;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(488261145, i16, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:185)");
                        }
                        androidx.compose.ui.f fVarC = androidx.compose.ui.semantics.k.c(androidx.compose.ui.f.f4178a, false, new Function1<n, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                invoke((n) obj2);
                                return Unit.f67061a;
                            }

                            public final void invoke(n nVar) {
                                SemanticsPropertiesKt.e(nVar);
                            }
                        }, 1, null);
                        final a3 a3Var = a3VarI;
                        AndroidDialog_androidKt.c(fVarC, androidx.compose.runtime.internal.b.d(-533674951, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                                invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar7, int i17) {
                                if ((i17 & 3) == 2 && iVar7.h()) {
                                    iVar7.G();
                                    return;
                                }
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.Q(-533674951, i17, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:188)");
                                }
                                AndroidDialog_androidKt.b(a3Var).invoke(iVar7, 0);
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.P();
                                }
                            }
                        }, iVar6, 54), iVar6, 48, 0);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                    }
                }));
                iVar5.p(dialogWrapper3);
                iVar2 = iVar5;
                obj = dialogWrapper3;
            } else {
                androidx.compose.runtime.i iVar6 = iVarG;
                DialogWrapper dialogWrapper4 = new DialogWrapper(function0, cVar2, view, layoutDirection, eVar, uuid);
                dialogWrapper4.h(mVarC, androidx.compose.runtime.internal.b.b(488261145, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar7, int i16) {
                        if ((i16 & 3) == 2 && iVar7.h()) {
                            iVar7.G();
                            return;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(488261145, i16, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:185)");
                        }
                        androidx.compose.ui.f fVarC = androidx.compose.ui.semantics.k.c(androidx.compose.ui.f.f4178a, false, new Function1<n, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                invoke((n) obj2);
                                return Unit.f67061a;
                            }

                            public final void invoke(n nVar) {
                                SemanticsPropertiesKt.e(nVar);
                            }
                        }, 1, null);
                        final a3 a3Var = a3VarI;
                        AndroidDialog_androidKt.c(fVarC, androidx.compose.runtime.internal.b.d(-533674951, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                                invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar8, int i17) {
                                if ((i17 & 3) == 2 && iVar8.h()) {
                                    iVar8.G();
                                    return;
                                }
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.Q(-533674951, i17, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:188)");
                                }
                                AndroidDialog_androidKt.b(a3Var).invoke(iVar8, 0);
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.P();
                                }
                            }
                        }, iVar7, 54), iVar7, 48, 0);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                    }
                }));
                iVar6.p(dialogWrapper4);
                iVar2 = iVar6;
                obj = dialogWrapper4;
            }
            dialogWrapper = (DialogWrapper) obj;
            zA = iVar2.A(dialogWrapper);
            objY = iVar2.y();
            if (zA) {
                objY = new Function1<d0, c0>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$1$1

                    public static final class a implements c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ DialogWrapper f6519a;

                        public a(DialogWrapper dialogWrapper) {
                            this.f6519a = dialogWrapper;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f6519a.dismiss();
                            this.f6519a.g();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final c0 invoke(d0 d0Var) {
                        dialogWrapper.show();
                        return new a(dialogWrapper);
                    }
                };
                iVar2.p(objY);
            } else {
                objY = new Function1<d0, c0>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$1$1

                    public static final class a implements c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ DialogWrapper f6519a;

                        public a(DialogWrapper dialogWrapper) {
                            this.f6519a = dialogWrapper;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f6519a.dismiss();
                            this.f6519a.g();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final c0 invoke(d0 d0Var) {
                        dialogWrapper.show();
                        return new a(dialogWrapper);
                    }
                };
                iVar2.p(objY);
            }
            g0.a(dialogWrapper, (Function1) objY, iVar2, 0);
            boolean zA3 = iVar2.A(dialogWrapper);
            if ((i13 & 14) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            zO2 = zA3 | z10 | ((i13 & 112) == 32) | iVar2.O(layoutDirection);
            objY2 = iVar2.y();
            if (zO2) {
                cVar3 = cVar2;
                objY2 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m188invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m188invoke() {
                        dialogWrapper.k(function0, cVar3, layoutDirection);
                    }
                };
                iVar2.p(objY2);
            } else {
                cVar3 = cVar2;
                objY2 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m188invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m188invoke() {
                        dialogWrapper.k(function0, cVar3, layoutDirection);
                    }
                };
                iVar2.p(objY2);
            }
            g0.e((Function0) objY2, iVar2, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            cVar4 = cVar3;
            iVar3 = iVar2;
        } else {
            if (i15 != 0) {
                cVar2 = new c(false, false, false, 7, (DefaultConstructorMarker) null);
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-2032877254, i13, -1, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:166)");
            }
            view = (View) iVarG.l(AndroidCompositionLocals_androidKt.j());
            eVar = (o0.e) iVarG.l(CompositionLocalsKt.c());
            layoutDirection = (LayoutDirection) iVarG.l(CompositionLocalsKt.g());
            mVarC = androidx.compose.runtime.g.c(iVarG, 0);
            a3VarI = r2.i(function2, iVarG, (i13 >> 6) & 14);
            uuid = (UUID) RememberSaveableKt.c(new Object[0], null, null, new Function0<UUID>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialogId$1
                @Override // kotlin.jvm.functions.Function0
                public final UUID invoke() {
                    return UUID.randomUUID();
                }
            }, iVarG, 3072, 6);
            zO = iVarG.O(view) | iVarG.O(eVar);
            Object objY5 = iVarG.y();
            if (zO) {
                androidx.compose.runtime.i iVar7 = iVarG;
                DialogWrapper dialogWrapper5 = new DialogWrapper(function0, cVar2, view, layoutDirection, eVar, uuid);
                dialogWrapper5.h(mVarC, androidx.compose.runtime.internal.b.b(488261145, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar8, int i16) {
                        if ((i16 & 3) == 2 && iVar8.h()) {
                            iVar8.G();
                            return;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(488261145, i16, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:185)");
                        }
                        androidx.compose.ui.f fVarC = androidx.compose.ui.semantics.k.c(androidx.compose.ui.f.f4178a, false, new Function1<n, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                invoke((n) obj2);
                                return Unit.f67061a;
                            }

                            public final void invoke(n nVar) {
                                SemanticsPropertiesKt.e(nVar);
                            }
                        }, 1, null);
                        final a3 a3Var = a3VarI;
                        AndroidDialog_androidKt.c(fVarC, androidx.compose.runtime.internal.b.d(-533674951, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                                invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar9, int i17) {
                                if ((i17 & 3) == 2 && iVar9.h()) {
                                    iVar9.G();
                                    return;
                                }
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.Q(-533674951, i17, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:188)");
                                }
                                AndroidDialog_androidKt.b(a3Var).invoke(iVar9, 0);
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.P();
                                }
                            }
                        }, iVar8, 54), iVar8, 48, 0);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                    }
                }));
                iVar7.p(dialogWrapper5);
                iVar2 = iVar7;
                obj = dialogWrapper5;
            } else {
                androidx.compose.runtime.i iVar8 = iVarG;
                DialogWrapper dialogWrapper6 = new DialogWrapper(function0, cVar2, view, layoutDirection, eVar, uuid);
                dialogWrapper6.h(mVarC, androidx.compose.runtime.internal.b.b(488261145, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar9, int i16) {
                        if ((i16 & 3) == 2 && iVar9.h()) {
                            iVar9.G();
                            return;
                        }
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(488261145, i16, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:185)");
                        }
                        androidx.compose.ui.f fVarC = androidx.compose.ui.semantics.k.c(androidx.compose.ui.f.f4178a, false, new Function1<n, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                invoke((n) obj2);
                                return Unit.f67061a;
                            }

                            public final void invoke(n nVar) {
                                SemanticsPropertiesKt.e(nVar);
                            }
                        }, 1, null);
                        final a3 a3Var = a3VarI;
                        AndroidDialog_androidKt.c(fVarC, androidx.compose.runtime.internal.b.d(-533674951, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$dialog$1$1$1.2
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                                invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                                return Unit.f67061a;
                            }

                            public final void invoke(androidx.compose.runtime.i iVar10, int i17) {
                                if ((i17 & 3) == 2 && iVar10.h()) {
                                    iVar10.G();
                                    return;
                                }
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.Q(-533674951, i17, -1, "androidx.compose.ui.window.Dialog.<anonymous>.<anonymous>.<anonymous>.<anonymous> (AndroidDialog.android.kt:188)");
                                }
                                AndroidDialog_androidKt.b(a3Var).invoke(iVar10, 0);
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.P();
                                }
                            }
                        }, iVar9, 54), iVar9, 48, 0);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                    }
                }));
                iVar8.p(dialogWrapper6);
                iVar2 = iVar8;
                obj = dialogWrapper6;
            }
            dialogWrapper = (DialogWrapper) obj;
            zA = iVar2.A(dialogWrapper);
            objY = iVar2.y();
            if (zA) {
                objY = new Function1<d0, c0>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$1$1

                    public static final class a implements c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ DialogWrapper f6519a;

                        public a(DialogWrapper dialogWrapper) {
                            this.f6519a = dialogWrapper;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f6519a.dismiss();
                            this.f6519a.g();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final c0 invoke(d0 d0Var) {
                        dialogWrapper.show();
                        return new a(dialogWrapper);
                    }
                };
                iVar2.p(objY);
            } else {
                objY = new Function1<d0, c0>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$1$1

                    public static final class a implements c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ DialogWrapper f6519a;

                        public a(DialogWrapper dialogWrapper) {
                            this.f6519a = dialogWrapper;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f6519a.dismiss();
                            this.f6519a.g();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final c0 invoke(d0 d0Var) {
                        dialogWrapper.show();
                        return new a(dialogWrapper);
                    }
                };
                iVar2.p(objY);
            }
            g0.a(dialogWrapper, (Function1) objY, iVar2, 0);
            boolean zA4 = iVar2.A(dialogWrapper);
            if ((i13 & 14) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            zO2 = zA4 | z10 | ((i13 & 112) == 32) | iVar2.O(layoutDirection);
            objY2 = iVar2.y();
            if (zO2) {
                cVar3 = cVar2;
                objY2 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m188invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m188invoke() {
                        dialogWrapper.k(function0, cVar3, layoutDirection);
                    }
                };
                iVar2.p(objY2);
            } else {
                cVar3 = cVar2;
                objY2 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m188invoke();
                        return Unit.f67061a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m188invoke() {
                        dialogWrapper.k(function0, cVar3, layoutDirection);
                    }
                };
                iVar2.p(objY2);
            }
            g0.e((Function0) objY2, iVar2, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            cVar4 = cVar3;
            iVar3 = iVar2;
        }
        g2VarJ = iVar3.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar9, int i16) {
                    AndroidDialog_androidKt.a(function0, cVar4, function2, iVar9, v1.a(i11 | 1), i12);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function2 b(a3 a3Var) {
        return (Function2) a3Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(final androidx.compose.ui.f fVar, final Function2 function2, androidx.compose.runtime.i iVar, final int i11, final int i12) {
        int i13;
        androidx.compose.runtime.i iVarG = iVar.g(-1177876616);
        int i14 = i12 & 1;
        if (i14 != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.O(fVar) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i11 & 48) == 0) {
            i13 |= iVarG.A(function2) ? 32 : 16;
        }
        if ((i13 & 19) == 18 && iVarG.h()) {
            iVarG.G();
        } else {
            if (i14 != 0) {
                fVar = androidx.compose.ui.f.f4178a;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1177876616, i13, -1, "androidx.compose.ui.window.DialogLayout (AndroidDialog.android.kt:464)");
            }
            AndroidDialog_androidKt$DialogLayout$1 androidDialog_androidKt$DialogLayout$1 = new t() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$1
                @Override // androidx.compose.ui.layout.t
                public final v c(x xVar, List list, long j11) {
                    Object obj;
                    final ArrayList arrayList = new ArrayList(list.size());
                    int size = list.size();
                    for (int i15 = 0; i15 < size; i15++) {
                        arrayList.add(((s) list.get(i15)).P(j11));
                    }
                    Object obj2 = null;
                    int i16 = 1;
                    if (!arrayList.isEmpty()) {
                        obj = arrayList.get(0);
                        int iU0 = ((androidx.compose.ui.layout.g0) obj).u0();
                        int iN = CollectionsKt.n(arrayList);
                        if (1 <= iN) {
                            int i17 = 1;
                            while (true) {
                                Object obj3 = arrayList.get(i17);
                                int iU1 = ((androidx.compose.ui.layout.g0) obj3).u0();
                                if (iU0 < iU1) {
                                    obj = obj3;
                                    iU0 = iU1;
                                }
                                if (i17 == iN) {
                                    break;
                                }
                                i17++;
                            }
                        }
                    } else {
                        obj = null;
                    }
                    androidx.compose.ui.layout.g0 g0Var = (androidx.compose.ui.layout.g0) obj;
                    int iU2 = g0Var != null ? g0Var.u0() : o0.b.n(j11);
                    if (!arrayList.isEmpty()) {
                        Object obj4 = arrayList.get(0);
                        int iL0 = ((androidx.compose.ui.layout.g0) obj4).l0();
                        int iN2 = CollectionsKt.n(arrayList);
                        if (1 <= iN2) {
                            while (true) {
                                Object obj5 = arrayList.get(i16);
                                int iL1 = ((androidx.compose.ui.layout.g0) obj5).l0();
                                if (iL0 < iL1) {
                                    obj4 = obj5;
                                    iL0 = iL1;
                                }
                                if (i16 == iN2) {
                                    break;
                                }
                                i16++;
                            }
                        }
                        obj2 = obj4;
                    }
                    androidx.compose.ui.layout.g0 g0Var2 = (androidx.compose.ui.layout.g0) obj2;
                    return w.b(xVar, iU2, g0Var2 != null ? g0Var2.l0() : o0.b.m(j11), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj6) {
                            invoke((androidx.compose.ui.layout.g0.a) obj6);
                            return Unit.f67061a;
                        }

                        public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                            List<androidx.compose.ui.layout.g0> list2 = arrayList;
                            int size2 = list2.size();
                            for (int i18 = 0; i18 < size2; i18++) {
                                androidx.compose.ui.layout.g0.a.l(aVar, list2.get(i18), 0, 0, 0.0f, 4, null);
                            }
                        }
                    }, 4, null);
                }
            };
            int i15 = ((i13 >> 3) & 14) | 384 | ((i13 << 3) & 112);
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            androidx.compose.runtime.s sVarN = iVarG.n();
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVarG, fVar);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            int i16 = ((i15 << 6) & 896) | 6;
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVarG);
            f3.b(iVarA, androidDialog_androidKt$DialogLayout$1, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            function2.invoke(iVarG, Integer.valueOf((i16 >> 6) & 14));
            iVarG.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$2
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

                public final void invoke(androidx.compose.runtime.i iVar2, int i17) {
                    AndroidDialog_androidKt.c(fVar, function2, iVar2, v1.a(i11 | 1), i12);
                }
            });
        }
    }
}
