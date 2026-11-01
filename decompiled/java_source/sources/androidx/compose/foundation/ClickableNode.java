package androidx.compose.foundation;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public class ClickableNode extends AbstractClickableNode {
    private ClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        super(iVar, b0Var, z10, str, fVar, function0, null);
    }

    public /* synthetic */ ClickableNode(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, b0Var, z10, str, fVar, function0);
    }

    static /* synthetic */ Object c2(final ClickableNode clickableNode, androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation) {
        Object objH = TapGestureDetectorKt.h(e0Var, new ClickableNode$clickPointerInput$2(clickableNode, null), new Function1<y.g, Unit>() { // from class: androidx.compose.foundation.ClickableNode$clickPointerInput$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m22invokek4lQ0M(((y.g) obj).v());
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke-k-4lQ0M, reason: not valid java name */
            public final void m22invokek4lQ0M(long j11) {
                if (this.this$0.V1()) {
                    this.this$0.W1().invoke();
                }
            }
        }, continuation);
        return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public Object Q1(androidx.compose.ui.input.pointer.e0 e0Var, Continuation continuation) {
        return c2(this, e0Var, continuation);
    }

    public final void d2(p.i iVar, b0 b0Var, boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0) {
        b2(iVar, b0Var, z10, str, fVar, function0);
    }
}
