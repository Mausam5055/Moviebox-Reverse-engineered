package androidx.compose.ui.node;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class ObserverNodeOwnerScope implements z0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f5363b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5364c = 8;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Function1 f5365d = new Function1<ObserverNodeOwnerScope, Unit>() { // from class: androidx.compose.ui.node.ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((ObserverNodeOwnerScope) obj);
            return Unit.f67061a;
        }

        public final void invoke(ObserverNodeOwnerScope observerNodeOwnerScope) {
            if (observerNodeOwnerScope.isValidOwnerScope()) {
                observerNodeOwnerScope.b().Z();
            }
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u0 f5366a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Function1 a() {
            return ObserverNodeOwnerScope.f5365d;
        }
    }

    public ObserverNodeOwnerScope(u0 u0Var) {
        this.f5366a = u0Var;
    }

    public final u0 b() {
        return this.f5366a;
    }

    @Override // androidx.compose.ui.node.z0
    public boolean isValidOwnerScope() {
        return this.f5366a.getNode().k1();
    }
}
