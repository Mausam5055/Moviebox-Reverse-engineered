package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.g;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.v;
import androidx.compose.ui.node.w;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.o0;
import y.i;

/* JADX INFO: loaded from: classes.dex */
public final class BringIntoViewResponderNode extends androidx.compose.ui.f.c implements androidx.compose.foundation.relocation.a, w, m1 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f3159q = new a(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f3160r = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private d f3161n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f3162o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f3163p;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BringIntoViewResponderNode(d dVar) {
        this.f3161n = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i E1(BringIntoViewResponderNode bringIntoViewResponderNode, l lVar, Function0 function0) {
        i iVar;
        if (!bringIntoViewResponderNode.k1() || !bringIntoViewResponderNode.f3163p) {
            return null;
        }
        l lVarK = g.k(bringIntoViewResponderNode);
        if (!lVar.F()) {
            lVar = null;
        }
        if (lVar == null || (iVar = (i) function0.invoke()) == null) {
            return null;
        }
        return c.c(lVarK, lVar, iVar);
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return f3159q;
    }

    @Override // androidx.compose.ui.node.w
    public /* synthetic */ void F(long j11) {
        v.b(this, j11);
    }

    public final d F1() {
        return this.f3161n;
    }

    @Override // androidx.compose.ui.node.w
    public void I(l lVar) {
        this.f3163p = true;
    }

    @Override // androidx.compose.foundation.relocation.a
    public Object U(final l lVar, final Function0 function0, Continuation continuation) {
        Object objE = o0.e(new BringIntoViewResponderNode$bringChildIntoView$2(this, lVar, function0, new Function0<i>() { // from class: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringChildIntoView$parentRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final i invoke() {
                i iVarE1 = BringIntoViewResponderNode.E1(this.this$0, lVar, function0);
                if (iVarE1 != null) {
                    return this.this$0.F1().Y(iVarE1);
                }
                return null;
            }
        }, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return this.f3162o;
    }
}
