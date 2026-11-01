package androidx.compose.ui.focus;

import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class FocusRequester {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4223b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final FocusRequester f4224c = new FocusRequester();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final FocusRequester f4225d = new FocusRequester();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.runtime.collection.b f4226a = new androidx.compose.runtime.collection.b(new q[16], 0);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FocusRequester a() {
            return FocusRequester.f4225d;
        }

        public final FocusRequester b() {
            return FocusRequester.f4224c;
        }
    }

    public final boolean c(Function1 function1) {
        a aVar = f4223b;
        if (this == aVar.b()) {
            throw new IllegalStateException("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
        }
        if (this == aVar.a()) {
            throw new IllegalStateException("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
        }
        if (!this.f4226a.q()) {
            throw new IllegalStateException("\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
        }
        androidx.compose.runtime.collection.b bVar = this.f4226a;
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i11 = 0;
        boolean z10 = false;
        do {
            q qVar = (q) objArrM[i11];
            int iA = s0.a(1024);
            if (!qVar.getNode().k1()) {
                throw new IllegalStateException("visitChildren called on an unattached node");
            }
            androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
            androidx.compose.ui.f.c cVarB1 = qVar.getNode().b1();
            if (cVarB1 == null) {
                androidx.compose.ui.node.g.c(bVar2, qVar.getNode());
            } else {
                bVar2.b(cVarB1);
            }
            while (bVar2.q()) {
                androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
                if ((cVarG.a1() & iA) == 0) {
                    androidx.compose.ui.node.g.c(bVar2, cVarG);
                } else {
                    while (cVarG != null) {
                        if ((cVarG.f1() & iA) != 0) {
                            androidx.compose.runtime.collection.b bVar3 = null;
                            while (cVarG != null) {
                                if (cVarG instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode = (FocusTargetNode) cVarG;
                                    if (focusTargetNode.I1().t() ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : TwoDimensionalFocusSearchKt.k(focusTargetNode, b.f4237b.b(), function1)) {
                                        z10 = true;
                                        break;
                                    }
                                } else if (((cVarG.f1() & iA) != 0) && (cVarG instanceof androidx.compose.ui.node.i)) {
                                    int i12 = 0;
                                    for (androidx.compose.ui.f.c cVarE1 = ((androidx.compose.ui.node.i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                                        if ((cVarE1.f1() & iA) != 0) {
                                            i12++;
                                            if (i12 == 1) {
                                                cVarG = cVarE1;
                                            } else {
                                                if (bVar3 == null) {
                                                    bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (cVarG != null) {
                                                    bVar3.b(cVarG);
                                                    cVarG = null;
                                                }
                                                bVar3.b(cVarE1);
                                            }
                                        }
                                    }
                                    if (i12 == 1) {
                                    }
                                }
                                cVarG = androidx.compose.ui.node.g.g(bVar3);
                            }
                            break;
                        }
                        cVarG = cVarG.b1();
                    }
                }
            }
            i11++;
        } while (i11 < iN);
        return z10;
    }

    public final boolean d() {
        return c(new Function1<FocusTargetNode, Boolean>() { // from class: androidx.compose.ui.focus.FocusRequester$focus$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                return Boolean.valueOf(FocusTransactionsKt.j(focusTargetNode));
            }
        });
    }
}
