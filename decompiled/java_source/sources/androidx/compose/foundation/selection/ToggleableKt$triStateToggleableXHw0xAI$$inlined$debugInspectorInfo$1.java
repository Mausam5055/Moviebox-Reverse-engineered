package androidx.compose.foundation.selection;

import androidx.compose.ui.platform.z0;
import androidx.compose.ui.semantics.f;
import androidx.compose.ui.state.ToggleableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: renamed from: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable-XHw0xAI$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class ToggleableKt$triStateToggleableXHw0xAI$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ Function0 $onClick$inlined;
    final /* synthetic */ f $role$inlined;
    final /* synthetic */ ToggleableState $state$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToggleableKt$triStateToggleableXHw0xAI$$inlined$debugInspectorInfo$1(ToggleableState toggleableState, boolean z10, f fVar, Function0 function0) {
        super(1);
        this.$state$inlined = toggleableState;
        this.$enabled$inlined = z10;
        this.$role$inlined = fVar;
        this.$onClick$inlined = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("triStateToggleable");
        z0Var.a().c("state", this.$state$inlined);
        z0Var.a().c("enabled", Boolean.valueOf(this.$enabled$inlined));
        z0Var.a().c("role", this.$role$inlined);
        z0Var.a().c("onClick", this.$onClick$inlined);
    }
}
