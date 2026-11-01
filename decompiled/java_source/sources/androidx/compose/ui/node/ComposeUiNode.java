package androidx.compose.ui.node;

import androidx.compose.ui.platform.o2;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface ComposeUiNode {

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public static final Companion f5224c1 = Companion.f5225a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f5225a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final Function0 f5226b = LayoutNode.K.a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Function0 f5227c = new Function0<LayoutNode>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$VirtualConstructor$1
            @Override // kotlin.jvm.functions.Function0
            public final LayoutNode invoke() {
                return new LayoutNode(true, 0, 2, null);
            }
        };

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Function2 f5228d = new Function2<ComposeUiNode, androidx.compose.ui.f, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (androidx.compose.ui.f) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, androidx.compose.ui.f fVar) {
                composeUiNode.h(fVar);
            }
        };

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final Function2 f5229e = new Function2<ComposeUiNode, o0.e, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetDensity$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (o0.e) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, o0.e eVar) {
                composeUiNode.b(eVar);
            }
        };

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final Function2 f5230f = new Function2<ComposeUiNode, androidx.compose.runtime.s, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetResolvedCompositionLocals$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (androidx.compose.runtime.s) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, androidx.compose.runtime.s sVar) {
                composeUiNode.i(sVar);
            }
        };

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final Function2 f5231g = new Function2<ComposeUiNode, androidx.compose.ui.layout.t, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetMeasurePolicy$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (androidx.compose.ui.layout.t) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, androidx.compose.ui.layout.t tVar) {
                composeUiNode.g(tVar);
            }
        };

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final Function2 f5232h = new Function2<ComposeUiNode, LayoutDirection, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetLayoutDirection$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (LayoutDirection) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
                composeUiNode.a(layoutDirection);
            }
        };

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final Function2 f5233i = new Function2<ComposeUiNode, o2, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetViewConfiguration$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, (o2) obj2);
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, o2 o2Var) {
                composeUiNode.e(o2Var);
            }
        };

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final Function2 f5234j = new Function2<ComposeUiNode, Integer, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetCompositeKeyHash$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((ComposeUiNode) obj, ((Number) obj2).intValue());
                return Unit.f67061a;
            }

            public final void invoke(ComposeUiNode composeUiNode, int i11) {
                composeUiNode.c(i11);
            }
        };

        private Companion() {
        }

        public final Function0 a() {
            return f5226b;
        }

        public final Function2 b() {
            return f5234j;
        }

        public final Function2 c() {
            return f5231g;
        }

        public final Function2 d() {
            return f5228d;
        }

        public final Function2 e() {
            return f5230f;
        }
    }

    void a(LayoutDirection layoutDirection);

    void b(o0.e eVar);

    void c(int i11);

    void e(o2 o2Var);

    void g(androidx.compose.ui.layout.t tVar);

    void h(androidx.compose.ui.f fVar);

    void i(androidx.compose.runtime.s sVar);
}
