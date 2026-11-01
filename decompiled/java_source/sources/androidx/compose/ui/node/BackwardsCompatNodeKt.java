package androidx.compose.ui.node;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackwardsCompatNodeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f5221a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Function1 f5222b = new Function1<BackwardsCompatNode, Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNodeKt$onDrawCacheReadsChanged$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((BackwardsCompatNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(BackwardsCompatNode backwardsCompatNode) {
            backwardsCompatNode.G1();
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Function1 f5223c = new Function1<BackwardsCompatNode, Unit>() { // from class: androidx.compose.ui.node.BackwardsCompatNodeKt$updateModifierLocalConsumer$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((BackwardsCompatNode) obj);
            return Unit.f67061a;
        }

        public final void invoke(BackwardsCompatNode backwardsCompatNode) {
            backwardsCompatNode.J1();
        }
    };

    public static final class a implements androidx.compose.ui.modifier.k {
        a() {
        }

        @Override // androidx.compose.ui.modifier.k
        public Object P(androidx.compose.ui.modifier.c cVar) {
            return cVar.a().invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(BackwardsCompatNode backwardsCompatNode) {
        androidx.compose.ui.f.c cVarO = g.m(backwardsCompatNode).e0().o();
        Intrinsics.f(cVarO, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode");
        return ((l1) cVarO).D1();
    }
}
