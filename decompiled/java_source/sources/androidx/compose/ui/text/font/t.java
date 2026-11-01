package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f6174a = b0.a();

    public e0 a(d0 d0Var, u uVar, Function1 function1, Function1 function2) {
        Typeface typefaceA;
        h hVarC = d0Var.c();
        if (hVarC == null ? true : hVarC instanceof f) {
            typefaceA = this.f6174a.b(d0Var.e(), d0Var.d());
        } else {
            if (!(hVarC instanceof s)) {
                return null;
            }
            typefaceA = this.f6174a.a((s) d0Var.c(), d0Var.e(), d0Var.d());
        }
        return new e0.a(typefaceA, false, 2, null);
    }
}
