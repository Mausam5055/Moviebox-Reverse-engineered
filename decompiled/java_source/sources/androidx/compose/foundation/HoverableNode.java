package androidx.compose.foundation;

import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.node.d1;
import androidx.compose.ui.node.e1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class HoverableNode extends androidx.compose.ui.f.c implements e1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private p.i f2603n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private p.d f2604o;

    public HoverableNode(p.i iVar) {
        this.f2603n = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object F1(Continuation continuation) throws Throwable {
        HoverableNode$emitEnter$1 hoverableNode$emitEnter$1;
        HoverableNode hoverableNode;
        p.d dVar;
        if (continuation instanceof HoverableNode$emitEnter$1) {
            hoverableNode$emitEnter$1 = (HoverableNode$emitEnter$1) continuation;
            int i11 = hoverableNode$emitEnter$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitEnter$1.label = i11 - Integer.MIN_VALUE;
            } else {
                hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(this, continuation);
            }
        } else {
            hoverableNode$emitEnter$1 = new HoverableNode$emitEnter$1(this, continuation);
        }
        Object obj = hoverableNode$emitEnter$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = hoverableNode$emitEnter$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            if (this.f2604o == null) {
                p.d dVar2 = new p.d();
                p.i iVar = this.f2603n;
                hoverableNode$emitEnter$1.L$0 = this;
                hoverableNode$emitEnter$1.L$1 = dVar2;
                hoverableNode$emitEnter$1.label = 1;
                if (iVar.c(dVar2, hoverableNode$emitEnter$1) == objF) {
                    return objF;
                }
                hoverableNode = this;
                dVar = dVar2;
            }
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        dVar = (p.d) hoverableNode$emitEnter$1.L$1;
        hoverableNode = (HoverableNode) hoverableNode$emitEnter$1.L$0;
        ResultKt.b(obj);
        hoverableNode.f2604o = dVar;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object G1(Continuation continuation) throws Throwable {
        HoverableNode$emitExit$1 hoverableNode$emitExit$1;
        HoverableNode hoverableNode;
        if (continuation instanceof HoverableNode$emitExit$1) {
            hoverableNode$emitExit$1 = (HoverableNode$emitExit$1) continuation;
            int i11 = hoverableNode$emitExit$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                hoverableNode$emitExit$1.label = i11 - Integer.MIN_VALUE;
            } else {
                hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(this, continuation);
            }
        } else {
            hoverableNode$emitExit$1 = new HoverableNode$emitExit$1(this, continuation);
        }
        Object obj = hoverableNode$emitExit$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = hoverableNode$emitExit$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            p.d dVar = this.f2604o;
            if (dVar != null) {
                p.e eVar = new p.e(dVar);
                p.i iVar = this.f2603n;
                hoverableNode$emitExit$1.L$0 = this;
                hoverableNode$emitExit$1.label = 1;
                if (iVar.c(eVar, hoverableNode$emitExit$1) == objF) {
                    return objF;
                }
                hoverableNode = this;
            }
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        hoverableNode = (HoverableNode) hoverableNode$emitExit$1.L$0;
        ResultKt.b(obj);
        hoverableNode.f2604o = null;
        return Unit.f67061a;
    }

    private final void H1() {
        p.d dVar = this.f2604o;
        if (dVar != null) {
            this.f2603n.a(new p.e(dVar));
            this.f2604o = null;
        }
    }

    public final void I1(p.i iVar) {
        if (Intrinsics.c(this.f2603n, iVar)) {
            return;
        }
        H1();
        this.f2603n = iVar;
    }

    @Override // androidx.compose.ui.node.e1
    public void M(androidx.compose.ui.input.pointer.o oVar, PointerEventPass pointerEventPass, long j11) {
        if (pointerEventPass == PointerEventPass.Main) {
            int iE = oVar.e();
            androidx.compose.ui.input.pointer.q.a aVar = androidx.compose.ui.input.pointer.q.f5023a;
            if (androidx.compose.ui.input.pointer.q.i(iE, aVar.a())) {
                kotlinx.coroutines.k.d(d1(), null, null, new HoverableNode$onPointerEvent$1(this, null), 3, null);
            } else if (androidx.compose.ui.input.pointer.q.i(iE, aVar.b())) {
                kotlinx.coroutines.k.d(d1(), null, null, new HoverableNode$onPointerEvent$2(this, null), 3, null);
            }
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

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void T0() {
        d1.c(this);
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        H1();
    }

    @Override // androidx.compose.ui.node.e1
    public void t0() {
        H1();
    }

    @Override // androidx.compose.ui.node.e1
    public /* synthetic */ void z0() {
        d1.b(this);
    }
}
