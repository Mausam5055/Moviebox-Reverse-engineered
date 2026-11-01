package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class OwnerSnapshotObserver {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f5371i = SnapshotStateObserver.f3938k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SnapshotStateObserver f5372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f5373b = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLookaheadMeasure$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.d1(layoutNode, false, false, false, 7, null);
            }
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function1 f5374c = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingMeasure$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.h1(layoutNode, false, false, false, 7, null);
            }
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function1 f5375d = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingSemantics$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                layoutNode.B0();
            }
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f5376e = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.f1(layoutNode, false, 1, null);
            }
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1 f5377f = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayoutModifier$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.f1(layoutNode, false, 1, null);
            }
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1 f5378g = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.b1(layoutNode, false, 1, null);
            }
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Function1 f5379h = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLookahead$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((LayoutNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(LayoutNode layoutNode) {
            if (layoutNode.isValidOwnerScope()) {
                LayoutNode.b1(layoutNode, false, 1, null);
            }
        }
    };

    public OwnerSnapshotObserver(Function1 function1) {
        this.f5372a = new SnapshotStateObserver(function1);
    }

    public static /* synthetic */ void d(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z10, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        ownerSnapshotObserver.c(layoutNode, z10, function0);
    }

    public static /* synthetic */ void f(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z10, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        ownerSnapshotObserver.e(layoutNode, z10, function0);
    }

    public static /* synthetic */ void h(OwnerSnapshotObserver ownerSnapshotObserver, LayoutNode layoutNode, boolean z10, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = true;
        }
        ownerSnapshotObserver.g(layoutNode, z10, function0);
    }

    public final void a(Object obj) {
        this.f5372a.k(obj);
    }

    public final void b() {
        this.f5372a.l(new Function1<Object, Boolean>() { // from class: androidx.compose.ui.node.OwnerSnapshotObserver$clearInvalidObservations$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.node.OwnerScope");
                return Boolean.valueOf(!((z0) obj).isValidOwnerScope());
            }
        });
    }

    public final void c(LayoutNode layoutNode, boolean z10, Function0 function0) {
        if (!z10 || layoutNode.V() == null) {
            i(layoutNode, this.f5377f, function0);
        } else {
            i(layoutNode, this.f5378g, function0);
        }
    }

    public final void e(LayoutNode layoutNode, boolean z10, Function0 function0) {
        if (!z10 || layoutNode.V() == null) {
            i(layoutNode, this.f5376e, function0);
        } else {
            i(layoutNode, this.f5379h, function0);
        }
    }

    public final void g(LayoutNode layoutNode, boolean z10, Function0 function0) {
        if (!z10 || layoutNode.V() == null) {
            i(layoutNode, this.f5374c, function0);
        } else {
            i(layoutNode, this.f5373b, function0);
        }
    }

    public final void i(z0 z0Var, Function1 function1, Function0 function0) {
        this.f5372a.o(z0Var, function1, function0);
    }

    public final void j(LayoutNode layoutNode, Function0 function0) {
        i(layoutNode, this.f5375d, function0);
    }

    public final void k() {
        this.f5372a.s();
    }

    public final void l() {
        this.f5372a.t();
        this.f5372a.j();
    }
}
