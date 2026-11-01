package androidx.compose.ui.platform;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class InspectableValueKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function1 f5663a = new Function1<z0, Unit>() { // from class: androidx.compose.ui.platform.InspectableValueKt$NoInspectorInfo$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((z0) obj);
            return Unit.f67061a;
        }

        public final void invoke(z0 z0Var) {
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f5664b;

    public static final Function1 a() {
        return f5663a;
    }

    public static final boolean b() {
        return f5664b;
    }
}
