package androidx.compose.ui.input.key;

import android.view.KeyEvent;
import androidx.compose.ui.f;
import d0.e;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
final class b extends f.c implements e {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function1 f4929n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Function1 f4930o;

    public b(Function1 function1, Function1 function2) {
        this.f4929n = function1;
        this.f4930o = function2;
    }

    public final void D1(Function1 function1) {
        this.f4929n = function1;
    }

    public final void E1(Function1 function1) {
        this.f4930o = function1;
    }

    @Override // d0.e
    public boolean l0(KeyEvent keyEvent) {
        Function1 function1 = this.f4930o;
        if (function1 != null) {
            return ((Boolean) function1.invoke(d0.b.a(keyEvent))).booleanValue();
        }
        return false;
    }

    @Override // d0.e
    public boolean s0(KeyEvent keyEvent) {
        Function1 function1 = this.f4929n;
        if (function1 != null) {
            return ((Boolean) function1.invoke(d0.b.a(keyEvent))).booleanValue();
        }
        return false;
    }
}
