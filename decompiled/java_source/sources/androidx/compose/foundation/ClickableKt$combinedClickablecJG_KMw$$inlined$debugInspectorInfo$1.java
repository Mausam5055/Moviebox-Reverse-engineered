package androidx.compose.foundation;

import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class ClickableKt$combinedClickablecJG_KMw$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ Function0 $onClick$inlined;
    final /* synthetic */ String $onClickLabel$inlined;
    final /* synthetic */ Function0 $onDoubleClick$inlined;
    final /* synthetic */ Function0 $onLongClick$inlined;
    final /* synthetic */ String $onLongClickLabel$inlined;
    final /* synthetic */ androidx.compose.ui.semantics.f $role$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClickableKt$combinedClickablecJG_KMw$$inlined$debugInspectorInfo$1(boolean z10, String str, androidx.compose.ui.semantics.f fVar, Function0 function0, Function0 function1, Function0 function2, String str2) {
        super(1);
        this.$enabled$inlined = z10;
        this.$onClickLabel$inlined = str;
        this.$role$inlined = fVar;
        this.$onClick$inlined = function0;
        this.$onDoubleClick$inlined = function1;
        this.$onLongClick$inlined = function2;
        this.$onLongClickLabel$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("combinedClickable");
        z0Var.a().c("enabled", Boolean.valueOf(this.$enabled$inlined));
        z0Var.a().c("onClickLabel", this.$onClickLabel$inlined);
        z0Var.a().c("role", this.$role$inlined);
        z0Var.a().c("onClick", this.$onClick$inlined);
        z0Var.a().c("onDoubleClick", this.$onDoubleClick$inlined);
        z0Var.a().c("onLongClick", this.$onLongClick$inlined);
        z0Var.a().c("onLongClickLabel", this.$onLongClickLabel$inlined);
    }
}
