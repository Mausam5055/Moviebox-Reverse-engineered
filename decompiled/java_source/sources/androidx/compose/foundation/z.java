package androidx.compose.foundation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
final class z implements androidx.compose.ui.draw.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f3347b;

    public z(y yVar) {
        this.f3347b = yVar;
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override // androidx.compose.ui.draw.f
    public void n(z.c cVar) {
        this.f3347b.a(cVar);
    }
}
