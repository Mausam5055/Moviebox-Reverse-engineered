package androidx.compose.ui.focus;

import android.view.KeyEvent;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public interface i extends g {
    void a(c cVar);

    boolean b(b bVar, y.i iVar);

    v c();

    boolean d(KeyEvent keyEvent);

    Boolean e(int i11, y.i iVar, Function1 function1);

    boolean f(f0.b bVar);

    void g(FocusTargetNode focusTargetNode);

    androidx.compose.ui.f h();

    boolean i(KeyEvent keyEvent, Function0 function0);

    boolean j(boolean z10, boolean z11, boolean z12, int i11);

    r k();

    void l(m mVar);

    y.i m();

    void n();
}
