package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ Function1 $onTouchEvent$inlined;
    final /* synthetic */ k0 $requestDisallowInterceptTouchEvent$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInteropFilter_androidKt$pointerInteropFilter$$inlined$debugInspectorInfo$1(k0 k0Var, Function1 function1) {
        super(1);
        this.$requestDisallowInterceptTouchEvent$inlined = k0Var;
        this.$onTouchEvent$inlined = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("pointerInteropFilter");
        z0Var.a().c("requestDisallowInterceptTouchEvent", this.$requestDisallowInterceptTouchEvent$inlined);
        z0Var.a().c("onTouchEvent", this.$onTouchEvent$inlined);
    }
}
