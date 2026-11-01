package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class SubcomposeLayoutState {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f5152f = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p0 f5153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LayoutNodeSubcompositionsState f5154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function2 f5155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function2 f5156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function2 f5157e;

    public interface a {
        void a(Object obj, Function1 function1);

        int b();

        void c(int i11, long j11);

        void dispose();
    }

    public SubcomposeLayoutState() {
        this(a0.f5160a);
    }

    public SubcomposeLayoutState(p0 p0Var) {
        this.f5153a = p0Var;
        this.f5155c = new Function2<LayoutNode, SubcomposeLayoutState, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (SubcomposeLayoutState) obj2);
                return Unit.f67061a;
            }

            public final void invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
                SubcomposeLayoutState subcomposeLayoutState2 = this.this$0;
                LayoutNodeSubcompositionsState layoutNodeSubcompositionsStateK0 = layoutNode.k0();
                if (layoutNodeSubcompositionsStateK0 == null) {
                    layoutNodeSubcompositionsStateK0 = new LayoutNodeSubcompositionsState(layoutNode, this.this$0.f5153a);
                    layoutNode.t1(layoutNodeSubcompositionsStateK0);
                }
                subcomposeLayoutState2.f5154b = layoutNodeSubcompositionsStateK0;
                this.this$0.h().y();
                this.this$0.h().G(this.this$0.f5153a);
            }
        };
        this.f5156d = new Function2<LayoutNode, androidx.compose.runtime.m, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (androidx.compose.runtime.m) obj2);
                return Unit.f67061a;
            }

            public final void invoke(LayoutNode layoutNode, androidx.compose.runtime.m mVar) {
                this.this$0.h().F(mVar);
            }
        };
        this.f5157e = new Function2<LayoutNode, Function2<? super o0, ? super o0.b, ? extends v>, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (Function2<? super o0, ? super o0.b, ? extends v>) obj2);
                return Unit.f67061a;
            }

            public final void invoke(LayoutNode layoutNode, Function2<? super o0, ? super o0.b, ? extends v> function2) {
                layoutNode.g(this.this$0.h().r(function2));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNodeSubcompositionsState h() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.f5154b;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        throw new IllegalArgumentException("SubcomposeLayoutState is not attached to SubcomposeLayout");
    }

    public final void d() {
        h().w();
    }

    public final Function2 e() {
        return this.f5156d;
    }

    public final Function2 f() {
        return this.f5157e;
    }

    public final Function2 g() {
        return this.f5155c;
    }

    public final a i(Object obj, Function2 function2) {
        return h().D(obj, function2);
    }
}
