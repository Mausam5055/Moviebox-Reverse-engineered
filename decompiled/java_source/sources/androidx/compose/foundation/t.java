package androidx.compose.foundation;

import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class t extends androidx.compose.ui.f.c implements m1 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f3188p = new a(null);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f3189q = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f3190n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f3191o = f3188p;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public t(Function1 function1) {
        this.f3190n = function1;
    }

    @Override // androidx.compose.ui.node.m1
    public Object D() {
        return this.f3191o;
    }

    public final void D1(androidx.compose.ui.layout.l lVar) {
        this.f3190n.invoke(lVar);
        t tVar = (t) n1.b(this);
        if (tVar != null) {
            tVar.D1(lVar);
        }
    }
}
