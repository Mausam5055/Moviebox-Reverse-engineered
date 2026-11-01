package androidx.compose.ui.draw;

import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class e extends androidx.compose.ui.f.c implements n {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f4170n;

    public e(Function1 function1) {
        this.f4170n = function1;
    }

    public final void D1(Function1 function1) {
        this.f4170n = function1;
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        this.f4170n.invoke(cVar);
        cVar.Y0();
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        m.a(this);
    }
}
