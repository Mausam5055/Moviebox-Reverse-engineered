package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class InteractiveComponentSizeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s1 f3359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s1 f3360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f3361c;

    static {
        s1 s1VarF = CompositionLocalKt.f(new Function0<Boolean>() { // from class: androidx.compose.material.InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.TRUE;
            }
        });
        f3359a = s1VarF;
        f3360b = s1VarF;
        float f11 = 48;
        f3361c = o0.j.b(o0.i.g(f11), o0.i.g(f11));
    }

    public static final s1 b() {
        return f3359a;
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar) {
        return fVar.e(MinimumInteractiveModifier.f3362b);
    }
}
