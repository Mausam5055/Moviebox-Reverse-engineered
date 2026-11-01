package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class BoxScopeInstance implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BoxScopeInstance f2744a = new BoxScopeInstance();

    private BoxScopeInstance() {
    }

    @Override // androidx.compose.foundation.layout.f
    public androidx.compose.ui.f b(androidx.compose.ui.f fVar, final androidx.compose.ui.b bVar) {
        return fVar.e(new BoxChildDataElement(bVar, false, InspectableValueKt.b() ? new Function1<z0, Unit>() { // from class: androidx.compose.foundation.layout.BoxScopeInstance$align$$inlined$debugInspectorInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f67061a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("align");
                z0Var.c(bVar);
            }
        } : InspectableValueKt.a()));
    }
}
