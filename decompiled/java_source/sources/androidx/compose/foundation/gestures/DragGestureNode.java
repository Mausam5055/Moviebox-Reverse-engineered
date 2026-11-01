package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.l0;
import androidx.compose.ui.input.pointer.n0;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.node.d1;
import androidx.compose.ui.node.e1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import o0.z;

/* JADX INFO: loaded from: classes.dex */
public abstract class DragGestureNode extends androidx.compose.ui.node.i implements e1, androidx.compose.ui.node.d {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Orientation f2662p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Function1 f2663q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f2664r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private p.i f2665s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Function1 f2666t = new Function1<w, Boolean>() { // from class: androidx.compose.foundation.gestures.DragGestureNode$_canDrag$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(w wVar) {
            return (Boolean) this.this$0.T1().invoke(wVar);
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private kotlinx.coroutines.channels.d f2667u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private p.a.b f2668v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f2669w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private n0 f2670x;

    public DragGestureNode(Function1 function1, boolean z10, p.i iVar, Orientation orientation) {
        this.f2662p = orientation;
        this.f2663q = function1;
        this.f2664r = z10;
        this.f2665s = iVar;
    }

    private final n0 V1() {
        return l0.a(new DragGestureNode$initializePointerInputNode$1(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Y1(Continuation continuation) throws Throwable {
        DragGestureNode$processDragCancel$1 dragGestureNode$processDragCancel$1;
        DragGestureNode dragGestureNode;
        if (continuation instanceof DragGestureNode$processDragCancel$1) {
            dragGestureNode$processDragCancel$1 = (DragGestureNode$processDragCancel$1) continuation;
            int i11 = dragGestureNode$processDragCancel$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragCancel$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(this, continuation);
            }
        } else {
            dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(this, continuation);
        }
        Object obj = dragGestureNode$processDragCancel$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dragGestureNode$processDragCancel$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            p.a.b bVar = this.f2668v;
            if (bVar != null) {
                p.i iVar = this.f2665s;
                if (iVar != null) {
                    p.a.C0879a c0879a = new p.a.C0879a(bVar);
                    dragGestureNode$processDragCancel$1.L$0 = this;
                    dragGestureNode$processDragCancel$1.label = 1;
                    if (iVar.c(c0879a, dragGestureNode$processDragCancel$1) == objF) {
                        return objF;
                    }
                }
                dragGestureNode = this;
            } else {
                dragGestureNode = this;
            }
            dragGestureNode.X1(z.f70637b.a());
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dragGestureNode = (DragGestureNode) dragGestureNode$processDragCancel$1.L$0;
        ResultKt.b(obj);
        dragGestureNode.f2668v = null;
        dragGestureNode.X1(z.f70637b.a());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Z1(e.c cVar, Continuation continuation) throws Throwable {
        DragGestureNode$processDragStart$1 dragGestureNode$processDragStart$1;
        DragGestureNode dragGestureNode;
        p.i iVar;
        p.a.b bVar;
        e.c cVar2;
        p.a.b bVar2;
        DragGestureNode dragGestureNode2;
        if (continuation instanceof DragGestureNode$processDragStart$1) {
            dragGestureNode$processDragStart$1 = (DragGestureNode$processDragStart$1) continuation;
            int i11 = dragGestureNode$processDragStart$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStart$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(this, continuation);
            }
        } else {
            dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(this, continuation);
        }
        Object obj = dragGestureNode$processDragStart$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dragGestureNode$processDragStart$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                cVar = (e.c) dragGestureNode$processDragStart$1.L$1;
                dragGestureNode = (DragGestureNode) dragGestureNode$processDragStart$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                bVar2 = (p.a.b) dragGestureNode$processDragStart$1.L$2;
                cVar2 = (e.c) dragGestureNode$processDragStart$1.L$1;
                dragGestureNode2 = (DragGestureNode) dragGestureNode$processDragStart$1.L$0;
                ResultKt.b(obj);
            }
            bVar = bVar2;
            dragGestureNode = dragGestureNode2;
            cVar = cVar2;
            dragGestureNode.f2668v = bVar;
            dragGestureNode.W1(cVar.a());
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        p.a.b bVar3 = this.f2668v;
        if (bVar3 != null && (iVar = this.f2665s) != null) {
            p.a.C0879a c0879a = new p.a.C0879a(bVar3);
            dragGestureNode$processDragStart$1.L$0 = this;
            dragGestureNode$processDragStart$1.L$1 = cVar;
            dragGestureNode$processDragStart$1.label = 1;
            if (iVar.c(c0879a, dragGestureNode$processDragStart$1) == objF) {
                return objF;
            }
        }
        dragGestureNode = this;
        bVar = new p.a.b();
        p.i iVar2 = dragGestureNode.f2665s;
        if (iVar2 != null) {
            dragGestureNode$processDragStart$1.L$0 = dragGestureNode;
            dragGestureNode$processDragStart$1.L$1 = cVar;
            dragGestureNode$processDragStart$1.L$2 = bVar;
            dragGestureNode$processDragStart$1.label = 2;
            if (iVar2.c(bVar, dragGestureNode$processDragStart$1) == objF) {
                return objF;
            }
            cVar2 = cVar;
            bVar2 = bVar;
            dragGestureNode2 = dragGestureNode;
            bVar = bVar2;
            dragGestureNode = dragGestureNode2;
            cVar = cVar2;
        }
        dragGestureNode.f2668v = bVar;
        dragGestureNode.W1(cVar.a());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a2(e.d dVar, Continuation continuation) throws Throwable {
        DragGestureNode$processDragStop$1 dragGestureNode$processDragStop$1;
        DragGestureNode dragGestureNode;
        if (continuation instanceof DragGestureNode$processDragStop$1) {
            dragGestureNode$processDragStop$1 = (DragGestureNode$processDragStop$1) continuation;
            int i11 = dragGestureNode$processDragStop$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStop$1.label = i11 - Integer.MIN_VALUE;
            } else {
                dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(this, continuation);
            }
        } else {
            dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(this, continuation);
        }
        Object obj = dragGestureNode$processDragStop$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = dragGestureNode$processDragStop$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            p.a.b bVar = this.f2668v;
            if (bVar != null) {
                p.i iVar = this.f2665s;
                if (iVar != null) {
                    p.a.c cVar = new p.a.c(bVar);
                    dragGestureNode$processDragStop$1.L$0 = this;
                    dragGestureNode$processDragStop$1.L$1 = dVar;
                    dragGestureNode$processDragStop$1.label = 1;
                    if (iVar.c(cVar, dragGestureNode$processDragStop$1) == objF) {
                        return objF;
                    }
                }
                dragGestureNode = this;
            } else {
                dragGestureNode = this;
            }
            dragGestureNode.X1(dVar.a());
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dVar = (e.d) dragGestureNode$processDragStop$1.L$1;
        dragGestureNode = (DragGestureNode) dragGestureNode$processDragStop$1.L$0;
        ResultKt.b(obj);
        dragGestureNode.f2668v = null;
        dragGestureNode.X1(dVar.a());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c2() {
        this.f2669w = true;
        kotlinx.coroutines.k.d(d1(), null, null, new DragGestureNode$startListeningForEvents$1(this, null), 3, null);
    }

    @Override // androidx.compose.ui.node.e1
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j11) {
        if (this.f2664r && this.f2670x == null) {
            this.f2670x = (n0) D1(V1());
        }
        n0 n0Var = this.f2670x;
        if (n0Var != null) {
            n0Var.M(oVar, pointerEventPass, j11);
        }
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ boolean P0() {
        return d1.d(this);
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ boolean R() {
        return d1.a(this);
    }

    public final void R1() {
        p.a.b bVar = this.f2668v;
        if (bVar != null) {
            p.i iVar = this.f2665s;
            if (iVar != null) {
                iVar.a(new p.a.C0879a(bVar));
            }
            this.f2668v = null;
        }
    }

    public abstract Object S1(Function2 function2, Continuation continuation);

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void T0() {
        d1.c(this);
    }

    protected final Function1 T1() {
        return this.f2663q;
    }

    protected final boolean U1() {
        return this.f2664r;
    }

    public abstract void W1(long j11);

    public abstract void X1(long j11);

    public abstract boolean b2();

    public final void d2(Function1 function1, boolean z10, p.i iVar, Orientation orientation, boolean z11) {
        n0 n0Var;
        this.f2663q = function1;
        boolean z12 = true;
        if (this.f2664r != z10) {
            this.f2664r = z10;
            if (!z10) {
                R1();
                n0 n0Var2 = this.f2670x;
                if (n0Var2 != null) {
                    G1(n0Var2);
                }
                this.f2670x = null;
            }
            z11 = true;
        }
        if (!Intrinsics.c(this.f2665s, iVar)) {
            R1();
            this.f2665s = iVar;
        }
        if (this.f2662p != orientation) {
            this.f2662p = orientation;
        } else {
            z12 = z11;
        }
        if (!z12 || (n0Var = this.f2670x) == null) {
            return;
        }
        n0Var.j0();
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        this.f2669w = false;
        R1();
    }

    @Override // androidx.compose.ui.node.e1
    public void t0() {
        n0 n0Var = this.f2670x;
        if (n0Var != null) {
            n0Var.t0();
        }
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void z0() {
        d1.b(this);
    }
}
