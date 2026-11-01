package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.q0;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.v0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class FocusTransactionsKt {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4233a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f4234b;

        static {
            int[] iArr = new int[CustomDestinationResult.values().length];
            try {
                iArr[CustomDestinationResult.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomDestinationResult.Redirected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomDestinationResult.Cancelled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomDestinationResult.RedirectCancelled.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f4233a = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f4234b = iArr2;
        }
    }

    private static final boolean a(FocusTargetNode focusTargetNode, boolean z10, boolean z11) {
        FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
        if (focusTargetNodeF != null) {
            return c(focusTargetNodeF, z10, z11);
        }
        return true;
    }

    static /* synthetic */ boolean b(FocusTargetNode focusTargetNode, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        if ((i11 & 2) != 0) {
            z11 = true;
        }
        return a(focusTargetNode, z10, z11);
    }

    public static final boolean c(FocusTargetNode focusTargetNode, boolean z10, boolean z11) {
        int i11 = a.f4234b[focusTargetNode.K1().ordinal()];
        if (i11 == 1) {
            focusTargetNode.Q1(FocusStateImpl.Inactive);
            if (z11) {
                d.c(focusTargetNode);
            }
        } else {
            if (i11 == 2) {
                if (!z10) {
                    return z10;
                }
                focusTargetNode.Q1(FocusStateImpl.Inactive);
                if (!z11) {
                    return z10;
                }
                d.c(focusTargetNode);
                return z10;
            }
            if (i11 != 3) {
                if (i11 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                if (!a(focusTargetNode, z10, z11)) {
                    return false;
                }
                focusTargetNode.Q1(FocusStateImpl.Inactive);
                if (z11) {
                    d.c(focusTargetNode);
                }
            }
        }
        return true;
    }

    private static final boolean d(final FocusTargetNode focusTargetNode) {
        v0.a(focusTargetNode, new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusTransactionsKt$grantFocus$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m111invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m111invoke() {
                focusTargetNode.I1();
            }
        });
        int i11 = a.f4234b[focusTargetNode.K1().ordinal()];
        if (i11 != 3 && i11 != 4) {
            return true;
        }
        focusTargetNode.Q1(FocusStateImpl.Active);
        return true;
    }

    public static final CustomDestinationResult e(FocusTargetNode focusTargetNode, int i11) {
        int i12 = a.f4234b[focusTargetNode.K1().ordinal()];
        if (i12 != 1) {
            if (i12 == 2) {
                return CustomDestinationResult.Cancelled;
            }
            if (i12 == 3) {
                CustomDestinationResult customDestinationResultE = e(n(focusTargetNode), i11);
                if (customDestinationResultE == CustomDestinationResult.None) {
                    customDestinationResultE = null;
                }
                return customDestinationResultE == null ? g(focusTargetNode, i11) : customDestinationResultE;
            }
            if (i12 != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return CustomDestinationResult.None;
    }

    private static final CustomDestinationResult f(FocusTargetNode focusTargetNode, int i11) {
        if (!focusTargetNode.f4229o) {
            focusTargetNode.f4229o = true;
            try {
                FocusRequester focusRequester = (FocusRequester) focusTargetNode.I1().s().invoke(b.i(i11));
                FocusRequester.a aVar = FocusRequester.f4223b;
                if (focusRequester != aVar.b()) {
                    if (focusRequester == aVar.a()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    return focusRequester.d() ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.f4229o = false;
            }
        }
        return CustomDestinationResult.None;
    }

    private static final CustomDestinationResult g(FocusTargetNode focusTargetNode, int i11) {
        if (!focusTargetNode.f4228n) {
            focusTargetNode.f4228n = true;
            try {
                FocusRequester focusRequester = (FocusRequester) focusTargetNode.I1().o().invoke(b.i(i11));
                FocusRequester.a aVar = FocusRequester.f4223b;
                if (focusRequester != aVar.b()) {
                    if (focusRequester == aVar.a()) {
                        return CustomDestinationResult.Cancelled;
                    }
                    return focusRequester.d() ? CustomDestinationResult.Redirected : CustomDestinationResult.RedirectCancelled;
                }
            } finally {
                focusTargetNode.f4228n = false;
            }
        }
        return CustomDestinationResult.None;
    }

    public static final CustomDestinationResult h(FocusTargetNode focusTargetNode, int i11) {
        androidx.compose.ui.f.c cVarG;
        q0 q0VarE0;
        int i12 = a.f4234b[focusTargetNode.K1().ordinal()];
        if (i12 == 1 || i12 == 2) {
            return CustomDestinationResult.None;
        }
        if (i12 == 3) {
            return e(n(focusTargetNode), i11);
        }
        if (i12 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        int iA = s0.a(1024);
        if (!focusTargetNode.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = focusTargetNode.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
        loop0: while (true) {
            if (layoutNodeM == null) {
                cVarG = null;
                break;
            }
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        cVarG = cVarH1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i13 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i13++;
                                        if (i13 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar == null) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    }
                                }
                                if (i13 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarH1 = cVarH1.h1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarH1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVarG;
        if (focusTargetNode2 == null) {
            return CustomDestinationResult.None;
        }
        int i14 = a.f4234b[focusTargetNode2.K1().ordinal()];
        if (i14 == 1) {
            return f(focusTargetNode2, i11);
        }
        if (i14 == 2) {
            return CustomDestinationResult.Cancelled;
        }
        if (i14 == 3) {
            return h(focusTargetNode2, i11);
        }
        if (i14 != 4) {
            throw new NoWhenBranchMatchedException();
        }
        CustomDestinationResult customDestinationResultH = h(focusTargetNode2, i11);
        CustomDestinationResult customDestinationResult = customDestinationResultH != CustomDestinationResult.None ? customDestinationResultH : null;
        return customDestinationResult == null ? f(focusTargetNode2, i11) : customDestinationResult;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00da  */
    public static final boolean i(FocusTargetNode focusTargetNode) {
        q0 q0VarE0;
        int i11 = a.f4234b[focusTargetNode.K1().ordinal()];
        boolean zL = true;
        if (i11 != 1 && i11 != 2) {
            androidx.compose.ui.f.c cVar = null;
            if (i11 != 3) {
                if (i11 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                int iA = s0.a(1024);
                if (!focusTargetNode.getNode().k1()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                androidx.compose.ui.f.c cVarH1 = focusTargetNode.getNode().h1();
                LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode);
                loop0: while (layoutNodeM != null) {
                    if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                        while (cVarH1 != null) {
                            if ((cVarH1.f1() & iA) != 0) {
                                androidx.compose.ui.f.c cVarG = cVarH1;
                                androidx.compose.runtime.collection.b bVar = null;
                                while (cVarG != null) {
                                    if (cVarG instanceof FocusTargetNode) {
                                        cVar = cVarG;
                                        break loop0;
                                    }
                                    if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                        int i12 = 0;
                                        for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                            if ((cVarE1.f1() & iA) != 0) {
                                                i12++;
                                                if (i12 == 1) {
                                                    cVarG = cVarE1;
                                                } else {
                                                    if (bVar == null) {
                                                        bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                    }
                                                    if (cVarG != null) {
                                                        bVar.b(cVarG);
                                                        cVarG = null;
                                                    }
                                                    bVar.b(cVarE1);
                                                }
                                            }
                                        }
                                        if (i12 == 1) {
                                        }
                                    }
                                    cVarG = androidx.compose.ui.node.g.g(bVar);
                                }
                            }
                            cVarH1 = cVarH1.h1();
                        }
                    }
                    layoutNodeM = layoutNodeM.h0();
                    cVarH1 = (layoutNodeM == null || (q0VarE0 = layoutNodeM.e0()) == null) ? null : q0VarE0.o();
                }
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) cVar;
                if (focusTargetNode2 != null) {
                    FocusStateImpl focusStateImplK1 = focusTargetNode2.K1();
                    zL = l(focusTargetNode2, focusTargetNode);
                    if (zL && focusStateImplK1 != focusTargetNode2.K1()) {
                        d.c(focusTargetNode2);
                    }
                } else if (!m(focusTargetNode) || !d(focusTargetNode)) {
                    zL = false;
                }
            } else if (!b(focusTargetNode, false, false, 3, null) || !d(focusTargetNode)) {
                zL = false;
            }
        }
        if (zL) {
            d.c(focusTargetNode);
        }
        return zL;
    }

    public static final boolean j(FocusTargetNode focusTargetNode) {
        Boolean boolK = k(focusTargetNode, b.f4237b.b());
        if (boolK != null) {
            return boolK.booleanValue();
        }
        return false;
    }

    public static final Boolean k(final FocusTargetNode focusTargetNode, int i11) {
        Boolean boolValueOf;
        v vVarD = u.d(focusTargetNode);
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusTransactionsKt$requestFocus$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m112invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m112invoke() {
                if (focusTargetNode.getNode().k1()) {
                    d.c(focusTargetNode);
                }
            }
        };
        try {
            if (vVarD.f4255c) {
                vVarD.g();
            }
            vVarD.f();
            vVarD.f4254b.b(function0);
            int i12 = a.f4233a[h(focusTargetNode, i11).ordinal()];
            if (i12 == 1) {
                boolValueOf = Boolean.valueOf(i(focusTargetNode));
            } else if (i12 != 2) {
                if (i12 != 3 && i12 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.TRUE;
            }
            vVarD.h();
            return boolValueOf;
        } catch (Throwable th2) {
            vVarD.h();
            throw th2;
        }
    }

    private static final boolean l(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        androidx.compose.ui.f.c cVar;
        androidx.compose.ui.f.c cVarG;
        q0 q0VarE0;
        q0 q0VarE1;
        int iA = s0.a(1024);
        if (!focusTargetNode2.getNode().k1()) {
            throw new IllegalStateException("visitAncestors called on an unattached node");
        }
        androidx.compose.ui.f.c cVarH1 = focusTargetNode2.getNode().h1();
        LayoutNode layoutNodeM = androidx.compose.ui.node.g.m(focusTargetNode2);
        loop0: while (true) {
            cVar = null;
            if (layoutNodeM == null) {
                cVarG = null;
                break;
            }
            if ((layoutNodeM.e0().k().a1() & iA) != 0) {
                while (cVarH1 != null) {
                    if ((cVarH1.f1() & iA) != 0) {
                        cVarG = cVarH1;
                        androidx.compose.runtime.collection.b bVar = null;
                        while (cVarG != null) {
                            if (cVarG instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((cVarG.f1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                int i11 = 0;
                                for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                    if ((cVarE1.f1() & iA) != 0) {
                                        i11++;
                                        if (i11 == 1) {
                                            cVarG = cVarE1;
                                        } else {
                                            if (bVar == null) {
                                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                            }
                                            if (cVarG != null) {
                                                bVar.b(cVarG);
                                                cVarG = null;
                                            }
                                            bVar.b(cVarE1);
                                        }
                                    }
                                }
                                if (i11 == 1) {
                                }
                            }
                            cVarG = androidx.compose.ui.node.g.g(bVar);
                        }
                    }
                    cVarH1 = cVarH1.h1();
                }
            }
            layoutNodeM = layoutNodeM.h0();
            cVarH1 = (layoutNodeM == null || (q0VarE1 = layoutNodeM.e0()) == null) ? null : q0VarE1.o();
        }
        if (!Intrinsics.c(cVarG, focusTargetNode)) {
            throw new IllegalStateException("Non child node cannot request focus.");
        }
        int i12 = a.f4234b[focusTargetNode.K1().ordinal()];
        if (i12 == 1) {
            boolean zD = d(focusTargetNode2);
            if (!zD) {
                return zD;
            }
            focusTargetNode.Q1(FocusStateImpl.ActiveParent);
            return zD;
        }
        if (i12 != 2) {
            if (i12 == 3) {
                n(focusTargetNode);
                if (b(focusTargetNode, false, false, 3, null) && d(focusTargetNode2)) {
                    return true;
                }
            } else {
                if (i12 != 4) {
                    throw new NoWhenBranchMatchedException();
                }
                int iA2 = s0.a(1024);
                if (!focusTargetNode.getNode().k1()) {
                    throw new IllegalStateException("visitAncestors called on an unattached node");
                }
                androidx.compose.ui.f.c cVarH2 = focusTargetNode.getNode().h1();
                LayoutNode layoutNodeM2 = androidx.compose.ui.node.g.m(focusTargetNode);
                loop4: while (layoutNodeM2 != null) {
                    if ((layoutNodeM2.e0().k().a1() & iA2) != 0) {
                        while (cVarH2 != null) {
                            if ((cVarH2.f1() & iA2) != 0) {
                                androidx.compose.ui.f.c cVarG2 = cVarH2;
                                androidx.compose.runtime.collection.b bVar2 = null;
                                while (cVarG2 != null) {
                                    if (cVarG2 instanceof FocusTargetNode) {
                                        cVar = cVarG2;
                                        break loop4;
                                    }
                                    if ((cVarG2.f1() & iA2) != 0 && (cVarG2 instanceof androidx.compose.ui.node.i)) {
                                        int i13 = 0;
                                        for (androidx.compose.ui.f.c cVarE2 = ((androidx.compose.ui.node.i) cVarG2).E1(); cVarE2 != null; cVarE2 = cVarE2.b1()) {
                                            if ((cVarE2.f1() & iA2) != 0) {
                                                i13++;
                                                if (i13 == 1) {
                                                    cVarG2 = cVarE2;
                                                } else {
                                                    if (bVar2 == null) {
                                                        bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                    }
                                                    if (cVarG2 != null) {
                                                        bVar2.b(cVarG2);
                                                        cVarG2 = null;
                                                    }
                                                    bVar2.b(cVarE2);
                                                }
                                            }
                                        }
                                        if (i13 == 1) {
                                        }
                                    }
                                    cVarG2 = androidx.compose.ui.node.g.g(bVar2);
                                }
                            }
                            cVarH2 = cVarH2.h1();
                        }
                    }
                    layoutNodeM2 = layoutNodeM2.h0();
                    cVarH2 = (layoutNodeM2 == null || (q0VarE0 = layoutNodeM2.e0()) == null) ? null : q0VarE0.o();
                }
                FocusTargetNode focusTargetNode3 = (FocusTargetNode) cVar;
                if (focusTargetNode3 == null && m(focusTargetNode)) {
                    boolean zD2 = d(focusTargetNode2);
                    if (!zD2) {
                        return zD2;
                    }
                    focusTargetNode.Q1(FocusStateImpl.ActiveParent);
                    return zD2;
                }
                if (focusTargetNode3 != null && l(focusTargetNode3, focusTargetNode)) {
                    boolean zL = l(focusTargetNode, focusTargetNode2);
                    if (focusTargetNode.K1() != FocusStateImpl.ActiveParent) {
                        throw new IllegalStateException("Deactivated node is focused");
                    }
                    if (!zL) {
                        return zL;
                    }
                    d.c(focusTargetNode3);
                    return zL;
                }
            }
        }
        return false;
    }

    private static final boolean m(FocusTargetNode focusTargetNode) {
        return androidx.compose.ui.node.g.n(focusTargetNode).getFocusOwner().b(null, null);
    }

    private static final FocusTargetNode n(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNodeF = w.f(focusTargetNode);
        if (focusTargetNodeF != null) {
            return focusTargetNodeF;
        }
        throw new IllegalArgumentException("ActiveParent with no focused child");
    }
}
