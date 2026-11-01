package androidx.compose.ui.node;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class l0 implements androidx.compose.ui.f.b {
    public abstract androidx.compose.ui.f.c a();

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

    public abstract void i(androidx.compose.ui.f.c cVar);
}
