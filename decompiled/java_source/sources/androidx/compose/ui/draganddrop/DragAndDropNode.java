package androidx.compose.ui.draganddrop;

import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class DragAndDropNode extends androidx.compose.ui.f.c implements m1, d {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f4133r = new a(null);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f4134s = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Function1 f4135n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f4136o = a.C0045a.f4139a;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private d f4137p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private f f4138q;

    public static final class a {

        /* JADX INFO: renamed from: androidx.compose.ui.draganddrop.DragAndDropNode$a$a, reason: collision with other inner class name */
        private static final class C0045a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0045a f4139a = new C0045a();

            private C0045a() {
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DragAndDropNode(Function1 function1) {
        this.f4135n = function1;
    }

    @Override // androidx.compose.ui.draganddrop.f
    public void B(b bVar) {
        f fVar = this.f4138q;
        if (fVar != null) {
            fVar.B(bVar);
            return;
        }
        d dVar = this.f4137p;
        if (dVar != null) {
            dVar.B(bVar);
        }
    }

    @Override // androidx.compose.ui.draganddrop.f
    public void C(final b bVar) {
        m1 m1Var;
        d dVar;
        d dVar2 = this.f4137p;
        if (dVar2 == null || !e.d(dVar2, h.a(bVar))) {
            if (getNode().k1()) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                n1.e(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                        DragAndDropNode dragAndDropNode2 = dragAndDropNode;
                        if (!androidx.compose.ui.node.g.n(this).getDragAndDropManager().a(dragAndDropNode2) || !e.d(dragAndDropNode2, h.a(bVar))) {
                            return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                        }
                        objectRef.element = dragAndDropNode;
                        return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
                    }
                });
                m1Var = (m1) objectRef.element;
            } else {
                m1Var = null;
            }
            dVar = (d) m1Var;
        } else {
            dVar = dVar2;
        }
        if (dVar != null && dVar2 == null) {
            e.e(dVar, bVar);
            f fVar = this.f4138q;
            if (fVar != null) {
                fVar.L(bVar);
            }
        } else if (dVar == null && dVar2 != null) {
            f fVar2 = this.f4138q;
            if (fVar2 != null) {
                e.e(fVar2, bVar);
            }
            dVar2.L(bVar);
        } else if (!Intrinsics.c(dVar, dVar2)) {
            if (dVar != null) {
                e.e(dVar, bVar);
            }
            if (dVar2 != null) {
                dVar2.L(bVar);
            }
        } else if (dVar != null) {
            dVar.C(bVar);
        } else {
            f fVar3 = this.f4138q;
            if (fVar3 != null) {
                fVar3.C(bVar);
            }
        }
        this.f4137p = dVar;
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return this.f4136o;
    }

    public boolean D1(final b bVar) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        e.f(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$acceptDragAndDropTransfer$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                if (!dragAndDropNode.k1()) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                if (!(dragAndDropNode.f4138q == null)) {
                    g0.a.b("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                }
                dragAndDropNode.f4138q = (f) dragAndDropNode.f4135n.invoke(bVar);
                boolean z10 = dragAndDropNode.f4138q != null;
                if (z10) {
                    androidx.compose.ui.node.g.n(this).getDragAndDropManager().b(dragAndDropNode);
                }
                Ref.BooleanRef booleanRef2 = booleanRef;
                booleanRef2.element = booleanRef2.element || z10;
                return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
            }
        });
        return booleanRef.element;
    }

    @Override // androidx.compose.ui.draganddrop.f
    public void L(b bVar) {
        f fVar = this.f4138q;
        if (fVar != null) {
            fVar.L(bVar);
        }
        d dVar = this.f4137p;
        if (dVar != null) {
            dVar.L(bVar);
        }
        this.f4137p = null;
    }

    @Override // androidx.compose.ui.draganddrop.f
    public void Z0(final b bVar) {
        e.f(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onEnded$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                if (!dragAndDropNode.getNode().k1()) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                f fVar = dragAndDropNode.f4138q;
                if (fVar != null) {
                    fVar.Z0(bVar);
                }
                dragAndDropNode.f4138q = null;
                dragAndDropNode.f4137p = null;
                return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
            }
        });
    }

    @Override // androidx.compose.ui.draganddrop.f
    public void a0(b bVar) {
        f fVar = this.f4138q;
        if (fVar != null) {
            fVar.a0(bVar);
            return;
        }
        d dVar = this.f4137p;
        if (dVar != null) {
            dVar.a0(bVar);
        }
    }

    @Override // androidx.compose.ui.draganddrop.f
    public boolean k0(b bVar) {
        d dVar = this.f4137p;
        if (dVar != null) {
            return dVar.k0(bVar);
        }
        f fVar = this.f4138q;
        if (fVar != null) {
            return fVar.k0(bVar);
        }
        return false;
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        this.f4138q = null;
        this.f4137p = null;
    }
}
