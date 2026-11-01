package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class BackgroundKt$background$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ float $alpha$inlined;
    final /* synthetic */ j1 $brush$inlined;
    final /* synthetic */ a5 $shape$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackgroundKt$background$$inlined$debugInspectorInfo$1(float f11, j1 j1Var, a5 a5Var) {
        super(1);
        this.$alpha$inlined = f11;
        this.$brush$inlined = j1Var;
        this.$shape$inlined = a5Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("background");
        z0Var.a().c("alpha", Float.valueOf(this.$alpha$inlined));
        z0Var.a().c("brush", this.$brush$inlined);
        z0Var.a().c("shape", this.$shape$inlined);
    }
}
